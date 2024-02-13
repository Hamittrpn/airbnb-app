
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
                
            
            VStack(spacing: 20){
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

                }
                .frame(maxWidth: .infinity, alignment: .leading)
                            
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
                
                Divider()
                            
                // listing feature
                VStack(spacing: 16){
                    ForEach(0 ..< 2) { feature in
                        HStack(alignment: .top){
                            Image(systemName: "medal")
                            VStack(alignment: .leading, spacing: 4){
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
                            
                Divider()
                
                VStack(alignment: .leading){
                    Text("Bazı bilgiler otomatik olarak çevrilmiştir.")
                        .font(.footnote)
                        .fontWeight(.regular)
                    Text("Orjinal dilde göster")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .underline()
                }
                .padding(.bottom, 20)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, 24)
            
            VStack(alignment: .leading, spacing: 20){
                Text("Ev sahibi ile tanışın")
                    .font(.title2)
                    .fontWeight(.bold)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .shadow(color: .gray.opacity(0.5), radius: 8)
                    HStack {
                        VStack{
                            Image("im_profile")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                            Text("Hamit")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                            
                            Text("Ev sahibi")
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                        .padding(.trailing, 40)
                        
                        VStack(alignment: .leading){
                            Text("172")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("Değerlendirme")
                                .font(.footnote)
                            Divider()
                                .frame(width: 120)
                            Text("4,88")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("Puanlama")
                                .font(.footnote)
                            Divider()
                                .frame(width: 120)
                            Text("172")
                                .font(.title3)
                                .fontWeight(.bold)
                            Text("Yıldır ev sahibi")
                                .font(.footnote)
                        }
                    }
                }
                .frame(height: 250)
                
                // listing profile details
                VStack(spacing: 16){
                    ForEach(0..<5) { feature in
                        HStack(alignment: .top){
                            Image(systemName: "graduationcap")
                            Text("Superhosts are experience, highly rated")
                                .font(.subheadline)
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding(.vertical, 20)
                
                Text("Superhosts are experience, highly rated. Superh are experience, highly rated.Superhosts are experience, highly rated.Supests are experience, highly rated.Superh are experience, highly rated.Superhosts are experience, highly rated")
                    .font(.subheadline)
                
                Text("Daha fazla göster >")
                    .underline()
                
                Button(action: {}) {
                    Text("Ev sahibine mesaj gönderin")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.all, 14)
                        .background(Color.black)
                        .cornerRadius(8)
                }
                .padding(.vertical, 12)
                
                Text("Ödeme güvenliği açısından asla Airbnb web sitesi veya uygulaması dışında para havalesi yapmayın ve iletişime girmeyin.")
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
            .padding(.all, 24)
            .background(Color(hex: 0xF2F2F2))
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ListingDetailView_Preview: PreviewProvider{
    static var previews: some View{
        ListingDetailView()
    }
}
