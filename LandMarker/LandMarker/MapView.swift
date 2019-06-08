//
//  MapView.swift
//  LandMarker
//
//  Created by cc on 2019/6/8.
//  Copyright © 2019 quicktouch. All rights reserved.
//

import SwiftUI
import MapKit
/*
 要在SwiftUI中使用UIView子类，可以将其包装在符合UIViewRepresentable协议的SwiftUI视图中。
 SwiftUI也可以包装WatchKit和AppKit视图的类似协议。
 
 UIViewRepresentable
   - UIView(context:),创建MKMapView
   - updateUIView(_:context:),配置视图并响应变化

 当预览处于静态模式时，它们仅完全呈现SwiftUI视图。 因为MKMapView是一个UIView子类，所以您需要切换到实时预览才能看到地图。  点右下角的播放按钮 Live Preview button 
 */
struct MapView : UIViewRepresentable {

    
    func makeUIView(context: Context) -> MKMapView{
        MKMapView(frame: .zero)
    }
    
    /// Updates the presented `UIView` (and coordinator) to the latest
    /// configuration.
    func updateUIView(_ uiView: MKMapView, context: Context){
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
}

#if DEBUG
struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
#endif
