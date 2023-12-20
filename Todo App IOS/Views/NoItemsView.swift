//
//  NoItemsView.swift
//  Todo App IOS
//
//  Created by Avi manak on 21/12/23.
//

import SwiftUI

struct NoItemsView: View {
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("There are no items!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to you todo list!")
                    .padding(.bottom, 20)
                
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add Something 🥳")
                            .foregroundColor(.white)
                            .frame(height: 55)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .font(.headline)
                            .background(animate
                                        ? secondaryAccentColor : Color.accentColor)
                            .cornerRadius(10)
                    }
                )
                .padding(.horizontal, animate ? 30 : 50)
                .scaleEffect(animate ? 1.1 : 1.0)
                .shadow(
                    color: animate
                    ? secondaryAccentColor.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 50 : 30
                )
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .padding(40)
            .multilineTextAlignment(.center)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
}

#Preview {
    NavigationView{
        NoItemsView()
    }.navigationTitle("Title")
}
