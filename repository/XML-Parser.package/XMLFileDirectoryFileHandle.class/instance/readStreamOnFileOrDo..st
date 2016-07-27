private
readStreamOnFileOrDo: aBlock
	^ [((Smalltalk at: #FileStream) readOnlyFileNamed: path)]
		on: Error
		do: aBlock