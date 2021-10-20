//
//  ContentViewB.swift
//  Navigation
//
//  Created by macbook on 2021/10/07.
//

import SwiftUI

struct ContentViewB: View {
    @EnvironmentObject  var viewRouter: ViewRouter
    var body: some View {
        VStack {
            Spacer()
            Image("happyDog")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(10.0)
            Spacer()
            Button(action: {withAnimation(){self.viewRouter.currentPage = "page1"}}, label: {
                Text("Back")
            }).frame(width: 180, height: 40)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(11.0)
            Spacer()
        }
    }
}

struct ContentViewB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewB().environmentObject(ViewRouter())
    }
}
