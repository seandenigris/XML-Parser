tests - exception raising
testnotwfextsa003xml
	"Source file: xmltest/not-wf/ext-sa/003.xml"

	self
		should: [
			self
				parse: self class sourcenotwfextsa003xml
				documentURI: 'not-wf/ext-sa/003.xml']
		raise: self parserExceptions