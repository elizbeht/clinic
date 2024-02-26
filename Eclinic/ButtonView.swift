//
//  ButtonView.swift
//  Eclinic
//
//  Created by Юлия on 21.11.2023.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack{
            Divider().background(Color("lightwhite"))
                .frame(height: 1)
            HStack(alignment: .bottom) {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(height: 16)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
