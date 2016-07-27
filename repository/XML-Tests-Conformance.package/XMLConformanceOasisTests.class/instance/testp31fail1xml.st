tests - exception raising
testp31fail1xml
	"Source file: oasis/p31fail1.xml"

	(self isSkippableTest: #testp31fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep31fail1xml
				documentURI: 'p31fail1.xml']
		raise: self parserExceptions