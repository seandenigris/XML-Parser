tests - exception raising
testp03fail3xml
	"Source file: oasis/p03fail3.xml"

	(self isSkippableTest: #testp03fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail3xml
				documentURI: 'p03fail3.xml']
		raise: self parserExceptions