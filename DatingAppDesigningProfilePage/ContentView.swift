//
//  ContentView.swift
//  DatingAppDesigningProfilePage
//
//  Created by ramil on 18.02.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Profile()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Profile: View {
    var body: some View {
        ZStack {
            Color("Color").edgesIgnoringSafeArea(.all)
            
            Image("bg")
                .resizable()
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("Orange"))
                    }
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image(systemName: "xmark.circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color("Orange"))
                    }
                }
                
                Spacer()
                
                ZStack(alignment: .top) {
                    VStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Flower,")
                                    .font(.title)
                                Text("Rose")
                            }.padding()
                            Spacer()
                            
                            HStack(spacing: 8) {
                                Image(systemName: "map")
                                    .resizable()
                                    .frame(width: 15, height: 20)
                                Text("Spain")
                            }
                            .padding()
                            .background(Color.black.opacity(0.1))
                            .padding()
                            .cornerRadius(10)
                        }.padding(.top, 30)
                        
                        Text("A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms).")
                            .padding(.top)
                    }
                    .padding()
                    .background(BlurView())
                    .clipShape(BottomShape())
                    .cornerRadius(25)
                    
                    ZStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "circle.grid.hex")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding(20)
                                .background(Color("Orange").opacity(0.8))
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }
                        
                        Circle()
                            .stroke(Color.white, lineWidth: 2)
                            .frame(width: 60, height: 60)
                        
                    }.offset(y: -35)
                }
   
            }.padding()
        }
    }
}

struct BottomShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        return Path { path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addArc(center: CGPoint(x: rect.width / 2, y: 0), radius: 40, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: false)
        }
    }
}

struct BlurView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialLight))
        
        return view
    }
    
    func updateUIView(_ uiView: BlurView.UIViewType, context: UIViewRepresentableContext<BlurView>) {
        
    }
}
