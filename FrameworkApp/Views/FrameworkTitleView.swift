import SwiftUI

struct FrameworkTitleView: View {
    var framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            Text(framework.name)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
        .padding()
    }
}



//Below is used for grid view. 3 icon in each row. image at top and text in below.
//But we want to also show as a list view. So we are using the top approach. Instead of VStack
//we will use HStack.
//VStack {
//    Image(framework.imageName)
//        .resizable()
//        .scaledToFit()
//        .frame(width: 80, height: 80)
//        .clipShape(Circle())
//    Text(framework.name)
//        .bold()
//        .lineLimit(1)
//        .minimumScaleFactor(0.75)
//}
//.padding()


//Below us used for list view.
//HStack(spacing : 20) {
//    Image(framework.imageName)
//        .resizable()
//        .scaledToFit()
//        .frame(width: 60, height: 60)
//        .clipShape(Circle())
//    Text(framework.name)
//        .bold()
//        .lineLimit(1)
//        .minimumScaleFactor(0.75)
//}

