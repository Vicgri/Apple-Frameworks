//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Victoria Grimen on 26/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
  
  // using stateobject to initialise a brand new ViewModel (FrameworkGridViewModel)
  @StateObject var viewModel = FrameworkGridViewModel()
  
 
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: viewModel.columns) {
          ForEach(MockData.frameworks) { framework in
            FrameworkTitleView(framework : framework)
              .onTapGesture {
                viewModel.selectedFramework = framework
              }
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
      //show sheet whenever isShowingDetailView changes
      .sheet(isPresented: $viewModel.isShowingDetaiView) {
        FrameworkDetailView(framework: viewModel.selectedFramework!,
                            isShowingDetailView: $viewModel.isShowingDetaiView)
      }
    }
  }
}

#Preview {
  FrameworkGridView()
}


