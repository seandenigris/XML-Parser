tests - exception raising
testp58fail5xml
	"Source file: oasis/p58fail5.xml"

	(self isSkippableTest: #testp58fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep58fail5xml
				documentURI: 'p58fail5.xml']
		raise: self parserExceptions