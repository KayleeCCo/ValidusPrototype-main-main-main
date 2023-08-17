//
//  workoutFeature.swift
//  ValidusPrototype
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct workoutFeature: View {
    
    @State private var textWorkout = ""
    
    let workouts = ["Lunges", "Go for a run", "Burpees", "Goblin Squats", "Sit Ups", "Forearm Plank", "Wall sit", "Jumping Jacks","Side Plank", "Leg Raises", "15 Minute Yoga Session", "Russian Twists", "Push Ups"]
    
    var body: some View {
        
        ZStack {
            
            Color("DarkBlue")
                .ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
            
            VStack {
                Text("Excercise Log")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                
                    .padding(.trailing, 120.0)
                Spacer()
                    .frame(height: 400.0)
                
                Text("Workout Generator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 55.0)
                Spacer()
                    .frame(height: 5.0)
                Button("Generate") {
                    func pickWorkout() -> String {
                        let random = Int.random(in: 0..<12)
                        let workout = workouts[random]
                        //var random = workout[random]                    var workout = workout.randomElement()!
                        return workout
                    }
                    
                    textWorkout = pickWorkout()
                    //print(randomWorkout)
                }
                .frame(width: 150.0, height: /*@START_MENU_TOKEN@*/150.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color("Gold")/*@END_MENU_TOKEN@*/)
                .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 0.001)
                
                
                Text(textWorkout)
                    .font(.title)
                    .foregroundColor(Color.white)
                
                
                
                Spacer ()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                Spacer()
                
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
                
                

struct workoutFeature_Previews: PreviewProvider {
                    static var previews: some View {
                        workoutFeature()
            }
}
