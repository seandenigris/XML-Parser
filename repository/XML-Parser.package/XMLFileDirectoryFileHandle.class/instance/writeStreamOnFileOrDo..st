private
writeStreamOnFileOrDo: aBlock
	^ [((Smalltalk at: #FileStream) newFileNamed: path)]
		on: Error
		do: aBlock