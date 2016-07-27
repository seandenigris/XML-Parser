tests - exception raising
testp02fail25xml
	"Source file: oasis/p02fail25.xml"

	(self isSkippableTest: #testp02fail25xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail25xml
				documentURI: 'p02fail25.xml']
		raise: self parserExceptions