tests - exception raising
testp76fail3xml
	"Source file: oasis/p76fail3.xml"

	(self isSkippableTest: #testp76fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep76fail3xml
				documentURI: 'p76fail3.xml']
		raise: self parserExceptions