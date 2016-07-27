accessing
converter: aConverter
	(stream respondsTo: #converter:)
		ifTrue: [stream converter: aConverter]