tests - exception raising
testp32fail2xml
	"Source file: oasis/p32fail2.xml"

	(self isSkippableTest: #testp32fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep32fail2xml
				documentURI: 'p32fail2.xml']
		raise: self parserExceptions