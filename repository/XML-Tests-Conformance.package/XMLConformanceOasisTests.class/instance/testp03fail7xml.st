tests - exception raising
testp03fail7xml
	"Source file: oasis/p03fail7.xml"

	(self isSkippableTest: #testp03fail7xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail7xml
				documentURI: 'p03fail7.xml']
		raise: self parserExceptions