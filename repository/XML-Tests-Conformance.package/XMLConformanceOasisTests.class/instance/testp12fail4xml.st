tests - exception raising
testp12fail4xml
	"Source file: oasis/p12fail4.xml"

	(self isSkippableTest: #testp12fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep12fail4xml
				documentURI: 'p12fail4.xml']
		raise: self parserExceptions