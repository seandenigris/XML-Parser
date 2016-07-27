tests - exception raising
testnotwfsa142xml
	"Source file: xmltest/not-wf/sa/142.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa142xml
				documentURI: 'not-wf/sa/142.xml']
		raise: self parserExceptions