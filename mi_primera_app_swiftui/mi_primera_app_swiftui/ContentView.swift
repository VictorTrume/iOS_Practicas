//
//  ContentView.swift
//  mi_primera_app_swiftui
//
//  Created by alumno on 2/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var texto_introducidido_por_el_usuario: String = "Place holder"
    @State private var texto_a_mostrar_en_saludo: String = "mundo"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hola \(texto_a_mostrar_en_saludo)")
            
            TextEditor(text: $texto_introducidido_por_el_usuario)
            
            Button("¡PULSAME!", action: {
                if(texto_introducidido_por_el_usuario == ""){
                    texto_a_mostrar_en_saludo = "mundo"
                }
                else{
                   texto_a_mostrar_en_saludo = texto_introducidido_por_el_usuario
                    texto_introducidido_por_el_usuario = ""
                }
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
