printing
printHostOn: aStream
	self hasHost
		ifTrue: [
			(self host first == $[
				and: [self host last == $]])
				ifTrue: [| atBeginning |
					atBeginning := true.
					aStream nextPut: $[.
					$:
						xmlParserSplit: self host allButFirst allButLast
						do: [:each |
							atBeginning
								ifTrue: [atBeginning := false]
								ifFalse: [aStream nextPut: $:].
							self
								print: each
								withPercentEncodingOn: aStream].
					aStream nextPut: $]]
				ifFalse: [
					self
						print: self host
						withPercentEncodingOn: aStream]]