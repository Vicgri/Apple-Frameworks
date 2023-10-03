//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Victoria Grimen on 27/09/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
  
  var selectedFramework: Framework? {
    didSet {
      isShowingDetaiView = true
    }
  }
  
  @Published var isShowingDetaiView = false
  

  
  
  
}
