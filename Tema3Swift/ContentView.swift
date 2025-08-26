//
//  ContentView.swift
//  Tema3Swift
//
//  Created by JESUS GARZA on 26/08/25.
//

import SwiftUI

struct ContentView: View {
    // State variables for interactive controls
    @State private var name: String = ""
    @State private var isOn: Bool = false
    @State private var sliderValue: Double = 0.5
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Text control
                Text("Bienvenidos a SwiftUI!")
                    .font(.title)
                    .padding()
                
                // Image control usando Assets
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .shadow(radius: 5)
                
                // Image control con SF Symbol
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .foregroundColor(.yellow)
                
                // Button control
                Button(action: {
                    name = "¡Botón presionado!"
                }) {
                    Text("Presiona el botón")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                // TextField control
                TextField("Escribe tu nombre", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                Text("Tu nombre: \(name)")
                    .font(.subheadline)
                
                // Toggle control
                Toggle(isOn: $isOn) {
                    Text("Interruptor ON/OFF")
                }
                Text(isOn ? "Está encendido" : "Está apagado")
                    .font(.subheadline)
                
                // Slider control
                VStack {
                    Slider(value: $sliderValue, in: 0...1)
                    Text("Valor del slider: \(String(format: "%.2f", sliderValue))")
                }
                
                // HStack example
                HStack {
                    Text("HStack:")
                    Image(systemName: "heart.fill")
                    Image(systemName: "bolt.fill")
                }
                .foregroundColor(.red)
                
                // ZStack example
                // ZStack permite superponer vistas una encima de otra.
                // En este ejemplo, se dibuja un círculo verde y encima se coloca el texto "ZStack".
                ZStack {
                    // Fondo: círculo verde translúcido
                    Circle()
                        .fill(Color.green.opacity(0.3))
                        .frame(width: 80, height: 80)
                    // Encima: texto centrado
                    Text("ZStack")
                        .font(.headline)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
