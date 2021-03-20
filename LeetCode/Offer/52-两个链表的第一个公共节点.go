package main

import "fmt"

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

// ListNode Structure
type ListNode struct {
	Val  int
	Next *ListNode
}

func getIntersectionNode(headA, headB *ListNode) *ListNode {
	hA := headA
	hB := headB

	for hA != hB {
		if hA != nil {
			hA = hA.Next
		} else {
			hA = headB
		}

		if hB != nil {
			hB = hB.Next
		} else {
			hB = headA
		}
	}

	return hA
}

func main() {
	l1 := &ListNode{4, nil}
	l1.Next = &ListNode{1, nil}
	l1.Next.Next = &ListNode{8, nil}
	l1.Next.Next.Next = &ListNode{4, nil}
	l1.Next.Next.Next.Next = &ListNode{5, nil}

	l2 := &ListNode{5, nil}
	l2.Next = &ListNode{6, nil}
	l2.Next.Next = &ListNode{1, nil}
	l2.Next.Next.Next = l1.Next.Next

	l := getIntersectionNode(l1, l2)
	if l != nil {
		fmt.Printf("%d", l.Val)
	} else {
		fmt.Println("None")
	}
	fmt.Printf("%d", l1.Val)
	fmt.Printf("%d", l2.Val)
}
