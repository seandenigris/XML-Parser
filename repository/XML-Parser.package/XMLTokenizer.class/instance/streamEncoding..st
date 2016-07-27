streaming
streamEncoding: encodingString

	Smalltalk at: #TextConverter ifPresent: [:tc | 
		(stream respondsTo: #converter:) ifTrue: [
			stream converter: (tc defaultConverterClassForEncoding: encodingString)]]