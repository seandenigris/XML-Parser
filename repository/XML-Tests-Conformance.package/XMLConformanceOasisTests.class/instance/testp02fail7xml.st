tests - exception raising
testp02fail7xml
	"Source file: oasis/p02fail7.xml"

	(self isSkippableTest: #testp02fail7xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail7xml
				documentURI: 'p02fail7.xml']
		raise: self parserExceptions