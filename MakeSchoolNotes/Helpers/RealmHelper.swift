//
//  RealmHelper.swift
//  MakeSchoolNotes
//
//  Created by Lena Ngungu on 6/26/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import Foundation
import RealmSwift

class RealmHelper {
    static func doSomething() {
        
    }
    static func addNote(note: Note) {
        let realm = try! Realm()
        try! realm.write() {
            realm.add(note)
        }
    }
    static func deleteNote(note: Note) {
        let realm = try! Realm()
        try! realm.write() {
            realm.delete(note)
        }
    }
    static func updateNote(noteToBeUpdated: Note, newNote: Note) {
        let realm = try! Realm()
        try! realm.write() {
            noteToBeUpdated.title = newNote.title
            noteToBeUpdated.content = newNote.content
            noteToBeUpdated.modificationTime = newNote.modificationTime
        }
    }
    static func retrieveNotes() -> Results<Note> {
        let realm = try! Realm()
        return realm.objects(Note).sorted("modificationTime", ascending: false)
    }
    //static methods will go here
}