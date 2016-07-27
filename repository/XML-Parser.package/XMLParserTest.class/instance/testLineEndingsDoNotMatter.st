tests
testLineEndingsDoNotMatter
   |text cr crlf|
   text :=
 '<foo>
 bar
 baz
 </foo>'.
	cr := XMLDOMParser parseDocumentFrom: text readStream.
	crlf := XMLDOMParser parseDocumentFrom:
		(text copyReplaceAll: String cr with: String crlf) readStream.
	self assert: (cr root contentString) = (crlf root contentString).
