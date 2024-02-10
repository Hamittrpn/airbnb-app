
import SwiftUI

struct ExplorerView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(0 ... 10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 420)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    } 
}

#Preview {
    ExplorerView()
}
