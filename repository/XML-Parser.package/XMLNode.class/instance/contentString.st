accessing
contentString
	| stream |

	stream := WriteStream on: (String new: 128).
	self printContentOn: stream.
	^ stream contents.