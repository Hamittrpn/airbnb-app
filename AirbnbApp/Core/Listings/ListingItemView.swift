
import SwiftUI

struct ListingItemView: View {
    
    var body: some View {
        VStack(spacing:8){
            
            ListingImageCarouselView()
                .frame(height:320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
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


