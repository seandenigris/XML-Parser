tests - exception raising
testp02fail6xml
	"Source file: oasis/p02fail6.xml"

	(self isSkippableTest: #testp02fail6xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail6xml
				documentURI: 'p02fail6.xml']
		raise: self parserExceptions