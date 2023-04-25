//
//  ContentView.swift
//  OTPEnteries
//
//  Created by Swee Kwang Chua on 19/4/23.
//

import SwiftUI
import SwiftRUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            Text("OTP code is sent to your mobile number.")
                .foregroundColor(.gray)
                .padding(.vertical, 38)
            
            OTPTextField(numberOfFields: 6)
            
            Spacer()
            
            Button("Send") {
                
            }
            .buttonStyle(
                RUIRoundedCornerIconButtonStyle(
                    leadingIcon: {
                        Image(systemName: "paperplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .frame(width: 22, height: 22)
                            .padding(.trailing, 4)
                    }
                )
            )
            .padding(.horizontal)
            
            
            Text("Didn't recieve code? **Request again**")
                .padding(.vertical)
                .navigationTitle("Verify Phone")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
