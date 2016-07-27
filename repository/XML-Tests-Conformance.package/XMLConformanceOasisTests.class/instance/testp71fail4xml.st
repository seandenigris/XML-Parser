tests - exception raising
testp71fail4xml
	"Source file: oasis/p71fail4.xml"

	(self isSkippableTest: #testp71fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep71fail4xml
				documentURI: 'p71fail4.xml']
		raise: self parserExceptions