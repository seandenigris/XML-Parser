tests - exception raising
testp53fail2xml
	"Source file: oasis/p53fail2.xml"

	(self isSkippableTest: #testp53fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep53fail2xml
				documentURI: 'p53fail2.xml']
		raise: self parserExceptions