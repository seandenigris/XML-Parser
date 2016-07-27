accessing
intersperse: aNodeCollection with: aPaddingCollection
	| mixedCollection nodeStream paddingStream |

	mixedCollection := XMLOrderedList new.
	nodeStream := aNodeCollection readStream.
	paddingStream := aPaddingCollection readStream.
	[nodeStream atEnd and: [paddingStream atEnd]]
		whileFalse: [
			nodeStream atEnd
				ifFalse: [mixedCollection add: nodeStream next].
			paddingStream atEnd
				ifFalse: [mixedCollection add: paddingStream next]].
	^ mixedCollection.