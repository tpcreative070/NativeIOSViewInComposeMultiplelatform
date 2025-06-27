//
//  SimpleIOSButton.swift
//  iosApp
//
//  Created by Tran Thanh Phong on 27/6/25.
//


import SwiftUI
import ComposeApp

class IOSNativeViewFactory: NativeViewFactory {
    static var shared = IOSNativeViewFactory()
    func createButtonView(label: String, onClick: @escaping () -> Void) -> UIViewController {
        let view = SimpleIOSButton(label: label, action: onClick)
        
        return UIHostingController(rootView: view)
    }
    
}

struct SimpleIOSButton: View {
    var label: String
    var action: () -> Void
    let fruits = ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
        var body: some View {

         LazyVStack {

             Button(action: action) {
                 Text(label)
                     .font(.headline)
             }

             // NavigationView {
             //     List(fruits, id: \.self) { fruit in
             //         NavigationLink(destination: FruitDetailView(fruit: fruit)) {
             //             Text(fruit)
             //         }
             //     }
             //     .navigationTitle("Fruit List")
             // }

         }


    }
}
struct FruitDetailView: View {
    let fruit: String
    
    var body: some View {
        Text("Details about \(fruit)")
            .navigationTitle(fruit)
    }
}
