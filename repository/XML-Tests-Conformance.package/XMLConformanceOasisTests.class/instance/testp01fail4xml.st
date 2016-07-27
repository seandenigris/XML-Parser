tests - exception raising
testp01fail4xml
	"Source file: oasis/p01fail4.xml"

	(self isSkippableTest: #testp01fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep01fail4xml
				documentURI: 'p01fail4.xml']
		raise: self parserExceptions