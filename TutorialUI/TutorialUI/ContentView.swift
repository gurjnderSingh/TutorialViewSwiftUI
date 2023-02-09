//
//  ContentView.swift
//  TutorialUI
//
//  Created by Gurjinder Singh on 09/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CardView()
        }
        .padding()
    }
}

//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
