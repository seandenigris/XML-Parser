tests - exception raising
testp02fail4xml
	"Source file: oasis/p02fail4.xml"

	(self isSkippableTest: #testp02fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep02fail4xml
				documentURI: 'p02fail4.xml']
		raise: self parserExceptions