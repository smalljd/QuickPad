//
//  NoteDetail.swift
//  QuickPad
//
//  Created by Jeff Small on 7/13/19.
//  Copyright © 2019 SmallBytes. All rights reserved.
//

import SwiftUI

struct NoteDetail : View {
    @ObjectBinding var note: Note

    var body: some View {
        VStack {
            TextField($note.content, placeholder: Text("Start typing here"))
                .padding(.init(top: 20, leading: 20, bottom: 200, trailing: 20))
                .background(Color.blue)
            Spacer()
        }
        .navigationBarTitle(Text(note.title))
    }
}

#if DEBUG
struct NoteDetail_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoteDetail(note: Note(title: "Groceries"))
        }
    }
}
#endif
