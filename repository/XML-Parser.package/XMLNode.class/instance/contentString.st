accessing
contentString
 	"This returns the combined content string of all descendants with spaces inserted where necessary."
	^ String streamContents: [:stream | self printContentOn: stream]