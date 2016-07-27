tests
testNextNCNameFrom
	| readStream writeStream |

	self badNCNames do: [:each |
		readStream := each readStream.
		writeStream := String new writeStream.
		(self tokenizerClass
			nextNCNameFrom: readStream
			on: writeStream)
			ifTrue: [
				"the size is tested instead of = for GS compatbility"
				self deny: writeStream contents size = each size]].