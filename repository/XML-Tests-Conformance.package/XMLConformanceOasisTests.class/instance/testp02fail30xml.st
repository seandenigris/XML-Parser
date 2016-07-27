tests - exception raising
testp02fail30xml
	"Source file: oasis/p02fail30.xml"

	(self isSkippableTest: #testp02fail30xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail30xml
				documentURI: 'p02fail30.xml']
		raise: self parserExceptions