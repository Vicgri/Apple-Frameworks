//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Victoria Grimen on 27/09/2023.
//

import SwiftUI

//ObservableObject is used to broadcast changes
final class FrameworkGridViewModel: ObservableObject {
  
  var selectedFramework: Framework? {
    didSet {isShowingDetaiView = true }
  }
  
  // put @Published in front of the items you want to broadcast
  @Published var isShowingDetaiView = false
  
  let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
  
  
}
