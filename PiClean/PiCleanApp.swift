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
       
        
           OnBording()
            //splash()
                .environmentObject(vm)
                .preferredColorScheme(.dark)
                .onAppear{
                    //vm.Count = 0
                    print(vm.Count)
                    print(vm.Count2)
                }
//                .environment(\.colorScheme, .dark)

            
        }
    }
}
