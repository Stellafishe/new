//
//  ContentView.swift
//  new
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI
//changes yes

struct ContentView: View {
    @State private var selectedRating = 0
    @State var genderNeutral : Bool
    @State var wheelChairAccessible : Bool
    @State var babyChangingStations : Bool
    @State private var review = ""
    @State private var textTitle = ""
    var body: some View {
        
        
        
        
        VStack {
      Spacer()
            
            Text("Rating")
                .font(.headline)
            HStack {
                ForEach(1...5, id: \.self) { index in
                    Button(action: {
                        selectedRating = index
                    }) {
                        Image(systemName: index <= selectedRating ? "star.fill" : "star")
                            .foregroundColor(index <= selectedRating ? .yellow : .gray)
                    }
                }
            }
            
            
            Toggle(isOn: $genderNeutral) {
                Text("Gender Neutral")
            }
            Toggle(isOn: $wheelChairAccessible) {
                Text("Wheel Chair Accessible")
            }
            Toggle(isOn: $babyChangingStations) {
                Text("Baby Changing Stations")
            }
            
            
            //            ZStack{
            //                background(:_alignment:)
            Spacer()
            
            Text(textTitle)
                .font(.title)
                .multilineTextAlignment(.center)
            
            TextField("comment", text: $review)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.cyan, width: 1)
                .padding()
            
            Button("Submit") {
                textTitle = "\(review)"
            }
            .font(.title2)
            .foregroundColor(Color.purple)
            .buttonStyle(.bordered)
            .tint(.orange)
            
            
            //            }
        }
        
    }
        }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(genderNeutral: false, wheelChairAccessible:  false,babyChangingStations: false)
    }
}

