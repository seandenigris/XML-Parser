benchmark
benchmark4
	| doc |
	"
	XMLParserTest new benchmark4
	"
	doc := XMLDOMParser
		parseDocumentFrom: self addressBookXML readStream
		useNamespaces: false.
	^ [500000 timesRepeat: [
		doc root firstElement
			elementAt: 'contact-info';
			elementAt: 'address';
			elementAt: 'job-info';
			elementAt: 'manager']] timeToRun.