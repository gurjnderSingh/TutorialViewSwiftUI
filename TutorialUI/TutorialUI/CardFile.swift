//
//  CardFile.swift
//  TutorialUI
//
//  Created by Gurjinder Singh on 10/02/23.
//

import SwiftUI

struct Card : Identifiable{
    var id = UUID()
    var title, headline, imageName, callToAction, message: String
    var gradientColor: [Color]
}
