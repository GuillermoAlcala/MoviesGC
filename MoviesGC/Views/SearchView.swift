//
//  SearchView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 19/08/22.
//

import SwiftUI

struct SearchView: View {
    @State var textt = ""

    var body: some View {
        
        NavigationView{
                ChanelsDetailView()
                .navigationTitle("Buscar")
        }
        .searchable(text: $textt)
          

    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

