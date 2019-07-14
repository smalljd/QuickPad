//
//  ContentView.swift
//  QuickPad
//
//  Created by Jeff Small on 7/13/19.
//  Copyright © 2019 SmallBytes. All rights reserved.
//

import SwiftUI

struct NoteListView : View {
    @EnvironmentObject var noteStore: NoteStore

    func indexFor(note: Note) -> Int {
        return noteStore.notes.firstIndex(where: { $0.id == note.id }) ?? -1
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(self.noteStore.notes.identified(by: \.id)) { note in
                    NavigationLink(destination: NoteDetail(note: self.noteStore.notes[self.indexFor(note: note)])) {
                        Text(note.title)
                    }
                }
            }
            .navigationBarTitle(Text("Notes"))
        }
    }
}

#if DEBUG
struct NoteListView_Previews : PreviewProvider {
    static let noteStore: NoteStore = NoteStore()

    static var previews: some View {
        noteStore.notes = [Note(title: "Groceries")]
        return NoteListView()
            .environmentObject(noteStore)
    }
}
#endif
