//
//  SecondView.swift
//  UnwindSeguesSwift
//
//  Created by Akshay Nandane on 28/05/21.
//  Copyright © 2021 com.app.connectme. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    @Binding var rootActive: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text("View B").font(.largeTitle)
          
            NavigationLink("Go to View C", destination: ThirdView(rootActive: $rootActive))
           
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(rootActive: .constant(false))
    }
}
