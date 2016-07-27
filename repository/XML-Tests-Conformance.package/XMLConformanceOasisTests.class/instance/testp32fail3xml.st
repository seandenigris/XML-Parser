tests - exception raising
testp32fail3xml
	"Source file: oasis/p32fail3.xml"

	(self isSkippableTest: #testp32fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep32fail3xml
				documentURI: 'p32fail3.xml']
		raise: self parserExceptions