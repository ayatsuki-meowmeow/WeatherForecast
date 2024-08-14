//
//  ContentView.swift
//  WeatherForecast
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 24, low: 14)
            
            DayForecast(day: "Tue", isRainy: true, high: 26, low: 15)
            
        DayForecast(day: "Wed", isRainy: false, high: 22, low: 16)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        }
        
        return "sun.max.fill"
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        }
        
        return Color.yellow
    }

    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName).foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.semibold)
                .foregroundColor(Color.secondary)
        }
        .padding()
    }
}
