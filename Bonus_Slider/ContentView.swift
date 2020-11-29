//
//  ContentView.swift
//  Bonus_Slider
//
//  Created by 陳政沂 on 2020/11/30.
//

import SwiftUI

struct ContentView: View {
    @State private var scale: CGFloat = 1
    @State private var brightnessAmount: Double = 0
    @State private var blurriness: CGFloat = 0
    @State private var contrastdegree: Double = 1
    @State private var grayscale: Double = 0
    @State private var hueRotation: Double = 0
    @State private var rotation: Double = 0
    @State private var corner: CGFloat = 0
    
    var body: some View {
        GeometryReader{ geometry in
            VStack {
                Image("3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.width)
                    .clipped()
                    .scaleEffect(scale)
                    .brightness(brightnessAmount)
                    .blur(radius: blurriness)
                    .contrast(contrastdegree)
                    .grayscale(grayscale)
                    .hueRotation(Angle(degrees: hueRotation))
                    .rotationEffect(.degrees(rotation))
                    .cornerRadius(corner)
                
                Form{
                    VStack{
                        HStack{
                            Text("大小")
                            Slider(value: $scale, in: 0 ... 1, minimumValueLabel: Image(systemName: "minus.magnifyingglass").imageScale(.small), maximumValueLabel: Image(systemName: "plus.magnifyingglass").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.red)
                        }
                        
                        HStack{
                            Text("亮度")
                            Slider(value: $brightnessAmount, in: 0 ... 1, minimumValueLabel: Image(systemName: "sun.max.fill").imageScale(.small), maximumValueLabel: Image(systemName: "sun.max.fill").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.green)
                        }
                        
                        HStack{
                            Text("模糊度")
                            Slider(value: $blurriness, in: 0 ... 20, minimumValueLabel: Image(systemName: "wand.and.rays").imageScale(.small), maximumValueLabel: Image(systemName: "wand.and.rays").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.blue)
                        }
                        
                        HStack{
                            Text("對比度")
                            Slider(value: $contrastdegree, in: 0 ... 2, minimumValueLabel: Image(systemName: "light.min").imageScale(.small), maximumValueLabel: Image(systemName: "light.max").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.orange)
                        }
                        
                        HStack{
                            Text("灰階")
                            Slider(value: $grayscale, in: 0 ... 5, minimumValueLabel: Image(systemName: "circle").imageScale(.small), maximumValueLabel: Image(systemName: "circle.fill").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.gray)
                        }
                        
                        HStack{
                            Text("色相")
                            Slider(value: $hueRotation, in: 0 ... 180, minimumValueLabel: Image(systemName: "arrowshape.turn.up.left").imageScale(.small), maximumValueLabel: Image(systemName: "arrowshape.turn.up.right.fill").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.purple)
                        }
                        
                        HStack{
                            Text("旋轉")
                            Slider(value: $rotation, in: 0 ... 180, minimumValueLabel: Image(systemName: "person.fill").imageScale(.small), maximumValueLabel: Image(systemName: "person.fill.turn.down").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.yellow)
                        }
                        
                        HStack{
                            Text("圓角")
                            Slider(value: $corner, in: 0 ... 360, minimumValueLabel: Image(systemName: "viewfinder.circle").imageScale(.small), maximumValueLabel: Image(systemName: "viewfinder.circle").imageScale(.large)){
                                Text("")
                            }
                            .accentColor(.black)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
