import "day00.input" as puzzle_input : Str

main! = |args| {
	result = match parse_args(args) {
		Part1 => day1(puzzle_input)?
		Part2 => day2(puzzle_input)?
		Both => {
			"day1: ${day1(puzzle_input)?}\n\nday2: ${day2(puzzle_input)?}"
		}
		Help(message) => message
	}
	echo!("${result}\n")
	Ok({})
}

day1 = |_input| {
	Ok("day1 - TODO")
}

day2 = |_input| {
	Ok("day2 - TODO")
}

example_input =
	\\Example Input

expect {
	got = day1(example_input)?

	got == example_input
}

# expect {
# 	got = day2(example_input)?
#
# 	got == example_input
# }

parse_args = |args| {
	if args.contains("-h") {
		message =
			\\Solution for aoc2026
			\\
			\\The default is to run the solution for both parts. To only run one art, use the arguments `1` or `2`.
		Help(message)
	} else if args.contains("1") {
		Part1
	} else if args.contains("2") {
		Part2
	} else {
		Both
	}
}
