//
//  Note.swift
//  MakeSchoolNotes
//
//  Created by Lena Ngungu on 6/25/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//


import Foundation
import RealmSwift

//var notes: Results<Note>! // here?

class Note: Object {
    dynamic var title = ""
    dynamic var content = ""
    dynamic var modificationTime = NSDate()
}
