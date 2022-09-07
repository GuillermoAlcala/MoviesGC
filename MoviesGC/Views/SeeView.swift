//
//  SeeView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 12/08/22.
//

import SwiftUI

struct SeeView: View {
    @Environment(\.presentationMode) var back
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                GalleryView()
            }
            .navigationTitle("Que ver")
            .toolbar{
                ZStack{
                    NavigationLink(destination:WatchView()){
                        Button("Back"){
                            back.wrappedValue.dismiss()
                        }.foregroundColor(.primary)
                    }
                }
            }
       }
        
    }
}

struct SeeView_Previews: PreviewProvider {
    static var previews: some View {
        SeeView()
    }
}

//objetos
struct GalleryView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
                //.background(.red)
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
            }
            HStack {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
                
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
            }
            
            HStack {
                Rectangle()
                    .foregroundColor(.indigo)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
                
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
            }
            
            
            HStack {
                Rectangle()
                    .foregroundColor(.yellow)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
                
                Rectangle()
                    .foregroundColor(.gray)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
            }
            
            HStack {
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 180, height: 120)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}
