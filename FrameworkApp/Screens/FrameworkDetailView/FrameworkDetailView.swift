//
//  FrameworkDetailView.swift
//  FrameworkApp
//
//  Created by temel gunaydin on 17.09.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework:  Framework
    
    //When button clicked below will be set to false but we need to inform the parent view to make the same variable false we need to set it as Binding.
    //@Binding var isShowingModalView : Bool
    @State private var isShowingSafariView  = false
    
    var body: some View {
        VStack {
            
            //Because we are using NavigationLink in GridView screen we dont need this button.
            //There will be a arrow key for navigation when using NavigationLink
            //XDismissButton(isShowingModalView: $isShowingModalView)
            
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView.toggle()
            } label: {
                //Alttaki bizim custom butomuzdur. Ama IOS 15 ten sonra gelen apple ait kendi buton sitillerini kullanabiliriz artik.
                //AFButton(title: "Learn More")
                
                //IOS 15 sonrasi gelen ozellikleri burada buton olarak kullanacagiz
                Label("Learn More", systemImage: "book.fill")
            }
            //IOS 15 sonrasi gelen ozellikleri burada buton olarak kullanacagiz
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        }
        
        //Instead of like sheet view as shown below we can use fullScreenCover like above
        //        .sheet(.isPresented: $isShowingSafariView) {
        //            SafariView(url: URL(string: framework.urlString)!)
        //        }
    }
}


struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 180, height: 50)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(10)
    }
}

//if we use binding as a bool we should provide the isShowingModalView value as .constant(false)
#Preview {
    //FrameworkDetailView(framework: MockData.sampleFramework,isShowingModalView: .constant(false))
    FrameworkDetailView(framework: MockData.sampleFramework)
}
