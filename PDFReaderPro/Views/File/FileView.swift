//
//  FiileView.swift
//  PDFReaderPro
//
//  Created by Bruna Baudel on 02/12/2022.
//

import SwiftUI

struct FileView: View {
    
    var folder: Folder
    
    var body: some View {
        Text("content")
            .navigationTitle(folder.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
    }
}

//struct FileView_Previews: PreviewProvider {
//    static var previews: some View {
//        FileView(title: "Title")
//    }
//}
