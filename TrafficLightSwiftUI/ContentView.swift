//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Александр Соколов on 02.03.2024.
//

import SwiftUI

struct TrafficLightView: View {
    
    @State private var redLight: Double = 0.0
    @State private var yellowLight: Double = 0.0
    @State private var greenLight: Double = 0.0
    @State private var buttonTitle: String = "START"
    @State private var activeLightIndex: Int = 0
    
    var bode: some View {
        VStack {
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)
                .opacity(redLight)
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.yellow)
                .opacity(yellowLight)
            Circle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.green)
                .opacity(greenLight)
            
            Button(action: {
                if buttonTitle == "START" {
                    redLight = 1.0
                    buttonTitle = "NEXT"
                } else {
                    setActiveLight()
                }
            }) {
                Text(buttonTitle)
            }
        }
    }
    func setActiveLight() {
        redLight = 0.3
        yellowLight = 0.3
        greenLight = 0.3
        
        switch activeLightIndex {
        case 0:
            redLight = 1.0
            activeLightIndex = 1
        case 1:
            yellowLight = 1.0
            activeLightIndex = 2
        case 2:
            greenLight = 1.0
            activeLightIndex = 0
        default:
            break
        }
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
/*struct ContentView: View {
 var body: some View {
 VStack {
 Image(systemName: "globe")
 .imageScale(.large)
 .foregroundStyle(.tint)
 Text("Hello, world!")
 }
 .padding()
 }
 }
 
 #Preview {
 ContentView()
 }
 */
