//
//  ProjectsTableView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/31/24.
//

import SwiftUI

struct ProjectsTableView: View {
   
    @State private var projects = [
        ProjectModel(image: "MyImage", title: "Clima: Provides current weather updates based on your location or searched location"),
        ProjectModel(image: "MyImage", title: "Project-2"),
        ProjectModel(image: "MyImage", title: "Project-3"),
        ProjectModel(image: "MyImage", title: "Project-1"),
        ProjectModel(image: "MyImage", title: "Project-2"),
        ProjectModel(image: "MyImage", title: "Project-1"),
        ProjectModel(image: "MyImage", title: "Project-2")
    ]
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity:1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                List(projects) { project in NavigationLink(destination: ProjectDetailView(url: project.title)) {
                        
                        ProjectView(project: project)
                        Spacer()
                    
                    }
                    .listRowBackground(Color(red: 0.09, green: 0.63, blue: 0.52, opacity:1))
//                    .foregroundColor(.black)
                }
                .scrollContentBackground(.hidden)
            }
            
        }
    }
}

#Preview {
    ProjectsTableView()
}
