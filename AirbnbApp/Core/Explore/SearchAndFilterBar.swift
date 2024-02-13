
import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                
                VStack(alignment: .leading){
                    Text("Nereye?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Anywhere - Any week - Add guests")
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
                .foregroundStyle(.black)
            }
            .frame(maxWidth: .infinity, minHeight:60, alignment: .leading)
            .padding(.horizontal, 16)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(color: .gray.opacity(0.3), radius: 3)
            
            CircleButton()
                .padding(.leading, 12)
                .padding(.trailing, 12)

        }
        .padding(.horizontal, 16)
        .background(Color(hex: 0xF2F2F2))
    }
}
