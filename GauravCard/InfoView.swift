//
//  InfoView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/26/24.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let image: String
    var body: some View {
        HStack {
            Image(systemName: image).foregroundColor(.green)
            Text(text).foregroundColor(Color("InfoColor"))
                .font(.body)
                .fontWeight(.bold)
            
            
        }.frame(width: 380, height: 50).background(Color("InfoColor2")).clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))).padding(.all)
    }
}


#Preview {
    InfoView(text: "Num", image: "phone.fill")
}
