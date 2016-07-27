tests - exception raising
testp58fail3xml
	"Source file: oasis/p58fail3.xml"

	(self isSkippableTest: #testp58fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep58fail3xml
				documentURI: 'p58fail3.xml']
		raise: self parserExceptions