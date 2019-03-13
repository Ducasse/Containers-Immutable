Extension { #name : #Random }

{ #category : #'*Containers-Immutable-Collections' }
Random >> seq [
	^ [ self next ] repeatedly
]
