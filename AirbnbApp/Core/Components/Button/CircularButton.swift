
import SwiftUI

struct CircleButton: View {

    var body: some View {
        Button {
        } label: {
            Image("ic_filter")
                .resizable()
                .frame(width: 16, height: 16)

        }.background(
            Capsule()
                .fill(Color(hex: 0xF2F2F2))
                .stroke(.gray, lineWidth: 0.5)
                .frame(width: 40, height: 40)
        )

    }
}
