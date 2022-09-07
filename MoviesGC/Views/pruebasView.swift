//
//  pruebasView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 17/08/22.
//

import SwiftUI
import UIKit
struct pruebasView: View {
    @State  var n1=0
    @State var n2=0
    @State var Res: Int
    @State var Mss=""
    @State private var show=true
    @State private var numeroRed=0
    @State private var numeroGreen=10
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(alignment:.leading) {
                    Text("Ingrese la cuenta")
                    TextEditor(text: $Mss)
                        .frame(width:300, height:40)
                        .border(.indigo)
                    
                    Text("Ingrese la cantidad de personas")
                    TextEditor(text: $Mss)
                        .frame(width:90, height:40)
                        .border(.red)
                    Spacer()
                    
                    HStack{
                        Button(action: {
                            show.toggle()
                            if show {numeroRed+=1}
                            else           {numeroRed-=1}
                            
                        })
                        {
                            if show{
                                Image(systemName: "heart.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.red)
                            }else{
                                Image(systemName: "heart")
                                    .font(.largeTitle)
                                    .foregroundColor(.red)
                            }
                        }
                        Text(String(numeroRed))
                        Divider()
                        Button(action:{
                            show.toggle()
                            
                            if show==false {numeroGreen-=1}
                            else           {numeroGreen+=1}
                            
                        })
                        {
                            (show==false ? Image(systemName: "person"): Image(systemName:"person.fill"))
                                .font(.largeTitle)
                                .foregroundColor(.green)
                        }
                        Text(String(numeroGreen))
                    }
                    Divider()
                    VStack(alignment: .leading) {
                        VStack {
                            Text("A continuación")
                                .font(.system(size: 22))
                                .padding(.leading)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(alignment:.center,spacing: 5){
                                    ForEach(0..<3) {item in
                                        Image("sandman")
                                            .resizable()
                                            .scaledToFill()
                                            .clipped()
                                            .frame(width: 350, height: 170)
                                            .cornerRadius(10)
                                    }
                                }
                                Spacer()
                            }
                        }
                        Divider()
                    }
                    VStack(alignment:.leading){
                        Button(action:shareButton){
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.black)
                        }
                        
                        Divider()
                        Button(action:{
                            Res=n1+n2
                        }){
                            Image(systemName: "dollarsign.circle.fill")
                                .foregroundColor(.yellow)
                                .font(.largeTitle)
                        }
                        
                    }
                   // TextField("El resultado es:", text: String($Res))
                    
                }.padding() // Principal Vstack
            }           //Principal ScrollView
            .navigationTitle("Pruebas")
        } // NavigationView
        
    }
}


func shareButton(){
    let url = URL(string: "https://designcode.io")
    let activityController = UIActivityViewController(activityItems: [url!], applicationActivities: nil)
    UIApplication.shared.windows.first?.rootViewController!.present(activityController, animated: true, completion: nil)
}
struct pruebasView_Previews: PreviewProvider {
    static var previews: some View {
        pruebasView(Res:0)
    }
}


struct GiftView:View{
    var body: some View{
        GiftUIView("club")
            .frame(width: 600, height: 400)
            .cornerRadius(10)
        
        
    }
}



struct GiftView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            GiftView()
                .frame(width: 600, height: 400)
                .cornerRadius(10)
            
        }
        
        
    }
}




/*
 .swipeActions {
 Button(role: .destructive) {} label: {
 Label("Delete", systemImage: "trash")
 }
 }
 */


func Sumar(){
    
}


func Restar(){
    
}


func Multiplicar(){
    
}


func Dividir(){
    
}


/*
 ZStack {
 VStack(alignment:.leading) {// leading para alinear el texto de incluidos
 HStack {
 Text("Apple Originals")
 .foregroundColor(.orange)
 .font(.system(size: 27))
 Spacer()
 
 Text("Ver todo")
 .foregroundColor(.blue)
 .padding(.trailing)
 
 }
 .padding(.leading)
 
 Text("Incluidos en tu subscripción de apple TV+")
 .foregroundColor(.gray)
 .font(.system(size:15))
 .padding(.leading)
 Spacer()
 
 }
 
 
 
 }
 */
