benchmarking
benchmark2
	"
	HTMLParserTest new benchmark2
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [HTMLParser parse: XMLParserTest addressBookXML]] timeToRun