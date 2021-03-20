//
//  SecondView.swift
//  PayDatum-HomeScreen
//
//  Created by MD Tanvir Alam on 20/3/21.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        Text("This is the second View")
            .toolbar {
                ToolbarItem (placement:.principal){
                    Image("sirassLogo")
                }
                ToolbarItem (placement:.navigationBarLeading){
                    Image("navAvatar")
                        .padding(.leading,10)
                }
            }
            .navigationTitle("Title")
            .onAppear {
                UIApplication.shared.statusBarUIView?.backgroundColor = UIColor.red
            }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
