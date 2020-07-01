//
//  ContentView.swift
//  Memoir
//
//  Created by Antoine Simon on 26/06/2020.
//  Copyright © 2020 Antoine Simon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isList: Bool = true
    @State var counter: UInt = 0
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {self.counter+=1}) {
                    Text("+")
                }
                Button(action: {self.counter = self.counter > 0 ? self.counter - 1 : 0}) {
                    Text("-")
                }
            }
            NavigationView {
                ImageList(counter: counter, ListName: "Boreal")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

