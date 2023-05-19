import SwiftUI
struct Pag_1: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...20, id: \.self) { _ in
                    tweetRowView()
                        .padding()
                }
            }
        }
        
    }
}

struct Pag_1_Previews: PreviewProvider {
    static var previews: some View {
        Pag_1()
    }
}
