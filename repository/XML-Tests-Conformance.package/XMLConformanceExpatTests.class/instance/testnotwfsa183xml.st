tests - exception raising
testnotwfsa183xml
	"Source file: xmltest/not-wf/sa/183.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa183xml
				documentURI: 'not-wf/sa/183.xml']
		raise: self parserExceptions