transitions = [
  "showNext"
  "showOverlayTop"
  "showOverlayRight"
  "showOverlayBottom"
  "showOverlayLeft"
  "showOverlayCenter"
]

FlowComponent::autoLink = ->
  separator = "_"
  layers = Framer.CurrentContext._layers
  layers.forEach (l) => 
    l.name = l._info.originalName if l._info?.originalName
    switch l.name
     when "showPrevious" then l.onClick => @showPrevious()
     when "header" then @header = l
     when "footer" then @footer = l
    transition = l.name.split(separator)[0]
    if _.includes transitions, transition
      destination = l.name.replace(transition+separator,'')
      l.onClick =>
        linkedLayer = _.find(layers, (l) -> l.name is destination)
        @[transition] linkedLayer
