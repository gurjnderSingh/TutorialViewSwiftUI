//
//  CardView.swift
//  TutorialUI
//
//  Created by Gurjinder Singh on 09/02/23.
//

import SwiftUI

struct CardView: View {
    
    //MARK: - PROPERTIES
    var card: Card
    @State private var fadeIn: Bool = false
    @State private var moveDownward: Bool = false
    @State private var moveUpward: Bool = false
    @State private var showAlert: Bool = false
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    //MARK: - CARD
    
    var body: some View {
        ZStack {
            Image(card.imageName)
                .resizable()
                .scaledToFit()
                .opacity(fadeIn ? 1.0 : 0.0)
                .frame(width: UIScreen.main.bounds.size.width)

            VStack {
                Spacer()
                Spacer()
                Spacer()
                VStack {
                    Text(card.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Text(card.headline)
                        .font(.title)
                        .fontWeight(.light)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .italic()
                }
                .offset(y: moveDownward ? 0 : -100)
                Spacer()
                Spacer()
                VStack {
                    Button {
                        playSound(sound: "sound-chime", type: "mp3")
                        hapticImpact.impactOccurred()
                        showAlert.toggle()
                    } label: {
                        HStack {
                            Text(card.callToAction.uppercased())
                                .fontWeight(.heavy)
                                .foregroundColor(Color.white)
                                .accentColor(Color.red)
                            
                            Image(systemName: "arrow.right.circle")
                                .font(Font.title.weight(.medium))
                                .accentColor(Color.white)
                        }
                        .padding(.horizontal, 30)
                        .padding(.vertical)
                        .background(LinearGradient(colors: card.gradientColor, startPoint: .leading, endPoint: .trailing))
                        .clipShape(Capsule())
                        .shadow(color: Color("ColorShadow"), radius: 1, x: 0 , y: 4)
                    }
                    .offset(y: moveUpward ? 100 : 200)
                }
                Spacer()
                Spacer()
                Spacer()
            }
        }
        .background(LinearGradient(colors: card.gradientColor, startPoint: .top, endPoint: .bottom))
        .shadow(color: Color.black ,radius: 5)
        .onAppear() {
            withAnimation(.linear(duration: 1.2)) {
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveDownward.toggle()
            }
            withAnimation(.linear(duration: 0.8)) {
                self.moveUpward.toggle()
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(card.title),
                message: Text(card.headline),
                dismissButton: .default(Text("Ok"))
            )
        }
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[1])
            .previewLayout(.sizeThatFits)
    }
}
