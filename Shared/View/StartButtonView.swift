//
//  StartButtonView.swift
//  Fructas-Practice (iOS)
//
//  Created by Shakhawat Hossain Shahin on 7/6/21.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - BODY
    var body: some View {
        Button(action: {
            print("Exit on boarding")
            isOnboarding = false
        }) {
            HStack(spacing: 8.0) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        } //: BUTTON
        .accentColor(Color.white)
    }
}

// MARK:- PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
