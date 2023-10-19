//
//  HistoricalResultView.swift
//  Counter
//
//  Created by Feiou Zhang on 10/13/23.
//

import SwiftUI
import SwiftData

struct HistoricalResultView: View {
    @Environment(\.modelContext) private var context
    @Query private var results: [Result]
    
    var body: some View {
        NavigationStack {
            Text("Historical Results")
                .font(.title2)
                .padding(10)
            VStack {
                List {
                    ForEach(results) { result in
                        NavigationLink("\(result.name)") {
                            ResultView(resultId: result.name)
                        }
                    }
                    .onDelete(perform: { indexSet in
                        for index in indexSet {
                            removeRecord(results[index])
                        }
                    })
                }
            }
        }
        
    }
    
    func removeRecord(_ result: Result) {
        context.delete(result)
    }
}

#Preview {
    HistoricalResultView()
}
