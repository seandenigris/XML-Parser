tests - exception raising
testp02fail5xml
	"Source file: oasis/p02fail5.xml"

	(self isSkippableTest: #testp02fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail5xml
				documentURI: 'p02fail5.xml']
		raise: self parserExceptions