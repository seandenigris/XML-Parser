private
elementsToEndBeforeStartTag: anHtmlTagInfo do: aBlock
	| excludingTag |

	(anHtmlTagInfo isHeadOrBodyTag
		or: [self currentSectionCannotContainTag: anHtmlTagInfo])
		ifTrue: [^ self beforeEnding: 'html' elementsToEndDo: aBlock].

	(((self hasOpenElement: anHtmlTagInfo name)
		and: [self cannotSelfNestTag: anHtmlTagInfo])
		or: [(excludingTag := anHtmlTagInfo mutuallyExcludingTag) notNil
			and: [self hasOpenElement: excludingTag]])
		ifTrue: [
			self openElementsReverseDo: [:each |
				aBlock value: each.
				((each = anHtmlTagInfo name)
					or: [each = excludingTag])
					ifTrue: [^ self]]].