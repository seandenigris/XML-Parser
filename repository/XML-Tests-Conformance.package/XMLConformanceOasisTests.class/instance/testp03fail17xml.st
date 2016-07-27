tests - exception raising
testp03fail17xml
	"Source file: oasis/p03fail17.xml"

	(self isSkippableTest: #testp03fail17xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail17xml
				documentURI: 'p03fail17.xml']
		raise: self parserExceptions