//
//  ThirdView.swift
//  UnwindSeguesSwift
//
//  Created by Akshay Nandane on 28/05/21.
//  Copyright © 2021 com.app.connectme. All rights reserved.
//

import SwiftUI

struct ThirdView: View {
    @Binding var rootActive: Bool
    
    var body: some View {
        VStack {
            Text("View C")
            Button("Go to View A") {
                self.rootActive = false
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(rootActive: .constant(false))
    }
}
