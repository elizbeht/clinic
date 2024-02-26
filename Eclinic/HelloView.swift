import SwiftUI

struct HelloView: View {
    var name: String
    var body: some View {
        HStack(alignment: .center, spacing: 176) {
            VStack(alignment: .leading, spacing: 6) {
                Text("Hello,").font(AppTheme.Fonts.poppins_regular_16).foregroundColor(Color("gray"))
                Text("Hi " + name).font(AppTheme.Fonts.poppins_bold_20).foregroundColor(Color("black"))
            }
                Image("Frame")
                .frame(width: 56, height: 56)
                //.cornerRadius(28)
            }
        .padding(.top, 20)
        .padding(.bottom, 16)
        .padding(.horizontal, 24)
        
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView(name: "James")
    }
}
