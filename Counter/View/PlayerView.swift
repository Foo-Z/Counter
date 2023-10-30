//
//  PlayerView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/1/23.
//

import SwiftUI
import SwiftData

struct PlayerView: View {
    @Environment(\.modelContext) private var context
    @Query private var settings: [Setting]
    var currentPlayer: Player
    var totalPlayerNumber: Int
    
    var body: some View {
        HStack {
            Text(currentPlayer.name)
                .frame(width: 110, alignment: .leading)
            Text("\(getSeatStringName(seatNumber: currentPlayer.seatNumber, totalPlayerNumber: totalPlayerNumber))")
                .frame(width: 30, alignment: .center)
                .font(.system(size:13))
            Spacer()
            Text("\(currentPlayer.buyIn)")
                .frame(width: 60)
            Button("Buy In") {
                currentPlayer.buyIn += getIncrement()
                try? context.save()
            }
            .buttonStyle(BorderedProminentButtonStyle())
        }
    }
    
    func getIncrement() -> Int {
        settings.first?.increment ?? 500
    }
    
    func getSeatStringName(seatNumber: Int, totalPlayerNumber: Int) -> String {
        switch totalPlayerNumber {
        case 1,2,3,4,5:
            return getSeatStringNameForMaxFiveAndLess(seatNumber: seatNumber)
        case 6:
            return getSeatStringNamesForMaxSix(seatNumber: seatNumber)
        case 7:
            return getSeatStringNamesForMaxSeven(seatNumber: seatNumber)
        case 8:
            return getSeatStringNamesForMaxEight(seatNumber: seatNumber)
        case 9:
            return getSeatStringNamesForMaxNine(seatNumber: seatNumber)
        default:
            return getSeatStringNamesForMaxTenAndMore(seatNumber: seatNumber)
        }
    }
    
    
    func getSeatStringNameForMaxFiveAndLess(seatNumber: Int) -> String {
        var seatString: String
        switch seatNumber {
        case 1:
            seatString = "BTN"
        case 2:
            seatString = "SB"
        case 3:
            seatString = "BB"
        case 4:
            seatString = "UTG"
        case 5:
            seatString = "CO"
        default:
            seatString = "\(seatNumber)"
        }
        return seatString
    }
    
    func getSeatStringNamesForMaxSix(seatNumber: Int) -> String {
        var seatString: String
        switch seatNumber {
        case 1:
            seatString = "BTN"
        case 2:
            seatString = "SB"
        case 3:
            seatString = "BB"
        case 4:
            seatString = "UTG"
        case 5:
            seatString = "HJ"
        case 6:
            seatString = "CO"
        default:
            seatString = "\(seatNumber)"
        }
        return seatString
    }
    
    func getSeatStringNamesForMaxSeven(seatNumber: Int) -> String {
        var seatString: String
        switch seatNumber {
        case 1:
            seatString = "BTN"
        case 2:
            seatString = "SB"
        case 3:
            seatString = "BB"
        case 4:
            seatString = "UTG"
        case 5:
            seatString = "LJ"
        case 6:
            seatString = "HJ"
        case 7:
            seatString = "CO"
        default:
            seatString = "\(seatNumber)"
        }
        return seatString
    }
    
    func getSeatStringNamesForMaxEight(seatNumber: Int) -> String {
        var seatString: String
        switch seatNumber {
        case 1:
            seatString = "BTN"
        case 2:
            seatString = "SB"
        case 3:
            seatString = "BB"
        case 4:
            seatString = "UTG"
        case 5:
            seatString = "UTG+1"
        case 6:
            seatString = "LJ"
        case 7:
            seatString = "HJ"
        case 8:
            seatString = "CO"
        default:
            seatString = "\(seatNumber)"
        }
        return seatString
    }
    
    func getSeatStringNamesForMaxNine(seatNumber: Int) -> String {
        var seatString: String
        switch seatNumber {
        case 1:
            seatString = "BTN"
        case 2:
            seatString = "SB"
        case 3:
            seatString = "BB"
        case 4:
            seatString = "UTG"
        case 5:
            seatString = "UTG+1"
        case 6:
            seatString = "UTG+2"
        case 7:
            seatString = "LJ"
        case 8:
            seatString = "HJ"
        case 9:
            seatString = "CO"
        default:
            seatString = "\(seatNumber)"
        }
        return seatString
    }
    
    func getSeatStringNamesForMaxTenAndMore(seatNumber: Int) -> String {
        var seatString: String
        switch seatNumber {
        case 1:
            seatString = "BTN"
        case 2:
            seatString = "SB"
        case 3:
            seatString = "BB"
        case 4:
            seatString = "UTG"
        case 5:
            seatString = "UTG+1"
        case 6:
            seatString = "UTG+2"
        case 7:
            seatString = "UTG+3"
        case 8:
            seatString = "LJ"
        case 9:
            seatString = "HJ"
        case 10:
            seatString = "CO"
        default:
            seatString = "\(seatNumber)"
        }
        return seatString
    }
}
#Preview {
    PlayerView(
        currentPlayer: Player(name: "test", buyIn: 500, seatNumber: 1), totalPlayerNumber: 6
    )
}
