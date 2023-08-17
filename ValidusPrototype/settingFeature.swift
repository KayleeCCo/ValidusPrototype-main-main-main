//
//  settingFeature.swift
//  ValidusPrototype
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct settingFeature: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color("DarkBlue")
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack{
                    Text("Settings")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 190.0)
                    Spacer()
                    
                    NavigationLink(destination: AboutPage()) {
                        Text("About The Creators")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
//                           
                       
                    }
                    .padding(.all, 20.0)
                    .background(Color("Gold"))
                    .cornerRadius(20)
                    Spacer()
                    
                    
                    NavigationLink(destination: AboutPage()) {
                        Text("About The Creators")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
//
                       
                    }
                    .padding(.all, 20.0)
                    .background(Color("Gold"))
                    .cornerRadius(20)
                    Spacer()
                }
            }.toolbar {
                ToolbarItemGroup(placement: .status) {
                    HStack {
                        NavigationLink(destination: journalFeauture()) {
                            Image("journal")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        NavigationLink(destination: workoutFeature()) {
                            Image("workouts")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        NavigationLink(destination: HomeScreen()) {
                            Image("home")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        NavigationLink(destination: resourceFeature()) {
                            Image("resource")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        NavigationLink(destination: settingFeature()) {
                            Image("settings")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                        }
                        
                    }
                    
                
                    
                    
                    
                }
            }
        }
    }
}

    

            struct settingFeature_Previews: PreviewProvider {
                static var previews: some View {
                    settingFeature()
                }
            }
