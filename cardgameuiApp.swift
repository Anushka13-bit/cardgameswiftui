import SwiftUI


import SwiftUI

@main
struct cardgameui: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
struct ContentView: View {
    @State private var playercard = "card13"
    @State private var cpucard = "card4"
    @State private var playerscore = 0
    @State private var cpuscore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    deal()
                }) {
                    Image("button")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
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
                    
                    VStack {
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
    
    func deal() {
        let playercardvalue = Int.random(in: 2...14)
        let cpucardvalue = Int.random(in: 2...14)
        playercard = "card" + String(playercardvalue)
        cpucard = "card" + String(cpucardvalue)
        
        if playercardvalue > cpucardvalue {
            playerscore += 1
        } else if playercardvalue < cpucardvalue {
            cpuscore += 1
        } else {
            print("TIE!")
        }
    }
}

#Preview {
    ContentView()
}
