tests - exception raising
testp02fail12xml
	"Source file: oasis/p02fail12.xml"

	(self isSkippableTest: #testp02fail12xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail12xml
				documentURI: 'p02fail12.xml']
		raise: self parserExceptions