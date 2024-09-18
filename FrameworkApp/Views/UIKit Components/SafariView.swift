import SwiftUI
import SafariServices


//conform ettimiz protocol aslinda bir view
struct SafariView : UIViewControllerRepresentable {
    
    let url : URL
    
    //burasi bize view olusturacak. SwiftUI icindeki body nin icindeki View gibi.
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        //SafariView baska dosyadan initialize edildiginde alttaki bize web sayfasini acacak.
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {

    }
    
    
}

