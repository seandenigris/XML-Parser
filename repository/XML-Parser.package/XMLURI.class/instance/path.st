accessing
path
	self hasPath
		ifTrue: [| writeStream |
			writeStream := (String new: self pathSegments size * 10) writeStream.
			self
				printPathWithPercentEncoding: false
				on: writeStream.
			^ writeStream contents]
		ifFalse: [^ '']