private
parseAllowedElements
	| allowedElements |

	allowedElements := (DTDMixedContentListParser on: contentModel) parse.
	allowedElements remove: '#PCDATA'.

	(allowedElements isEmpty or: [contentModel last == $*])
		ifFalse: [self errorInvalidMixedContentList].

	^ allowedElements.