//
//  WatchView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 12/08/22.
//

import SwiftUI

struct WatchView: View {
    @State private var showDetails = false
    @State var isLinkActive = false
    @State var isPresented: Bool=false

    var body: some View {
        NavigationView {
            ScrollView() {// principal
                // TO DO: A CONTINUACIÓN
                FirstScroll() //Vstack
                //-----------------------SEGUNDO SCROLL H--CON BOTON---------------//
                // TO DO:
                SecondScroll()//Vstack
                //PICTURE WITH SCROLL VIEW H
                ZStack {
                      Image("severance")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width:400,height: 700)
                        .cornerRadius(10)
                  /*  Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 390, height: 500)
                    .cornerRadius(5)
                 */
                    
                    //ScrollView Background
                    ThirdScroll()//ScrollView H
                    }//Zstack
                
                // SCROLL APPLE ORIGINALS AND TEXT
                ZStack {AppleOriginalsScrollView()}
                    
                Spacer()
                ZStack {Channel()}
                ZStack {ChannelPlus()}
            }//Scroll Principal
            .padding() // se quita .leading para poder alinear el boton de ver todo
            .navigationTitle("Ver ahora")
            }//NavigationView
        }
    }



//BOTON MODAL
struct BotonModal:View{
    @State var isPresented:Bool=false
    
    var body:some View{
        Button("Ver todo")
        {
            isPresented=true
        }.sheet(isPresented: $isPresented,
            onDismiss: {isPresented=false},
            content: {
            SeeView()
        })
        
        .foregroundColor(.indigo)//color del tecto
        //.frame(width: 90, height: 50)//tamaño de la vista
        //.background(.yellow) //fondo del boton
       // .cornerRadius(10) //redondeo del boton
       // .border(.black) //borde del boton
       // .overlay(RoundedRectangle(cornerRadius: 50)
       // .stroke(Color(.sRGB, red: 200/255, green: 200/255, blue: 200/255, opacity: 100.9), lineWidth:1))
        
    }
}

struct FirstScroll: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("A continuación")
                .font(.system(size: 22))
                .padding(.leading)
            //.padding([.top, .horizontal])
            ScrollView(.horizontal,showsIndicators: false) {
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
                // Spacer() opcional
            }// SCROLLVIEW H
            //                .padding() // me quita el espacio del lado izquierdo del scroll
            .padding([.leading, .horizontal,])
            
        }
    }
}

struct SecondScroll: View {
    var body: some View {
        VStack(alignment:.leading) {
            HStack() {
                Text("Que ver")
                    .font(.system(size: 22))
                    .padding(.leading)
                Spacer()
                    .padding(.all)
                BotonModal()
                    .padding(.all)
                //Spacer()
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment:.center, spacing: 10){
                    ForEach(0..<5) { item in
                        Image("cena")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 170)
                            .cornerRadius(10)
                        
                    }
                }
                
            }
            .padding([.leading, .horizontal,])
            
        }
    }
}

struct ThirdScroll: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            Spacer()
            VStack(alignment:.center) {
                HStack(alignment: .center){
                    ForEach(0..<3) {item in
                        
                        NavigationLink(destination: DetailsView()) {
                            VStack(alignment:.center) { // se agrega para poder acomodar el título de la imagen
                                Image("severance")
                                    .resizable()
                                    .scaledToFill()
                                //Rectangle()
                                //.foregroundColor(.yellow)
                                //.frame(width: 180, height: 120)
                                    .frame(width: 190, height: 200)
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                
                            }
                            
                            .padding()
                        }
                    }
                    /*   VStack {
                     Rectangle()
                     .foregroundColor(.green)
                     .frame(width: 180, height: 120)
                     .cornerRadius(10)
                     .shadow(radius: 5)
                     .padding()
                     
                     Text("Verde")
                     .bold()
                     .foregroundColor(.white)
                     .frame(height: 35)
                     }
                     
                     VStack {
                     Rectangle()
                     .foregroundColor(.red)
                     .frame(width: 180, height: 120)
                     .cornerRadius(10)
                     .shadow(radius: 5)
                     .padding()
                     
                     //VStack() {
                     Text("Rojo")
                     .bold()
                     .foregroundColor(.white)
                     .frame(height: 35)
                     //}
                     }
                     
                     */
                }//Hstack
                
                Text("Amarillo")
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                    .padding([.leading,.vertical])
            }//VStack
        }
    }
}

