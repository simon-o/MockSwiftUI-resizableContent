//
//  loginViewModel.swift
//  Memoir
//
//  Created by Antoine Simon on 26/06/2020.
//  Copyright © 2020 Antoine Simon. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

protocol loginViewModelProtocol {
    func buttonPressed()
}

class loginViewModel: ObservableObject {
    @Published var shouldDisplayForgottenPassword = false
//    private var onAppearSubject = PassthroughSubject<Void, Never>()
    
    init() {
        
    }
}

extension loginViewModel: loginViewModelProtocol {
    func buttonPressed() {
        shouldDisplayForgottenPassword.toggle()
    }
}
