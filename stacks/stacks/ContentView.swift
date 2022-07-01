//
//  ContentView.swift
//  pocs
//
//  Created by Jose I. Sperk on 22/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Background color
            Color.black
                .ignoresSafeArea(.all)
            VStack{
                Text("Choose your subscription")
                    .font(.system(.title, design: .rounded))
                    .foregroundColor(.white)
                    .fontWeight(.black)
                HStack{
                    SubscriptionView(text: "Basic", price: "$9", color: Color.white)
                    SubscriptionView(text: "Gold", price: "$49", color: Color.yellow)
                }
                SubscriptionView(text: "Titanium", price: "99$", color: Color.gray)
                
                SubscriptionButtonView(text: "Subscribe", color: Color.blue, topPadding: 40, action: {
                    
                })
                
                SubscriptionButtonView(text: "Maybe next time", color: Color.red, topPadding: 10, action: {
                    
                } )
            }
        }
    }
}

struct SubscriptionButtonView: View {
    
    var text: String
        var color: Color
        var topPadding: CGFloat
        var action: () -> Void
        
        var body: some View {
            Button(action: action) {
                Text(text)
                    .padding()
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: 75)
                    .background(color)
                    .cornerRadius(30)
                    .shadow(radius: 40)
            }
            .padding(.top, topPadding)
            .padding(.horizontal)
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SubscriptionView: View {
    var text: String
    var price: String
    var color: Color
    var body: some View {
        VStack {
            Text(text)
                .font(.system(.title, design: .rounded))
                .foregroundColor(.black)
                .fontWeight(.black)
            Text(price)
                .font(.system(.title, design: .rounded))
                .foregroundColor(.black)
            Text("per month")
                .font(.headline)
                .foregroundColor(.black)
        } //VStack
        .frame(maxWidth: .infinity, minHeight: 150)
        .padding(30)
        .background(color)
        .cornerRadius(20)
    }
}
