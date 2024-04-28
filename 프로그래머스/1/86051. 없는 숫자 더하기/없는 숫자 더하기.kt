class Solution {
    fun solution(numbers: IntArray): Int {
        var answer: Int = 0
        var allnumbers = IntArray(10,{i->i})
        for(i in allnumbers){
            if(numbers.contains(i)==false){
                answer+=i
            }
        }
        return answer
    }
}