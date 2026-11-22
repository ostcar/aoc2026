import "day00.input" as puzzle_input : Str

main! : List(Str) => Try({}, [Exit(I8)])
main! = |args| {
	run!(args).map_err!(
		|err| {
			echo!("${Str.inspect(err)}\n")
			Exit(1)
		},
	)
}

run! : List(Str) => Try({}, _)
run! = |args| {
	input = puzzle_input.trim()
	result = match parse_args(args) {
		Part1 => day1(input)?
		Part2 => day2(input)?
		Both => {
			"day1: ${day1(input)?}\n\nday2: ${day2(input)?}"
		}
		Help(message) => message
	}
	echo!("${result}\n")
	Ok({})
}

day1 : Str -> Try(Str, _)
day1 = |_input| {
	Err(Todo("Day1"))
}

day2 : Str -> Try(Str, _)
day2 = |_input| {
	Err(Todo("Day2"))
}

example_input =
	\\Example Input

# expect {
# 	got = day1(example_input)?
# 	got == "TODO"
# }
#
# expect {
# 	got = day2(example_input)?
# 	got == "TODO"
# }

parse_args = |args| {
	if args.contains("-h") {
		message =
			\\Solution for aoc2026
			\\
			\\The default is to run the solution for both parts. To only run one part, use the arguments `1` or `2`.
		Help(message)
	} else if args.contains("1") {
		Part1
	} else if args.contains("2") {
		Part2
	} else {
		Both
	}
}
