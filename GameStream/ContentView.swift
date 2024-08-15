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
                    .padding(.bottom, 50)
                
                SignInAndSignUpView()
            }
        }
    }
}

struct SignInAndSignUpView: View {
    @State var showSignInForm = true
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button("sign in") {
                    self.showSignInForm = true
                }.foregroundColor(showSignInForm ? .white : .gray)
                
                Spacer()
                
                Button("sign up") {
                    self.showSignInForm = false
                }.foregroundColor(!showSignInForm ? .white : .gray)
                
                Spacer()
            }
            .textCase(.uppercase)
            
            Spacer(minLength: 42)
            
            if showSignInForm {
                SignInFrom()
            } else {
                SignUpForm()
            }
        }
    }
}

struct SignInFrom: View {
    var body: some View {
        Text("Sign In Form")
    }
}

struct SignUpForm: View {
    var body: some View {
        Text("Sing Up Form")
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        Image("pantalla1").resizable()
    }
}
