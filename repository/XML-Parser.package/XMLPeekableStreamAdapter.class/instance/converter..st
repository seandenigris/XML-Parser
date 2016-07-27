accessing
converter: aConverter
	(aConverter notNil
		and: [stream respondsTo: #converter:])
		ifTrue: [stream converter: aConverter]