tests - exception raising
testp03fail2xml
	"Source file: oasis/p03fail2.xml"

	(self isSkippableTest: #testp03fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep03fail2xml
				documentURI: 'p03fail2.xml']
		raise: self parserExceptions