//
//  ContentView.swift
//  LandMarker
//
//  Created by cc on 2019/6/8.
//  Copyright © 2019 quicktouch. All rights reserved.
//

import SwiftUI
/*
 （右侧栏点resume 可以预览）
 
 默认情况下，SwiftUI视图文件声明了两种结构。
 
第一个结构需要遵循View协议，描述了视图的内容和布局。
第二个结构声明了该视图的预览。

 //在Canvas页面用cmd+左键 可以弹窗。选择inspect，可以修改当前视图的属性，属性与控件类型相关。修改完成后会自动生成代码。
 修改相应的视图，返回值也是这个视图。因此它是可以链式的。
 
 //代码页面点击属性，选择inspect，可以会弹出相应的修改页面。
 
 //使用stack
 在创建SwiftUI视图时，您可以在视图的body属性中描述其内容，布局和行为;
 但是，body属性仅返回单个视图。您可以在堆栈中组合和嵌入多个视图，这些视图将视图水平，垂直或从后到前组合在一起。

0.添加stackview的方法：cmd+左键点击Text, 选择embedIn VStack
1.添加新控件，点击 + 号，然后拖拽
 
 
缺点：写注释的时候会paused
 */

struct ContentView : View {
    var body: some View {
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top) //顶到头
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    HStack {
                        Text("Joshua Tree National Park.")
                            .font(.subheadline)
                            Spacer()
                            Text("California")
                                .font(.subheadline)
                        }
            }.padding()
            
            Spacer() //将剩余的内容顶起来
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
