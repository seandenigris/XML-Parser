tests
testNextNameFromOn
	| readStream writeStream |

	self nonNCNameNames do: [:each |
		readStream := each readStream.
		writeStream := String new writeStream.
		self assert:
			(self tokenizerClass
				nextNameFrom: readStream
				on: writeStream).
		self assert: writeStream contents = each].

	self badNames do: [:each |
		readStream := each readStream.
		writeStream := String new writeStream.
		(self tokenizerClass
			nextNameFrom: readStream
			on: writeStream)
			ifTrue: [self deny: writeStream contents = each]].