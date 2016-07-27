tests - exception raising
testp01fail1xml
	"Source file: oasis/p01fail1.xml"

	(self isSkippableTest: #testp01fail1xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep01fail1xml
				documentURI: 'p01fail1.xml']
		raise: self parserExceptions