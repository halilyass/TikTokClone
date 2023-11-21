//
//  NotificationsView.swift
//  TikTokClone
//
//  Created by Halil YAŞ on 21.11.2023.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 14) {
                    ForEach(0 ..< 10) { notification in
                        NotificationCell()
                    }
                }
            }
            .navigationTitle("Notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.vertical)
        }
    }
}

#Preview {
    NotificationsView()
}
