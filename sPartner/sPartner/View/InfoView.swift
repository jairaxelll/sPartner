//
//  InfoView.swift
//  
//
//  
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                AppInfoView()
            
                
                Spacer(minLength: 10)
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 50)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(itemOne: "Application", itemTwo: "sPartner")
            RowAppInfoView(itemOne: "Compatibility", itemTwo: "iPhone")
            RowAppInfoView(itemOne: "Developer", itemTwo: "Athaina Rada")
            RowAppInfoView(itemOne: "Developer", itemTwo: "Oscar Gonzalez")
            RowAppInfoView(itemOne: "Developer", itemTwo: "Jair Martinez")
        }
    }
}

struct RowAppInfoView: View {
    
    var itemOne: String
    var itemTwo: String
    
    var body: some View {
        VStack {
            HStack {
                Text(itemOne)
                    .foregroundColor(.gray)
                Spacer()
                Text(itemTwo)
            }
            Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Photos")
                    .foregroundColor(.gray)
                Spacer()
                Text("Unsplash")
            }
            Divider()
            
            Text("Photographers").foregroundColor(Color.gray)
            
            Text("all pictures were found in pinterest")
                .multilineTextAlignment(.leading)
                .font(.footnote)
        }
    }
}
