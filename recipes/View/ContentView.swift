//
//  ContentView.swift
//  recipes
//
//  Created by Aliya on 19.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(recipes) { item in
                NavigationLink(destination: NoteView(title: item.title, description: item.description, image: item.urlToImage, steps: stringToStep(strings: item.steps))) {
                    VStack(alignment: .leading) {
                        HStack {
                            AsyncImage(url: URL(string: item.urlToImage), content: { image in
                                image.resizable()
                            }, placeholder: {
                                ProgressView()
                            })
                            .frame(width: 100.0, height: 100.0)
                            .cornerRadius(7)
                            Text(item.title).font(.title)
                        }
                        Text(item.description)
                    }
                }
                .navigationTitle("today I will cook..")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
