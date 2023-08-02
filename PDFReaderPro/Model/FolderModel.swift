//
//  FolderModel.swift
//  PDFReaderPro
//
//  Created by Bruna Baudel on 02/12/2022.
//

import Foundation
import SwiftUI

enum FolderType {
    case folder, file
}

struct Folder: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
    var createdAt: Date
    var folders: [Folder]?
    var isExpanded = true
    var type: FolderType
}

var folders = [
    Folder(name: "Create PDF 1", icon: "folder", createdAt: Date(), folders: [
        Folder(name: "Create PDF 2", icon: "folder", createdAt: Date(), folders: [
            Folder(name: "PDF File 1", icon: "doc", createdAt: Date(), folders: nil, type: .file),
            Folder(name: "PDF File 2", icon: "doc", createdAt: Date(), folders: nil, type: .file)
        ], type: .folder),
        Folder(name: "Create PDF 3", icon: "folder", createdAt: Date(), folders: [
            Folder(name: "Create PDF 6", icon: "folder", createdAt: Date(), folders: [
                Folder(name: "Create PDF 3", icon: "folder", createdAt: Date(), folders: [
                    Folder(name: "PDF File 1", icon: "doc", createdAt: Date(), folders: nil, type: .file),
                    Folder(name: "PDF File 2", icon: "doc", createdAt: Date(), folders: nil, type: .file),
                    Folder(name: "PDF File 3", icon: "doc", createdAt: Date(), folders: nil, type: .file),
                    Folder(name: "PDF File 4", icon: "doc", createdAt: Date(), folders: nil, type: .file)
                ], type: .folder),
                
                Folder(name: "PDF File 1", icon: "doc", createdAt: Date(), folders: nil, type: .file),
                Folder(name: "PDF File 2", icon: "doc", createdAt: Date(), folders: nil, type: .file)
            
            ], type: .folder),
            Folder(name: "PDF File 2", icon: "doc", createdAt: Date(), folders: nil, type: .file),
            Folder(name: "PDF File 1", icon: "doc", createdAt: Date(), folders: nil, type: .file),
            Folder(name: "PDF File 3", icon: "doc", createdAt: Date(), folders: nil, type: .file)
        ], type: .folder),
        Folder(name: "Create PDF 4", icon: "folder", createdAt: Date(), folders: [
            Folder(name: "PDF File 1", icon: "doc", createdAt: Date(), folders: nil, type: .file),
            Folder(name: "PDF File 2", icon: "doc", createdAt: Date(), folders: nil, type: .file),
            Folder(name: "PDF File 3", icon: "doc", createdAt: Date(), folders: nil, type: .file),
            Folder(name: "PDF File 4", icon: "doc", createdAt: Date(), folders: nil, type: .file)
        ], type: .folder),
        
        Folder(name: "PDF File 1", icon: "doc", createdAt: Date(), folders: nil, type: .file),
        Folder(name: "PDF File 2", icon: "doc", createdAt: Date(), folders: nil, type: .file),
        
        ], type: .folder),
    
    Folder(name: "Create PDF 5", icon: "folder", createdAt: Date(), folders: [
        Folder(name: "PDF File 1", icon: "doc", createdAt: Date(), folders: nil, type: .file),
        Folder(name: "PDF File 2", icon: "doc", createdAt: Date(), folders: nil, type: .file),
        Folder(name: "PDF File 3", icon: "doc", createdAt: Date(), folders: nil, type: .file),
        Folder(name: "PDF File 4", icon: "doc", createdAt: Date(), folders: nil, type: .file)
    ], type: .folder)
]
