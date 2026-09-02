// Bibliotecas importadas
#import "@preview/cetz:0.4.2" // Desenho vetorial
#import "@preview/cetz-plot:0.1.3": plot, chart

#set page(width: auto, height: auto, margin: 5pt) 
#set text(lang: "pt", region: "BR", size: 12pt, font: "Arial")
// Use margin para dar um respiro, se desejar

// 🎨 Definição de Cores
#let uft-green = rgb("#008577")
#let uft-blue = rgb("#004A80")
#let uft-yellow = rgb("#FDB913")
#let uft-gray = rgb("#666666")
#let primary-color = uft-blue
#let secondary-color = uft-green

#cetz.canvas({
  import cetz.draw: *

  for i in (-1, 1) {
    rect((i * 2.25, -1.5), (i * 1.75, 1.5))
  }

  for i in range(1, 6) {
    content((-2, -1.5 + i * 0.5), [$+$])
    content((2, -1.5 + i * 0.5), [$-$])
    line((-1.75, -1.5 + i * 0.5), (0.25, -1.5 + i * .5), mark: (end: "stealth"), fill: black)
    line((0, -1.5 + i * 0.5), (1.75, -1.5 + i * 0.5))

  }

  content((-2.25, -1.5), [$+q$], anchor: "east", padding: 0.1)
  content((2.25, -1.5), [$-q$], anchor: "west", padding: 0.1)
  content((0, 1.5), [$arrow(E)$])

  line((-1.75, -1.8), (1.75, -1.8), mark: (symbol: "bar"), name: "line")
  set-style(content: (frame: "rect", stroke: none, fill: white, padding: .1))
  content("line.mid", [$d$], )

  
})