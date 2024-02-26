import SwiftUI

struct MenuView: View{
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            HStack(spacing: 13) {
                VStack{
                    ZStack{
                        Rectangle().foregroundColor(Color("whitegray")).cornerRadius(36)
                        Rectangle()
                            .foregroundColor(.clear).background(Image("sun").resizable().aspectRatio(contentMode: .fill).frame(width: 24, height: 24).clipShape(Circle()).clipped())
                    }.frame(width: 72, height: 72)
                    Text("Covid 19").font(AppTheme.Fonts.poppins_regular_15).foregroundColor(Color("gray"))
                }
                VStack{
                    ZStack{
                        Rectangle().foregroundColor(Color("whitegray")).cornerRadius(36)
                        Rectangle()
                            .foregroundColor(.clear).background(Image("profile-add").resizable().aspectRatio(contentMode: .fill).frame(width: 24, height: 24).clipShape(Circle()).clipped())
                    }.frame(width: 72, height: 72)
                    Text("Doctor").font(AppTheme.Fonts.poppins_regular_15).foregroundColor(Color("gray"))
                }
                VStack{
                    ZStack{
                        Rectangle().foregroundColor(Color("whitegray")).cornerRadius(36)
                        Rectangle()
                            .foregroundColor(.clear).background(Image("link").resizable().aspectRatio(contentMode: .fill).frame(width: 24, height: 24).clipShape(Circle()).clipped())
                    }.frame(width: 72, height: 72)
                    Text("Medicine").font(AppTheme.Fonts.poppins_regular_15).foregroundColor(Color("gray"))
                }
                VStack{
                    ZStack{
                        Rectangle().foregroundColor(Color("whitegray")).cornerRadius(36)
                        Rectangle()
                            .foregroundColor(.clear).background(Image("hospital").resizable().aspectRatio(contentMode: .fill).frame(width: 24, height: 24).clipShape(Circle()).clipped())
                    }.frame(width: 72, height: 72)
                    Text("Hospital").font(AppTheme.Fonts.poppins_regular_15).foregroundColor(Color("gray"))
                }
            }
            
                VStack{
                    Text("Near Doctor").font(AppTheme.Fonts.poppins_semibold_16).foregroundColor(Color("black"))
                
            }
        }
        .padding(.horizontal, 24)
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
