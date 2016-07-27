accessing
intersperse: aCollection with: aPaddingCollection
	| mixedCollection nodeStream paddingStream |

	mixedCollection := aCollection species new.
	nodeStream := aCollection readStream.
	paddingStream := aPaddingCollection readStream.
	[nodeStream atEnd and: [paddingStream atEnd]]
		whileFalse: [
			nodeStream atEnd
				ifFalse: [mixedCollection add: nodeStream next].
			paddingStream atEnd
				ifFalse: [mixedCollection add: paddingStream next]].
	^ mixedCollection.