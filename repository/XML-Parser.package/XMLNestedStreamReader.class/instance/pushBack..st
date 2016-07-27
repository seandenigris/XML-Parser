streaming
pushBack: aString
	self pushStream: (ReadStream on: aString)