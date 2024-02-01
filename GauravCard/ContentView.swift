//
//  ContentView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.09, green: 0.63, blue: 0.52, opacity:1)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("MyImage")
                        .resizable().aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 130)
                        .clipShape(Rectangle())
                        .overlay(Rectangle().stroke(Color("InfoColor2"), lineWidth: 5))
                    Text("Gaurav Patil")
                        .font(Font.custom("Pacifico-Regular.ttf", size: 40))
                        .fontWeight(.bold)
                        .foregroundColor(Color("InfoColor2"))
                    Text("iOS Developer")
                        .foregroundColor(Color("InfoColor2"))
                        .font(.system(size: 25))
                    
                    Divider()
                    InfoView(text: "+1 (469) 943 - 4012", image: "phone.fill")
                    
                    InfoView(text: "gaurav.patil.atwork@gmail.com", image: "mail")
                    Divider()
                    Text("Projects")
                        .foregroundColor(Color("InfoColor2"))
                        .font(.system(size: 25))
                        .frame(alignment: .leading)
                    ProjectsTableView()
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}

