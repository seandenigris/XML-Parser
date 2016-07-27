tests - exception raising
testp73fail3xml
	"Source file: oasis/p73fail3.xml"

	(self isSkippableTest: #testp73fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep73fail3xml
				documentURI: 'p73fail3.xml']
		raise: self parserExceptions