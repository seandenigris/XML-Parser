printing
canonicallyPrintToFileNamed: aFileName
 	"Prints to specified file as canonical XML (http://www.w3.org/TR/xml-c14n)"

	self
		withNewWriteStreamOnFileNamed: aFileName
		do: [:writeStream | self canonicallyPrintOn: writeStream]