//
//  ContentView.swift
//  Sleeper
//
//  Created by Lucas on 12/1/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var  wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("When do you want to wake up?")
                    .font(.headline)
                DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                Text("Desired amount of sleep")
                    .font(.headline)
                Stepper ("\(sleepAmount .formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                Text("Daile coffe intake")
                    .font(.headline)
                Stepper ("\(coffeeAmount .formatted()) cup(s)", value: $coffeeAmount, in: 1...20)
            }
            .navigationTitle("Sleeper")
            .toolbar{
                Button("Calculate", action: calcBedtime)
            }
        }
        
    }
    func calcBedtime(){
        
    }
}

#Preview {
    ContentView()
}
