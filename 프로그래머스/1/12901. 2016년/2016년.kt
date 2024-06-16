class Solution {
    fun solution(a: Int, b: Int): String {
        val day = listOf("THU","FRI", "SAT", "SUN", "MON", "TUE", "WED")
        var days = 0
        for (i in 1..a-1) {
            when (i) {
                1,3,5,7,8,10 -> days += 31
                2 -> days += 29
                else -> days += 30
            }
        }
        days += b
        return day[days%7]
    }
}