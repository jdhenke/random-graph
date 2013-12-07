requirejs.config {baseUrl: "/js"}

require ["Celestrium", "PhoneticAlphabet"],
(Celestrium, PhoneticAlphabet) ->

  plugins =
    "Layout":
      el: document.querySelector "body"
    "KeyListener":
      document.querySelector "body"
    "GraphModel":
      nodeHash: (node) -> node.text
      linkHash: (link) -> link.source.text + link.target.text
    "GraphView": {}
    "NodeSelection": {}
    "Sliders": {}
    "ForceSliders": {}
    "LinkDistribution": {}
    "NodeSearch":
      local: PhoneticAlphabet
    "RandomDataProvider": {}

  Celestrium.init plugins
