// Inheritance allows a class to reuse and extend another class.
class Vehicle {
    let brand: String

    init(brand: String) {
        self.brand = brand
    }

    func start() {
        print("\(brand) vehicle started")
    }
}

class ElectricCar: Vehicle {
    let batteryCapacity: Int

    init(brand: String, batteryCapacity: Int) {
        self.batteryCapacity = batteryCapacity
        super.init(brand: brand)
    }

    override func start() {
        print("\(brand) electric car started silently")
    }

    func showBattery() {
        print("Battery: \(batteryCapacity) kWh")
    }
}

let car = ElectricCar(brand: "Example Motors", batteryCapacity: 75)
car.start()
car.showBattery()
