tests - exception raising
testp71fail1xml
	"Source file: oasis/p71fail1.xml"

	(self isSkippableTest: #testp71fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep71fail1xml
				documentURI: 'p71fail1.xml']
		raise: self parserExceptions