printing
pathPrintStringUnescaped: aBoolean
	| pathStream |

	pathSegments
		ifEmpty: [^ ''].

	pathStream := (String new: 16) writeStream.
	self
		printPathSegmentsOn: pathStream
		unescaped: aBoolean.
	^ pathStream contents.