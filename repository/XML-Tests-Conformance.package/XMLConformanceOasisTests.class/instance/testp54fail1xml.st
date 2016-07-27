tests - exception raising
testp54fail1xml
	"Source file: oasis/p54fail1.xml"

	(self isSkippableTest: #testp54fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep54fail1xml
				documentURI: 'p54fail1.xml']
		raise: self parserExceptions