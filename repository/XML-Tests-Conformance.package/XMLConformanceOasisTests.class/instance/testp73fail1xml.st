tests - exception raising
testp73fail1xml
	"Source file: oasis/p73fail1.xml"

	(self isSkippableTest: #testp73fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep73fail1xml
				documentURI: 'p73fail1.xml']
		raise: self parserExceptions