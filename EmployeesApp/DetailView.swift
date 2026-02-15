//
//  DetailView.swift
//  EmployeesApp
//
//  Created by kaspi on 15.02.2026.
//

import SwiftUI

struct DetailView: View {
    let employee : Employee
    
    var body: some View{
        Text(employee.name)
        Text(employee.id)
        Text(employee.position)
        
    }
}
