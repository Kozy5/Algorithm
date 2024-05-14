class Solution {
    fun solution(s: String): IntArray {
        var answer = intArrayOf()
        for(i in 0..s.length-1){
            if(s.substring(0,i).contains(s[i])){
                answer+= i - s.substring(0,i).lastIndexOf(s[i])
            }else{
                answer+= -1
            }
        }
        return answer
    }
}