//
//  SideBarView.swift
//  PDFReaderPro
//
//  Created by Bruna Baudel on 02/12/2022.
//

import SwiftUI

struct SidebarView: View {
    
    var folders: [Folder]
    
    var body: some View {
        List(folders, children: \.folders) { folder in
            NavigationLink {
                chooseDestination(folder: folder)
            } label: {
                Label {
                   Text(folder.name)
                } icon: {
                   Image(systemName: folder.icon)
                        .foregroundColor(folder.type == .folder ? .black : .red)
                }
            }
        }
        .listStyle(.sidebar)
        .tint(.gray)
    }
    
    @ViewBuilder
    func chooseDestination(folder: Folder) -> some View {
        switch folder.type {
            case .folder: RecentsView(folder: folder)
            case .file: FileView(folder: folder)
        }
    }
}

//struct SidebarView_Previews: PreviewProvider {
//    static var previews: some View {
//        SidebarView(folders: )
//    }
//}
