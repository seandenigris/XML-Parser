accessing
contents
	"the read stream adapters don't support #contents so #upToEnd is used instead"
	^ self readStreamDo: [:readStream | readStream upToEnd]