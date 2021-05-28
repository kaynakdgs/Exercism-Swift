//Solution goes in Sources

class SpaceAge {
    
    struct orbitalPeriods {
        static var earth = Double(31557600)
        static var mercury = earth * 0.2408467
        static var venus = earth * 0.61519726
        static var mars = earth * 1.8808158
        static var jupiter = earth * 11.862615
        static var saturn = earth * 29.447498
        static var uranus = earth * 84.016846
        static var neptune = earth * 164.79132
        
    }
    var seconds : Int
    
    init(_ seconds:Int) {
        self.seconds = seconds
    }
    
    
    var onEarth:Double{
        return Double(seconds) / orbitalPeriods.earth
    }
    
    var onMercury:Double{
        return Double(seconds) / orbitalPeriods.mercury
    }
    
    var onVenus:Double{
        return Double(seconds) / orbitalPeriods.venus
    }
    
    var onMars:Double{
        return Double(seconds) / orbitalPeriods.mars
    }
    
    var onJupiter:Double{
        return Double(seconds) / orbitalPeriods.jupiter
        
    }
    var onSaturn:Double{
        return Double(seconds) / orbitalPeriods.saturn
    }
    
    
    var onUranus:Double{
        return Double(seconds) / orbitalPeriods.uranus
    }
    
    var onNeptune:Double{
        return Double(seconds) / orbitalPeriods.neptune
    }
    
}
