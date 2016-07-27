accessing
valueList: aString
	valueListStream := ReadStream on: aString.
	valueStream := WriteStream on: (String new: 16).
	listValues := Set new.