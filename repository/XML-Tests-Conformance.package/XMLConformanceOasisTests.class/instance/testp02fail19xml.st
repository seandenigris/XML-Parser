tests - exception raising
testp02fail19xml
	"Source file: oasis/p02fail19.xml"

	(self isSkippableTest: #testp02fail19xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail19xml
				documentURI: 'p02fail19.xml']
		raise: self parserExceptions