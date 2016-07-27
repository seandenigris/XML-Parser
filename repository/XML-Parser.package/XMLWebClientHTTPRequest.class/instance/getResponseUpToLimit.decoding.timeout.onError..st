private
getResponseUpToLimit: aMaxSize decoding: aBoolean timeout: aTimeout onError: aBlock
	^ [| response |
		response :=
			(Smalltalk at: #WebClient) new
				timeout: aTimeout;
				httpGet: url.
		response isSuccess
			ifFalse: [XMLHTTPException signal: response status].
		aMaxSize
			ifNotNil: [
				response contentLength
					ifNil: [
						response content size > aMaxSize
							ifTrue: [XMLLimitException signal]]
					ifNotNil: [
						response contentLength > aMaxSize
							ifTrue: [XMLLimitException signal]]].
		response content]
		on: Error
		do: aBlock