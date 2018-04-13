Object subclass: #BinaryTree
    instanceVariableNames: ' '
    classVariableNames: ''
    poolDictionaries: ''
    category: nil !
 
!BinaryTree methodsFor: 'initialization'!
 
initialize: anInteger
    value := anInteger.
    left := nil.
    right := nil
!!
 
!Binary Tree methodsFor: 'maintaining'!
 
value
    ^value
!
 
insert: anInteger
 
!!
 
!BinaryTree methodsFor: 'printing'!
 
printOn: aStream
    value printOn: a Stream.
    ' ' printOn: aStream
!
 
!!
 
"Main - for testing"
     | t |
     t := BinaryStree new initialize: 5.
 
     'preorder print:' printNl.
     t preOrder.
     ' ' printNl.
!


