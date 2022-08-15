//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
            Image("prayer")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: 350)
            
            VStack{
            Counter(myCounter: $counter[0], title: "استغفر الله العظيم")
            Counter(myCounter: $counter[2], title: "سبحان الله وبحمده")
            Counter(myCounter: $counter[1], title: "سبحان الله العظيم")

            }
        }
    }
}


// يجب عمل extract


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Counter: View {
    @Binding var myCounter: Int
    @State var title: String
    var body: some View {
        HStack{
            Text(title).font(.title)
                .foregroundColor(.white)
            Spacer()
            ZStack{
                Color.black
                    .frame(width: 125, height: 125)
                    .clipShape(Circle())
                    .opacity(0.2)
            Text("\(myCounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .padding()
                .onTapGesture {
                    myCounter = myCounter + 1
                }
            }.padding()
        }
    }
}
