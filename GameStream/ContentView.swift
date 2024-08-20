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
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Email:")
                    .foregroundColor(.darkCian)
                    .fontWeight(.black)
                
                ZStack(alignment: .leading) {
                    if email.isEmpty {
                        Text("example@email.com")
                            .font(.caption)
                            .foregroundColor(.lightGray)
                    }
                    
                    TextField("", text: $email)
                }
                
                Divider()
                    .frame(height: 1)
                    .background(.darkCian)
                    .padding(.bottom)
                
                Text("Password:")
                    .foregroundColor(.darkCian)
                    .fontWeight(.black)
                
                ZStack(alignment: .leading) {
                    if password.isEmpty {
                        Text("******")
                            .font(.caption)
                            .foregroundColor(.lightGray)
                    }
                    
                    SecureField("", text: $password)
                }
                
                Divider()
                    .frame(height: 1)
                    .background(.darkCian)
                    .padding(.bottom)
                
            }.padding(.horizontal, 77.0)
        }
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
