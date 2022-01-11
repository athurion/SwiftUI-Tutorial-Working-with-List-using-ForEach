//
//  ContentView.swift
//  SwiftUI Tutorial: Working with List using ForEach
//
//  Created by Alvin Sosangyo on 01/10/22.
//


import SwiftUI

struct ContentView: View {
    
    var collections = [

        //Make sure to change the image name to the one that you'll be using
        Collections(name: "Cafe", image: "xps"),
        Collections(name: "Home", image: "annie-spratt"),
        Collections(name: "Commute", image: "nabeel-syed"),
        Collections(name: "Travel", image: "robert-lukeman"),
        Collections(name: "Public", image: "ryoji-iwata")
        
    ]
    
    var body: some View {
            
        List(collections) { index in
            
            ImageLabelRow(collection: index)
            
        }
        
    }
    
}

struct Collections: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}


struct ImageLabelRow: View {
    
    var collection: Collections

    var body: some View {
        ZStack(alignment: .leading) {
            Image(collection.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .cornerRadius(20)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .opacity(0.4)
                )

            Text(collection.name)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
                .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


