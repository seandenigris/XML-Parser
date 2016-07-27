tests - exception raising
testnotwfsa033xml
	"Source file: xmltest/not-wf/sa/033.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa033xml
				documentURI: 'not-wf/sa/033.xml']
		raise: self parserExceptions