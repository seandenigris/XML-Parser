tests - exception raising
testp27fail1xml
	"Source file: oasis/p27fail1.xml"

	(self isSkippableTest: #testp27fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep27fail1xml
				documentURI: 'p27fail1.xml']
		raise: self parserExceptions