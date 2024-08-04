class Solution {
    fun solution(s: String): IntArray {
        var modifieds = s
        var count = 0
        var delzeros = 0
        while (modifieds != "1") {
            val sminuszeros = modifieds.replace("0","").length.toInt()
            delzeros += modifieds.length-sminuszeros
            modifieds = sminuszeros.toString(2)
            count++
        }
        val answer = intArrayOf(count,delzeros)
        return answer
    }
}