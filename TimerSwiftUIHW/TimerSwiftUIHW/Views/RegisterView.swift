//
//  RegisterView.swift
//  TimerSwiftUIHW
//
//  Created by Carolina on 21.02.23.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    @State private var isNameValid = false
    
    var body: some View {
        VStack(spacing: 25) {
            HStack() {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
               
                Text("\(name.count)").onChange(of: name) { newValue in
                    isNameValid = validateName(newValue)
                }
                .foregroundColor(isNameValid ? Color.green : Color.red)
            }.padding([.trailing, .leading], 25)
            
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }.disabled(!isNameValid)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.saveName()
            user.isRegister.toggle()
        }
    }
    
    private func validateName(_ name: String) -> Bool {
        return name.count > 4
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
