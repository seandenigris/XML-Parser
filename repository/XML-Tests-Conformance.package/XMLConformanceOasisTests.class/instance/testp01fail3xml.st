tests - exception raising
testp01fail3xml
	"Source file: oasis/p01fail3.xml"

	(self isSkippableTest: #testp01fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep01fail3xml
				documentURI: 'p01fail3.xml']
		raise: self parserExceptions