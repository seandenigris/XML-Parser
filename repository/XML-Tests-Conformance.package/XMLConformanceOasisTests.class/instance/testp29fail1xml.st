tests - exception raising
testp29fail1xml
	"Source file: oasis/p29fail1.xml"

	(self isSkippableTest: #testp29fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep29fail1xml
				documentURI: 'p29fail1.xml']
		raise: self parserExceptions