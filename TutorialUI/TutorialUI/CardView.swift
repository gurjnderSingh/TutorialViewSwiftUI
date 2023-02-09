//
//  CardView.swift
//  TutorialUI
//
//  Created by Gurjinder Singh on 09/02/23.
//

import SwiftUI

struct CardView: View {
    
    //MARK: - PROPERTIES
    
    var gradient: [Color] = [Color("Color01"), Color("Color02")]
    
    //MARK: - CARD
    
    var body: some View {
        ZStack {
            Image("developer-no1")
            VStack {
                Text("Swift UI")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Better Apps Less Code")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .italic()
            }
            .offset(y: -218)
            
            Button {
                
            } label: {
                HStack {
                    Text("Learn".uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                    .accentColor(Color.red)
                    
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(Color.white)
                }
                
                .padding(.horizontal, 30)
                .padding(.vertical)
                .background(LinearGradient(colors: gradient, startPoint: .leading, endPoint: .trailing))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6)//x: 0 , y: 3
            }
            .offset(y: 210)

        }
        .frame(width: 335, height: 545)
        .background(LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom))
        .cornerRadius(16)
        .shadow(color: Color.black ,radius: 8)
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
    }
}
