//
//  ContentView.swift
//  GameStream
//
//  Created by Javier Gomez on 14/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 18/255, green: 31/255, blue: 61/255, opacity: 1.0).ignoresSafeArea()
            
            VStack {
                Image("appLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                
                SignInAndSignUpView()
            }
        }
    }
}

struct SignInAndSignUpView: View {
    var body: some View {
        HStack {
            Text("Iniciar Sesion")
            Text("Registro")
        }
        .foregroundColor(.white)
        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        Image("pantalla1").resizable()
    }
}
