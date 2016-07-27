tests - exception raising
testp61fail1xml
	"Source file: oasis/p61fail1.xml"

	(self isSkippableTest: #testp61fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep61fail1xml
				documentURI: 'p61fail1.xml']
		raise: self parserExceptions