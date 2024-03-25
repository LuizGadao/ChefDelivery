//
//  Double+.swift
//  ChefDelivery
//
//  Created by Luiz Carlos Goncalves Dos Anjos on 25/03/24.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formatStr = String(format: "%.2f", self)
        return formatStr.replacingOccurrences(of: ".", with: ",")
    }
}
