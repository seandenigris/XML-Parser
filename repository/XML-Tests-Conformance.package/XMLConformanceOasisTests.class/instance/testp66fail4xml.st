tests - exception raising
testp66fail4xml
	"Source file: oasis/p66fail4.xml"

	(self isSkippableTest: #testp66fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep66fail4xml
				documentURI: 'p66fail4.xml']
		raise: self parserExceptions