parsing
parse
	| mayContainElements allowedElements |

	(mayContainElements := contentModel last == $*)
		ifTrue: [contentModel := contentModel allButLast].

	allowedElements := self parseListAllowingElements: mayContainElements.

	^ XMLMixedContentElementValidator
		element: element
		allowedElements: allowedElements.