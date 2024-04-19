class Solution {
    fun solution(x: Int): Boolean {
        var answer = true
        var sum = 0
        x.toString().forEach{
            sum = sum+it.digitToInt()
        }
        if(x%sum == 0){
            answer = true
        }else{
            answer = false
        }
        return answer
    }
}