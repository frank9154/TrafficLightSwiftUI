//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Александр Соколов on 03.03.2024.
//

import SwiftUI

struct TrafficLightView: View {
    @State private var redLightAlpha: Double = 0.0
    @State private var yellowLightAlpha: Double = 0.0
    @State private var greenLightAlpha: Double = 0.0
    @State private var buttonTitle: String = "START"
    @State private var activeLightIndex: Int = 0

    var body: some View {
        VStack {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.red)
                        .opacity(redLightAlpha)
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.yellow)
                        .opacity(yellowLightAlpha)
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.green)
                        .opacity(greenLightAlpha)
                    
                    Button(action: {
                        if buttonTitle == "START" {
                            redLightAlpha = 1.0
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
           redLightAlpha = 0.3
           yellowLightAlpha = 0.3
           greenLightAlpha = 0.3
           switch activeLightIndex {
           case 0:
               redLightAlpha = 1.0
               activeLightIndex = 1
           case 1:
               yellowLightAlpha = 1.0
               activeLightIndex = 2
           case 2:
               greenLightAlpha = 1.0
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


#Preview {
    TrafficLightView()
}
