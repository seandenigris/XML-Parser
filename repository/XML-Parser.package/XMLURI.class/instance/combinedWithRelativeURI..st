private
combinedWithRelativeURI: aRelativeURI
	| copy |

	copy := self copy.
	aRelativeURI hasUserInfo
		ifTrue: [
			^ copy
				userInfo: aRelativeURI userInfo;
				host: aRelativeURI host;
				port: aRelativeURI port;
				pathSegments: aRelativeURI pathSegments;
				query: aRelativeURI query;
				fragment: aRelativeURI fragment].
	aRelativeURI hasHost
		ifTrue: [
			^ copy
				host: aRelativeURI host;
				port: aRelativeURI port;
				pathSegments: aRelativeURI pathSegments;
				query: aRelativeURI query;
				fragment: aRelativeURI fragment].
	aRelativeURI hasPort
		ifTrue: [
			^ copy
				port: aRelativeURI port;
				pathSegments: aRelativeURI pathSegments;
				query: aRelativeURI query;
				fragment: aRelativeURI fragment].
	aRelativeURI hasPath
		ifTrue: [
			^ copy "copy path segments before modifying"
				pathSegments: self pathSegments copy;
				addPathSegmentsFrom: aRelativeURI;
				query: aRelativeURI query;
				fragment: aRelativeURI fragment].
	aRelativeURI hasQuery
		ifTrue: [
			^ copy
				query: aRelativeURI query;
				fragment: aRelativeURI fragment].
	aRelativeURI hasFragment
		ifTrue: [^ copy fragment: aRelativeURI fragment].