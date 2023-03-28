//
//  NoteView.swift
//  team00
//
//  Created by Artur Yakupov on 18.03.2023.
//

import SwiftUI

struct Step: Identifiable, Equatable {
    let id = UUID()
    let step: String
}

struct NoteView: View {
    let title: String
    let description: String
    let image: String
    let steps: [Step]
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: image), content: { image in
                    image.resizable().aspectRatio(contentMode: .fit).frame(width: 350)
                }, placeholder: {
                    ProgressView()
                })
                Text(title).font(.title)
            }
            Divider()
            ForEach(steps) { step in
                VStack {
                    Text("Шаг " + String(steps.distance(from: steps.startIndex, to: steps.firstIndex(of: step)!) + 1))
                    Text(step.step)
                        .padding()
                        .frame(width: 355.0)
                }.padding()
            }
        }
    }
}

func stringToStep(strings: [String]) -> [Step] {
    var steps: [Step] = []
    for string in strings {
        steps.append(Step(step: string))
    }
    return steps
}
