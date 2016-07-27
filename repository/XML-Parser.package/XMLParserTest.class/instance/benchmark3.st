benchmark
benchmark3
	"
	XMLParserTest new benchmark3
	"
	Smalltalk garbageCollect.
	^ [300 timesRepeat: [self testParsing]] timeToRun