//
//  Note.swift
//  QuickPad
//
//  Created by Jeff Small on 7/13/19.
//  Copyright © 2019 SmallBytes. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class Note: BindableObject {
    let didChange = PassthroughSubject<Note, Never>()

    var title: String {
        didSet {
            didChange.send(self)
        }
    }

    var content: String = "" {
        didSet {
            didChange.send(self)
        }
    }

    let id: UUID = UUID()
    
    init(title: String) {
        self.title = title
    }
}
