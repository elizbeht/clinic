import SwiftUI

struct ContentView: View{
    @State private var isTabViewShow = false
    var body: some View{
        VStack{
            HelloView(name: "James")
            ScrollView{
                DoctorView(name: "Dr. Irman Syahir", image: Image("doctor"), post: "General Doctor", data: "Sunday, 12 June", time: "11.00-12.00 AM")
                SearchView()
                MenuView()
                NearView(name: "Dr. Joseph Brostito",image: Image("doctor2"), post: "Dental Specialist", rating: "4,8 (120 Reviews)", open: "Open at 17:00", km: "1.2")
                NearView(name: "Dr. Irman Syahir", image: Image("doctor"), post: "General Doctor", rating: "4,8 (120 Reviews)", open: "Open at 17:00", km: "1.2")
            }
            ZStack{ButtonView()}
            .fullScreenCover(isPresented: $isTabViewShow){
                MainView()}
        }
    }
    
}

        
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
