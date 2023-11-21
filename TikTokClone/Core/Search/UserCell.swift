//
//  UserCell.swift
//  TikTokClone
//
//  Created by Halil YAŞ on 21.11.2023.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack {
                Text("halil.yas")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Halil YAŞ")
                    .font(.footnote)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
