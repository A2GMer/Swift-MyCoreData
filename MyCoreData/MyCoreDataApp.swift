//
//  MyCoreDataApp.swift
//  MyCoreData
//
//  Created by 田中大翔 on 2023/01/21.
//

import SwiftUI

@main
struct MyCoreDataApp: App {
    let persistenceController = PersistenceController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            // ContentViewが保持する値を格納
            // 第一引数：\.managedObjectContextは、環境変数の場所
            // 第二引数：環境変数に格納する値
                .environment(\.managedObjectContext,  persistenceController.container.viewContext)
        }
    }
}
