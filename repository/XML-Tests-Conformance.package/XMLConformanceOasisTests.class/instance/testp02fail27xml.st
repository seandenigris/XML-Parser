tests - exception raising
testp02fail27xml
	"Source file: oasis/p02fail27.xml"

	(self isSkippableTest: #testp02fail27xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail27xml
				documentURI: 'p02fail27.xml']
		raise: self parserExceptions