define ["DataProvider", "PhoneticAlphabet"],
(DataProvider, PhoneticAlphabet) ->
  class RandomDataProvider extends DataProvider

    getLinks: (node, nodes, callback) ->
      callback _.map nodes, () ->
        "strength": Math.max(0, 2 * Math.random() - 1)
        "direction": _.sample [
          null,
          "forward",
          "backward",
          "bidirectional"
        ]

    getLinkedNodes: (nodes, callback) ->
      callback _.chain(PhoneticAlphabet)
        .sample(5)
        .map((word) -> {"text": word})
        .value()
