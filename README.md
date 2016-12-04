## flowComponentAutoLink
The flowComponentAutoLink module for Framer.js helps you create links for Framer's FlowComponent inside Sketch. It consists of a Framer module and a Sketch plugin. The Framer module adds the autoLink() method to your FlowComponents. It will automatically set up links based on layer names.

[Download latest version here](https://github.com/awt2542/flowComponentAutoLink/archive/master.zip)

![sketchdemo](https://cl.ly/0X0i443b0f44/Screen%20Shot%202016-12-03%20at%2013.36.22.png)

##How to set it up
1. Include the flowComponentAutoLink module to your Framer project
4. Open Sketch and select the two layers you want to link together (a button layer and page layer)
5. Create a link using the Sketch plugin and select a transition. Notice how the button layer will change its name
6. Import your changes to Framer
7. Call flowComponent.autoLink() after you've defined your FlowComponent and your start screen.

###Supported layer names

* showNext_layerB
* showOverlayTop_layerB
* showOverlayRight_layerB
* showOverlayBottom_layerB
* showOverlayLeft_layerB
* showPrevious

Replace layerB with the name of the layer you want to link to. The Sketch plugin will generate these names for you but you can write them yourself, too.

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