benchmark
benchmark2
	"
	XMLParserTest new benchmark2
	"
	Smalltalk garbageCollect.
	^ [600 timesRepeat: [XMLDOMParser parse: self addressBookXML]] timeToRun