//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Kane Denzil Quadras Bernard on 2024-09-16.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle())
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}

#Preview {
    LoadingView()
}
