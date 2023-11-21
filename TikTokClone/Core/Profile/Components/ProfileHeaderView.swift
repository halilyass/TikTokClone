//
//  ProfileHeaderView.swift
//  TikTokClone
//
//  Created by Halil YAŞ on 21.11.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                //Profile Image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                //username
                Text("@halil.yas")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            //stats view
            HStack(spacing: 16) {
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 5, title: "Followers")
                UserStatView(value: 5, title: "Likes")
            }
            
            //action Button
            
            Button(action: {}, label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .frame(width: 360,height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            })
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}

