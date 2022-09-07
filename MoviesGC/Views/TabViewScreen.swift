//
//  TabView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 12/08/22.
//

import SwiftUI

struct TabViewScreen: View {
    var body: some View {
        
        TabView(){
            WatchView()
                .tabItem(){
                 Label("Ver ahora",systemImage: "play.circle")
                }//tabItem
              
            OriginalsView()
                .tabItem(){
                    Label("Originals", systemImage:"appletv")
                }
            
            DetailsView()
                .tabItem(){
                    Label("Tienda", systemImage: "bag")
                }
            
            LibraryView().tabItem(){
                Label("Biblioteca", systemImage:"tv")
            }
            
            SearchView().tabItem(){
                Label("Buscar", systemImage:"gamecontroller.fill")
            }
        }
        
        .accentColor(Color(hue: 0.583, saturation: 0.701, brightness: 0.696))
    }
}
struct TabViewScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabViewScreen()
    }
}

