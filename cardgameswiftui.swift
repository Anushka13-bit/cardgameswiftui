//
//  ContentView.swift
//  swiftapp
//
//  Created by Anushka Gattani on 29/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var playercard="card 13"
    @State var cpucard="card 4"
    @State var playerscore=0
    @State var cpuscore=0
    var body: some View {
        
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                        Spacer()
                        Image(playercard)
                        Spacer()
                        Image(cpucard)
                        Spacer()
                    }
                
                
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                

                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        
                     
                        Text("PLAYER")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                      
                       
                        Text(String(playerscore))
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                       
                        
                    }
                    Spacer()
                   
                    
                    VStack{
                       
                        Text("CPU")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                     
                        Text(String(cpuscore))
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                      
                        
                            
                        }
                    Spacer()
                   
                    
                }
                Spacer()
           
                
                
            }
            
        }
     
            
        
            
        }
    func deal(){
        @State var playercardvalue = Int.random(in:2...14)
        @State var cpucardvalue = Int.random(in:2...14)
        playercard = "card" + String(playercardvalue)
        cpucard = "card" + String(cpucardvalue)
        if playercardvalue > cpucardvalue{
            playerscore+=1
            print(playerscore)
            
        }
        else if playercardvalue < cpucardvalue{
             cpuscore+=1
            print(cpuscore)
        }
        else{
            print("TIE!")
        }
    }

        
                        
        
    }
    


    

      

#Preview {
    ContentView()
}


