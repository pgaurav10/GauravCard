//
//  ContentView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/19/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("GauravPatil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 165)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 5))
                Text("Gaurav Patil ")
                    .font(Font.custom("Pacifico-Regular", size: 30))
                    .bold()
                    .foregroundColor(.white)
                Text("Software Engineer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+1 (469) 943 - 4012", image: "phone.fill")
                InfoView(text: "gaurav.patil.atwork@gmail.com", image: "envelope.fill")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


