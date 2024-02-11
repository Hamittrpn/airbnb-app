
import SwiftUI

struct ListingImageCarouselView: View {
    
    var enableSafeAreaPadding : Bool = false
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        TabView{
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
        .overlay(alignment: .topTrailing) {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundStyle(.red)
                .padding(.all, 20)
                .safeAreaPadding(.top, enableSafeAreaPadding ? 40 : 0)
        }
    }
}

#Preview {
    ListingImageCarouselView()
}
