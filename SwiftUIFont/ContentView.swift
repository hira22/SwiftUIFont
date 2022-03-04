//
//  ContentView.swift
//  SwiftUIFont
//
//  Created by hiraoka on 2022/03/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(Font.all, id: \.self) { (font: Font) in
                Section {
                    Text("Hello, world!")
                        .font(font)
                } header: {
                    Header(text: font.name)
                }
            }
        }
        .listStyle(.grouped)
    }

    struct Header: View {
        let text: String
        var body: some View {
            Text(text)
        }
    }
}

extension Font {
    static let all: [Font] = [
        .largeTitle,
        .title,
        .title2,
        .title3,
        .headline,
        .body,
        .callout,
        .subheadline,
        .footnote,
        .caption,
        .caption2,
    ]

    var name: String {
        switch self {
        case .largeTitle: return "largeTitle"
        case .title: return "title"
        case .title2: return "title2"
        case .title3: return "title3"
        case .headline: return "headline"
        case .body: return "body"
        case .callout: return "callout"
        case .subheadline: return "subheadline"
        case .footnote: return "footnote"
        case .caption: return "caption"
        case .caption2: return "caption2"
        default:
            return ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
