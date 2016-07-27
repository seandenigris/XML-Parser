tests
testLineEndingsDoNotMatter
	| source docFromSourceWithCrs docFromSourceWithLfs docFromSourceWithCrlfs |

	source := '<root>{1}one{1}two{1}</root>'.
	docFromSourceWithCrs := XMLDOMParser parse: (source format: (Array with: String cr)).
	docFromSourceWithLfs := XMLDOMParser parse: (source format: (Array with: String lf)).
	docFromSourceWithCrlfs := XMLDOMParser parse: (source format: (Array with: String crlf)).
	self
		assert: (docFromSourceWithCrs root contentString) = (docFromSourceWithLfs root contentString);
		assert: (docFromSourceWithLfs root contentString) = (docFromSourceWithCrlfs root contentString).