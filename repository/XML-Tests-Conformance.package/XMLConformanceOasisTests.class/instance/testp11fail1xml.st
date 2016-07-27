tests - exception raising
testp11fail1xml
	"Source file: oasis/p11fail1.xml"

	(self isSkippableTest: #testp11fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep11fail1xml
				documentURI: 'p11fail1.xml']
		raise: self parserExceptions