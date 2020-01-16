import SwiftUILoadingIndicator
import SwiftUI



struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<LoadingView.all.count) { index in
                    VStack {
                        Spacer()
                            .frame(height: 100)
                        LoadingView.all[index]
                            .frame(height: 200)
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

private extension LoadingView {
    static let all =
        [LoadingView(.dots),
         LoadingView(.moreDots),
         LoadingView(.scalingDots),
         LoadingView(.symmetrical),
         LoadingView(.symmetricalMoreDots),
         LoadingView(.verticalWaves),
         LoadingView(.bubbles),
         LoadingView(.crazyBubbles, backgroundColor: Color(.blue)),
         LoadingView(.slowWaves),
         LoadingView(.waves)]
}
