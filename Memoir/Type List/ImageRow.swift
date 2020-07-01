//
//  ImageRow.swift
//  Memoir
//
//  Created by Antoine Simon on 30/06/2020.
//  Copyright © 2020 Antoine Simon. All rights reserved.
//

import SwiftUI

struct ImageRow: View {
    var body: some View {
        
        var images: [[Int]] = []

        _ = (1...8).publisher
            .collect(2)
            .collect()
            .sink(receiveValue: { images = $0 })

        return ForEach(0..<images.count, id: \.self) { array in
            HStack {
                ForEach(images[array], id: \.self) { number in
                    Image("000")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                }
            }
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow()
    }
}
