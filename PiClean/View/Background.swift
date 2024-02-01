import SwiftUI

struct Background: View {
@State private var showHelp = false
    var body: some View {
    
        ZStack {
            ImagesView(imageNames: ["Image1", "Image2", "Image3", "Image4","Image5","Image6","Image7","Image8","Image9","Image10","Image11","Image12","Image13","Image15","Image16","Image17","Image16","Image19","Image20","Image21","Image22"])
            
            
            HStack {

                Button(action: {
                    self.showHelp.toggle()
                }) {
                    Image(systemName: "questionmark.circle")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .background(
                                      Rectangle()
                                          .foregroundColor(Color.black)
                                          .cornerRadius(10)
                                  )
                        .foregroundColor(.blue)
                        
                }.padding( .trailing, 300)
                .padding(.bottom, 700 )
                
                .fullScreenCover(isPresented: $showHelp) {
                    splash()
                }

            }
                        }
                    }
                }

struct ImagesView: View {
                    let imageNames: [String]

                    var body: some View {
                        ZStack {
                            ForEach(imageNames, id: \.self) { imageName in
                                ImageView(imageName: imageName)
                            }
                        }
                    }
                }

struct ImageView: View {
                    let imageName: String
                    @State private var scale: CGFloat = 1.0

                    var body: some View {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .scaleEffect(scale)
                            .onAppear {
                                withAnimation(Animation.easeInOut(duration: 10).repeatForever(autoreverses: true)) {
                                    self.scale = 1.2
                                }
                            }
                            .position(initialPosition())
                            .opacity(0.8)
                    }

                    private func initialPosition() -> CGPoint {
                        let screenWidth = UIScreen.main.bounds.width
                        let screenHeight = UIScreen.main.bounds.height

                        let x = CGFloat.random(in: 0...screenWidth)
                        let y = CGFloat.random(in: 0...screenHeight)

                        return CGPoint(x: x, y: y)
                    }
                }




#Preview {
    Background()
}
