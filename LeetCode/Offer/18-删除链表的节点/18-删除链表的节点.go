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

func deleteNode_1(head *ListNode, val int) *ListNode {
	if head.Val == val {
		return head.Next
	}

	newHead := head

	for head.Next != nil {
		if head.Next.Val == val {
			head.Next = head.Next.Next

			return newHead
		} else {
			head = head.Next
		}

	}

	return newHead
}

func deleteNode_2(head *ListNode, val int) *ListNode {
	newHead := &ListNode{0, head}
	tmpHead := newHead

	for newHead.Next != nil {
		if newHead.Next.Val == val {
			newHead.Next = newHead.Next.Next

			return tmpHead.Next
		}
		newHead = newHead.Next
	}

	return tmpHead.Next
}

func printList(head *ListNode) {
	for head != nil {
		fmt.Printf("%d, ", head.Val)
		head = head.Next
	}
	fmt.Println()
}

func main() {
	l1 := &ListNode{4, nil}
	l1.Next = &ListNode{1, nil}
	l1.Next.Next = &ListNode{8, nil}
	l1.Next.Next.Next = &ListNode{5, nil}

	printList(deleteNode_1(l1, 1))
	printList(deleteNode_2(l1, 4))
}
