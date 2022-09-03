//
//  ContentView.swift
//  G-Fit iOS
//
//  Created by Richard Nkanga on 01/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @FocusState var emailInFocus: Bool
    @FocusState var passwordInFocus: Bool
    @State var isAnimated = false
    @State var emailAddress: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        
        
        VStack {
            
            
            Spacer()
            
            Text("Welcome")
                .font(Font.custom("Avenir Medium", size: 50))
                .padding(.bottom,53)
            
            
            
            VStack {
                
                TextField("Email Address", text: $emailAddress)
                    .padding()
                    .font(Font.custom("Avemir Light", size: 14))
                    .frame(width: 347, height: 62, alignment: .center)
                    .cornerRadius(17)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(emailInFocus ? .black : .gray,lineWidth: emailInFocus ? 0.5 : 0.5)
                            .animation(.linear(duration: 0.3), value: emailInFocus)
                            .frame(width: 340, height: 60, alignment: .center)
                        )
                .focused($emailInFocus)
                .padding(.bottom,40)
            
            
            
            
            TextField("Password", text: $password)
                .padding()
                .font(Font.custom("Avemir Light", size: 14))
                .frame(width: 347, height: 62, alignment: .center)
                .cornerRadius(17)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(passwordInFocus ? .black : .gray,lineWidth: passwordInFocus ? 0.5 : 0.5)
                        .animation(.linear(duration: 0.3), value: passwordInFocus)
                        .frame(width: 340, height: 60, alignment: .center)
                    
                    )
            .focused($passwordInFocus)
        
                        
            }
            
            
            
            HStack {
                Spacer()
                    .frame(width:244)
                
                
               
               
                
                Button(action: {
                                    
                                    emailInFocus.toggle()
                                    passwordInFocus.toggle()
                                    
                                }, label: {
                                    Text("Forgot Password?")
                                        .font(Font.custom("Avenir Light", size: 18))
                                        .foregroundColor(.black)
                                        .underline()
                                        .frame(width: 150, height: 25)
                                        .padding(.top,50)
                                        .padding(.bottom,30)
                                        .padding(.trailing,38)
                                        
                            })
                
                
             
               
            }
            
            
            
            
            Button(action: {
                                
                                emailInFocus.toggle()
                                passwordInFocus.toggle()
                                
                            }, label: {
                                Text("Sign In")
                                    .font(Font.custom("Avenir Medium", size: 20))
                                    .frame(width: 339, height: 65, alignment: .center)
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.054901960784313725, green: 0.5176470588235295, blue: 0.4196078431372549))
                                    .cornerRadius(17)
                                    .disabled(emailAddress.isEmpty || password.isEmpty )
                                    .opacity(emailAddress.isEmpty || password.isEmpty  ?  0.5 : 1)
                        })
            
            
            
            
            
            
            HStack {
                
                
                Button(action: {
                                    
                                    emailInFocus.toggle()
                                    passwordInFocus.toggle()
                                    
                                }, label: {
                                    ZStack {
                                        Circle()
                                            .fill(Color(red: 0.054901960784313725, green: 0.5176470588235295, blue: 0.4196078431372549))
                                            .frame(width: 66, height: 66, alignment: .center)
                                            .foregroundColor(.white)
                                            .cornerRadius(17)
                                            .overlay(
                                            Image("google")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 34, height: 34, alignment: .center)
                                            
                                            )
                                    
                                        
                                    }
                            })
                
                Spacer()
                    .frame(width: 20)
                
                Button(action: {
                                    
                                    emailInFocus.toggle()
                                    passwordInFocus.toggle()
                                    
                                }, label: {
                                    ZStack {
                                        Circle()
                                            .fill(Color(red: 0.054901960784313725, green: 0.5176470588235295, blue: 0.4196078431372549))
                                            .frame(width: 66, height: 66, alignment: .center)
                                            .foregroundColor(.white)
                                            .cornerRadius(17)
                                            .overlay(
                                            Image("facebook")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 20, height: 36, alignment: .center)
                                            
                                            )
                                    
                                        
                                    }
                            })
                
                
            }
            .padding(.top,53)
            
            
            
            Spacer()
            
            
            Button(action: {
                                
                                emailInFocus.toggle()
                                passwordInFocus.toggle()
                                
                            }, label: {
                                Group {
                                    Text("Already have an account? ")
                                        .font(Font.custom("Avenir Light", size: 15))
                                        .foregroundColor(Color(red: 0.47843137254901963, green: 0.47843137254901963, blue: 0.4823529411764706))
                                    
                                   + Text("Sign Up")
                                        .font(Font.custom("Avenir Black", size: 15))
                                        .foregroundColor(Color(red: 0.47843137254901963, green: 0.47843137254901963, blue: 0.4823529411764706))

                                        
                                       
                                }

                                    
                        })
            
            
            
            Spacer()
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
