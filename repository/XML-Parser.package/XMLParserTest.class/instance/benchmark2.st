benchmark
benchmark2
	"
	XMLParserTest new benchmark2
	"
	Smalltalk garbageCollect.
	^ [1500 timesRepeat: [XMLDOMParser parse: self addressBookXML]] timeToRun