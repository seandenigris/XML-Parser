tests - exception raising
testp76fail4xml
	"Source file: oasis/p76fail4.xml"

	(self isSkippableTest: #testp76fail4xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep76fail4xml
				documentURI: 'p76fail4.xml']
		raise: self parserExceptions