//
//  ProjectsTableView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/31/24.
//

import SwiftUI

struct ProjectsTableView: View {
    
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity:1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                List(ProjectData().projects) { project in NavigationLink(destination: ProjectDetailView(urlString: project.url)) {
                        
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
