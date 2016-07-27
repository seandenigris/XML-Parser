tests - exception raising
testnotwfsa039xml
	"Source file: xmltest/not-wf/sa/039.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa039xml
				documentURI: 'not-wf/sa/039.xml']
		raise: self parserExceptions