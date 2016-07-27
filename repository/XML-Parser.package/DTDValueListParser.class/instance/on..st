initialization
on: aString
	valueListStream := ReadStream on: aString.
	valueStream := WriteStream on: (String new: (aString size / 4) asInteger).
	listValues := Set new.