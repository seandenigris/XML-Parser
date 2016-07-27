parsing
parseAllowedElements
	| allowedElements |

	allowedElements := (DTDMixedContentListParser on: contentModel) parse.
	allowedElements remove: '#PCDATA'.

	(allowedElements isEmpty or: [contentModel last == $*])
		ifFalse: [
			XMLValidationException signal:
				'Missing * after mixed content list with elements'].

	^ allowedElements.