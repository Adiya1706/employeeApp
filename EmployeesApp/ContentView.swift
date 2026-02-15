
import SwiftUI
//import Employer


//private var EmployerViewModel = [
//    Employer(id: "E00001", name: "Jodi Reyes", position: "Pathologist"),
//    Employer(id: "E00002", name: "Joys Gamble", position: "Proctologist")
//]



struct ContentView: View {
    @StateObject var viewModel = EmployeesViewModel()
    
    var body: some View {
        VStack {
            NavigationStack {
                List(viewModel.employees) {employee in
                        VStack(alignment: .leading){
                            Text(employee.name)
                            Text(employee.position)
                        }
                    }
                
                
    
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
