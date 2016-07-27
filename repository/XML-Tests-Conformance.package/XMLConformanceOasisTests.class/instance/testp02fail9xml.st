tests - exception raising
testp02fail9xml
	"Source file: oasis/p02fail9.xml"

	(self isSkippableTest: #testp02fail9xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail9xml
				documentURI: 'p02fail9.xml']
		raise: self parserExceptions