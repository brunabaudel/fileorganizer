//
//  RecentsView.swift
//  PDFReaderPro
//
//  Created by Bruna Baudel on 02/12/2022.
//

import SwiftUI

struct RecentsView: View {
    
    var folder: Folder
    
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, alignment: .center) {
                
                ForEach(folder.folders ?? []) { folder in
                    NavigationLink(destination: chooseDestination(folder: folder)) {
                        if folder.type == .file {
                            FileItemView(folder: folder)
                        } else {
                            FolderItemView(folder: folder)
                        }
                    }
                }
            }
        }
        .navigationTitle(folder.name)
    }
    
    @ViewBuilder
    func chooseDestination(folder: Folder) -> some View {
        switch folder.type {
        case .folder: RecentsView(folder: folder)
        case .file: FileView(folder: folder)
        }
    }
}

//struct RecentsView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecentsView(folder: Folder(name: "Folder", icon: "folder", folders: []))
//    }
//}
