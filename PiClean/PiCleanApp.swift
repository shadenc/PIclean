//
//  PiCleanApp.swift
//  PiClean
//
//  Created by Reema Alfaleh on 06/07/1445 AH.
//

import SwiftUI

@main
struct PiCleanApp: App {
    
@StateObject var vm = ViewModel()

    var body: some Scene {
        
        WindowGroup {
       
            Group{
                //           OnBording()
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
                            //vm.Count = 0
                            print(vm.Count)
                            print(vm.hasOnboarding)
//                            vm.hasOnboarding = true
                            
                        }
                }
             
            }
            .environmentObject(vm)
.onAppear{
//                //test only
     vm.hasOnboarding = false
 }
        }
    }
}
