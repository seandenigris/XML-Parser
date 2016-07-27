tests - exception raising
testp09fail4xml
	"Source file: oasis/p09fail4.xml"

	(self isSkippableTest: #testp09fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep09fail4xml
				documentURI: 'p09fail4.xml']
		raise: self parserExceptions