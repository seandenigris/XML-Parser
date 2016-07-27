private
elementsToStartBeforeStartTag: anHtmlTagInfo do: aBlock
	(anHtmlTagInfo name = 'html')
		ifTrue: [^ self].
	self hasOpenElements
		ifFalse: [aBlock value: 'html'].
	anHtmlTagInfo isHeadOrBodyTag
		ifTrue: [^ self]. 

	(self mustStartHeadSectionForTag: anHtmlTagInfo)
		ifTrue: [aBlock value: 'head']
		ifFalse: [
			(self mustStartBodySectionForTag: anHtmlTagInfo)
				ifTrue: [aBlock value: 'body']].