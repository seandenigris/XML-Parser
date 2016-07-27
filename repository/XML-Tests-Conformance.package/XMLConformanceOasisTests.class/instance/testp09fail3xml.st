tests - exception raising
testp09fail3xml
	"Source file: oasis/p09fail3.xml"

	(self isSkippableTest: #testp09fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep09fail3xml
				documentURI: 'p09fail3.xml']
		raise: self parserExceptions