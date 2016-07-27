tests - exception raising
testp10fail2xml
	"Source file: oasis/p10fail2.xml"

	(self isSkippableTest: #testp10fail2xml)
		ifTrue: [self skipOrReturnWith: [^ self]].
	self
		should: [
			self
				parse: self class sourcep10fail2xml
				documentURI: 'p10fail2.xml']
		raise: self parserExceptions