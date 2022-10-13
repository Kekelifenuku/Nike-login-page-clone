//
//  ContentView.swift
//  Nike Login page
//
//  Created by kekeli on 12/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var Username = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                .opacity(0.9)
            VStack{
                
                Image("nike")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.top,0)
                
                ZStack{
                   
                        
                    VStack (alignment: .leading, spacing: 50 ){
                        Text("JUST DO IT.")
                            .font(.largeTitle)
                            .foregroundColor(Color(hue: 0.247, saturation: 1.0, brightness: 1.0))
                            .padding(.leading, 50.0)
                        
                        VStack(alignment: .leading, spacing: 20 ){
                            TextField("Username", text: $Username)
                                .padding()
                                .foregroundColor(Color.white)
                                .frame(width: 300, height: 40)
                                .background(Color.black)
                                .cornerRadius(50)
                               
                            SecureField("Password", text: $password)
                                .padding()
                                .foregroundColor(Color.white)
                                .frame(width: 300, height: 40)
                                .background(Color.black)
                                .cornerRadius(50)
                               
                            Button {
                            } label: {
                                
                                Text("Log in")
                                    .padding()
                                    .font(.system(size: 15))
                                    .foregroundColor(Color(hue: 0.247, saturation: 1.0, brightness: 1.0))
                                
                                    .frame(width: 150, height: 40)
                                    .background(Color.black)
                                    .cornerRadius(50)
                            }
                            HStack{
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(Color.white)
                                Text("OR")
                                    .font(.title)
                                    .foregroundColor(Color.white)
                                Rectangle().frame(height: 1)
                                    .foregroundColor(Color.white)
                            }
                            .frame(width: 300, height: 27)
                            
                            
                            HStack{
                                Image("Google")
                                    
                            }
                            .padding(.top)
                            .frame(width: 300, height: 27)
                            
                            
                            HStack{
                                Text("Dont have an account?")
                                    .foregroundColor(Color.white)
                                    .padding(.top, 80.0)
                                Button {
                                    print("account created")}
                            label: {
                                Text("Create account")
                            }
                            .padding(.top, 80.0)
                                    
                            }
                        }
                       
                        
                    }
                    
                    .padding(.bottom, 20.0)
                    
                  
                    VStack{
                      
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(Color.black.opacity(0.2))
                 .cornerRadius(20)
                .ignoresSafeArea()
            }
            
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
