class Solution {
    fun solution(s: String): Boolean {
        var answer = true
        var input = s.toCharArray()
        if(s.length == 4 || s.length ==6){
            for(i in input){
                if(i !in ('0'..'9')){
                    answer = false
                    break
            }
        }
        }else{
            answer = false
        }
        
        return answer
    }
}