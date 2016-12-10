examples
exampleAsyncTaskInANewProcess
	<example>
	| builder |
	builder := TKTBuilder new.
	builder
		asyncTask;
		onSuccess: [ :result | result inspect ] onFailure: [ :ex | ex pass ];
		send: #blah;
		to: 2;
		inALocalProcess;
		execute