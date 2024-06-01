class Solution {
    fun solution(numbers: IntArray): IntArray {
        var answer: IntArray = intArrayOf()
        var one = 1
        for(i in 0..numbers.size-1){
            for(j in one++..numbers.size-1){
                if(!answer.contains(numbers[i]+numbers[j])){
                    answer+=numbers[i]+numbers[j]    
                }
            }
        }
        answer.sort()
        return answer
    }
}