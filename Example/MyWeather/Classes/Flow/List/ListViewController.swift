//
//  ListViewController.swift
//  MyWeather
//
//  Created by Sergey on 10.02.17.
//  Copyright © 2017 Sergey Kostyan. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, ArrayTableViewProtocol {

    @IBOutlet weak var tableView: UITableView!
    
    typealias ViewModelType = ListDataSourceViewModel
    var listVM = ListViewModel() {
        didSet {
            arrayDataVM = ListDataSourceViewModel(array: listVM.menu())
            setDataSource(tableView: tableView)
            for (index, _) in listVM.menu().enumerated() {
                let time = Double(index) * 0.25
                DispatchQueue.main.asyncAfter(deadline: .now() + time, execute: {
                    self.addNewRow(atIndexPath: index)
                })
                
            }
        }
    }
    var arrayDataVM: ViewModelType?

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        listVM = ListViewModel()
    }

    func addNewRow(atIndexPath index: NSInteger) {
        tableView.beginUpdates()
        arrayDataVM?.appendDataSource(newItemIndex: index)
        let indexPath = IndexPath(row: index,
                                  section: 0)
        tableView.insertRows(at: [indexPath],
                             with: .left)
        tableView.endUpdates()
    }
    
}
