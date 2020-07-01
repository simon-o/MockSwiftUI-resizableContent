//
//  SwiftUIView.swift
//  Memoir
//
//  Created by Antoine Simon on 30/06/2020.
//  Copyright © 2020 Antoine Simon. All rights reserved.
//

import SwiftUI

struct ImageList: View {
    var counter: UInt
    var name: String
    
    init(counter: UInt = 0, ListName: String = "") {
        self.counter = counter
        name = ListName
    }
    //(counter + 1) * row + column
    var body: some View {
        List {
            ForEach(0...5, id: \.self) { row in
                HStack {
                    ForEach(0...self.counter, id: \.self) { column in
                        
                        NavigationLink(destination: loginView()) {
                           Image("000")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                        }
//                            .gesture(TapGesture()
//                                .onEnded({ _ in
//                                    print("index: \((self.counter + 1) * UInt(row) + column)")
//                                }))
                    }
                }
            }
        }.onAppear { UITableView.appearance().separatorStyle = .none}
        .navigationBarTitle(Text(name))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageList()
    }
}
