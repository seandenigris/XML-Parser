printing
pathPrintedUnescaped: aBoolean
	| writeStream |

	self hasPathSegments
		ifFalse: [^ ''].

	writeStream := (String new: pathSegments size * 10) writeStream.
	self
		printPathSegmentsOn: writeStream
		unescaped: aBoolean.
	^ writeStream contents.