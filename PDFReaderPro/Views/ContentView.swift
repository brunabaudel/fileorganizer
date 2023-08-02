//
//  ContentView.swift
//  PDFReaderPro
//
//  Created by Bruna Baudel on 02/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            SidebarView(folders: folders)
                .navigationTitle("Files")
                .searchable(text: $searchText) {}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
