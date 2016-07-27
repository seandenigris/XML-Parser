tests - exception raising
testp58fail6xml
	"Source file: oasis/p58fail6.xml"

	(self isSkippableTest: #testp58fail6xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep58fail6xml
				documentURI: 'p58fail6.xml']
		raise: self parserExceptions