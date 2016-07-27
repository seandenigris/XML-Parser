tests - exception raising
testp03fail10xml
	"Source file: oasis/p03fail10.xml"

	(self isSkippableTest: #testp03fail10xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail10xml
				documentURI: 'p03fail10.xml']
		raise: self parserExceptions