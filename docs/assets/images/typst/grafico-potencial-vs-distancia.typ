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


    import cetz.draw: *

    let opts = (
      x-tick-step: none, y-tick-step: none,
      x-min: 0, y-min: 0,
      x-label: [$d$ (cm)], y-label: [$V$ (V)],
      size: (4, 2), axis-style: "school-book", 
    )

    plot.plot(..opts, name: "plot", {
      plot.add(domain: (0.5, 4.5), x => 0.5*x)
      plot.add-anchor("d-1", (1, 0))
      plot.add-anchor("V-1", (0, .5))
      plot.add-anchor("dV-1", (1, .5))

      plot.add-anchor("d-2", (4, 0))
      plot.add-anchor("V-2", (0, 2))
      plot.add-anchor("dV-2", (4, 2))
    })

    line("plot.d-1", "plot.dV-1", "plot.V-1", stroke: (dash: "dashed"))
    content("plot.d-1", [$d_1$], anchor: "north", padding: 0.2)
    content("plot.V-1", [$V_1$], anchor: "east", padding: 0.2)

    line("plot.d-2", "plot.dV-2", "plot.V-2", stroke: (dash: "dashed"))
    content("plot.d-2", [$d_2$], anchor: "north", padding: 0.2)
    content("plot.V-2", [$V_2$], anchor: "east", padding: 0.2)

  
})