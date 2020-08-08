//
//  ContentView.swift
//  Simple Spin App
//
//  Created by Sreenivas K on 08/08/20.
//  Copyright © 2020 Sreenivas K. All rights reserved.
//

import SwiftUI
 

struct ContentView: View {
    @State private var image=["😀","💖","👨🏻‍💻","🥰"]
    @State private var num=[0,0,0,0]
    @State private var credits=1000;
    var body: some View {
       
        ZStack{
            
            Rectangle().foregroundColor(Color(red:200/255,green:143/255,blue:32/225)).edgesIgnoringSafeArea(.all)
            Rectangle().foregroundColor(Color( red: 2298/225, green: 195/225, blue: 76/225)).rotationEffect(Angle(degrees: 45)).edgesIgnoringSafeArea(.all)
            VStack{
            Spacer()
            HStack{
                Spacer()
                    Image(systemName: "star").foregroundColor(.red)
                Spacer()
                Text("Swift UI Slots").bold()
                Spacer()
                    Image(systemName: "star").foregroundColor(.red)
              Spacer()
                  
                    
                }.font(.title)
                Spacer()
                VStack{
                                  Button(action: {
                                                    
                                                }, label: {
                                                    Text("Credits : " + String(credits)).padding().background(Color.white).cornerRadius(20)
                                                })
                              }
                Spacer()
                HStack{
                    Text(image[num[0]]).font(.largeTitle).padding(.all).foregroundColor(.red).background(Color.white.opacity(20)).aspectRatio(1, contentMode:.fit).cornerRadius(20)
                    Text(image[num[1]]).font(.largeTitle).padding(.all).foregroundColor(.red).background(Color.white.opacity(20)).aspectRatio(1, contentMode:.fit).cornerRadius(20)
                    Text(image[num[2]]).font(.largeTitle).padding(.all).foregroundColor(.red).background(Color.white.opacity(20)).aspectRatio(1, contentMode:.fit).cornerRadius(20)
                    Text(image[num[3]]).font(.largeTitle).padding(.all).foregroundColor(.red).background(Color.white.opacity(20)).aspectRatio(1, contentMode:.fit).cornerRadius(20)
                    
                                   
                               }
                Spacer()
                Button(action: {
                    self.num[0]=Int.random(in:0...self.image.count-1)
                    self.num[1]=Int.random(in:0...self.image.count-1)
                    self.num[2]=Int.random(in:0...self.image.count-1)
                    self.num[0]=Int.random(in:0...self.image.count-1)
                    
                    if(self.num[0] == self.num[1] && self.num[1]==self.num[2] && self.num[2] == self.num[3]){
                        self.credits = self.credits+100
                    }else{
                        self.credits = self.credits-10
                    }
                }, label: {
                    Text("Spin").font(.title).padding(.all,10).background(Color.white.opacity(0.9)).cornerRadius(20)
                })
                
                
               Spacer()
        }
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
