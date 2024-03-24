class Solution {
    fun solution(n: Long): IntArray {
        var input = n.toString()
        var count = input.count()
        var answer = IntArray(count)
        for(i in 0..count-1){
            answer[i] = input[count-1-i].digitToInt()
        }
        return answer
    }
}

