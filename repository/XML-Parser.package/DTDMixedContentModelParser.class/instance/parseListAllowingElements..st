parsing
parseListAllowingElements: aBoolean
	| allowedElements |

	allowedElements := (DTDMixedContentListParser on: contentModel) parse.
	allowedElements remove: '#PCDATA'.

	(aBoolean or: [allowedElements isEmpty])
		ifFalse: [
			XMLValidationException signal:
				'Missing * after mixed content list with elements'].

	^ allowedElements.