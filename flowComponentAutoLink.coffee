transitions = [
  "showNext"
  "showOverlayTop"
  "showOverlayRight"
  "showOverlayBottom"
  "showOverlayLeft"
]

FlowComponent::autoLink = -> 
  layers = Framer.CurrentContext._layers
  layers.forEach (l) => 
    l.name = l._info.originalName if l._info?.originalName
    if l.name is "showPrevious"
      l.onClick => @showPrevious()
    transition = l.name.split('_')[0]
    if _.includes transitions, transition
      destination = l.name.replace(transition+'_','')
      l.onClick =>
        linkedLayer = _.find(layers, (l) -> l.name is destination)
        @[transition] linkedLayer