tests - exception raising
testp66fail2xml
	"Source file: oasis/p66fail2.xml"

	(self isSkippableTest: #testp66fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep66fail2xml
				documentURI: 'p66fail2.xml']
		raise: self parserExceptions