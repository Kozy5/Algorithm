class Solution {
    fun solution(n: Int): String {
        var answer = ""
        for(i in 1..n){
            if(i % 2 != 0){ 
                answer += "수"
            }else{
                answer += "박"
            }
        }
        return answer
    }
}