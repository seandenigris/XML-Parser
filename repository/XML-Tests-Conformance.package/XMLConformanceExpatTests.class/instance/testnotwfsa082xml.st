tests - exception raising
testnotwfsa082xml
	"Source file: xmltest/not-wf/sa/082.xml"

	self
		should: [
			self
				parse: self class sourcenotwfsa082xml
				documentURI: 'not-wf/sa/082.xml']
		raise: self parserExceptions