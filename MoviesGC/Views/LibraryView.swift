//
//  LibraryView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 19/08/22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack{
                    
                    Text("Sin programas de TV ni películas")
                        .bold()
                        .font(.system(size:22))
                        //.padding([.all, .vertical])
                        
                    Text("Tu biblioteca está vacía. Aquí se mostrarán los programas de TV y pel´culas que agregures a tu biblioteca")
                        .font(.system(size: 18))
                    //.fontWeight(.thin)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding([.top, .horizontal])

                }
                .frame( height: 600) // Alto de todo el VStack
            }
            .navigationTitle("Bibioteca")
        }
        

    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
