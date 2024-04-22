class Solution {
    fun solution(num: Int): Int {
        var answer = 0
        var input = num
        
        while(input != 1){
            if(input % 2 == 0){
                input /= 2
                answer += 1
            }else{
                input = input *3 +1
                answer+= 1
            }
            
            if(answer == 400){
                answer = -1
                break
            }
            
            
        }
        return answer
    }
}