printing
printToFileNamed: aFileName
	self
		withWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self printOn: writeStream]