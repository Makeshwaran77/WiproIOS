// Stored, computed properties, and property observers.
struct Temperature {
    var celsius: Double {
        willSet {
            print("Temperature will change to \(newValue)°C")
        }
        didSet {
            print("Temperature changed from \(oldValue)°C to \(celsius)°C")
        }
    }

    var fahrenheit: Double {
        get {
            (celsius * 9 / 5) + 32
        }
        set {
            celsius = (newValue - 32) * 5 / 9
        }
    }
}

var temperature = Temperature(celsius: 25)
print("Fahrenheit: \(temperature.fahrenheit)")
temperature.celsius = 30
temperature.fahrenheit = 98.6
print("Final Celsius: \(temperature.celsius)")
