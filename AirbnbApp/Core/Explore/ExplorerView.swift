
import SwiftUI

struct ExplorerView: View {
    @State private var isOn = false
    
    var body: some View {
        NavigationStack{
            VStack {
                SearchAndFilterBar()
                TextAndToggle()
                
                ScrollView{
                    LazyVStack(spacing: 32){
                        ForEach(0 ... 10, id: \.self) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView()
                                    .frame(height: 420)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }.navigationDestination(for: Int.self) { listing in
                    Text("Detail View")
                }
            }
            .background(Color(hex: 0xF2F2F2))
        }
    }
}

#Preview {
    ExplorerView()
}
