instance creation
on: aStringOrStream
	^ self new on:
		(aStringOrStream isStream
			ifTrue: [aStringOrStream]
			ifFalse: [WriteStream on: aStringOrStream])