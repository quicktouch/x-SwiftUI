//
//  LandmarkList.swift
//  Landmarks
//
//  Created by cc on 2019/6/9.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) { landmark in
                //cell右侧row
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}
//        List(0 ..< 5) { item in
//            Text("Hello World!")
//        }

//列表使用可识别(identifiable)的数据。
//您可以通过以下两种方式之一识别数据：通过使用唯一标识每个元素的属性的键路径调用标识的（by :)方法，
//List(landmarkData.identified(by: \.id)){ landmark in
//    LandmarkRow(landmark: landmark)
//}

//或者使您的数据类型符合 Identifiable 协议。
//        List(landmarkData){ landmark in
//            LandmarkRow(landmark: landmark)
//        }



#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList().previewDevice(PreviewDevice(rawValue: "iPhone XS"))
        
        //显示多个模拟器预览
//        ForEach(["iPhone SE", "iPhone XS Max"].identified(by: \.self)) { deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//        .previewDisplayName(deviceName)
//        }
    }
}
#endif
