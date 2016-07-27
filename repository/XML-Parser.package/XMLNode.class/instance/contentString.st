accessing
contentString
	^ String streamContents: [:stream | self printContentOn: stream]