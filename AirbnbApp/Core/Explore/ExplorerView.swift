
import SwiftUI

struct ExplorerView: View {
    @State private var isOn = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                SearchAndFilterBar()
                TextAndToggle()

                LazyVStack(spacing: 32){
                    ForEach(0 ... 10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 420)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }.padding(.horizontal, 16)
            }
            
            .containerRelativeFrame([.horizontal, .vertical])
                .background(Color(hex: 0xF2F2F2)) 
        }
    }
}

#Preview {
    ExplorerView()
}
