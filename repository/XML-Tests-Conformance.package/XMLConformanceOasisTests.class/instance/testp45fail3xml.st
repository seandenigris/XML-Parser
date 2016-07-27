tests - exception raising
testp45fail3xml
	"Source file: oasis/p45fail3.xml"

	(self isSkippableTest: #testp45fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep45fail3xml
				documentURI: 'p45fail3.xml']
		raise: self parserExceptions