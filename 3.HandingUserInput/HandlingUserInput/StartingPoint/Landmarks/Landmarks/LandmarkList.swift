/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    //您可以自定义列表视图，以便显示所有地标，或仅显示用户的收藏夹。
    //为此，您需要向LandmarkList类型添加一些状态。
    //@State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            
           //添加toggle，状态绑定到属性`showFavoritesOnly`
            //使用$前缀来访问对状态变量或属性的绑定。
            Toggle(isOn:  $userData.showFavoritesOnly) {
              Text("Favorites only")
            }
            
            List(userData.landmarks) { landmark in
                //添加过滤条件
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
        }
    }
}

#if DEBUG
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        //只要将environmentObject（_ :)修饰符应用于父级，此userData属性就会自动获取其值。
        LandmarkList()
            .environmentObject(UserData())
    }
}
#endif
