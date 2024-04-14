import SwiftUI

struct REView: View {
    /*
     //MARK: How to detect when your app
     moves to the background or
     foreground with scenePhase
     */
    @Environment(\.scenePhase) var scenePhase
    
    var body: some View {
        Text("Detect when your app moves to the background or foreground with scenePhase")
            .font(.title2)
            .onChange(of: scenePhase)  { newPhase in
                if newPhase == .inactive {
                    print("Inactive")
                } else if newPhase == .active {
                    print("Active")
                } else if newPhase == .background {
                    print("Background")
                }
            }
       VStack
        {
          
            Text("1. The Active state is used when your app is in the foreground and interactive for the user, meaning that they are using it right now.")
//            Text("2. The Background state is used when your app isn’t currently visible, so you should cut back the amount of work you do.")
//            Text("3. The Inactive state is used when your app is visible, but not directly interactive to the user. For example, if you enter multi-tasking mode while running the app – you can see your app’s window alongside others, but you’re not directly using it.")
        }
        .multilineTextAlignment(.leading)
        .padding()
           
    }
}

#Preview {
    REView()
}
