//
//  FrameworkListViewModel.swift
//  AppleFramework
//
//  Created by 최영재 on 2022/07/13.
//

import Foundation
import Combine

final class FrameworkListViewModel {
    init(items: [AppleFramework], selectedItem: AppleFramework? = nil) {
        self.items = CurrentValueSubject(items)
        self.selectedItem = CurrentValueSubject(selectedItem)
    }
    
    var items: CurrentValueSubject<[AppleFramework], Never>
    var selectedItem: CurrentValueSubject<AppleFramework?, Never>
    
    func didSelect(at indexPath: IndexPath) {
        let item = items.value[indexPath.item]
        selectedItem.send(item)
    }
}
