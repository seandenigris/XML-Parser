benchmark
benchmark3
	"
	XMLParserTest new benchmark3
	"
	Smalltalk garbageCollect.
	^ [1500 timesRepeat: [self testParsing]] timeToRun