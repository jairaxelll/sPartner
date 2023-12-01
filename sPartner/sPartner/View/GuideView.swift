//
//  GuideView.swift
//  
//
//  
//

import SwiftUI

struct GuideView: View {
    
    
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover new people who share your same music interests!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe right",
                        description: "Do you want to interact with this person? If you're lucky they'll want to interact with you too!",
                        icon: "heart.circle")
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe left",
                        description: "Not attracted to this person's favorite artists? Swipe left and you'll never see them again (probably)",
                        icon: "xmark.circle")
                    
                    GuideComponent(
                        title: "Chat Now",
                        subtitle: "Tap the button",
                        description: "Twice a week you'll be able to send a banger one-liner to someone you want, make sure it's a good one!",
                        icon: "checkmark.square")
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
            .preferredColorScheme(.dark)
    }
}
