//
//  ProjectDetailView.swift
//  GauravCard
//
//  Created by Gaurav Patil on 1/31/24.
//

import SwiftUI

struct ProjectDetailView: View {
    var url: String
    var body: some View {
        Text(url)
    }
}

#Preview {
    ProjectDetailView(url: "URL")
}
