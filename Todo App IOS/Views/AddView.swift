//
//  AddView.swift
//  Todo App IOS
//
//  Created by Avi manak on 11/12/23.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    @State var mercuryColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
    

    
    var body: some View {
        ScrollView {
            TextField("Type Something here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(mercuryColor))
                .cornerRadius(10)
            
            Spacer(minLength: 40)
            Button(action: {
                
            }, label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            })
        }.padding(14)
        
        
        .navigationTitle("Add an item ✍🏻")
        
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
