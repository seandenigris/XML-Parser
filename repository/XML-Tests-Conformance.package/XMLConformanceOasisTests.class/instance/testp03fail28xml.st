tests - exception raising
testp03fail28xml
	"Source file: oasis/p03fail28.xml"

	(self isSkippableTest: #testp03fail28xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail28xml
				documentURI: 'p03fail28.xml']
		raise: self parserExceptions