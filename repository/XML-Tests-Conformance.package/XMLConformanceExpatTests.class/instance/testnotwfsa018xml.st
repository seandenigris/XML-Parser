tests - exception raising
testnotwfsa018xml
	"Source file: xmltest/not-wf/sa/018.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa018xml
				documentURI: 'not-wf/sa/018.xml']
		raise: self parserExceptions