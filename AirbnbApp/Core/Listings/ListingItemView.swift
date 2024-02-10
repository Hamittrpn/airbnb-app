
import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing:8){
            
            // images
            TabView{
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                }
            }
            .frame(height:320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            .overlay(alignment: .topTrailing) {
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundStyle(.red)
                    .padding(.all, 20)
            }
            
            
            // listing details
            HStack(alignment: .top){
                // details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 mil away")
                        .foregroundStyle(.gray)
                    Text("Now 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing:4){
                        Text("$567").fontWeight(.semibold)
                        Text("night")
                    }
                }
                
                Spacer()
                
                // ratings
                HStack(){
                    Image(systemName: "star.fill")
                    Text("4.86")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
        }
    }
}

#Preview {
    ListingItemView()
}


