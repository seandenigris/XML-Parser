This class allows you to generate well-formed XML documents using an API similar to Seaside's canvas and tag brush API.

Markup can be created by sending an instance any of the messages under "writing markup." The messages that take no arguments return an instance of an XMLMarkupWriter subclass. These objects can be configured with messages like #name: and #attributeAt:put:. Sending them #write or a specific writing message that accepts markup to embed within (the generic #with: message) causes the markup writer's configuration to be committed and its markup to be written to the output stream. For markup writers that can have embedded markup, the argument to the writing message can be a string, collection (of strings and blocks), a block, or nil. The block passed in can optionally take an argument, which will be the XMLWriter object that created the markup writer object. Within the block you can generate additional, child markup that will be contained by the parent. Creating additional non-embedded markup will cause any unwritten markup from a previous markup writer to be written, as will sending an XMLWriter or XMLMarkupWriter #contents, #printOn:, or the aforementioned #write.

Here is an example that you can highlight and evaluate with cmd-p to see the result:

	| writer |
	writer := XMLWriter new.
	writer
		enablePrettyPrinting;
		xml;
		comment: 'an example'.
	writer tag
		name: 'example:user';
		xmlnsAt: 'example' put: 'urn://example';
		with: [
			writer
				tag: 'username' with: 'jsmith';
				tag: 'real-name' with: 'John Smith';
				tag: 'age' with: '25';
				tag: 'id' with: '101']

Since the last message sent (#tag:with:) is an explicit serialization message, #write does not need to be sent. However, if you don't end with a serialization message, you must end with #write:

	| writer |
	writer := XMLWriter new.
	writer tag
		name: 'emptyTag';
		attributeAt: 'a' put: 'one';
		write.

Sending #write to the XMLWriter or markup writer object has the same effect. A simple way to avoid having to remember to send #write is to generate all markup within a top-level #writeWith: block, which will do it for you automatically:

	XMLWriter new
		writeWith: [:writer |
			writer tag
				name: 'emptyTag';
				attributeAt: 'a' put: 'value'].