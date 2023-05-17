//
//  tweetRowView.swift
//  TwittrAps
//
//  Created by Apple on 16/05/2023.
//

import SwiftUI

struct tweetRowView: View {
    var body: some View {
        VStack(alignment: .leading){
            //profile imaga + user + info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                //user info & tweet caption
                VStack(alignment: .leading, spacing: 4) {
                    // user info
                    HStack{
                        Text("Mamdouh AL-Rashidi")
                            .font(.subheadline).bold()
                        
                        Text("@XM2HL")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("4w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    // tweet caption
                    Text("I am a programmer")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // action buttons
            HStack{
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    // action goes here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
    
    }
}

struct tweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        tweetRowView()
    }
}
