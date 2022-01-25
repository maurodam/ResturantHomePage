//
//  ContentView.swift
//  ResturantHomePage-SwiftUI
//
//  Created by Damiano Mauro on 13/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView
        {
            ZStack
            {
                Image("poke_background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .blur(radius: 1.5)
                
                VStack
                {
                    Spacer()
                    HStack
                    {
                        
                        Text("Trova il ristorante\npiù vicino a te")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .multilineTextAlignment(.leading)
                            .offset(x: 70, y: 0)
                            Spacer()
                    }
                    
                    NavigationLink(destination: ElencoRistoranti())
                    {
                        Text("Visualizza")
                            .foregroundColor(.white)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(.red)
                            .cornerRadius(35)
                            .font(.headline)

                    }
                    .navigationTitle("")
                    .foregroundColor(.white)
                    
                }
            }
        }
    }
}

struct ElencoRistoranti: View
{
    @State var isModal: Bool = false

    var body: some View {
        
        ZStack
        {
            VStack
            {
                Spacer()
                HStack
                {
                    Image("cianci-piola")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .shadow(radius: 20)
                    Spacer()
                    VStack
                    {
                        Spacer()
                        Text("CIANCI PIOLA CAFFÈ")
                            .font(.headline)
                        Text("Il ristorante propone una varietà di piatti della tradizione piemontese.")
                            .font(.caption)
                        Spacer()
                        Button("Scopri di più...") {
                            self.isModal = true
                        }.sheet(isPresented: $isModal, content: {
                            CianciPiolaCaffe()
                        }).font(.subheadline)
                    }
                    Spacer()
                }
                HStack
                {
                    Image("poormanger").resizable().scaledToFit()
                        .clipShape(Circle())
                        .shadow(radius: 20)
                    Spacer()
                    VStack
                    {
                        Spacer()
                        Text("POORMANGER")
                            .font(.headline)
                        Text("Poormanger è un ristorante diverso dal solito: propone un piatto unico ma abbondante. Le patate ripiene sono cotte in uno speciale forno a gas ed incise sulla parte più lunga.")
                            .font(.caption)
                        Spacer()
                        Text("Scopri di più...")
                    }
                    Spacer()
                }
                HStack
                {
                    Image("raviolhouse").resizable().scaledToFit()
                        .clipShape(Circle())
                        .shadow(radius: 20)
                    Spacer()
                    VStack
                    {
                        Text("RAVIOLHOUSE")
                            .font(.headline)
                        Text("I ravioli sono un piatto tipico della tradizione piemontese. RaviolHouse è uno dei ristoranti monotematici di Torino e sorge nel centro della città a due passi dalla Mole Antonelliana.")
                            .font(.caption)
                    }
                    Spacer()
                }
                HStack
                {
                    Image("bol-house").resizable().scaledToFit()
                        .clipShape(Circle())
                        .shadow(radius: 20)
                    Spacer()
                    VStack
                    {
                        Text("BOL HOUSE")
                            .font(.headline)
                        Text("Il ristorante è il primo in Italia a servire le famose “bread bowls”. Sono dei veri e propri scrigni di pane artigianale guarniti con le ricette italiane e internazionali.")
                            .font(.caption)
                    }
                    Spacer()
                }
                HStack
                {
                    Image("a6-sciamadda").resizable().scaledToFit()
                        .clipShape(Circle())
                        .shadow(radius: 20)
                    Spacer()
                    VStack
                    {
                        Text("A6 SCIAMADDA")
                            .font(.headline)
                        Text("Il ristorante nel cuore di Torino ci porta all’interno dei sapori liguri e più nello specifico, della zona genovese.")
                            .font(.caption)
                    }
                    Spacer()
                }
            Spacer()
            }
        }
    }
}


struct LoginView: View {
    var body: some View {
        //Questa sarà la pagina del ristorante
        Text("Login View")
    }
}

struct CianciPiolaCaffe: View {
    var body: some View {
        //Questa sarà la pagina del ristorante
        VStack
        {
            ZStack{
                Image("cianci-piola")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaledToFit()
                    .blur(radius: 10,opaque: true)
                
                Image("cianci-piola")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .shadow(radius: 10)
            }
            
            ZStack
            {
                VStack
                {
            Text("Cianci Piola Caffè")
                .font(.title).bold()
            
            Text("Il ristorante propone una varietà di piatti della tradizione piemontese. Tra le varie ricette che compongono il menù possiamo trovare: il vitello tonnato, le acciughe al verde, i flan di verdure, i tomini al verde, i tajarin al ragù, l’arrosto e per finire il bonet, il tiramisù e la loro Coppa Cianci tipica. Durante le belle giornate il locale si allarga all’esterno con il dehors sulla piazzetta.")
                        .font(.footnote)

            Spacer()
            Text("Prezzo: Il prezzo varia dai 4 euro degli antipasti, ai 5/6 euro dei piatti principali, con i dolci a 2,50 euro.")
            Spacer()
            Text("Posizione: Largo Quattro Marzo 9/b.")
                    Spacer()
            Text("Orario: Dal lunedì alla domenica dalle 12 alle 16 e dalle 18 alle 24.")
                    Spacer()
            Text("Per maggiori informazioni visitare il sito: Cianci Piola – Piola a Torino")
                }
            }
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
        
        
        
        
        
        
        
    }
}








struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ElencoRistoranti()
        CianciPiolaCaffe()
    }
}
