import SwiftUI

class EmployeesViewModel: ObservableObject {
    @Published var employees: [Employee] = []   // пустой массив для JSON
    
    init() {
        fetchEmployees()   // вызываем функцию
    }
    
    func fetchEmployees() {
        guard let url = URL(string: "https://samples.json-format.com/employees/json/employees_10KB.json") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decodedResponses = try decoder.decode([EmployeeResponse].self, from: data)
                    let employees = decodedResponses.map { $0.employee }
                    
                    DispatchQueue.main.async {
                        self.employees = employees
                        print("1", employees.count)
                    }
                } catch {
                    print("Decoding error:", error)
                }
            } else if let error = error {
                print("Network error:", error)
            }
        }.resume()  // важно вызвать resume
    }
}
