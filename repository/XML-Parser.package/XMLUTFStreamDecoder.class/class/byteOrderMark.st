accessing
byteOrderMark
	^ String newFrom: (self byteOrderMarkBytes collect: [:each | each asCharacter])