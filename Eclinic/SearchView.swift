import SwiftUI

struct SearchView: View{
    @State private var issue = ""
    var body: some View {
            VStack(alignment: .leading){
            HStack(spacing: 12) {
                Image("search")
                TextField("Search doctor to health issue", text: $issue).font(AppTheme.Fonts.poppins_regular_15).foregroundColor(Color("gray"))
            }
            .padding(16)
            .frame(width: 327, height: 56)
            .background(Color("whitegray"))
            .cornerRadius(12)
        
    }
        .padding(.top, 20)
        .padding(.bottom, 24)
        .padding(.horizontal, 24)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
