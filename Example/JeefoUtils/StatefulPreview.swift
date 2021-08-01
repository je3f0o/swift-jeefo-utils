//
//  StatefulPreview.swift
//  JeefoUtils_Example
//
//  Created by Batkhishig on 2021.08.01.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import SwiftUI
import JeefoUtils

struct StatefulPreview: View {
    @Binding var count: Int
    
    var body: some View {
        VStack {
            Text("Binded state variable 'count'")
            Text("\(count)").font(.title)
            
            HStack {
                Button(action: {
                    self.count -= 1
                }, label: {
                    Text("Decrement")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
                
                Button(action: {
                    self.count += 1
                }, label: {
                    Text("Increment")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                })
            }
        }
    }
}

struct StatefulPreview_Previews: PreviewProvider {
    static var previews: some View {
        StatefulPreviewWrapper(0) { value in
            StatefulPreview(count: value)
        }
    }
}
