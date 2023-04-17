//
//  ContentView.swift
//  profile-screen
//
//  Created by Bruna Marques De Oliveira Fonseca on 16/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ViewBuilder
    var body: some View {
        VStack {
            ZStack {
                Image("Wallpaper")
                    .resizable()
                    .scaledToFit()
                
                Image("Happy_Smile")
                    .resizable()
                    .scaledToFill()
                    .clipShape(Circle())
                    .padding(.top, 150)
                    .frame(width: 200, height: 200)
            }
            .padding(.bottom, 20)
            
            VStack(alignment: .leading) {
                Text("Assistidos")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(1...3, id: \.self) { item in
                            Image("Movie_Clap_Cell")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .frame(height: 300)
            .padding()
            
            VStack(alignment: .leading) {
                Text("Na Fila")
                    .foregroundColor(.white)
                    .font(.system(size: 24))
                ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(1...3, id: \.self) { item in
                            Image("Movie_Clap_Cell")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .frame(height: 300)
            .padding()
            
        }
        .ignoresSafeArea()
        .background(Color("mainColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
