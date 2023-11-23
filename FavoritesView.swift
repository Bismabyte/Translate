//
//  FavoritesView.swift
//  Translate
//
//  Created by Bisma Baig on 22/11/23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Favorites")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .padding(.top, 80)
                
                Spacer()
                
                VStack(spacing: -5) {
                    Spacer()
                    Image(systemName: "star.fill")
                        .font(.system(size: 48))
                        .imageScale(.large)
                        .padding(.top, 10) // Add space between the star and text
                        .foregroundColor(Color(.gray))
                        .onTapGesture {
                            // Activate the link when the star is tapped
                        }
                    
                    Text("No Favorites")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top, 10) // Adjust the spacing between the star and text
                        .multilineTextAlignment(.center)
                    
                    Text("Your favorite translations\nwill appear here.")
                        .font(.system(size: 14))
                        .foregroundColor(Color(.gray))
                        .multilineTextAlignment(.center)
                        .padding(.top, 10) // Add space between the two texts
                        .padding(.bottom, 40) // Adjust the bottom padding as needed
                    
                    Spacer()
                    
                    HStack {
                        VStack(spacing: -5) {
                            Image(systemName: "bubble.left.and.bubble.right.fill")
                                .font(.system(size: 24))
                                .imageScale(.large)
                                .padding()
                                .foregroundColor(Color(.gray))
                            Text("Translation")
                                .foregroundColor(Color(.gray))
                                .font(.system(size: 14))
                        }
                        
                        VStack(spacing: -5) {
                            Image(systemName: "camera.fill")
                                .font(.system(size: 24))
                                .imageScale(.large)
                                .padding()
                                .foregroundColor(Color(.gray))
                            Text("Camera")
                                .foregroundColor(Color(.gray))
                                .font(.system(size: 14))
                        }
                        
                        VStack(spacing: -5) {
                            Image(systemName: "person.2.fill")
                                .font(.system(size: 24))
                                .imageScale(.large)
                                .padding()
                                .foregroundColor(Color(.gray))
                            Text("Conversation")
                                .foregroundColor(Color(.gray))
                                .font(.system(size: 14))
                        }
                        
                        VStack(spacing: -5) {
                            Image(systemName: "star.fill")
                                .font(.system(size: 24))
                                .imageScale(.large)
                                .padding()
                                .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8))
                                .onTapGesture {
                                    // Activate the link when the star is tapped
                                }
                            Text("Favorites")
                                .foregroundColor(Color(red: 0.0, green: 0.8, blue: 0.8))
                                .font(.system(size: 14))
                        }
                    }
                }
                .padding()
            }
            .background(Color.black) // Set the background color to black
            .edgesIgnoringSafeArea(.all)
            .navigationBarItems(leading: EmptyView())
        }
    }
}
