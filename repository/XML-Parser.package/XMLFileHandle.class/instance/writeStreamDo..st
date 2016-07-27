writing
writeStreamDo: aBlock
	| writeStream |

	writeStream := self writeStream.
	^ [aBlock value: writeStream]
		ensure: [writeStream close].