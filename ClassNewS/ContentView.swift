//
//  ContentView.swift
//  ClassNewS
//
//  Created by 暨大附中03 on 2021/11/9.
//

import SwiftUI

struct ContentView: View {
    
    @State var Colortap = true
    
    var body: some View {
        ZStack {
            ColorVIew(Colortap: $Colortap)
            Rectangle()
                .offset(y:Colortap ? 1000 : 0)
                .onTapGesture {
                    Colortap.toggle()
                }.animation(.easeInOut)
        }.background(Color(.blue))
        .ignoresSafeArea()
           
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorVIew: View {
    
    @Binding var Colortap :Bool
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .background(Colortap ? Color.gray : Color.green)
            .cornerRadius(20)
            .onTapGesture {
                Colortap.toggle()
            }
    }
}
