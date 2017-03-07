//
//  ListCell.swift
//  MyWeather
//
//  Created by Sergey on 10.02.17.
//  Copyright © 2017 Sergey Kostyan. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell, ConfigurableCell  {

    //MARK: - Functions
    
    internal func configure<T>(viewModel: T) {
        if let listViewModel = viewModel as? ListCellViewModel {
            self.textLabel?.text = listViewModel.name()
        }
    }
    
}
