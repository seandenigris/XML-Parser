benchmark
benchmark1
	"
	XMLParserTest new benchmark1
	"
	Smalltalk garbageCollect.
	^ [600 timesRepeat: [SAXHandler parse: self addressBookXML]] timeToRun