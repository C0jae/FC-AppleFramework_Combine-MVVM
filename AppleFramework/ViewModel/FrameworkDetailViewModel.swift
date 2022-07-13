//
//  FrameworkDetailViewModel.swift
//  AppleFramework
//
//  Created by 최영재 on 2022/07/13.
//

import Foundation
import Combine

final class FrameworkDetailViewModel {
    init(framework: AppleFramework) {
        self.framework = CurrentValueSubject(framework)
    }

    let framework: CurrentValueSubject<AppleFramework, Never>
    
    let buttonTapped = PassthroughSubject<AppleFramework, Never>()
    
    func learnMoreTapped() {
        buttonTapped.send(framework.value)
    }
}
