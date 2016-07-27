accessing
uri: aString
	uriStream := aString readStream.
	writeStream := (String new: aString size) writeStream.