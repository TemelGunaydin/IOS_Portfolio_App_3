//
//  FrameworkGridView.swift
//  FrameworkApp
//
//  Created by temel gunaydin on 17.09.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @State private var viewModel  = FrameworkDetailViewModel()

    //Using Grid and NavigationLink process. IOS 16 and later..
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework){
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍏 Frameworks") // Title should be inside the NavigationStack. Otherwise, it will not be visible.
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
        }
        .tint(Color(.label)) //white for the light mode and dark will appear in darkmode. The Framework title at the top.... Currently it appears as blue.
       
        }
        
    }
}

//isShowingModalView is passed down to the DetailView file and then from there it is passed down to the XDismissButton View. In this case
//we can use environment. Goodside for both approach is that if we change the value of the binding variable it will pass its value up to the parent

//Below it will be used from another file so we put it in a different file
//struct FrameworkTitleView: View {
//    var framework: Framework
//
//    var body: some View {
//        VStack {
//            Image(framework.imageName)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 80, height: 80)
//                .clipShape(Circle())
//            Text(framework.name)
//                .bold()
//                .lineLimit(1)
//                .minimumScaleFactor(0.75)
//        }
//        .padding()
//    }
//}




//Below is used for grid view. If we want to show the pages when clicked as a sheet. You can used it below. But for sheet you need to define bools in viewmodel file.
//var body: some View {
//    NavigationStack {
//        ScrollView {
//            LazyVGrid(columns: viewModel.columns, content: {
//                ForEach(MockData.frameworks) { framework in
//                        FrameworkTitleView(framework: framework)
//                        .onTapGesture {
//                            viewModel.selectedFramework = framework
//                        }
//                    
//                }
//            })
//        }
//        .navigationTitle("🍏 Frameworks") // Title should be inside the NavigationStack. Otherwise, it will not be visible.
//        //When framework selected above in OnTapGesture this will be activated.
//        .sheet(isPresented: $viewModel.isShowingModalView) {
//            FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingModalView: $viewModel.isShowingModalView)
//        }
//    }
//}



//Below uses List for showing frameworks. With the use of NavigationLink we dont need the sheet. So selectedFramework and isShowingModel is commented in viewModel file
//struct FrameworkGridView: View {
//    @State private var viewModel  = FrameworkDetailViewModel()
//
//    var body: some View {
//        NavigationStack {
//            List {
//                ForEach(MockData.frameworks) { framework in
//                    NavigationLink(destination : FrameworkDetailView(framework: framework)) {
//                        FrameworkTitleView(framework: framework)
//                    }
//                }
//            }
//            .navigationTitle("🍏 Frameworks") // Title should be inside the NavigationStack. Otherwise, it will not be visible.
//        }
//        .tint(Color(.label)) //white for the light mode and dark will appear in darkmode. The Framework title at the top.... Currently it appears as blue.
//    }
//}




#Preview {
    FrameworkGridView()
}
