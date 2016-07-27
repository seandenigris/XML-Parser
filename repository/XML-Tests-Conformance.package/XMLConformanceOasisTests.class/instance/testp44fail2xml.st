tests - exception raising
testp44fail2xml
	"Source file: oasis/p44fail2.xml"

	(self isSkippableTest: #testp44fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep44fail2xml
				documentURI: 'p44fail2.xml']
		raise: self parserExceptions