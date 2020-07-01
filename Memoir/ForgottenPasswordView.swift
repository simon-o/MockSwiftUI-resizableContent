//
//  ForgottenPasswordView.swift
//  Memoir
//
//  Created by Antoine Simon on 26/06/2020.
//  Copyright © 2020 Antoine Simon. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct ForgottenPasswordView: View {
    var body: some View {
        Text("Detail").onAppear {
            
        }.navigationBarTitle("Collection").navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
}

struct ForgottenPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgottenPasswordView()
    }
}
