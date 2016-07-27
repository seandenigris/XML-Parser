tests
testChangingNormalizedLineEnding
	| xml domParser parser tokenizer |

	xml :=
		'<root>{1}one{2}two{3}three{1}</root>'
			format: (Array with: String lf with: String cr with: String crlf).
	domParser := XMLDOMParser on: xml.

	parser := domParser parser.
	tokenizer := parser tokenizer.
	self assert: tokenizer normalizedLineEndingChar == Character lf.
	
	tokenizer normalizedLineEndingChar: $N.
	self assert: tokenizer normalizedLineEndingChar == $N.

	parser parseDocument.
	self assert: domParser document root contentString = 'NoneNtwoNthreeN'.