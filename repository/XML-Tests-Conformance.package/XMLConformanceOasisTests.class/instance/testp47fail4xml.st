tests - exception raising
testp47fail4xml
	"Source file: oasis/p47fail4.xml"

	(self isSkippableTest: #testp47fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep47fail4xml
				documentURI: 'p47fail4.xml']
		raise: self parserExceptions