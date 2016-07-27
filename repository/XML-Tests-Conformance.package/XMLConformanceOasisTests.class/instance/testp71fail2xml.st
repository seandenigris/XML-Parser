tests - exception raising
testp71fail2xml
	"Source file: oasis/p71fail2.xml"

	(self isSkippableTest: #testp71fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep71fail2xml
				documentURI: 'p71fail2.xml']
		raise: self parserExceptions