//
//  XDismissButton.swift
//  FrameworkApp
//
//  Created by temel gunaydin on 18.09.2024.
//

import SwiftUI

//May we can use this Dismiss Button in different pages so we moved in here as a seperate file
struct XDismissButton: View {
    @Binding var isShowingModalView : Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingModalView.toggle()
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.black)
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .imageScale(.small)
                        .frame(width: 44, height: 44)
                }
            }
        }
        .padding()
    }
}



#Preview {
    XDismissButton(isShowingModalView: .constant(false))
}
