tests - exception raising
testp03fail12xml
	"Source file: oasis/p03fail12.xml"

	(self isSkippableTest: #testp03fail12xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail12xml
				documentURI: 'p03fail12.xml']
		raise: self parserExceptions