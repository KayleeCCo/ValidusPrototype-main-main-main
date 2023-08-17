//
//  journalFeauture.swift
//  ValidusPrototype
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct journalFeauture: View {
    @State private var showNewTask = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("DarkBlue")
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack{
                    HStack {
                        Text("Goals")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.trailing, 250.0)
                        Spacer()
                        
                        //Add a Button here with Text("+") and delete any code in the action
                        Button(action:{
                            self.showNewTask = true
                            
                        }) {
                            Text("+")
                                .font(.largeTitle)
                                .fontWeight(.light)
                                .foregroundColor(Color(hue: 0.306, saturation: 0.264, brightness: 0.697))
                            
                            
                            
                            
                        }
                        
                    }
                }
                .toolbar {
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
}



struct journalFeauture_Previews: PreviewProvider {
    static var previews: some View {
        journalFeauture()
    }
}
