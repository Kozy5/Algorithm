class Solution {
    fun solution(a: IntArray, b: IntArray): Int {
        var answer: Int = 0
        var num = 0
        for(i in a){
            answer += i*b[num++]
        }
        return answer
    }
}