tests
testLineEndingsDoNotMatter
   | source docWithCrs docWithCrlfs |

   (source := String new writeStream)
		nextPutAll: '<foo>';
		cr;
		nextPutAll: 'bar';
		cr;
		nextPutAll: 'baz';
		cr;
		nextPutAll: '</foo>'.

	docWithCrs := XMLDOMParser parse: source contents.
	docWithCrlfs :=
		XMLDOMParser parse:
			(source contents
				copyReplaceAll: String cr
				with: String crlf).
	self assert: (docWithCrs root contentString) = (docWithCrlfs root contentString).
