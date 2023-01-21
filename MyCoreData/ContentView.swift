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
    
    // データを要求
    // sortDescriptors: 取得したデータの並びを指定。[]指定なし
    // 取得したデータは、humansに格納
    // FetchedResults<Entity名>
    @FetchRequest(sortDescriptors: [])
    var humans: FetchedResults<Human>
    
    var body: some View {
        List {
            ForEach(humans) { human in
                if ((human.name?.isEmpty) == false) {
                    Text(human.name!)
                }
            }
            
            Button(action: addHuman) {
                Text("人間を増やす")
            }
        }
    }
    
    func addHuman() {
        let newHuman = Human(context: viewContext)
        newHuman.name = "五十嵐"
        
        do {
            // Context ⇨ PersistentStore ⇨ DB
            try viewContext.save()
        } catch {
            // アプリを落とす
            fatalError("セーブに失敗")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
