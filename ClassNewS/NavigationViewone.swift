//
//  NavigationViewone.swift
//  ClassNewS
//
//  Created by 暨大附中03 on 2021/11/9.
//

import SwiftUI

struct NavigationViewone: View {
    var body: some View {
        NavigationView{
            List(0 ..< 5){ item in
                NavigationLink{
                    Torce(index: item)
                } label:{
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
            }.toolbar{
                ToolbarItem(placement:.navigationBarLeading){
                    Button {
                        
                    } label: {
                        Image(systemName: "moon.fill")
                    }

                }
            }
        }.statusBar(hidden: true)
        
    }
}

struct NavigationViewone_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewone()
    }
}

struct Torce: View {
    
    @State var index = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.blue)
                .cornerRadius(15)
            .navigationTitle("Rectangle\(index)")
            NavigationLink{
                Text("到\(index)")
            } label:{
                Text("去到\(index)")
                    .font(.title)
                    .foregroundColor(.green)
            }
        }
    }
}
