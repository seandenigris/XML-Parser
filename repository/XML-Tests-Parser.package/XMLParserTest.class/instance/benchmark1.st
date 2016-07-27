benchmark
benchmark1
	"
	XMLParserTest new benchmark1
	600 timesRepeat => 2131 (Alexandre Bergel 3/29/2010 09:09)
	"
	Smalltalk garbageCollect.
	^ [1500 timesRepeat: [SAXHandler parse: self addressBookXML]] timeToRun