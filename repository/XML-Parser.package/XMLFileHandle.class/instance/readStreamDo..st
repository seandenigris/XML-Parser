reading
readStreamDo: aBlock
	| readStream |

	readStream := self readStream.
	^ [aBlock value: readStream]
		ensure: [readStream close].