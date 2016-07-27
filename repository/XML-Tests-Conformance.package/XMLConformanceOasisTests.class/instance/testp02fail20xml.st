tests - exception raising
testp02fail20xml
	"Source file: oasis/p02fail20.xml"

	(self isSkippableTest: #testp02fail20xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail20xml
				documentURI: 'p02fail20.xml']
		raise: self parserExceptions