struct AppleOriginalsScrollView: View {
    var body: some View {
            VStack(alignment:.leading) {
                HStack {
                    Text("Apple Originals")
                        .font(.system(size: 25))
                        .fontWeight(.thin)
                    // se agrega para saber si no me pase del tamaño
                    Spacer()
                    BotonModal() // Boton ver todo
                        .padding(.trailing)
                    //opcional: agregar .padding()
                }
                .padding(.leading)
                Text("Incluidos en tu subscripción de apple TV+.")
                    .font(.system(size:15))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.leading)
                    Spacer()
                    
                    //TO DO: SCROLLVIEW H
                ScrollView(.horizontal, showsIndicators:false){
                    HStack {
                        ForEach(0..<8){item in
                            Image("tronos")
                                .resizable()
                            //Rectangle()
                            .frame(width: 180, height: 120)
                           // .foregroundColor(.gray)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        }
                        .padding(.leading) // con este se solucionó la alineación del Subtítulo
                    }
                }

            
            }
        
    }
}

struct Channel:View{
    var body: some View{
        VStack(alignment:.leading) {
            VStack(alignment:.leading) {
                Text("Canales")
                    .font(.system(size:25))
                    .fontWeight(.thin)
                Text("Selecciona solo los que quieres")
                    .fontWeight(.thin)
                    .padding(.trailing)
            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false){
                ZStack {
                    HStack(alignment: .center, spacing: 25) {
                        ForEach(0..<5){item in
                            Image("paramount")
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .frame(width: 120, height: 90)
                                .shadow(radius: 5)
                        }
                            
                    }
//                    .padding()
                }
            }
        }
        
    }
}
struct ChannelPlus:View{
    var body: some View{
        VStack(alignment:.leading) {
            VStack(alignment:.leading) {
                HStack {
                    Text("Lo más visto en Apple TV")
                        .font(.system(size:25))
                        .fontWeight(.thin)
                    Spacer()
                    BotonModal()
                    //    .padding([.top,.vertical])
                        .padding(.trailing)
                }
                Text("Channels")
                    .fontWeight(.thin)
                    .padding(.trailing)
            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false){
                ZStack {
                    HStack(alignment: .center, spacing: 20) {
                        ForEach(0..<5){item in
                            Image("Anime")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 120)
                                .cornerRadius(19)
                                .clipShape(Rectangle())
                        }
                    }
                }
            }
        }
        
    }
}

/* -----------------> IMPLEMENTACIÓN DEL PRIMER SCROLL H <--------------------
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
    }
}
*/



/*
// -----------------------SEGUNDO SCROLL H----------------------------------//
// TO DO:
ScrollView(.horizontal) {
    HStack(alignment:.center, spacing: 10){
        ForEach(0..<5) { item in
            Rectangle()
                .frame(width: 130, height: 80)
                .foregroundColor(.indigo)
                .cornerRadius(10)
        }
        }
        .padding()
}
*/

/*
 NavigationLink(destination: SeeView(), isActive: $isLinkActive){
       Button(action: {
           self.isLinkActive = true
       }) {
           Text("Ver todo")
       }
       
   }
 */



/*
 Ejemplos

    Image(systemName: "pencil.and.outline")
     .font(.system(size: 45, weight: .thin))
     .overlay(Text("❤️"), alignment: .bottom)

 */



/*
VStack {
        Text("Apple Originals")
    HStack{
            BotonModal()
        BotonModal()
            .frame(width: 100, height: 50, alignment: .trailing)
    }
}
*/




struct WatchView_Previews: PreviewProvider {
    static var previews: some View {
        WatchView()
       //     .preferredColorScheme(.dark)
            
    }
}
