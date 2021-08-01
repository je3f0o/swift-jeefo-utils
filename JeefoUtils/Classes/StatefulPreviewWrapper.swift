//
//  StatefulPreviewWrapper.swift
//  Private Trans
//
//  Created by Batkhishig on 2021.07.31.
//

import SwiftUI

public struct StatefulPreviewWrapper<Value, Content: View>: View {
    @State var value: Value
    var content: (Binding<Value>) -> Content
    
    public init(_ value: Value, content: @escaping (Binding<Value>) -> Content) {
        self._value  = State(wrappedValue: value)
        self.content = content
    }

    public var body: some View {
        content($value)
    }
}
