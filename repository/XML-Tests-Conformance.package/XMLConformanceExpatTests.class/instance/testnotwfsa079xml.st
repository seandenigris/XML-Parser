tests - exception raising
testnotwfsa079xml
	"Source file: xmltest/not-wf/sa/079.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa079xml
				documentURI: 'not-wf/sa/079.xml']
		raise: self parserExceptions