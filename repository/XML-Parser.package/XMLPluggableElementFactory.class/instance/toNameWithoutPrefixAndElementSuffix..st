private
toNameWithoutPrefixAndElementSuffix: aString
	| nameStream |

	nameStream := aString readStream.
	[nameStream atEnd not and: [nameStream peek isUppercase]]
		whileTrue: [nameStream next].
	nameStream atEnd
		ifTrue: [^ ''].
	nameStream back.

	^ nameStream upToEnd copyReplaceAll: 'Element' with: ''.