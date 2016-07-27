tests - exception raising
testp50fail1xml
	"Source file: oasis/p50fail1.xml"

	(self isSkippableTest: #testp50fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep50fail1xml
				documentURI: 'p50fail1.xml']
		raise: self parserExceptions