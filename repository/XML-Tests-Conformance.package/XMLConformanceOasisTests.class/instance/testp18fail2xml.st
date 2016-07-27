tests - exception raising
testp18fail2xml
	"Source file: oasis/p18fail2.xml"

	(self isSkippableTest: #testp18fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep18fail2xml
				documentURI: 'p18fail2.xml']
		raise: self parserExceptions