tests - exception raising
testp03fail24xml
	"Source file: oasis/p03fail24.xml"

	(self isSkippableTest: #testp03fail24xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail24xml
				documentURI: 'p03fail24.xml']
		raise: self parserExceptions