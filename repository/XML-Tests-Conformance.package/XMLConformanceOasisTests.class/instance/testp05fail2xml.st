tests - exception raising
testp05fail2xml
	"Source file: oasis/p05fail2.xml"

	(self isSkippableTest: #testp05fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep05fail2xml
				documentURI: 'p05fail2.xml']
		raise: self parserExceptions