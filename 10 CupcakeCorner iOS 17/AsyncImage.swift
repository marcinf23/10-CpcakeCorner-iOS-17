//
//  AsyncImage.swift
//  10 CupcakeCorner iOS 17
//
//  Created by Marcin Frydrych on 05/03/2024.
//

import SwiftUI

struct AsyncImasdfge: View {
    
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
            if let image = phase.image {
                image
                    .resizable()
                    .scaledToFit()
            } else if phase.error != nil {
                Text("There was an error loading the image.")
            } else {
                ProgressView()
            }
        }
        .frame(width: 200, height: 200)
    }
}

#Preview {
    AsyncImasdfge()
}
