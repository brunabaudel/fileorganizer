//
//  FolderItemView.swift
//  PDFReaderPro
//
//  Created by Bruna Baudel on 02/12/2022.
//

import SwiftUI

import SwiftUI

struct FolderItemView: View {
    
    var folder: Folder
    
    var body: some View {
        VStack {
            Image(systemName: folder.icon)
                .font(.system(size: 100))
                .padding(.vertical, 20)
            
            Text(folder.name)
                .font(.title3.bold())
                .foregroundColor(.black)
                
            Text(folder.createdAt, style: .date)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 220, height: 220)
        .cornerRadius(5)
    }
}
