#import "@preview/fontawesome:0.5.0": fa-icon
#import "functions.typ": contact-helper

#let conf(
  author: "",
  accent-color: "#000000",
  font: "New Computer Modern",
  font-size: 10pt,
  paper: "us-letter",
  par-leading: 0.65em,
  par-spacing: 1.2em,
  section-heading-margin-bottom: -10pt,
  border-padding: 0.3in,
  doc,
) = {

  // Sets document metadata
  set document(author: author, title: author.replace(" ", "_") + "_Resume")

  // Document-wide formatting
  set text(
    font: font,
    size: font-size,
    // Disable ligatures so ATS systems do not get confused when parsing fonts.
    ligatures: false
  )

  // Page formatting
  set page(
    margin: (0.5in),
    paper: paper,
    background: context {
      place(dx: border-padding, dy: border-padding, rect(width: page.width - border-padding*2, height: page.height - border-padding*2, stroke: 0.5pt))
    }
  )

  // Paragraph formatting
  set par(
    leading: par-leading,
    spacing: par-spacing,
  )

  // List formatting
  set list(
    
  )

  // Section headings
  show heading.where(level: 2): it => [
    #pad(top: 0pt, bottom: section-heading-margin-bottom, [#smallcaps(it.body)
    #place(dy: 0.2em ,line(length: 100%, stroke:0.5pt))]) // smallcaps does not work with arial
  ]

  // Accent Color Styling
  show heading: set text(
    fill: rgb(accent-color),
  )

  show link: set text(
    fill: rgb(accent-color),
  )
  
  doc
}
