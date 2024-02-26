import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")}
            CalendarView()
                .tabItem {
                    Image(systemName: "calendar")}
            MessageView()
                .tabItem {
                    Image(systemName: "ellipsis.bubble")}
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
