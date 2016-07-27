benchmark
benchmark4
	| doc |
	"
	XMLParserTest new benchmark4
	"
	doc := XMLDOMParser
		parseDocumentFrom: self addressBookXML readStream
		useNamespaces: false.
	^ [100000 timesRepeat: [
		doc root topElement
			elementAt: 'contact-info';
			elementAt: 'address';
			elementAt: 'job-info';
			elementAt: 'manager']] timeToRun.