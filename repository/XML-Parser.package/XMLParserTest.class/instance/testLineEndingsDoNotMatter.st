tests
testLineEndingsDoNotMatter
   |text textCrLf cr crlf|
   text :=
 '<foo>
 bar
 baz
 </foo>'.
	cr := XMLDOMParser parseDocumentFrom: text readStream.
	textCrLf := text class streamContents: [ :stream |
		text do: [ :c |
			stream nextPut: c.
			c = Character cr ifTrue:[ stream nextPut: Character lf ]]].
	crlf := XMLDOMParser parseDocumentFrom: textCrLf readStream.
	self assert:
		(cr root contentString) =
		(crlf root contentString).
