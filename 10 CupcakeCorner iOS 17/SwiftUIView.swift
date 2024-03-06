//
//  SwiftUIView.swift
//  10 CupcakeCorner iOS 17
//
//  Created by Marcin Frydrych on 06/03/2024.
//

import SwiftUI

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }

    var name = "Taylor"
    
}

struct SwiftUIView: View {
    
    
    var body: some View {
        Button("Encode Taylor", action: encodeTaylor)
    }
    
    func encodeTaylor() {
        let data = try! JSONEncoder().encode(User())
        let str = String(decoding: data, as: UTF8.self)
        print(str)
    }
}

#Preview {
    SwiftUIView()
}
