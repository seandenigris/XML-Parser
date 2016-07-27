private
nextIntegerWithBase: aBase upTo: aLimit
	^ XMLIntegerReader
		readFrom: readStream
		withBase: aBase
		upTo: aLimit