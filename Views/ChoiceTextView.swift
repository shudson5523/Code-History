//
//  ChoiceTextView.swift
//  Code History (iOS)
//
//  Created by Scott Hudson on 3/3/22.
//

import Foundation
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = GameColor.accent

    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}
