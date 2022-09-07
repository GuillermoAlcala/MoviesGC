//
//  OriginalsView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 12/08/22.
//

import SwiftUI

struct OriginalsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    PrincipalView()
                    OriginalsChannel()
                    Button("dfdf"){
                        
                    }
                 }
                
            }
            .navigationTitle("🍎tv+")
         //   .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct PrincipalView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack(alignment:.leading) {
                HStack(spacing:-49) {
                    ForEach(0..<6) { item in
                        Image("14Peaks")

                            .resizable()
                            .scaledToFit()
                            .clipShape(Rectangle())
                            .cornerRadius(11)
                            .frame(width: 400, height: 500)
                            .padding([.top,.trailing])

                    }
                    
                }
            }
        }
    }
}

struct OriginalsChannel:View{
    var body: some View{
        VStack(alignment:.leading) {
            VStack(alignment:.leading) {
                Text("A continuación en Apple TV+")
                    .font(.system(size:25))
                    .fontWeight(.thin)
                Text("Disfruta")
                    .fontWeight(.thin)
                    .padding(.trailing)
            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false){
                ZStack {
                    HStack(alignment: .center, spacing: 25) {
                        ForEach(0..<5){item in
                            Image("14Peaks")
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                //.cornerRadius(25) //genera el mismo resultado que la línea de arriba
                                //.clipShape(Rectangle()) funciona con la línea de arriba para redondear
                                .frame(width: 100, height: 120)
                                .shadow(radius: 5)
                                .padding(.leading)
                        }
                            
                    }

                }
            }
        }
        
    }
}

struct OriginalsView_Previews: PreviewProvider {
    static var previews: some View {
        OriginalsView()
    }
}
