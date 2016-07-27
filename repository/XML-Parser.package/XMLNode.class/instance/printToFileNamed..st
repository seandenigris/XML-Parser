printing
printToFileNamed: aFileName
	"Prints XML to specified file. Uses the encoding specified in the
	document's encoding attribute if supported or UTF-8 otherwise."
	self
		withNewWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self printOn: writeStream]