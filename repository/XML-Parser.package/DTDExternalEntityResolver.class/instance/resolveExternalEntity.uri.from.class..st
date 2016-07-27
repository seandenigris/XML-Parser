private
resolveExternalEntity: aName uri: anEntityUri from: aSourceUri class: aClass
	| combinedUri replacement replacementStream |

	combinedUri := self combineURI: aSourceUri with: anEntityUri.

	replacementStream := self resolveEntityURI: combinedUri.
	replacement  := replacementStream contents.
	replacementStream close.

	^ aClass
		name: aName
		replacement: replacement
		uri: combinedUri asString.