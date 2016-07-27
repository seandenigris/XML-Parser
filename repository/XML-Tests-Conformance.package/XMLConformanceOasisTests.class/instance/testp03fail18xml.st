tests - exception raising
testp03fail18xml
	"Source file: oasis/p03fail18.xml"

	(self isSkippableTest: #testp03fail18xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail18xml
				documentURI: 'p03fail18.xml']
		raise: self parserExceptions