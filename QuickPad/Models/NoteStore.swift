//
//  NoteStore.swift
//  QuickPad
//
//  Created by Jeff Small on 7/13/19.
//  Copyright © 2019 SmallBytes. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class NoteStore: BindableObject {
    let didChange = PassthroughSubject<[Note], Never>()

    var notes: [Note] = [] {
        didSet {
            didChange.send(notes)
        }
    }
}
