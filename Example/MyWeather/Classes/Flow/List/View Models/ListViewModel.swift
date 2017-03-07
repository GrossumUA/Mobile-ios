//
//  ListViewModel.swift
//  MyWeather
//
//  Created by Sergey on 10.02.17.
//  Copyright © 2017 Sergey Kostyan. All rights reserved.
//

import UIKit

class ListViewModel: NSObject {

    func menu() -> [ListModel] {
        return [ListModel(name: "First"),
                ListModel(name: "Second"),
                ListModel(name: "Third"),
                ListModel(name: "Forth"),]
    }
    
}
