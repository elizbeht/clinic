import SwiftUI

struct NearView: View {
    var name: String
    var image: Image
    var post: String
    var rating: String
    var open: String
    var km: String
    
    var body: some View {
            VStack{
                VStack(spacing: 16) {
                    HStack {
                        ZStack{
                            Image("circle").frame(width: 48, height: 48).cornerRadius(24)
                            Rectangle().foregroundColor(.clear).background(image.resizable().aspectRatio(contentMode: .fill).frame(width: 48, height: 48).clipShape(Circle()).clipped())
                        }.frame(width: 48, height: 48)
                        
                        VStack (alignment: .leading, spacing: 8) {
                            Text(name).font(AppTheme.Fonts.poppins_bold_16).foregroundColor(Color("black"))
                            Text(post).font(AppTheme.Fonts.poppins_regular_14).foregroundColor(Color("gray"))
                        }.frame(width: 155, height: 47)
                        
                        HStack(spacing: 5) {
                            Image("location")
                            Text(km + " KM").font(AppTheme.Fonts.poppins_regular_14).foregroundColor(Color("gray"))
                        }.padding(.leading, 15)
                        
                    }
                    Divider().background(Color("lightwhite"))
                        .frame(width: 287, height: 1)
                    HStack(spacing: 25.5) {
                        HStack(spacing: 8) {
                            Image("clockOrange")
                            Text(rating).font(AppTheme.Fonts.poppins_regular_12).foregroundColor(Color("orange"))
                        }
                        HStack(spacing: 6) {
                            Image("clockBlue")
                            Text(open).font(AppTheme.Fonts.poppins_regular_12).foregroundColor(Color("blue"))
                        }
                    }
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 16)            }
            .frame(width: 327, height: 138, alignment: .center)
            .background(Color("whitegray"))
            .cornerRadius(12)
            .padding(.bottom, 12)
            .padding(.horizontal, 24)
        
    }
}



struct NearView_Previews: PreviewProvider {
    static var previews: some View {
        NearView(name: "Dr. Joseph Brostito", image: Image("doctor2"), post: "Dental Specialist", rating: "4,8 (120 Reviews)", open: "Open at 17:00", km: "1.2")
        NearView(name: "Dr. Irman Syahir", image: Image("doctor"), post: "General Doctor", rating: "4,8 (120 Reviews)", open: "Open at 17:00", km: "1.2")
    }
}
