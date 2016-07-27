tests - exception raising
testp39fail3xml
	"Source file: oasis/p39fail3.xml"

	(self isSkippableTest: #testp39fail3xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep39fail3xml
				documentURI: 'p39fail3.xml']
		raise: self parserExceptions