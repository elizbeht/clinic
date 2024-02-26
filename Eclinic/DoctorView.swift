import SwiftUI

struct DoctorView: View {
    var name: String
    var image: Image
    var post: String
    var data: String
    var time: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    
                    ZStack{
                        Image("circle").frame(width: 48, height: 48).cornerRadius(24)
                        Rectangle().foregroundColor(.clear).background(image.resizable().aspectRatio(contentMode: .fill).frame(width: 48, height: 48).clipShape(Circle()).clipped())
                    }.frame(width: 48, height: 48)
                    VStack (alignment: .leading, spacing: 8) {
                    Text(name).font(AppTheme.Fonts.poppins_bold_16).foregroundColor(Color("white"))
                    Text(post).font(AppTheme.Fonts.poppins_regular_14).foregroundColor(Color("white"))
                    }.padding(.leading, 8.4)
                        .frame(width: 155, height: 47)
                    
                    Image("strelka").padding(.leading, 46)
                }
                Divider().background(Color("lightwhite"))
                    .frame(width: 287, height: 1)
                HStack(spacing: 30.5) {
                    HStack(spacing: 8) {
                        Image("calendar")
                        Text(data).font(AppTheme.Fonts.poppins_regular_12).foregroundColor(Color("white"))
                    }
                    HStack(spacing: 8) {
                        Image("clock")
                        Text(time).font(AppTheme.Fonts.poppins_regular_12).foregroundColor(Color("white"))
                    }
                }
            }
            .padding(20)
        }
        .frame(width: 327, height: 138, alignment: .center)
        .background(Color("blue"))
        .cornerRadius(12)
        .padding(.top, 16)
        .padding(.horizontal, 24)
        
    }
        
}

struct DoctorView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorView(name: "Dr. Irman Syahir", image: Image("doctor"), post: "General Doctor", data: "Sunday, 12 June", time: "11.00-12.00 AM")
    }
}
