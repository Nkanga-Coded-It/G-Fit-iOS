//
//  OnBoardingScreen.swift
//  G-Fit iOS
//
//  Created by Richard Nkanga on 03/09/2022.
//

import SwiftUI

struct OnbordingStep{
    let image: String
    let title: String
    let description: String
        
    
}
private let  onboardingSteps = [
    OnbordingStep(image: "obsSkipping", title: "Cardio Exercises", description: "Cardiovascular exercise is any activity that increases heart rate and breathing while using large muscle groups in a rhythmic way to improve oxygen and blood flow throughout the body."),
    OnbordingStep(image: "obsYoga", title: "Stretching Exercises", description: "Stretching is an exercise in which a particular muscle or tendon (or muscle group) is purposely flexed or stretched in order to increase its perceived flexibility and attain comfortable muscular tone."),
    OnbordingStep(image: "obsCalisthenics", title: "Calisthenics Exercises", description: "Calisthenics, sometimes known as callisthenics, is a kind of strength training that involves a number of exercises that target big muscular groups, such as standing, gripping, and pushing."),

]



struct OnBoardingScreen: View {
    
    @State private var currentStop = 0
    
   
    
    var body: some View {
        GeometryReader {  screenSize in

            VStack {
                
                
                
                ZStack {
                    
                    TabView(selection: $currentStop) {
                        
                        ForEach (0..<onboardingSteps.count) { it in
                        
                        VStack {
                                 ZStack {
                                        ZStack {
                                                        
                                            Rectangle()
                                                .fill( Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.4235294117647059))
                                                .edgesIgnoringSafeArea(.top)
                                                .frame(width: screenSize.size.width, height: screenSize.size.height / 1.49, alignment: .center)
                                            
                                          
                                            
                                          
                                            
                                        }
                
                                        ZStack {

                                            Rectangle()
                                                    .fill(Color(red: 0.20784313725490197, green: 0.6745098039215687, blue: 0.5725490196078431))
                                                    .frame(width: screenSize.size.width / 1.3, height: screenSize.size.height / 2.2, alignment: .center)
                                            

                                            Image(onboardingSteps[it].image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: screenSize.size.width / 1.3, height: screenSize.size.height / 2.1, alignment: .center)
                                                
                                        }
                                        .padding(.top,130)
                                     
                                    }
                                

                                Spacer()
                                .frame(height: 25)
             
                                VStack (alignment: .center, spacing: 5){
                                    
                                    
                                    
                                    
                                    Text(onboardingSteps[it].title)
                                        .font(Font.custom("Avenir Black", size: screenSize.size.width * 0.08))
                                    
                                    
                                    Text(onboardingSteps[it].description)
                                    
                                        .frame(width: screenSize.size.width / 1.03, height: screenSize.size.height / 4.4)
                                        .multilineTextAlignment(.center)
                                        .lineSpacing(2)
                                        .font(Font.custom("Avenir light", size: screenSize.size.width * 0.045))
                                    
                                    
                                        
                         
                                }
                                .padding(.bottom,screenSize.size.width * 0.25)
                            
                            
                         
                            
                          
                            
                            
                       
                            
                            
                            }
                            .tag(it)
                            

                            
                            
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                .animation(.easeInOut(duration: 1))
                    
       
                      VStack {
                          
                          
                          HStack {
                              Spacer()
                                  .frame(width: screenSize.size.width * 0.77)
                              Button(action: {
                                            
                                              }, label: {
                                                  Text("Skip")
                                                      .font(Font.custom("Avenir Light", size: screenSize.size.width * 0.042))
                                                      .foregroundColor(.white)
                                                      .foregroundColor(.black)
                                                      .padding(.top, screenSize.size.height * 0.01)

                                          })
                          }
                      }.padding(.bottom,screenSize.size.height * 0.8)
                    
                    
                }
                

                ZStack {
                    
                    HStack {
                      
                        Button(action: {
                                            
                            if currentStop == 0  {
                               
                            } else {
                                currentStop -= 1
                                
                            }
                                            
                                        }, label: {
                                            Text("Back")

                                                .foregroundColor(Color(hue: 0.462, saturation: 0.364, brightness: 0.689))
                                                .opacity(currentStop == 0 ? 0 : 1.0)
                                                .cornerRadius(15)
                 
                                    })
                        
                        Spacer()
                        
                        Button(action: {
                            if currentStop == 0 || currentStop == 1 {
                               currentStop += 1
                            } else {
                           
                                
                            }
                            
                                        }, label: {
                                            Text("Next")
                                                .font(Font.custom("Avenir Medium", size: screenSize.size.width * 0.042))
                                                .foregroundColor(Color(hue: 0.462, saturation: 0.364, brightness: 0.689))
                                                .cornerRadius(15)
                                    })
                    }
                    .padding()
                    
                    
                    
                    HStack {
                        ForEach (0..<onboardingSteps.count) { it in
                            
                            if currentStop == it {
                                Rectangle()
                                    .frame(width: 20, height: 10)
                                    .cornerRadius(10)
                                    .foregroundColor(Color(red: 0.054901960784313725, green: 0.5176470588235295, blue: 0.4196078431372549))
                                
                            }else{
                                
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(Color(red: 0.7019607843137254, green: 0.8392156862745098, blue: 0.807843137254902))
                                
                            }
                        
                        }
                    }
                }
                
                
            }
            
            
            
           
            
            
     
        }  .edgesIgnoringSafeArea(.top)
           
    
    }
    
}

struct OnBoardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreen()
    }
}
