instance creation
fromStream: aStream
	"streams must be parsed eagerly, unlike strings"
	^ self basicNew initialize parseURIStream: aStream