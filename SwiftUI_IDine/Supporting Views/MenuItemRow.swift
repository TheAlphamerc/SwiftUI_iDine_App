//
//  MenuItemRow.swift
//  SwiftUI_IDine
//
//  Created by TheAlphamerc on 15/02/20.
//  Copyright © 2020 TheAlphamerc. All rights reserved.
//

import SwiftUI

struct MenuItemRow: View {
    var item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    var body: some View {
        HStack{
            ImageStore.shared.image(name:item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray,lineWidth: 2))
            VStack(alignment:.leading){
                Text(item.name)
                    .font(.headline)
                HStack{
                     Text("$\(item.price)")
                     Spacer()
                     ForEach(item.restrictions, id: \.self){restrictions in
                        Text(restrictions)
                            .font(.caption)
                            .fontWeight(.black)
                            .padding(5)
                            .background(self.colors[restrictions, default:.black])
                            .clipShape(Circle())
                            .foregroundColor(.white)
                        
                    }
//                     .padding(5,.right)
                }
               
            }
            
        }
    }
}

struct MenuItemRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemRow(item: MenuItem.example)
    }
}
    
