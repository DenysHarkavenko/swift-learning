// A clock shows h-hours, m-minutes and s-seconds after midnight.
// Your task is to write a function that returns the time since midnight in
// milliseconds: h = 0; m = 1; s = 1; result = 61000.
// Input constraints: 0 <= h <= 23 0 <= m <= 59 0 <= s <= 59

func past(h: Int, m: Int, s: Int) -> Int {
    let milliseconds = (h * 3600 + m * 60 + s) * 1000
    return milliseconds
}

let result = past(h: 0, m: 1, s: 1)
print("Milliseconds since midnight: \(result)") 