tests - exception raising
testp03fail21xml
	"Source file: oasis/p03fail21.xml"

	(self isSkippableTest: #testp03fail21xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail21xml
				documentURI: 'p03fail21.xml']
		raise: self parserExceptions