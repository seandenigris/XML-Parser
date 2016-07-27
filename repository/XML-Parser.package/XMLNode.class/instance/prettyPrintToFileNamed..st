printing
prettyPrintToFileNamed: aFileName
 	"Prints XML to specified file with whitespace formatting for readability"

	self
		withNewWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self prettyPrintOn: writeStream]