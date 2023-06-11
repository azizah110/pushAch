<<<<<<< HEAD
//
//  ContentView.swift
//  test
//
=======

//  ContentView.swift
//  test
>>>>>>> 8b27d9613ee54b62a15f414a96bb0df79c12e482
//  Created by azizah ahmed alshami on 25/05/1444 AH.
//

import SwiftUI

struct ContentView: View {

        @State private var searchText = ""
        private var numOfImges = 2
        private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
        @State private var CurrentImg = 0
        
        
        var body: some View {
            NavigationStack {
                ZStack {
                    VStack {
                        Text("Stores")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.524, green: 0.651,  blue: 0.619))
                            .padding(.leading, 30.0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        HStack(spacing: 50) {
                            NavigationLink {
                                Text("kkkk")
                            } label: {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.white)
                                    .frame(width: 150.0, height: 150)
                                
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("yellow"), lineWidth:
                                                        1))
                                    
                                    .overlay{
                                        VStack {
                                            Image("az")
                                                .resizable()
                                                .frame(width: 100,height: 70)
                                            
                                            
                                            
                                        }
                                    }
                            }

                            NavigationLink {
                                Text("kkkk")
                            } label: {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.white)
                                    .frame(width: 150.0, height: 150)
                                
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color("yellow"), lineWidth: 1))
                                    .overlay{
                                        VStack {
                                            Image("zz")
                                                .resizable()
                                                .frame(width: 100,height: 70)
                                           
                                            
                                        }
                                        
                                    }
                            }
                        }
                        
                        
                        VStack{
                            
                            //Spacer()
                            
                            Text("Services")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.524, green: 0.651, blue: 0.619))
                                .padding(30.0)
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }.padding(.bottom, 40.0)
                        
    //                    HStack(spacing: 30) {
                            
                            
                            //                                         Spacer()
                            NavigationLink {
                                Text("kkkk")
                            } label: {
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(.white)
                                    .frame(width: 150.0, height: 150)
                                
                                
                                    .searchable(text: $searchText)
                                
                                HStack(spacing: 150) {
                                    
                                    
                                    VStack{
                                        
                                        
                                        GeometryReader { proxy in
                                            TabView(selection: $CurrentImg  ){
                                                ForEach(0..<numOfImges) {num in
                                                    Image("\(num)")
                                                    
                                                        .resizable()
    //                                                    .scaledToFill()
                                                        .tag(num)
                                                     
                                                    
                                                }
                                            }
                                            
                                            .tabViewStyle(PageTabViewStyle())
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                            .padding()
                                            .frame(width: proxy.size.width, height: 200)
                                            
                                            
                                            
                                            .onReceive(timer, perform: { _ in
                                                withAnimation{
                                                    CurrentImg = CurrentImg < numOfImges ? CurrentImg + 1 : 0
                                                }
                                            })
                                        }
                                        .padding(.top, -70.0)
                                    }
                                    .frame(width: 400, height: 205)
                                    .shadow(radius: 4, x: 0, y: 3)
                                    
                                    
                                    
                                            Spacer()
                                    
                                    
                                }
                            }
                            
    //
    //                        .padding(.horizontal)
    //                        .padding(.top)
    //                    }
                    }
                   
                    
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
