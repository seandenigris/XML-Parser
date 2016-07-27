private
setPathSegmentsFromString: aString
	pathSegments := OrderedCollection new.

	aString ifEmpty: [^ self].

	$/ split: aString do: [:segment | pathSegments addLast: segment].