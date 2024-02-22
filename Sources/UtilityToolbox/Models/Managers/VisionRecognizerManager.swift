//
//  VisionRecognizerManager.swift
//  
//
//  Created by Maertens Yann-Christophe on 12/05/23.
//

import Vision

// MARK: - Remark
// The analized image needs to be opaque (no alpha), otherwise, the text recognition will not work.
// The text in the image needs to have a great/high contrast for more recognition accuracy.

/// An object that manages text recognition.
public final class VisionRecognizerManager: ObservableObject {
    
    public init() { }
    
    @Published public var results: [String] = []
    
    /// Analyze the text in a CGImage and process the results.
    public func analyzeText(in image: CGImage) {
        let requestHandler = VNImageRequestHandler(cgImage: image)
        let request = VNRecognizeTextRequest(completionHandler: analyzeTextHandler)
        
        request.recognitionLevel = VNRequestTextRecognitionLevel.accurate
        request.recognitionLevel = VNRequestTextRecognitionLevel.fast
        
        try? requestHandler.perform([request])
    }
    
    /// The result from the text analysis.
    public var analyzedText: String {
        results.joined(separator: " ")
    }
    
    private func analyzeTextHandler(request: VNRequest, error: Error?) {
        guard let observations = request.results as? [VNRecognizedTextObservation] else { return }
        let recognizedStrings = observations.compactMap { $0.topCandidates(1).first?.string }
        results = recognizedStrings
    }
}
