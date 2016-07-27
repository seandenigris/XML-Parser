tests - exception raising
testp32fail1xml
	"Source file: oasis/p32fail1.xml"

	(self isSkippableTest: #testp32fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep32fail1xml
				documentURI: 'p32fail1.xml']
		raise: self parserExceptions