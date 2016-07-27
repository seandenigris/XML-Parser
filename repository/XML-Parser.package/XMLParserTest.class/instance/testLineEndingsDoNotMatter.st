tests
testLineEndingsDoNotMatter
   |text cr crlf|
   text :=
 '<foo>
 bar
 baz
 </foo>'.
	cr := XMLDOMParser parseDocumentFrom: text readStream.
	crlf := XMLDOMParser parseDocumentFrom: text withInternetLineEndings readStream.
	self assert:
		(cr elements first contentString) =
		(crlf elements first contentString).
