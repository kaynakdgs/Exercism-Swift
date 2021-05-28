//Solution goes in Sources

class RnaTranscription {
    enum TranscriptionError: Error {
        case invalidNucleotide(_ message: String)
    }
}

class Nucleotide {
    let dna: String
    init(_ dna: String) {
        self.dna = dna
    }
    
    func complementOfDNA() throws -> String  {
        var rna = ""
        rna = try String(dna.map { element in
            guard let converted = dnaToRna[element] else {
                throw RnaTranscription.TranscriptionError.invalidNucleotide("\(element) is not a valid Nucleotide")
            }
            return converted
        })
        return rna
    }
    
    let dnaToRna: [String.Element:String.Element] = [
        "G": "C",
        "C": "G",
        "T": "A",
        "A": "U"
    ]
}
