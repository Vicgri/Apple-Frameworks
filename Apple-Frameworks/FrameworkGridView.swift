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
  
  let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())
                             
  ]
  
  var body: some View {
    NavigationView {
      ScrollView {
        LazyVGrid(columns: columns){
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


struct FrameworkTitleView: View {
  
  //an instance of the Framework type
  let framework: Framework
  
  var body: some View {
    
    VStack {
      //access the image property of the framework variable
      Image(framework.imageName)
        .resizable()
        .frame(width: 90, height: 90)
      Text(framework.name)
        .font(.title2)
        .fontWeight(.semibold)
        .scaledToFit()
        .minimumScaleFactor(0.6)
    }
    .padding()
  }
}
