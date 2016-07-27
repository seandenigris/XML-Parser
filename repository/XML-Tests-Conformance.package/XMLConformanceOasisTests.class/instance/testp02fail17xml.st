tests - exception raising
testp02fail17xml
	"Source file: oasis/p02fail17.xml"

	(self isSkippableTest: #testp02fail17xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail17xml
				documentURI: 'p02fail17.xml']
		raise: self parserExceptions