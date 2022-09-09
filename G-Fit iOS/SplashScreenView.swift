//
//  SplashScreenView.swift
//  G-Fit iOS
//
//  Created by Richard Nkanga on 02/09/2022.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isAnimated  =  false
    @State var isActive  =  false
    
    var body: some View {
        
        if isActive {
            
            OnBoardingScreen()
           
        } else {
            
            ZStack {
                
                /*@START_MENU_TOKEN@*/Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.4235294117647059)/*@END_MENU_TOKEN@*/
                    .ignoresSafeArea(.all)
                
                
                    
                    Image("splashImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 453, height: 641, alignment: .center)
                        .offset(y: isAnimated ? 0 : 200)
                        .opacity(isAnimated ? 1.0 : 0)
                        .animation(.easeOut(duration: 3), value: isAnimated)
                        .onAppear(){
                            isAnimated.toggle()
                    }
                
                
                
                HStack{
                    
                        Text("G -")
                            .font(Font.custom("Avenir Black", size: 60))
                        .foregroundColor(.white)
                        
                        
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 110, height: 72, alignment: .center)
                            .cornerRadius(17)
                        
                        Text("FIT")
                                .font(Font.custom("Avenir Black", size: 60))
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.058823529411764705, green: 0.5254901960784314, blue: 0.4235294117647059)/*@END_MENU_TOKEN@*/)
           
                    }
                    
                }
                .opacity(isAnimated ? 1.0 : 0)
                .offset(y: isAnimated ? 0 : 300)
                .animation(.easeOut(duration: 2).delay(3.0), value: isAnimated)
                
                
                
                
                
                
            }.onAppear(){
              
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){
                    isActive.toggle()
                    
                  
                }
            }
            
        }
                
        
       
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
