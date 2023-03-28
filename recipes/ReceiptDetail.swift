//
//  ReceiptDetail.swift
//  team00
//
//  Created by Artur Yakupov on 18.03.2023.
//

import Foundation
import SwiftUI

struct ReceiptDetail: Hashable, Codable {
    var title: String
    var description: String
    var steps: [String]
    
    private var imageName: String
      var image: Image {
          Image(imageName)
      }
}
