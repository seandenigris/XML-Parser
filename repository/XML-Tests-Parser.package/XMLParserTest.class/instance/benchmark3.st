benchmark
benchmark3
	"
	XMLParserTest new benchmark3
	"
	Smalltalk garbageCollect.
	^ [4000 timesRepeat: [self testParsing]] timeToRun