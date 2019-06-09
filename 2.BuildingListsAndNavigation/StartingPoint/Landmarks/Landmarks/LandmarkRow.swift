//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by cc on 2019/6/9.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image(forSize: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landmark: landmarkData[1])
//                .previewLayout(.fixed(width: 300, height: 70))
            
            LandmarkRow(landmark: landmarkData[2])
//                .previewLayout(.fixed(width: 300, height: 70))
        }.previewLayout(.fixed(width: 300, height: 70))
        
        //可以设定canvas的大小 `previewLayout`
        //可以用group包起来，填充多个
        //为了简化代码，previewLayout可以拿到外边来。视图的子项继承视图的上下文设置，例如预览配置。

        
        
    }
}
#endif
