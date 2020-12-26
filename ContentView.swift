////
////  ContentView.swift
////  test
////
////  Created by junhao chen on 12/12/20.
////
//
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//
//        VStack{
////            Spacer()
//            ZStack {
//                Image("london")
//                    .cornerRadius(20)
//                    .padding()
//
//                Text("London")
//                    .foregroundColor(Color.white)
//                    .padding()
//                    .background(Color.black)
//                    .opacity(0.75)
//                    .cornerRadius(5)
//            }
//            Spacer()
//            ZStack {
//                Image("toronto")
//                    .cornerRadius(20)
//                    .padding()
//
//                Text("Toroto")
//                    .foregroundColor(Color.white)
//                    .padding()
//                    .background(Color.black)
//                    .opacity(0.75)
//                    .cornerRadius(5)
//            }
////            Spacer()
//        }
//
//    }
//}
//

//
//  WarView.swift
//  test
//
//  Created by junhao chen on 12/12/20.
//

import SwiftUI


//struct Player {
//
//    @State var counter:Int = 0
//    @State var cardNum:Int = Int.random(in: 2...14)
//
//    func resetCard(){
//        self.cardNum = Int.random(in: 2...14)
//    }
//
//    func increateCounter(){
//        self.counter += 1
//    }
//
//}

struct ContentView: View {
    
//    @State var player = Player()
//    @State var cpu = Player()
    
    @State private var playerCardNum = Int.random(in: 2...14)
    @State private var cpuCardNum = Int.random(in: 2...14)
    @State private var playerCounter = 0
    @State private var cpuCounter = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card"+String(playerCardNum))
                    Spacer()
                    Image("card"+String(cpuCardNum))
                    Spacer()
//                    Spacer()
//                    Image("card"+String(player.cardNum))
//                    Spacer()
//                    Image("card"+String(cpu.cardNum))
//                    Spacer()
                    
                }
                Spacer()
                Button(action:{
                    playerCardNum = Int.random(in: 2...14)
                    cpuCardNum = Int.random(in: 2...14)
                    if(playerCardNum >= cpuCardNum){
                        playerCounter += 1
                    }
                    else{
                        cpuCounter += 1
                    }
                    
//                    player.resetCard()
//                    cpu.resetCard()
//                    if(player.cardNum >= cpu.cardNum){
//                        player.increateCounter()
//                    }
//                    else{
//                        cpu.increateCounter()
//                    }
                }
                , label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                            
//                        Text(String(player.counter))
                        Text(String(playerCounter))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                            
//                        Text(String(cpu.counter))
                        Text(String(cpuCounter))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                }
                Spacer()
            
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
