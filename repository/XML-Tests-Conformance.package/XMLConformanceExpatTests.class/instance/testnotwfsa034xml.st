tests - exception raising
testnotwfsa034xml
	"Source file: xmltest/not-wf/sa/034.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa034xml
				documentURI: 'not-wf/sa/034.xml']
		raise: self parserExceptions