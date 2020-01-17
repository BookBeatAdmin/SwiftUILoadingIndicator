import SwiftUILoadingIndicator
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ForEach(0..<LoadingView.all.count) { index in
                    VStack {
                        Spacer()
                            .frame(height: 50)
                        LoadingView.all[index]
                            .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    }
                }
            }.navigationBarTitle("LoadingIndicators", displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension LoadingView {
    
    static let all =
        [LoadingView(.dots),
         LoadingView(.moreDots),
         LoadingView(.scalingDots),
         LoadingView(.symmetrical),
         LoadingView(.symmetricalMoreDots),
         LoadingView(.verticalWaves),
         LoadingView(.bubbles),
         LoadingView(.crazyBubbles, backgroundColor: Color(.clear)),
         LoadingView(.slowWaves, backgroundColor: Color(.purple).opacity(0.3)),
         LoadingView(.waves)]
}
