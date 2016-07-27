tests
testNextNmtokenFromOn
	| readStream writeStream |

	self nonNCNameNames, self nonNameNmtokens do: [:each |
		readStream := each readStream.
		writeStream := String new writeStream.
		self assert:
			(self tokenizerClass
				nextNmtokenFrom: readStream
				on: writeStream).
		self assert: writeStream contents = each].

	self badNmtokens do: [:each |
		readStream := each readStream.
		writeStream := String new writeStream.
		(self tokenizerClass
			nextNmtokenFrom: readStream
			on: writeStream)
			ifTrue: [self deny: writeStream contents = each]].