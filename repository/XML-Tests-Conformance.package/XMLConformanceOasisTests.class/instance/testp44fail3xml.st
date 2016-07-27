tests - exception raising
testp44fail3xml
	"Source file: oasis/p44fail3.xml"

	(self isSkippableTest: #testp44fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep44fail3xml
				documentURI: 'p44fail3.xml']
		raise: self parserExceptions