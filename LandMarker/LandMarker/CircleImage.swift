//
//  CircleImage.swift
//  LandMarker
//
//  Created by cc on 2019/6/8.
//  Copyright © 2019 quicktouch. All rights reserved.
//

import SwiftUI

/*
 直接
 var body: some View {
    Text("Hello World!")
    Image("turtlerock")
 }
 会报错。因为只需要一个返回值。可用stackview包起来。
 
 .clipShape 可与直接切成圆形。
 
 .overlay(Circle().stroke(Color.white, lineWidth: 4)) 覆盖上了一个圆环
 */
struct CircleImage : View {
    var body: some View {
        Image("turtlerock")
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
