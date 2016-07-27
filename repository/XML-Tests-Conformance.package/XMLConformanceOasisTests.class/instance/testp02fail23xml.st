tests - exception raising
testp02fail23xml
	"Source file: oasis/p02fail23.xml"

	(self isSkippableTest: #testp02fail23xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail23xml
				documentURI: 'p02fail23.xml']
		raise: self parserExceptions