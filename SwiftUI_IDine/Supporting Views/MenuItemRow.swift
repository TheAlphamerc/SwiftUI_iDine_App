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
    var body: some View {
        HStack{
            ImageStore.shared.image(name:item.thumbnailImage)
            VStack(alignment:.leading){
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

struct MenuItemRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemRow(item: MenuItem.example)
    }
}
    
