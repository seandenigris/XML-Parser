tests - exception raising
testp03fail22xml
	"Source file: oasis/p03fail22.xml"

	(self isSkippableTest: #testp03fail22xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail22xml
				documentURI: 'p03fail22.xml']
		raise: self parserExceptions