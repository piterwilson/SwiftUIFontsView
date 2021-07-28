import SwiftUI

public struct SwiftUIFontsView: View {
    
    private struct NamedFont: Identifiable {
        let name: String
        let font: Font
        var id: String { name }
    }
    
    private var namedFonts: [NamedFont] {
        if #available(iOS 14.0, tvOS 14.0, *) {
            return [
                NamedFont(name: "Large Title", font: .largeTitle),
                NamedFont(name: "Title", font: .title),
                NamedFont(name: "Title 2", font: .title2),
                NamedFont(name: "Title 3", font: .title3),
                NamedFont(name: "Headline", font: .headline),
                NamedFont(name: "Sub-Headline", font: .subheadline),
                NamedFont(name: "Callout", font: .callout),
                NamedFont(name: "Body", font: .body),
                NamedFont(name: "Footnote", font: .footnote),
                NamedFont(name: "Caption", font: .caption),
                NamedFont(name: "Caption 2", font: .caption2)
            ]
        } else {
            return [
                NamedFont(name: "Large Title", font: .largeTitle),
                NamedFont(name: "Title", font: .title),
                NamedFont(name: "Headline", font: .headline),
                NamedFont(name: "Sub-Headline", font: .subheadline),
                NamedFont(name: "Callout", font: .callout),
                NamedFont(name: "Body", font: .body),
                NamedFont(name: "Footnote", font: .footnote),
                NamedFont(name: "Caption", font: .caption)
            ]
        }
    }

    public var body: some View {
        List {
            ForEach(namedFonts) { namedFont in
                Text(namedFont.name)
                    .font(namedFont.font)
            }
        }
    }
}

struct SwiftUIFontsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SwiftUIFontsView()
        }
        .previewLayout(PreviewLayout.sizeThatFits)
        .environment(\.colorScheme, .light)
        Group {
            SwiftUIFontsView()
        }
        .previewLayout(PreviewLayout.sizeThatFits)
        .environment(\.colorScheme, .dark)
    }
}

