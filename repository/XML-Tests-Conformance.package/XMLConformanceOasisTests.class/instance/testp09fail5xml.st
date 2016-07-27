tests - exception raising
testp09fail5xml
	"Source file: oasis/p09fail5.xml"

	(self isSkippableTest: #testp09fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep09fail5xml
				documentURI: 'p09fail5.xml']
		raise: self parserExceptions