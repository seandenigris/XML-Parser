tests - exception raising
testnotwfsa099xml
	"Source file: xmltest/not-wf/sa/099.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa099xml
				documentURI: 'not-wf/sa/099.xml']
		raise: self parserExceptions