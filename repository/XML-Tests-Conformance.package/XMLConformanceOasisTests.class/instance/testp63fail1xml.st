tests - exception raising
testp63fail1xml
	"Source file: oasis/p63fail1.xml"

	(self isSkippableTest: #testp63fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep63fail1xml
				documentURI: 'p63fail1.xml']
		raise: self parserExceptions