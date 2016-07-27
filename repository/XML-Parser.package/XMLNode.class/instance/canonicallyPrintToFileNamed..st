printing
canonicallyPrintToFileNamed: aFileName
 	"Prints to specified file as canonical XML"
	self
		withNewWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self canonicallyPrintOn: writeStream]