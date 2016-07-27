printing
printFragmentOn: aStream
	self hasFragment
		ifTrue: [
			aStream nextPut: $#.
			self
				print: self fragment
				withPercentEncodingOn: aStream]