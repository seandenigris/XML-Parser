tests - exception raising
testp05fail4xml
	"Source file: oasis/p05fail4.xml"

	(self isSkippableTest: #testp05fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep05fail4xml
				documentURI: 'p05fail4.xml']
		raise: self parserExceptions