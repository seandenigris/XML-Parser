tests - exception raising
testnotwfsa131xml
	"Source file: xmltest/not-wf/sa/131.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa131xml
				documentURI: 'not-wf/sa/131.xml']
		raise: self parserExceptions