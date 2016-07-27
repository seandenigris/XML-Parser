tests - exception raising
testp72fail4xml
	"Source file: oasis/p72fail4.xml"

	(self isSkippableTest: #testp72fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep72fail4xml
				documentURI: 'p72fail4.xml']
		raise: self parserExceptions