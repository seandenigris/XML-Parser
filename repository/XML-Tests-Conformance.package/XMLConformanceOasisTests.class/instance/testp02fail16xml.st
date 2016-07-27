tests - exception raising
testp02fail16xml
	"Source file: oasis/p02fail16.xml"

	(self isSkippableTest: #testp02fail16xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail16xml
				documentURI: 'p02fail16.xml']
		raise: self parserExceptions