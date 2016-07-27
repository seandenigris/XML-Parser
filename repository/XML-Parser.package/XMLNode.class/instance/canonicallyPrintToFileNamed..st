printing
canonicallyPrintToFileNamed: aFileName
	self
		withWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self canonicallyPrintOn: writeStream]