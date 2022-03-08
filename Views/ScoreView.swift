//
//  ScoreView.swift
//  Code History (iOS)
//
//  Created by Scott Hudson on 3/8/22.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                    .foregroundColor(.white)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                        .foregroundColor(.white)
                    Text("\(viewModel.incorrectGuesses) ❌")
                        .foregroundColor(.white)
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                            .foregroundColor(.white)
                    })
            }
        }
    }
}
    
    struct ScoreView_Previews: PreviewProvider {
        static var previews: some View {
            ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
        }
    }
