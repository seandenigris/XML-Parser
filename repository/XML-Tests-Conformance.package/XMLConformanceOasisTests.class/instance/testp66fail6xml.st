tests - exception raising
testp66fail6xml
	"Source file: oasis/p66fail6.xml"

	(self isSkippableTest: #testp66fail6xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep66fail6xml
				documentURI: 'p66fail6.xml']
		raise: self parserExceptions