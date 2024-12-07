//
//  ContentView.swift
//  WeatherForecast
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        WeeklySummary(averageHigh: 23.2, averageLow: 15.4)
        
        
        ScrollView(.horizontal){
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 24, low: 14)
                
                DayForecast(day: "Tue", isRainy: true, high: 26, low: 15)
                
                DayForecast(day: "Wed", isRainy: false, high: 22, low: 16)
            
                DayForecast(day: "Thu", isRainy: false, high: 23, low: 15)
                
                DayForecast(day: "Fri", isRainy: true, high: 21, low: 17)
            }
        }.defaultScrollAnchor(.center)
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
            
            if (high > 24) {
                Text("High: \(high)")
                    .fontWeight(Font.Weight.semibold).foregroundStyle(Color.red)
            } else {
                Text("High: \(high)")
                    .fontWeight(Font.Weight.semibold)
            }
                
            Text("Low: \(low)")
                .fontWeight(Font.Weight.semibold)
                .foregroundColor(Color.secondary)
        }
        .padding()
    }
}

struct WeeklySummary: View {
    let averageHigh: Double
    let averageLow: Double
    
    var body: some View {
        VStack{
            Text("平均最高気温：\(averageHigh)").fontWeight(Font.Weight.bold)
            Text("平均最低気温：\(averageLow)").fontWeight(Font.Weight.bold)
        }
    }
}
