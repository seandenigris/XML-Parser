This class allows you to generate well-formed XML documents using an API similar to Seaside's canvas/tag brush API.

Markup can be created by sending an instance any of the messages under "writing markup." The messages that take no arguments return an instance of an XMLMarkupWriter subclass. These objects can be configured with messages like #name: and #attributeAt:put:. Sending them #write or a specific writing message that accepts markup to embed within (#content: or #internalSubset: for example) causes the markup writer's configuration to be committed and its markup written to the output stream. For markup writers that can have embedded markup, the argument to the writing message can be a string, collection (of strings and blocks), a block, or nil. The block passed in can optionally take an argument, which will be the XMLWriter object that created the markup writer object. Within the block, you can generate additional, child markup that will be contained by the parent. Creating additional non-embedded markup will cause any unwritten markup from a previous markup writer to be written, as will sending an XMLWriter or XMLMarkupWriter #contents, #asString, #printOn:, or #write.

Here is an example:

	| writer |
	(writer := XMLWriter new) enablePrettyPrinting.
	writer xml.
	writer tag
			name: 'foo:bar';
			xmlnsAt: 'foo' put: 'http://foo';
			attributeAt: 'a' put: 'one';
			attributeAt: 'b' put: 'two';
			content: [
				writer tag: 'bar' content: [
					writer
						string: 'test';
						tag: 'baz';
						tag: 'foobar' content: 'test']]