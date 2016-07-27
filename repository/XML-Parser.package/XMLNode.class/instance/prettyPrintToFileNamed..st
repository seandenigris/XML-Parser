printing
prettyPrintToFileNamed: aFileName
	self
		withWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self prettyPrintOn: writeStream]