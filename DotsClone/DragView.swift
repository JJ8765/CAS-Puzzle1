import SwiftUI

struct DragView: View {
    var body: some View {
        ZStack{
            DragImage(imageNames: "7", endLocation: CGPointMake(-100, 100))
            DragImage(imageNames: "8", endLocation: CGPointMake(0, 100))
            DragImage(imageNames: "9", endLocation: CGPointMake(100, 100))
            
            
            DragImage(imageNames: "5", endLocation: CGPointMake(-100, 0))
            DragImage(imageNames: "4", endLocation: CGPointMake(0, 0))
            DragImage(imageNames: "6", endLocation: CGPointMake(100, 0))
            
            DragImage(imageNames: "1", endLocation: CGPointMake(-100, -100))
            DragImage(imageNames: "2", endLocation: CGPointMake(0, -100))
            DragImage(imageNames: "3", endLocation: CGPointMake(100, -100))
        }
    }
}



struct DraggableImage_Previews: PreviewProvider {
    static var previews: some View {
        DragView()
    }
}

