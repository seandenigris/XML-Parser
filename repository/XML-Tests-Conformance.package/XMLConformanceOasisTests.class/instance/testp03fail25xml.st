tests - exception raising
testp03fail25xml
	"Source file: oasis/p03fail25.xml"

	(self isSkippableTest: #testp03fail25xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail25xml
				documentURI: 'p03fail25.xml']
		raise: self parserExceptions