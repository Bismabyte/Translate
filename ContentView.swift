import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                    Button(action: {
                        // Action for the "More" button
                        print("More button tapped")
                    }) {
                        VStack {
                            Image(systemName: "ellipsis.circle")
                                .font(.system(size: 30)) // Adjust the font size as needed
                                .padding()
                                .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8))
                        }
                    }
                }
                .padding(.top, 16)
                
                Text("Translate")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .padding(.top, 8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .padding()
                
                    .accessibility(label: Text("Translate")) // Accessibility label for VoiceOver
                
                ZStack(alignment: .leading) {
                    // Second Rectangle
                    Rectangle()
                        .fill(Color(.darkGray)) // Dark gray color
                        .frame(maxWidth: .infinity, maxHeight: 150)
                        .cornerRadius(20)
                        .overlay(
                            VStack {
                                HStack {
                                    Text("Italian")
                                        .font(.system(size: 18, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                        .padding(.leading, -55) // Adjusted padding
                                    
                                    Image(systemName: "chevron.up.chevron.down")
                                        .foregroundColor(.white)
                                        .padding(.trailing, 200)
                                }
                                
                                .padding(.top, -40)
                                
                                HStack {
                                    Text("Inserisci testo")
                                        .font(.system(size: 25, weight: .bold, design: .default))
                                        .foregroundColor(.gray)
                                        .padding(.top, -30)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "mic.fill") // Mic symbol added here
                                        .foregroundColor(.white)
                                        .padding(.leading, -30) // Adjusted padding for mic position
                                        .padding(.top, -40) // Move mic symbol upward
                                }
                                .padding(.leading, 8)
                            }
                        )
                }
                
                ZStack(alignment: .leading) {
                    // First Rectangle
                    Rectangle()
                        .fill(Color(.darkGray)) // Dark gray color
                        .frame(maxWidth: .infinity, maxHeight: 150)
                        .cornerRadius(20)
                        .overlay(
                            VStack {
                                HStack {
                                    Text("English(US)")
                                        .font(.system(size: 18, weight: .bold, design: .default))
                                        .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8)) // Cyan green color
                                        .padding(8)
                                        .padding(.top, 1) // Adjusted padding
                                    
                                    Image(systemName: "chevron.up.chevron.down")
                                        .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8)) // Cyan green color
                                        .padding(.trailing, 200)
                                }
                                .padding(.top, -10)
                                HStack {
                                    
                                    Text("Enter text")
                                        .font(.system(size: 25, weight: .bold, design: .default))
                                        .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8).opacity(0.5)) // Dimmed color
                                        .padding(8)
                                        .padding(.top, -20)
                                    Spacer()
                                    
                                    Image(systemName: "mic.fill") // Mic symbol added here
                                        .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8)) // Cyan green color
                                        .padding(.leading, -30) // Adjusted padding for mic position
                                        .padding(.top, -30) // Move mic symbol upward
                                }
                                .padding(.leading, 8)
                            }
                        )
                    
                    // Arrow Triangle Swap
                    Image(systemName: "arrow.triangle.swap")
                        .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8)) // Cyan green color
                        .font(.system(size: 30))
                        .padding(.leading, 150)
                        .offset(y: -75)
                }
                
                Spacer()
                
                HStack {
                    // Image named "icon" in the last corner of the screen
                    VStack(spacing: -5) { // Adjusted spacing
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                            .font(.system(size: 20))
                            .imageScale(.large)
                            .padding()
                            .offset(x: 20)
                            .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8)) // Push the image to the extreme end
                        Text("Translation")
                            .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8))
                            .font(.system(size: 10))
                            .padding(.top, -5)
                            .offset(x: 20)
                    }
                    
                    VStack(spacing: -5) { // Adjusted spacing
                        Image(systemName: "camera.fill")
                            .font(.system(size: 20))
                            .imageScale(.large)
                            .padding()
                            .offset(x: 20)
                            .foregroundColor(Color(.gray))  // Set to the background color
                        Text("Camera")
                            .foregroundColor(Color(.gray))
                            .font(.system(size: 10))
                            .offset(x: 20)
                    }
                    VStack(spacing: -5) {
                        Image(systemName: "person.2.fill")
                            .font(.system(size: 20))
                            .imageScale(.large)
                            .padding()
                            .offset(x: 20)
                            .foregroundColor(Color(.gray))
                        Text("Conversation")
                            .foregroundColor(Color(.gray))
                            .font(.system(size: 10))
                            .offset(x: 20)
                    }
                    VStack(spacing: 20) { // Adjusted spacing
                        NavigationLink(destination: FavoritesView()) {
                            Image(systemName: "star.fill")
                                .font(.system(size: 20))
                                .imageScale(.large)
                                .padding(.bottom, 10)
                                .offset(x: 30)
                                .foregroundColor(Color(.gray))
                            Text("Favorites")
                                .foregroundColor(Color(.gray))
                                .font(.system(size: 10))
                                .padding(.top, 55)
                                .offset(x: -15)
                        }
                    }
                }
            }
            .padding()
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true) // Hide the navigation bar if you don't want it to be visible
            .onAppear {
                // Set the app icon
                UIApplication.shared.setAlternateIconName("AppIcon")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
