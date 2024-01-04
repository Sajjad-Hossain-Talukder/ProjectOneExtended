import SwiftUI

struct TestUI: View {
    //MARK: - PROPERTIES
    @State var isTriggered : Bool = false
    //MARK: - BODY

    var body: some View {
        Button {
            isTriggered.toggle()
        } label: {
            Text("Click Here")
        }
        .sheet(isPresented: $isTriggered, content: {
            DrawerView()
                .presentationDetents([.fraction(0.513348214285714)])
                .presentationDragIndicator(.hidden)
                
        })

    }
    
}

#Preview {
    TestUI()
}




