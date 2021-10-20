//
//  ContentView.swift
//  Navigation
//
//  Created by macbook on 2021/10/07.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        VStack {
            if viewRouter.currentPage == "page1" {
                ContentViewA().transition(.slide)
            } else if viewRouter.currentPage == "page2"{
                ContentViewB().transition(.scale)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ViewRouter())
    }
}
