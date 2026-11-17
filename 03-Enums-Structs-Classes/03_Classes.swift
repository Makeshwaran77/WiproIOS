// Classes are reference types: multiple variables can refer to one instance.
class BankAccount {
    let accountHolder: String
    private(set) var balance: Double

    init(accountHolder: String, openingBalance: Double) {
        self.accountHolder = accountHolder
        self.balance = openingBalance
    }

    func deposit(_ amount: Double) {
        guard amount > 0 else {
            print("Deposit must be positive.")
            return
        }
        balance += amount
    }

    func displayBalance() {
        print("\(accountHolder)'s balance: \(balance)")
    }
}

let accountOne = BankAccount(accountHolder: "Arun", openingBalance: 1_000)
let accountReference = accountOne
accountReference.deposit(500)
accountOne.displayBalance()
accountReference.displayBalance()
// Both constants refer to the same BankAccount instance.
