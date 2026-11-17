// Access control restricts access to declarations.
struct Employee {
    public let name: String
    private var salary: Double
    fileprivate var departmentCode: String
    internal var employeeID: Int

    init(name: String, salary: Double, departmentCode: String, employeeID: Int) {
        self.name = name
        self.salary = salary
        self.departmentCode = departmentCode
        self.employeeID = employeeID
    }

    func salaryDetails() -> String {
        "Salary: \(salary)"
    }

    mutating func reviseSalary(to amount: Double) {
        guard amount >= 0 else { return }
        salary = amount
    }
}

var employee = Employee(
    name: "Kavin",
    salary: 30000,
    departmentCode: "IOS",
    employeeID: 1001
)

print(employee.name)
print(employee.salaryDetails())
employee.reviseSalary(to: 35000)
print(employee.salaryDetails())

// private members are accessible only within their enclosing declaration
// and extensions of that declaration in the same file.
// fileprivate is limited to the current source file.
// internal is the default access level within a module.
// public and open expose APIs outside the module, with different subclassing rules.
