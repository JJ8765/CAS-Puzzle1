import SwiftUI

struct DragImage: View {
    
    @State var imageNames: String
    private let imageSize: CGFloat = 120
    @State private var offset = CGSize.zero
    var endLocation: CGPoint
    
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                var x = value.startLocation.x + value.translation.width - imageSize/2
                var y = value.startLocation.y + value.translation.height - imageSize/2
                
                if abs(x - endLocation.x) < 20 && abs(y - endLocation.y) < 20 {
                    // If the x and y values are close enough to the end location, snap to the end location
                    x = endLocation.x
                    y = endLocation.y
                }
                
                offset = CGSize(width: x, height: y)
            }
    }
    
//    init(imageNames: String, endLocation:CGPoint){
//        self.offset = CGSize{
//        width: Int.random(in: -200... 200),
//        height: Int.random(in: -200... 200)
//        }
//
//        self.imageNames = imageNames
//        self.endLocation = endLocation
//    }
    
    var body: some View {
        VStack{
            Image(imageNames)
                .resizable()
                .frame(width: 100, height: 100)
                .offset(offset)
                .gesture(dragGesture)
        }
    }
}

