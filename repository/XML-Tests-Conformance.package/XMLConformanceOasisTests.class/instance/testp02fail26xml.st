tests - exception raising
testp02fail26xml
	"Source file: oasis/p02fail26.xml"

	(self isSkippableTest: #testp02fail26xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail26xml
				documentURI: 'p02fail26.xml']
		raise: self parserExceptions