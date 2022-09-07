//
//  DetailsView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 15/08/22.
//

import SwiftUI

struct DetailsView: View {
    @Environment(\.presentationMode) var back

    var body: some View {
        NavigationView{
            Text("Hola")
                .foregroundColor(.orange)
                .toolbar{
                    ZStack{
                        NavigationLink(destination: WatchView()){
                            Button("Cerrar"){
                                back.wrappedValue.dismiss()
                            }.foregroundColor(.primary)

                    }
                }
        }
            
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
