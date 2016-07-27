initialization
setStream: aStream readLimit: aReadLimit
	streamReader :=
		XMLNestedStreamReader
			on: (XMLDecodingReadStreamAdapter onExternalStream: aStream)
			readLimit: aReadLimit.
	"this is the preferred LE char for Pharo/Squeak"
	streamReader normalizedLineEndingChar: Character cr.

	outputStream := (String new: 10240) writeStream.
	writeStream := (String new: 64) writeStream.