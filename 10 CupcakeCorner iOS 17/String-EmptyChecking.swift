//
//  String-EmptyChecking.swift
//  10 CupcakeCorner iOS 17
//
//  Created by Marcin Frydrych on 14/03/2024.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
