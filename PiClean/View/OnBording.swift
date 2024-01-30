//
//  OnBording.swift
//  PiClean
//
//  Created by LATIFA on 30/01/2024.
//

import SwiftUI

struct OnBording: View {
@EnvironmentObject var vm : ViewModel
    
    var body: some View {
        
        if vm.Count2 == 0  {
            
            splash()
        }
        else {
            CameraView()
        }
    }
}

#Preview {
    OnBording()
    .environmentObject(ViewModel())
}
