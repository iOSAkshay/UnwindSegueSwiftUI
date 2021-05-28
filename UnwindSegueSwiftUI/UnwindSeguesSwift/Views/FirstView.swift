//
//  FirstView.swift
//  UnwindSeguesSwift
//
//  Created by Akshay Nandane on 28/05/21.
//  Copyright © 2021 com.app.connectme. All rights reserved.
//

import SwiftUI

struct FirstView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        VStack{
            NavigationLink(
                destination: SecondView(rootActive: $isActive),
                isActive: $isActive,
                label: {
                    Text("Go to View B")
            })
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("FirstView")
        .embedInNavigationView()
        
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
