//
//  HomeQRCode.swift
//  PayDatum-HomeScreen
//
//  Created by MD Tanvir Alam on 20/3/21.
//

import SwiftUI
import UIKit

struct HomeQRCode: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Home")
                
                NavigationLink(
                    destination: SecondView(),
                    label: {
                        Text("Navigate")
                    })
                    
            }
            .toolbar {
                ToolbarItem (placement:.principal){
                    Image("sirassLogo")
                }
                ToolbarItem (placement:.navigationBarLeading){
                    Image("navAvatar")
                        .padding(.leading,10)
                }
            }
        }
        
    }
}

struct HomeQRCode_Previews: PreviewProvider {
    static var previews: some View {
        HomeQRCode()
    }
}
