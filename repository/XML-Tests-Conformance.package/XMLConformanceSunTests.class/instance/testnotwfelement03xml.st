tests - exception raising
testnotwfelement03xml
	"Source file: sun/not-wf/element03.xml"

	self
		should: [
			self
				parse: self class sourcenotwfelement03xml
				documentURI: 'not-wf/element03.xml']
		raise: self exceptionClass