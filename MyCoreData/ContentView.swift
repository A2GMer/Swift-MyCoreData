//
//  ContentView.swift
//  MyCoreData
//
//  Created by 田中大翔 on 2023/01/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // managedObjectContextから取り出した値をviewContextに格納
    // Contextが格納されている
    @Environment(\.managedObjectContext) var viewContext
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
