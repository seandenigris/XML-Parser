benchmark
benchmark1
	"
	XMLParserTest new benchmark1     

	Results below are obtained on a MacBookPro, VM 4.2.1betaU1, 2Go RAM, 2.26 Ghz
	2097 => Version 45 (Alexandre Bergel 3/4/2010 14:54)
	"
	Smalltalk garbageCollect.
	^ [ 300 timesRepeat: [ self testParsing ]] timeToRun