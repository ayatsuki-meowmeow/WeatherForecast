//
//  ContentView.swift
//  WeatherForecast
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                Text("Mon")
                Image(systemName: "sun.max.fill").foregroundColor(Color.red)
                Text("High: 25")
                Text("Low: 13")
            }
            .padding()
            
            VStack {
                Text("Tue")
                Image(systemName: "cloud.rain.fill").foregroundColor(Color.blue)
                Text("High: 20")
                Text("Low: 8")
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
