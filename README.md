# JSON Sprite Position
- Quickly position and order sprites according to spine json exported with an art program. 
- This script will reposition the nodes on the stage and reorder the nodes within the scene tree to match the layer order in the design file. 
- This function will work for any node matching the names. So you could reparent the sprites to other nodes and the script can still re-order everything. 
- If your art program does not have a json export, you can potentially save it into a format for another program that does. In this example I am using Affinity Designer. 
- If your exported json does not match the format below, you can modify the script to adjust for the changes.

## Create your design in your preferred art program.
![Affinity Designer](/images/AD_export.png)

## Export your images with the Spine or other JSON file type.
Export directly or bring your images into your project folder.
![Export option](/images/AD_export_persona.png)
![Export option](/images/spine_export.png)

The exported json file should look something like this:

```
{"skeleton":{"images":""},
"bones":[{"name":"root"}],
"slots":[
	{"name":"slice24","bone":"root","attachment":"slice24"},
	{"name":"slice23","bone":"root","attachment":"slice23"},
	{"name":"slice22","bone":"root","attachment":"slice22"},
	{"name":"slice21","bone":"root","attachment":"slice21"},
	{"name":"slice20","bone":"root","attachment":"slice20"},
	{"name":"slice19","bone":"root","attachment":"slice19"},
	{"name":"slice18","bone":"root","attachment":"slice18"},
	{"name":"slice17","bone":"root","attachment":"slice17"},
	{"name":"slice16","bone":"root","attachment":"slice16"},
	{"name":"slice15","bone":"root","attachment":"slice15"},
	{"name":"slice14","bone":"root","attachment":"slice14"},
	{"name":"slice13","bone":"root","attachment":"slice13"},
	{"name":"slice12","bone":"root","attachment":"slice12"},
	{"name":"slice11","bone":"root","attachment":"slice11"},
	{"name":"slice10","bone":"root","attachment":"slice10"},
	{"name":"slice9","bone":"root","attachment":"slice9"},
	{"name":"slice8","bone":"root","attachment":"slice8"},
	{"name":"slice7","bone":"root","attachment":"slice7"},
	{"name":"slice6","bone":"root","attachment":"slice6"},
	{"name":"slice5","bone":"root","attachment":"slice5"},
	{"name":"slice4","bone":"root","attachment":"slice4"},
	{"name":"slice3","bone":"root","attachment":"slice3"},
	{"name":"slice2","bone":"root","attachment":"slice2"},
	{"name":"slice1","bone":"root","attachment":"slice1"},
	{"name":"background","bone":"root","attachment":"background"}
],
"skins":{
	"default":{
		"slice24":{"slice24":{"x":124.5,"y":637,"width":125,"height":124}},
		"slice23":{"slice23":{"x":322.5,"y":403.5,"width":125,"height":125}},
		"slice22":{"slice22":{"x":473.5,"y":635.5,"width":125,"height":125}},
		"slice21":{"slice21":{"x":648.5,"y":381,"width":125,"height":124}},
		"slice20":{"slice20":{"x":888.5,"y":638.5,"width":125,"height":125}},
		"slice19":{"slice19":{"x":903.5,"y":158.5,"width":125,"height":125}},
		"slice18":{"slice18":{"x":490,"y":130.5,"width":124,"height":125}},
		"slice17":{"slice17":{"x":142.5,"y":158.5,"width":125,"height":125}},
		"slice16":{"slice16":{"x":121.5,"y":637,"width":33,"height":76}},
		"slice15":{"slice15":{"x":121.5,"y":394.5,"width":89,"height":89}},
		"slice14":{"slice14":{"x":121.5,"y":146.5,"width":69,"height":77}},
		"slice13":{"slice13":{"x":475,"y":637,"width":46,"height":80}},
		"slice12":{"slice12":{"x":475,"y":394,"width":80,"height":46}},
		"slice11":{"slice11":{"x":475,"y":146,"width":84,"height":80}},
		"slice10":{"slice10":{"x":299.5,"y":638,"width":45,"height":78}},
		"slice9":{"slice9":{"x":299.5,"y":394.5,"width":37,"height":77}},
		"slice8":{"slice8":{"x":299.5,"y":147,"width":83,"height":78}},
		"slice7":{"slice7":{"x":670,"y":637,"width":48,"height":76}},
		"slice6":{"slice6":{"x":670.5,"y":394,"width":47,"height":80}},
		"slice5":{"slice5":{"x":670.5,"y":146.5,"width":85,"height":77}},
		"slice4":{"slice4":{"x":891,"y":636,"width":46,"height":78}},
		"slice3":{"slice3":{"x":828.5,"y":415,"width":113,"height":110}},
		"slice2":{"slice2":{"x":877.5,"y":392,"width":187,"height":184}},
		"slice1":{"slice1":{"x":891,"y":145.5,"width":86,"height":79}},
		"background":{"background":{"x":512,"y":384,"width":1024,"height":768}}
	}
},
"animations":{"animation":{}}
}
```

## Drag the images into a Godot scene
This will typically create nodes in alphabetical order. 
![Drag](/images/drag.png)

## Attach the script to the parent node
This script will reposition the nodes on the stage and reorder the nodes within the scene tree to match the layer order in the design file. 
![Attach](/images/attachscript.png)

## Select the json file
![Json](/images/choosejson.png)
![Json](/images/choosejsonwindow.png)

## Set the offset
Godot y coordinates go down which is the opposite of most design programs, so you need to offset the distance.
![Offset](/images/setoffset.png)

## Click arrange items
Start like this:
![Start](/images/start.png)
End like this:
![End](/images/end.png)
This function will work for any node matching the names. So you could reparent the sprites to other nodes and the script can still re-order everything. 
