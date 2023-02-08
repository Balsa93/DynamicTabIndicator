//
//  Tab.swift
//  DynamicTabIndicators
//
//  Created by Balsa Komnenovic on 8.2.23..
//

import SwiftUI

/// Tab model with sample tabs
struct Tab: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    /// Tab animations properties
    var width: CGFloat = 0
    var minX: CGFloat = 0
}

/// Title is the same as the Asset image name
var tabs_: [Tab] = [
    .init(title: "4s"),
    .init(title: "5s"),
    .init(title: "XS"),
    .init(title: "12 Pro"),
]
