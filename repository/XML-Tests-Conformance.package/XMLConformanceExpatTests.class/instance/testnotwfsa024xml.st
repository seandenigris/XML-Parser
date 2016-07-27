tests - exception raising
testnotwfsa024xml
	"Source file: xmltest/not-wf/sa/024.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa024xml
				documentURI: 'not-wf/sa/024.xml']
		raise: self parserExceptions