tests - exception raising
testnotwfsa160xml
	"Source file: xmltest/not-wf/sa/160.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa160xml
				documentURI: 'not-wf/sa/160.xml']
		raise: self parserExceptions