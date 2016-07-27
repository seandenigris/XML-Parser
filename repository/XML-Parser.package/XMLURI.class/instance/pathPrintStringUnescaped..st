printing
pathPrintStringUnescaped: aBoolean
	| pathStream |

	pathSegments
		ifEmpty: [^ ''].

	pathStream := (String new: pathSegments size * 10) writeStream.
	self
		printPathSegmentsOn: pathStream
		unescaped: aBoolean.
	^ pathStream contents.