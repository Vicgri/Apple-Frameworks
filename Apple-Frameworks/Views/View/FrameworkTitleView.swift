//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Victoria Grimen on 03/10/2023.
//

import SwiftUI

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


#Preview {
  FrameworkTitleView(framework: MockData.sampleFramework)
}
