//
//  ContentView.swift
//  Four Corners
//
//  Created by Jonathan S. on 10/7/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var score = 0
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack(spacing: 0) {
                
                VStack {
                    Text("Welcome to Four Corners!")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("Score: \(score)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .frame(height: geometry.size.height * 0.18)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                
                VStack(spacing: 0) {
                    
                    HStack(spacing: 0) {
                        
                        Button {
                            score += 10
                        } label: {
                            GameArea(
                                title: "Top Left",
                                points: "+10",
                                color: .blue
                            )
                        }
                        
                        Button {
                            score += 5
                        } label: {
                            GameArea(
                                title: "Top Right",
                                points: "+5",
                                color: .green
                            )
                        }
                    }
                    
                    HStack(spacing: 0) {
                        
                        Button {
                            score += 25
                        } label: {
                            GameArea(
                                title: "Bottom Left",
                                points: "+25",
                                color: .orange
                            )
                        }
                        
                        Button {
                            score += 1
                        } label: {
                            GameArea(
                                title: "Bottom Right",
                                points: "+1",
                                color: .red
                            )
                        }
                    }
                }
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct GameArea: View {
    
    let title: String
    let points: String
    let color: Color
    
    var body: some View {
        VStack(spacing: 10) {
            
            Text(title)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(points)
                .font(.title)
                .fontWeight(.bold)
            
            Text("TAP!")
                .font(.caption)
                .fontWeight(.bold)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
