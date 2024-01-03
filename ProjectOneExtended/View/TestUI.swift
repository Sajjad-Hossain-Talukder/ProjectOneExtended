import SwiftUI

struct TestUI: View {
    @State private var isExpanded = false

    var body: some View {
        
        
        VStack {
            // Static Top View (Title)
            ProjectTopView()

            // Scrollable content (Button and Lower Views)
            ScrollView {
                VStack(spacing: 0) {
                    // Important View with Button
                    HStack(spacing: 23) {
                        ProjectButtonView(buttonImage: "pm1", buttonTitle: "Voiceover")
                        ProjectButtonView(buttonImage: "pm1", buttonTitle: "Voiceover")
                        ProjectButtonView(buttonImage: "pm1", buttonTitle: "Voiceover")
                        ProjectButtonView(buttonImage: "pm1", buttonTitle: "Voiceover")
                        Button(
                            action: {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    isExpanded.toggle()
                                }
                            },
                            label: {
            
                                VStack(spacing:8){
                                    
                                    ZStack {
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 58, height: 58, alignment: .center)
                                            .shadow(color: Color.black.opacity(0.08), radius: 7.5, x: 0, y: 2)
                                        Image("pm5")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 24, height: 24, alignment: .center)
                                    } //: ZStack
                                    
                                    
                                    Text("Expand")
                                        .font(Font.custom("Poppins-Medium", size: 11))
                                        .foregroundColor(.accentColor)
                                        .multilineTextAlignment(.center)
                                        .kerning(0.11)
                                        .multilineTextAlignment(.center)
                                }//: VStack
                            }) //: Button
                    }//:hStack
                    .padding(.horizontal,16)
                    .background(Color.red)

                    // Additional View that appears and disappears
                    if isExpanded {
                        ProjectMenuTwoView()
                        .padding(.bottom, isExpanded ? 0 : -200)
                        .background(Color.black.opacity(0.3))
                        .onTapGesture {
                            withAnimation {
                                isExpanded.toggle()
                            }
                        }
                
                        
                    }

                    // Last View (Navigation Bar)
                    ProjectMidView()
                        .frame(height: isExpanded ? 500 : 200 )
                    NavigationBar(topColorLeft: "option2", topColorRight: "option1", buttonColorOne: "option3" , buttonColorTwo: "option1", imageOne:  "tool" , imageTwo: "projectColor" )
                        .background(Color(.yellow))
                    
                }
            }
        }
        //.edgesIgnoringSafeArea(.all)
    }//ZStack
}

#Preview {
    TestUI()
}
