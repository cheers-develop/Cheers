//
//  RecruitmentView.swift
//  MatchingApp
//
//  Created by Rio Nagasaki on 2023/05/03.
//

import SwiftUI
import SDWebImageSwiftUI

struct RecruitmentView: View {
    let pairModel:PairObservableModel
    var body: some View {
        VStack {
            HStack(alignment: .top){
                HStack(spacing: 10){
                    VStack {
                        WebImage(url: URL(string: pairModel.pair_1_profileImageURL))
                            .resizable()
                            .frame(width: (UIScreen.main.bounds.width/2)-30, height: (UIScreen.main.bounds.width/2)-30)
                            .cornerRadius(20)
                        Text("22歳 渋谷")
                            .foregroundColor(.black.opacity(0.8))
                            .bold()
                            .font(.system(size: 14))
                    }
                    VStack {
                        WebImage(url: URL(string: pairModel.pair_2_profileImageURL))
                            .resizable()
                            .frame(width: (UIScreen.main.bounds.width/2)-30, height: (UIScreen.main.bounds.width/2)-30)
                            .cornerRadius(20)
                        Text("22歳 渋谷")
                            .foregroundColor(.black.opacity(0.8))
                            .bold()
                            .font(.system(size: 14))
                    }
                }
            }
            .padding(.horizontal, 16)
            
            Button {
                print("さそう")
            } label: {
                Text("いいかも")
                    .frame(maxWidth: 400)
                    .padding(.all, 8)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                    .background(Color.customGreen)
                    .cornerRadius(10)
            }
        }
        .padding(.top, 8)
        .background {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(radius: 1)
        }
        .padding(.horizontal, 8)
        
    }
}
