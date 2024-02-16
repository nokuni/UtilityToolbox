//
//  MapFinder.swift
//
//
//  Created by Yann Christophe Maertens on 16/02/2024.
//

import MapKit
import Combine

public class MapFinder : NSObject, ObservableObject {
    private typealias MapSearchPromise = ((Result<[MKLocalSearchCompletion], Error>) -> Void)
    private typealias MapSearchFuture = Future<[MKLocalSearchCompletion], Error>
    
    @Published var locationResults : [MKLocalSearchCompletion] = []
    @Published var inputs = ""
    
    var isUpdatingOnInputChange: Bool
    
    private var cancellables : Set<AnyCancellable> = []
    
    private var searchCompleter = MKLocalSearchCompleter()
    private var currentPromise : MapSearchPromise?
    
    init(isUpdatingOnInputChange: Bool = true) {
        self.isUpdatingOnInputChange = isUpdatingOnInputChange
        super.init()
        self.searchCompleter.delegate = self
        if isUpdatingOnInputChange { updateSearch() }
    }
    
    public func updateSearch() {
        $inputs
            .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
            .removeDuplicates()
            .flatMap({ (currentSearchTerm) in
                self.searchTermToResults(searchTerm: currentSearchTerm)
            })
            .sink(receiveCompletion: { (completion) in
                //handle error
            }, receiveValue: { (results) in
                self.locationResults = results
            })
            .store(in: &cancellables)
    }
    
    private func searchTermToResults(searchTerm: String) -> MapSearchFuture {
        Future { promise in
            self.searchCompleter.queryFragment = searchTerm
            self.currentPromise = promise
        }
    }
}

extension MapFinder : MKLocalSearchCompleterDelegate {
    public func completerDidUpdateResults(_ completer: MKLocalSearchCompleter) {
        currentPromise?(.success(completer.results))
    }
    
    public func completer(_ completer: MKLocalSearchCompleter, didFailWithError error: Error) {
        //could deal with the error here, but beware that it will finish the Combine publisher stream
        //currentPromise?(.failure(error))
    }
}
