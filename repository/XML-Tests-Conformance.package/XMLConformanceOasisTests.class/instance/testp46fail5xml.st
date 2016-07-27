tests - exception raising
testp46fail5xml
	"Source file: oasis/p46fail5.xml"

	(self isSkippableTest: #testp46fail5xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep46fail5xml
				documentURI: 'p46fail5.xml']
		raise: self parserExceptions