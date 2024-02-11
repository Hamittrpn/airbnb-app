
import SwiftUI

struct ListingDetailView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        ScrollView{
            ListingImageCarouselView(enableSafeAreaPadding: true)
                .frame(height:320)
                
            
            VStack(alignment: .leading) {
                Text("Minihane Sapanca - Isıtmalı havuzlu tinyhouse")
                    .font(.system(size: 25))
                    .fontWeight(.semibold)
                    .padding(.vertical, 12)
                
                Text("Tüm kır evi, Sapanca, Türkiye")
                    .font(.body)
                    .fontWeight(.semibold)
                
                HStack(spacing:0) {
                    Text("4 misafir - ")
                    Text("1 yatak odası - ")
                    Text("2 yatak - ")
                    Text("1 banyo")
                }                
                .font(.footnote)
                .padding(.bottom, 12)

            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 24)

                        
            HStack(spacing: 16){
                VStack(spacing: 2) {
                    Text("4,95")
                        .fontWeight(.semibold)
                        .font(.title3)
                    HStack(spacing: 2) {
                        ForEach(0 ... 4, id: \.self) { stars in
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 10, height: 10)
                        }
                    }
                }
                Divider()
                
                Text("Misafirlerin\nFavorisi")
                    .multilineTextAlignment(.center)
                    .fontWeight(.semibold)
                
                Divider()
                
                VStack{
                    Text("93")
                    Text("Değerlendirme")
                        .font(.caption)
                        .underline()
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(.gray, lineWidth: 0.5)
                    .padding(.horizontal, 24)
            )
            
            HStack{
                Image("im_profile")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .scaledToFill()
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Ev sahibi : Yücel")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    Text("Süper ev sahibi, 2 yıldır ev sahibi")
                    .font(.caption)
                    .foregroundStyle(.black.opacity(0.6))
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
            
            Divider()
                        
            // listing feature
            VStack(alignment: .leading, spacing: 16){
                ForEach(0 ..< 2) { feature in
                    HStack{
                        Image(systemName: "medal")
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("Superhosts are experience, highly rated hosts who are commited to providing great stars for guests")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                    }
                }
            }
            .padding(.all, 24)

        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ListingDetailView()
}
 
