printing
printContentOn: aStream
	self contentNodesDo: [:each | each printContentOn: aStream]