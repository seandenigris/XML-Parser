tests - exception raising
testp71fail3xml
	"Source file: oasis/p71fail3.xml"

	(self isSkippableTest: #testp71fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep71fail3xml
				documentURI: 'p71fail3.xml']
		raise: self parserExceptions