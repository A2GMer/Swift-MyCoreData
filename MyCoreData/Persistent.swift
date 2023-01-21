//
//  Persistent.swift
//  MyCoreData
//
//  Created by 田中大翔 on 2023/01/21.
//

import CoreData

struct PersistenceController{
    let container: NSPersistentContainer
    
    // コンストラクタ
    init(){
        // nameには、Entity名を指定
        container = NSPersistentContainer(name: "MyCoreData")
        
        // Persistence Storeを読み込み、読み込んだことがない場合は、作成
        container.loadPersistentStores(completionHandler: { (storeDiscription, error) in
            // 失敗すればアプリを落とす
            if let error = error as NSError? {
                fatalError("Unresolved error \(error)")
            }
        })
    }
    
}
