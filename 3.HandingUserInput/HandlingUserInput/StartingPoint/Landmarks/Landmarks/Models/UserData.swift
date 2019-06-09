//
//  UserData.swift
//  Landmarks
//
//  Created by 陈创 on 2019/6/9.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : BindableObject {
     
    //必须的属性
    //添加PassthroughSubject作为发布者(publisher)
    //PassthroughSubject是Combine框架中的一个简单发布者，它立即将任何值传递给其订阅者。 SwiftUI通过此发布者订阅您的对象，并更新数据更改时刷新的所有view
    //每当客户端更新模型的数据时，可绑定对象都需要通知其订户。 当任一属性更改时，UserData应通过其didChange发布者发布更改。
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData{
        didSet {
            didChange.send(self)
        }
    }
}


