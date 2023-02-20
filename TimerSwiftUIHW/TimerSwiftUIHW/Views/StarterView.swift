//
//  StarterView.swift
//  TimerSwiftUIHW
//
//  Created by Carolina on 21.02.23.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        // Тип, который собирает несколько экземпляров типа контента,
        // например представлений, сцен или команд, в один блок.
        Group {
            if user.isRegister {
                TimerView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
