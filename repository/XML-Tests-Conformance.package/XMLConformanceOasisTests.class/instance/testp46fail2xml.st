tests - exception raising
testp46fail2xml
	"Source file: oasis/p46fail2.xml"

	(self isSkippableTest: #testp46fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep46fail2xml
				documentURI: 'p46fail2.xml']
		raise: self parserExceptions