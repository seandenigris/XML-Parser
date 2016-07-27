private
parseDoubleSlashOrReset
	2 timesRepeat: [
		(uriStream atEnd not
			and: [uriStream peek == $/])
				ifTrue: [uriStream next]
				ifFalse: [
					uriStream reset.
					^ false]].
	^ true.