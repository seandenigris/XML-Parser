tests - exception raising
testp58fail1xml
	"Source file: oasis/p58fail1.xml"

	(self isSkippableTest: #testp58fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep58fail1xml
				documentURI: 'p58fail1.xml']
		raise: self parserExceptions