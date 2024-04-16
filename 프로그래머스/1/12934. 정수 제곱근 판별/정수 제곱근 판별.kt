class Solution {
    fun solution(n: Long): Long {
        var answer: Long = 0
        if(n == 1L){
            answer = 4L
            return answer
        }
        while(answer < n){
            if(answer*answer == n){
                answer = (answer+1)*(answer+1)
            }else{
                answer += 1
            }
        }
        if(answer == n){
            answer = -1L
        }
        return answer
    }
}