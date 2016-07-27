private
systemPathFromSegments: aFileSystemPathSegmentArray
	| pathStream |

	pathStream := (String new: 32) writeStream.
	aFileSystemPathSegmentArray
		do: [:each |
			pathStream
				nextPut: self pathSeparator;
				nextPutAll: each].
	pathStream position > 0
		ifFalse: [pathStream nextPut: self pathSeparator].
	^ pathStream contents.