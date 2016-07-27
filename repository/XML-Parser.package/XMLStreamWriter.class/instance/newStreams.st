growing
newStreams
	^ (1 to: 10) collect: [:i | WriteStream on: (String new: 128)]