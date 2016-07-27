tests - exception raising
testp74fail3xml
	"Source file: oasis/p74fail3.xml"

	(self isSkippableTest: #testp74fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep74fail3xml
				documentURI: 'p74fail3.xml']
		raise: self parserExceptions