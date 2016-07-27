benchmarking
benchmark1
	"
	HTMLParserTest new benchmark1
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [HTMLHandler parse: XMLParserTest addressBookXML]] timeToRun