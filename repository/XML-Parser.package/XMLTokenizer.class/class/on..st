instance creation
on: aStringOrStream
	^self new stream:
		(aStringOrStream isStream
			ifTrue: [aStringOrStream]
			ifFalse: [aStringOrStream readStream])