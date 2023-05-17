//
//  UserView.swift
//  TwittrAps
//
//  Created by Apple on 17/05/2023.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        
        HStack(spacing: 12){
          Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4){
                Text("Mamdouh AL-Rashidi")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("مرحباً بالجميع")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
