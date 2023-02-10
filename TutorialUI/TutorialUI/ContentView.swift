//
//  ContentView.swift
//  TutorialUI
//
//  Created by Gurjinder Singh on 09/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20) {
                ForEach(0..<6) { item in
                    CardView()
                }
            }
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
