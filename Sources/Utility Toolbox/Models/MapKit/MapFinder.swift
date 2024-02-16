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
    
    @Published public var locationResults : [MKLocalSearchCompletion] = []
    @Published public var inputs = ""
    
    public var region: MKCoordinateRegion
    public var resultTypes: MKLocalSearchCompleter.ResultType
    public var isUpdatingOnInputChange: Bool
    
    private var cancellables : Set<AnyCancellable> = []
    
    private var searchCompleter = MKLocalSearchCompleter()
    private var currentPromise : MapSearchPromise?
    
    public init(region: MKCoordinateRegion = MKCoordinateRegion(.world),
                resultTypes: MKLocalSearchCompleter.ResultType = .pointOfInterest,
                isUpdatingOnInputChange: Bool = true) {
        self.region = region
        self.resultTypes = resultTypes
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
            self.searchCompleter.region = self.region
            self.searchCompleter.resultTypes = self.resultTypes
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
