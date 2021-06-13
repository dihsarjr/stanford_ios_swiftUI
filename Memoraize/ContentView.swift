//
//  ContentView.swift
//  Memoraize
//
//  Created by Rashid on 10/06/21.
//

import SwiftUI

struct ContentView: View {
   @State var list:[String] = ["🙈","🐵","🐽","🦑","🐡","🐢","🐍","🐛","🐳","🦭","🐊","👛","🐒","💍","🪖","🦚","🌏","❄️","🔥","🥝"]
    @State var emogiCount:Int = 5
    
    var body: some View {
        VStack{
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80, maximum: 100))],content: {
                ForEach(list[0...emogiCount],id:\.self){emoji in CardView(emogi: emoji).aspectRatio(1, contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)}
            }).padding()
        }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack{
                Button(action: {
                    if emogiCount<list.count-1 {
                        emogiCount += 1
                    }
                }, label: {
                    Image(systemName: "plus.app")   .resizable()
                        .frame(width: 40.0, height:40.0)
                })
                Spacer()
                Button(action: {
                    list.shuffle()
                }, label: {
                    Text("SHUFFLE").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                })
               
                Spacer()
                Button(action: {
                    if emogiCount>0 {
                        emogiCount -= 1
                    }
                }, label: {
                    Image(systemName: "minus.rectangle")
                        .resizable()
                        .frame(width: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/40.0/*@END_MENU_TOKEN@*/)
                })
                
            }.padding()
        }
 
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
   @State var isFaceUp:Bool = false
    var emogi:String
    var body: some View {
        ZStack{
            if isFaceUp{
                RoundedRectangle(cornerRadius: 8)
                    .stroke()
                    .stroke(lineWidth: 3)
                Text(emogi).font(.largeTitle).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }else{
                RoundedRectangle(cornerRadius: 8)
                    .fill()
                    
            }
     
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


