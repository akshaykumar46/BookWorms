//
//  ProfileView.swift
//  BookWorm
//
//  Created by AKSHAY KUMAR on 31/05/23.
//

import SwiftUI

struct ProfileView: View {
    var customer: Customer
        
        var body: some View {
            VStack {
                Text("BookWorms")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .padding(.top, 20)
                Image(customer.profilePicture)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 1))
                        
                    .shadow(radius: 10)
                    
                    
                    
                
                Text(customer.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.bottom, 10)
                
                Text(customer.email)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 10)
                
                Text("Location: \(customer.location)")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 10)
                
                Button(action: {
                    // Perform some action, like editing the profile
                }) {
                    Text("Edit Profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
                
                Spacer()
            }
            .padding()
            .background(Color.white)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("Profile", displayMode: .inline)
        }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(customer: customer1)
    }
}
