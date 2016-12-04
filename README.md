## flowComponentAutoLink
The flowComponentAutoLink module for Framer.js helps you create links for Framer's FlowComponent inside Sketch. It consists of a Framer module and a Sketch plugin. The Framer module adds the autoLink() method to your FlowComponents. It will automatically set up links based on layer names.

[Download latest version here](https://github.com/awt2542/flowComponentAutoLink/archive/master.zip)

![sketchdemo](https://cl.ly/0X0i443b0f44/Screen%20Shot%202016-12-03%20at%2013.36.22.png)

##Supported layer names

* showNext_layerB
* showOverlayTop_layerB
* showOverlayRight_layerB
* showOverlayBottom_layerB
* showOverlayLeft_layerB
* showPrevious

Replace layerB with the name of the layer you want to link to. The Sketch plugin will generate these names for you.

##Example project

```coffeescript
flowComponentAutoLink = require 'flowComponentAutoLink'
sketch = Framer.Importer.load("imported/project@1x")
flow = new FlowComponent
flow.showNext sketch.pageA
flow.autoLink()
```


###Contact

Twitter: [@andreaswah](http://twitter.com/andreaswah)