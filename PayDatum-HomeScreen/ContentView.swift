//
//  ContentView.swift
//  PayDatum-HomeScreen
//
//  Created by MD Tanvir Alam on 20/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    init() {
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)
    }
    var body: some View {
        TabView(selection:$selection){
            
            HomeQRCode()
                .tabItem {
                    selection == 0 ? Image("tabHome") : Image("homeNotTapped")
                    Text("Home")
                        .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.337254902, blue: 0.4666666667, alpha: 1)))
                }.tag(0)
            
            
            RecieptView()
                .tabItem {
                    selection == 1 ? Image("receiptTapped") : Image("tabReciept")
                    Text("Reciepts")
                        .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.337254902, blue: 0.4666666667, alpha: 1)))
                }.tag(1)
            AlertView()
                .tabItem {
                    selection == 2 ? Image("alertTapped") : Image("tabAlert")
                    Text("Alert")
                        .foregroundColor(Color(#colorLiteral(red: 0.3333333333, green: 0.337254902, blue: 0.4666666667, alpha: 1)))
                }.tag(2)
        }.accentColor(Color(#colorLiteral(red: 0, green: 0.5803921569, blue: 0.6823529412, alpha: 1)))
        
        .onAppear {
            UIApplication.shared.statusBarUIView?.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIApplication {
    /**
     Get status bar view
     */
    var statusBarUIView: UIView? {
        let tag = 13101996
        if let statusBar = self.windows.first?.viewWithTag(tag) {
            self.windows.first?.bringSubviewToFront(statusBar)
            return statusBar
        } else {
            let statusBarView = UIView(frame: UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame ?? .zero)
            statusBarView.tag = tag
            
            self.windows.first?.addSubview(statusBarView)
            return statusBarView
        }
    }
}
