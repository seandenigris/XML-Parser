tests - exception raising
testp05fail3xml
	"Source file: oasis/p05fail3.xml"

	(self isSkippableTest: #testp05fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep05fail3xml
				documentURI: 'p05fail3.xml']
		raise: self parserExceptions