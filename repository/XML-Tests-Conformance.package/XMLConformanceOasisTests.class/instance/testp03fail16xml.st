tests - exception raising
testp03fail16xml
	"Source file: oasis/p03fail16.xml"

	(self isSkippableTest: #testp03fail16xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail16xml
				documentURI: 'p03fail16.xml']
		raise: self parserExceptions