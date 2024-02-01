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

}
