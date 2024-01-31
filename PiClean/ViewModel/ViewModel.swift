//
//  ViewModel.swift
//  PiClean
//
//  Created by Reema Alfaleh on 11/07/1445 AH.
//

import UIKit
import SwiftUI

final class ViewModel: ObservableObject{
    @Published var selectedImage1: UIImage?
    @Published var selectedImage2: UIImage?
    @Published var classificationResult2: String?
    @Published var isShowingCleanAlert: Bool = false
    @Published var isShowingUnCleanAlert: Bool = false
    @AppStorage ("Count") var Count: Int = 0
    @AppStorage ("hasOnboarding") var hasOnboarding: Bool = false
//        func appCount() {
//            self.Count += 1
//    }
}
