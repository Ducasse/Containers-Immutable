Class {
	#name : #BaselineOfContainersImmutable,
	#superclass : #BaselineOf,
	#category : #BaselineOfContainersImmutable
}

{ #category : #baselines }
BaselineOfContainersImmutable >> baseline: spec [ 
	<baseline>

	spec 
		for: #pharo 
		do: [		
			spec package: 'Containers-Immutable'.
			"spec
				package: 'Containers-UniqueOrdered-Tests'
				with: [ spec requires: #( 'Containers-UniqueOrdered') ]."
		] 
	
]
