printing
printContentOn: aStream
 	"Prints on aStream the content strings of all descendants with spaces inserted where necessary."
	self printRawContentOn: (XMLNodeContentWriteStream on: aStream)