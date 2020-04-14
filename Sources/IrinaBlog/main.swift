import Foundation
import Publish
import Plot
//import BrianPublishTheme

// This type acts as the configuration for your website.
struct IrinaBlog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
        case y2018 = "2018"
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://www.myrvold.org")!
    var name = "Блог Ирины"
    var description = "Моя жизнь в Норвегии как русский"
    var language: Language { .russian }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
//try IrinaBlog().publish(withTheme: .brian)
try IrinaBlog().publish(withTheme: .foundation,
additionalSteps: [
    .deploy(using: .gitHub("imyrvold/imyrvold.github.io"))
])
//try IrinaBlog().publish(using: [
//       .addMarkdownFiles(),
//       .copyResources(),
//       .generateHTML(withTheme: .foundation),
//       .generateRSSFeed(including: [.posts]),
//       .generateSiteMap(),
//       .deploy(using: .gitHub("imyrvold/imyrvold.github.io.git"))
//])
