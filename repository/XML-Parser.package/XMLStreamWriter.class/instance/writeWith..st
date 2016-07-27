writing
writeWith: aBlock
	| writeStream res|

	(nextStream = streams size)
		ifTrue: [self grow].
	(writeStream := streams at: nextStream) reset.
	nextStream := nextStream + 1.
	^ [aBlock value: writeStream] ensure: [nextStream := nextStream - 1].