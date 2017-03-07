//
//  ListCellViewModel.swift
//  MyWeather
//
//  Created by Sergey on 10.02.17.
//  Copyright © 2017 Sergey Kostyan. All rights reserved.
//

import UIKit

class ListCellViewModel: NSObject {

    var listItemModel: ListModel
    
    init(model: ListModel) {
        listItemModel = model
    }
    
    func name() -> String {
        return listItemModel.name
    }
    
}
