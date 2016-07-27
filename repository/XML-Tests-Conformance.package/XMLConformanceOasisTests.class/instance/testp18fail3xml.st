tests - exception raising
testp18fail3xml
	"Source file: oasis/p18fail3.xml"

	(self isSkippableTest: #testp18fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep18fail3xml
				documentURI: 'p18fail3.xml']
		raise: self parserExceptions