tests
testNextNCNameFrom
	| readStream writeStream |

	self badNCNames do: [:each |
		readStream := each readStream.
		writeStream := String new writeStream.
		(self tokenizerClass
			nextNCNameFrom: readStream
			on: writeStream)
			ifTrue: [self deny: writeStream contents = each]].