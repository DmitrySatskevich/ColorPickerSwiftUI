//
//  RectangleView.swift
//  ColorPickerSwiftUI
//
//  Created by dzmitry on 16.02.23.
//

import SwiftUI

// MARK: - RectangleView

struct RectangleView: View {
    // MARK: Internal

    var rectangleOne: some View {
        setRectangle()
    }

    var rectangleTwo: some View {
        setRectangle()
    }

    var body: some View {
        VStack {
            rectangleOne
            rectangleTwo
        }
    }

    // MARK: Private

    private func setRectangle() -> some View {
        return Rectangle()
            .frame(width: 350, height: 150)
            .overlay(Rectangle().stroke(.white, lineWidth: 2))
            .cornerRadius(25)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
