//
//  ProjectView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/31/24.
//

import SwiftUI

struct ProjectView: View {
    var project: ProjectModel
    
    var body: some View {
            ZStack {
                Color(red: 0.09, green: 0.63, blue: 0.52, opacity:1)
                    .edgesIgnoringSafeArea(.all)
                HStack {
                    Image(project.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 70, height: 70)
                        .cornerRadius(5)
                        .padding(.leading, 8)
                    VStack {
                        Text(project.title)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .lineLimit(7)
                            .foregroundColor(Color("InfoColor2"))
    
                    }
                    Spacer()
                }
            }
            .listRowBackground(Color(red: 0.09, green: 0.63, blue: 0.52, opacity:1))
            .scrollContentBackground(.hidden)
            
        }
}

#Preview {
    ProjectView(project: ProjectModel(image: "MyImage", title: "Project-1", url: "www.google.com"))
}
