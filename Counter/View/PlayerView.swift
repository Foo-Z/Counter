//
//  PlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI

struct PlayerView: View {
    @ObservedObject var viewModel: CounterViewModel
    var currentPlayer: Player
    var body: some View {
//        .alert(isPresented: $showingAlert) {
//            Alert(
//                title: Text("New Player"),
//                message: Text("Enter a name for this player"),
//                
//                
//                  
//        })
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(maxWidth: .infinity, maxHeight: 60)
                .foregroundColor(Color(.secondarySystemFill))
                .padding(5)
            HStack(alignment: .center, spacing: 12) {
                Text(currentPlayer.name)
                    .frame(width: 55, height: 60, alignment: .topLeading)
                    .font(.title)
                    .padding(10)
                Spacer()
//                Button("+") {
//                    
//                }
                Button("Buy In") {
                    viewModel.buyin(player: currentPlayer, buyIn: viewModel.getIncrement())
                }.font(.title2)
//                .frame(width: 50, height: 60, alignment: .top)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100, height: 55)
                    .foregroundColor(.gray)
                    .opacity(0.2)
                    .padding(5)
                    .overlay {
                        Text("\(currentPlayer.buyIn)")
                            .font(.title)
                    }
    
                    
            }
            
        }
    }

//    func alertView() {
//        let alert =
//    }
}

//extension UIScreen{
//   static let screenWidth = UIScreen.main.bounds.size.width
//   static let screenHeight = UIScreen.main.bounds.size.height
//   static let screenSize = UIScreen.main.bounds.size
//}
#Preview {
    PlayerView(
        viewModel: CounterViewModel(),
        currentPlayer: Player(name: "test")
    )
}
