tests - exception raising
testp73fail4xml
	"Source file: oasis/p73fail4.xml"

	(self isSkippableTest: #testp73fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep73fail4xml
				documentURI: 'p73fail4.xml']
		raise: self parserExceptions