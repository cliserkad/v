// This program displays the fibonacci sequence


import os

fn main() {
	// Check for user input
	if os.args.len != 2 {
		println('usage: fibonacci [rank]')
		// Exit
		return
	}
	// Parse first argument and cast it to int
	stop := os.args[1].int()
	// After rank 92, the 64 bit signed int can no longer store the output
	if stop > 92 {
		println('rank must be 92 or less')
		return
	}
	println(fibonacci(stop))
}

// recursive implementation
fn fibonacci(rank int) int {
	if rank == 0 {
		return 0
	}
	else if rank == 1 || rank == 2 {
		return 1
	}
	else {
		return fibonacci(rank - 1) + fibonacci(rank - 2)
	}
}
