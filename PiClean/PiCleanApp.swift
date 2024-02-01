import SwiftUI

@main
struct PiCleanApp: App {
    
@StateObject var vm = ViewModel()

    var body: some Scene {
        
        WindowGroup {
       
            Group{
                if vm.hasOnboarding{
                    CameraView()
                }
                else{
                   splash()
                        .onDisappear {
                            vm.hasOnboarding = true
                        }


                        .preferredColorScheme(.dark)
                        .onAppear{
                             //TEST ONLY
                          //  vm.Count = 0
                            print(vm.Count)
                            print(vm.hasOnboarding)
                        }
                }
             
            }
            .environmentObject(vm)
            
             //TEST ONLY
//            .onAppear{
//            vm.hasOnboarding = false
//                     }
        }
    }
}
