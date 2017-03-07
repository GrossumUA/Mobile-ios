//
//  ListDataSourceViewModel.swift
//  MyWeather
//
//  Created by Sergey on 10.02.17.
//  Copyright © 2017 Sergey Kostyan. All rights reserved.
//

import UIKit

class ListDataSourceViewModel: ArrayTableViewModelProtocol {

    typealias ModelType = ListModel
    typealias CellType = ListCell
    
    var arrayData: [ModelType]
    var arrayDataSource: TableViewArrayDataSource?
    
    required init(array: [ListModel]) {
        self.arrayData = array
        let sectionModel = SectionModel(withItems: [], header: nil, footer: nil)
        self.arrayDataSource = TableViewArrayDataSource(sections: [sectionModel],
                                                        reuseIdentifier: ListCell.reuseIdentifier)
    }
    
    func appendDataSource(newItemIndex index: NSInteger) {
        if let dataSource = arrayDataSource {
            let sectionModel = dataSource.sections[0]
            let listModel = arrayData[index]
            let listCellViewModel = ListCellViewModel(model: listModel)
            sectionModel.items.append(listCellViewModel)
        }
    }
    
}
