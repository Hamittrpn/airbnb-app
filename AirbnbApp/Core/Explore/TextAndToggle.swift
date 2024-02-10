
import SwiftUI

struct TextAndToggle: View {
    @State private var isOn = false
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("Vergiler hariç toplamı göster")
                .fontWeight(.semibold)
        }.padding(.vertical, 16)
            .toggleStyle(SymbolToggleStyle(activeColor: .black, enableBorder: true))
    }
}

#Preview {
    TextAndToggle()
}
