Object subclass: #BinaryTree
    instanceVariableNames: 'value left right'
    classVariableNames: ''
    poolDictionaries: ''
    category: nil !

!BinaryTree methodsFor: 'initialization'!

initialize: anInteger
    value := anInteger.
    left := nil.
    right := nil.
!!

!Binary Tree methodsFor: 'maintaining'!

value
    ^value
!

insert: anInteger
    (anInteger < self value)
    ifTrue: 
    [ 
        (left = nil)
        ifTrue:
        [
            left := BinaryTree new initialize: anInteger
        ]
        ifFalse:
        [
            left insert: anInteger
        ] 
    ]
    ifFalse:
    [
        (right = nil)
        ifTrue:
        [
            right := BinaryTree new initialize: anInteger
        ]
        ifFalse:
        [
            right insert: anInteger
        ]
    ]

!!

!BinaryTree methodsFor: 'printing'!

printOn: aStream
    value printOn: a Stream.
    ' ' printOn: aStream
!

inorder
    (left ~= nil)
    ifTrue:
    [
        left inorder
    ].
    self printOn.
    (right ~= nil)
    ifTrue:
    [
        right inorder
    ]
!

preorder
    self printOn.
    (left ~= nil)
    ifTrue:
    [
        left preorder
    ].
    (right ~= nil)
    ifTrue:
    [
        right preorder
    ]

postorder
    (left ~= nil)
    ifTrue:
    [
        left postorder
    ].
    (right ~-nil)
    [
        right postorder
    ].
    self printOn

!!

"Main - for testing"
    | t |
    t := BinaryTree new initialize: 3.
    t insert: 5.
    t insert: 1.
    t insert: 2.
    
    'inorder print:' printNl.
    t inorder.
    ' ' printNl.

    'preorder print:' printNl.
    t preOrder.
    ' ' printNl.

    'postorder print:' printNl.
    t postOder.
    ' ' printNl.

!
