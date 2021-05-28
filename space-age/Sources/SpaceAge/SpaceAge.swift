//Solution goes in Sources

struct SpaceAge {
    let seconds: Int!
    var onMercury, onVenus, onEarth, onMars,
        onJupiter, onSaturn, onUranus, onNeptune : Double!
    
    init(_ age: Int) {
        self.seconds = age

        onMercury = getAge(scale: 0.2408467)
        onVenus = getAge(scale: 0.61519726)
        onEarth = getAge(scale: 1.0)
        onMars = getAge(scale: 1.8808158)
        onJupiter = getAge(scale: 11.862615)
        onSaturn = getAge(scale: 29.447498)
        onUranus = getAge(scale: 84.016846)
        onNeptune = getAge(scale: 164.79132)
    }
    
    private func getAge(scale: Double) -> Double {
        let orbitalPeriod = 315576.0
        
        return ((Double(self.seconds) / (orbitalPeriod * scale)) / 100.0).rounded()
    }
}
