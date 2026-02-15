
import SwiftUI
//import Employer


//private var EmployerViewModel = [
//    Employer(id: "E00001", name: "Jodi Reyes", position: "Pathologist"),
//    Employer(id: "E00002", name: "Joys Gamble", position: "Proctologist")
//]



struct ContentView: View {
    @StateObject var viewModel = EmployeesViewModel()
    
    var body: some View {
        //ыуаыаыуаыуаыа
        VStack {
            NavigationStack {
                List(viewModel.filteredEmployees) {employee in
                        VStack(alignment: .leading){
                            Text(employee.name)
                            Text(employee.position)
                        }
                    }
                
                
    
            }
            .searchable(text: $viewModel.searchText )
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
