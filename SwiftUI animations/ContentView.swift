//
//  ContentView.swift
//  SwiftUI animations
//
//  Created by Nethan on 27/2/23.
//

import SwiftUI



struct ContentView: View {
    @State var sizes = [290, 260, 230, 210, 180, 150]
    @State var rotate = false
    @State var colors = [Color.red, Color.pink, Color.blue, Color.purple, Color.yellow]
    @State var coordinates1 = [0, 0]
    @State var coordinates2 = [0, 0]
    @State var coordinates3 = [0, 0]
    @State var coordinates4 = [0, 0]
    @State var coordinates5 = [0, 0]
    @State var coordinates6 = [0, 0]
    @State var coordinates7 = [0, 0]
    @State var coordinates8 = [0, 0]
    @State var chosenColor = Color.red
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                VStack {
                    VStack {
                    Text(".")
                        .foregroundColor(colors.randomElement())
                        .font(.largeTitle)
                        .position(x: CGFloat(coordinates1[0]), y: CGFloat(coordinates1[1]))
                    Text(".")
                        .foregroundColor(colors.randomElement())
                        .font(.largeTitle)
                        .position(x: CGFloat(coordinates1[0]), y: CGFloat(coordinates1[1]))
                    
                    Text(".")
                        .foregroundColor(colors.randomElement())
                        .font(.largeTitle)
                        .position(x: CGFloat(coordinates1[0]), y: CGFloat(coordinates1[1]))
                }
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates1[0]), y: CGFloat(coordinates1[1]))
                    
                    
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates1[0]), y: CGFloat(coordinates1[1]))
                    
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates1[0]), y: CGFloat(coordinates1[1]))
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.system(size: 30))
                    .position(x: CGFloat(coordinates2[0]), y: CGFloat(coordinates2[1]))
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates3[0]), y: CGFloat(coordinates3[1]))
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates4[0]), y: CGFloat(coordinates4[1]))
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates5[0]), y: CGFloat(coordinates5[1]))
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates6[0]), y: CGFloat(coordinates6[1]))
                Text(".")
                    .foregroundColor(colors.randomElement())
                    .font(.largeTitle)
                    .position(x: CGFloat(coordinates7[0]), y: CGFloat(coordinates7[1]))
                
          
            }
                Image(systemName: "applelogo")
                    .foregroundColor(.blue)
                    .opacity(0.4)
                    .font(.system(size: CGFloat(sizes[0])))
                
                Image(systemName: "applelogo")
                    .foregroundColor(.purple)
                    .opacity(0.4)
                    .font(.system(size: CGFloat(sizes[1])))
                Image(systemName: "applelogo")
                    .foregroundColor(.pink)
                    .opacity(0.4)
                    .font(.system(size: CGFloat(sizes[2])))
                Image(systemName: "applelogo")
                    .foregroundColor(.cyan)
                    .opacity(0.4)
                    .font(.system(size: CGFloat(sizes[3])))
                Image(systemName: "applelogo")
                    .foregroundColor(.cyan)
                    .opacity(0.4)
                    .font(.system(size: CGFloat(sizes[4])))
                Image(systemName: "applelogo")
                    .foregroundColor(.purple)
                    .opacity(0.4)
                    .font(.system(size: CGFloat(sizes[5])))
                
            }
            .rotationEffect(.degrees(360))
            .animation(Animation.linear(duration: 1.2).repeatForever(autoreverses: false))
            .onAppear {
                var i = 0
                withAnimation(.easeOut(duration: 0.5).repeatForever()) {
                    sizes[0] = Int.random(in: 0...sizes[0])
                    sizes[1] = Int.random(in: 50...sizes[1]-30)
                    sizes[2] = Int.random(in: 50...sizes[2]-30)
                    sizes[3] = Int.random(in: 50...sizes[3]-30)
                    sizes[4] = Int.random(in: 50...sizes[4]-30)
                    sizes[5] = Int.random(in: 50...sizes[5]-30)
                    i += 1
                    
                    
                }
                
                Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
                    
                    let seconds = 0.3
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                        chosenColor = colors.randomElement() ?? Color.blue
                        
                        coordinates1[0] = Int.random(in: 0..<350)
                        coordinates1[1] = Int.random(in: 0..<350)
                        coordinates2[0] = Int.random(in: 0..<350)
                        coordinates2[1] = Int.random(in: 0..<350)
                        coordinates3[0] = Int.random(in: 0..<350)
                        coordinates3[1] = Int.random(in: 0..<350)
                        coordinates4[0] = Int.random(in: 0..<350)
                        coordinates4[1] = Int.random(in: 0..<350)
                        coordinates5[0] = Int.random(in: 0..<350)
                        coordinates5[1] = Int.random(in: 0..<350)
                        coordinates6[0] = Int.random(in: 0..<350)
                        coordinates6[1] = Int.random(in: 0..<350)
                        coordinates7[0] = Int.random(in: 0..<350)
                        coordinates7[1] = Int.random(in: 0..<350)
                        coordinates8[0] = Int.random(in: 0..<350)
                        coordinates8[1] = Int.random(in: 0..<350)
                    }
                    
                    
                    
                    
                    
                    
                }

            }
            Spacer()
            Text("This iPhone's owner\nwill be back soon.")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
