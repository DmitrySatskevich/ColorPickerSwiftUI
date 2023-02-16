//
//  ContentView.swift
//  ColorPickerSwiftUI
//
//  Created by dzmitry on 16.02.23.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    
    @State private var sliderOne = 0.0
    @State private var sliderTwo = 0.25
    @State private var sliderThree = 0.50
    
    @State private var textFieldSliderOne = ""
    @State private var textFieldSliderTwo = ""
    @State private var textFieldSliderThree = ""
    
    // MARK: Internal

    var body: some View {
        ZStack {
            Color(.cyan)
                .ignoresSafeArea()
            VStack {
                RectangleView().rectangleOne.foregroundColor(Color(red: sliderOne,
                                                                   green: sliderTwo,
                                                                   blue: sliderThree,
                                                                   opacity: 1))
                    .padding(.top, -160)
                
                RectangleView().rectangleTwo
                
                HStack {
                    Text("\(sliderOne)")
                    Slider(value: $sliderOne, in: 0.0 ... 1.0, step: 0.001)
                    TextField("\(lround(sliderOne))", text: $textFieldSliderOne)
                        .frame(width: 34.0, height: 34.0)
                }.padding(.horizontal)
                
                HStack {
                    Text("\(sliderTwo)")
                    Slider(value: $sliderTwo, in: 0 ... 1, step: 0.001)
                    TextField("\(lround(sliderTwo))", text: $textFieldSliderTwo)
                        .frame(width: 34.0, height: 34.0)
                }.padding(.horizontal)
                
                HStack {
                    Text("\(sliderThree)")
                    Slider(value: $sliderThree, in: 0 ... 1, step: 0.001)
                    TextField("\(lround(sliderThree))", text: $textFieldSliderThree)
                        .frame(width: 34.0, height: 34.0)
                }.padding(.horizontal)
                
                Button(action: { colorAssignment() }) { Text("Нажми меня") }
                    .frame(width: 250, height: 60)
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                    .background(Color.yellow).cornerRadius(15)
            }
        }
    }

    // MARK: Private

    private func colorAssignment() {}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
