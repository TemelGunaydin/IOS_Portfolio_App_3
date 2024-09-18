# Framework - iOS App

**Framework** is an iOS app demonstrating key navigation, UI, and interaction features using Swift and modern iOS frameworks. The app provides a rich user experience with custom navigation, list and grid views, modals (sheets), and Safari services for URL handling.

## Features

- **NavigationStack & NavigationLink**: A modern navigation structure using `NavigationStack` and `NavigationLink` to push and pop views within the app.
- **Custom Button Styles**: Custom-designed button styles that match the app's unique look and feel, providing a polished and interactive user experience.
- **List View**: A dynamic list view built with `List` to display and manage collections of data in a vertical scrollable list.
- **Grid View**: A flexible grid view using `LazyVGrid` to display content in a grid layout, adapting to various screen sizes.
- **Sheet with Dismiss Button**: A modal (sheet) that can be presented with a dismiss button, allowing users to interact with secondary content and easily close the sheet when done.
- **Safari Services for URL Handling**: Integrated Safari Services to open external URLs within the app, providing a smooth web browsing experience while maintaining app context.

## iOS 16 Features

This app utilizes several key features introduced in iOS 16:

- **Custom Button Styles**: Buttons are styled using `ButtonStyle` for consistent design across the app.
- **Advanced List & Grid Views**: Both list and grid layouts leverage the power of iOS 16's updated views to efficiently handle large data sets and display them in an adaptive manner.
- **Modern Navigation**: The app navigation structure is built using `NavigationStack` and `NavigationLink`, making it easy to move between views while maintaining the app’s state.
- **Enhanced Sheet Presentation**: The sheet can be presented modally with full-screen or half-screen modes, and users can easily dismiss it using a custom dismiss button.
- **Safari Integration**: External web links are opened within the app using `SFSafariViewController`, ensuring a smooth user experience without leaving the app.

## Screenshots

_Add screenshots here to demonstrate the custom navigation, list view, grid view, sheet presentation, and Safari integration._

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/Framework.git
    ```
2. Open the project in Xcode:
    ```bash
    cd Framework
    open Framework.xcodeproj
    ```
3. Ensure you have Xcode 14+ and iOS 16 SDK installed.
4. Build and run the app on your simulator or device.

## Technologies Used

- **Swift**: The app is built using Swift, ensuring modern syntax and performance.
- **SwiftUI**: UI elements are designed using SwiftUI, allowing for declarative syntax and dynamic updates.
- **NavigationStack & NavigationLink**: For easy navigation between views and maintaining state.
- **Custom Button Styles**: Created using the `ButtonStyle` protocol for consistent UI across the app.
- **List & Grid Views**: For displaying data in both vertical and grid formats, leveraging `List` and `LazyVGrid`.
- **Sheets**: Modal views using SwiftUI's `sheet` modifier for presenting secondary content.
- **Safari Services**: Integrated with `SFSafariViewController` to handle external URLs without leaving the app.

## Contributing

Contributions are welcome! Feel free to fork this repository and submit pull requests with any improvements or new features.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Built with ❤️ using Swift, SwiftUI, and iOS 16 features.
