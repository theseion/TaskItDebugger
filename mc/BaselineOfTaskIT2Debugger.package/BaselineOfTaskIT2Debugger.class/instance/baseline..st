baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec blessing: #baseline.
			spec
				baseline: 'MLThreads'
				with: [ spec repository: 'github://theseion/master-thesis:master/mc' ].
			spec
				baseline: 'TaskIt'
				with: [ spec repository: 'github://sbragagnolo/taskit:dev-0.3' ].
			spec
				package: 'TaskIT2Debugger'
				with: [ spec requires: #('MLThreads' 'TaskIt') ].
			spec
				group: 'default'
				with: 'TaskIT2Debugger' ]