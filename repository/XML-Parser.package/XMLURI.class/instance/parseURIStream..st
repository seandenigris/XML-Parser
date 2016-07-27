private
parseURIStream: aStream
	| parser |

	parser := XMLURIParser on: aStream.
	self
		scheme: parser parseScheme;
		hasAuthorityPrefix: parser parseAuthorityPrefix.
	(self hasScheme
		or: [self hasAuthorityPrefix])
		ifTrue: [
			self
				userInfo: parser parseUserInfo;
				host: parser parseHost;
				port: parser parsePort]
		ifFalse: [
			self
				userInfo: '';
				host: ''].
	self
		pathSegments: parser parsePathSegments;
		query: parser parseQuery;
		fragment: parser parseFragment.