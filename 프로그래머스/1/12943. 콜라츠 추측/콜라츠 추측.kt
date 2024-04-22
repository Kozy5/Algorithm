class Solution {
    fun solution(num: Int): Int {
        var answer = 0
        var input:Long = num.toLong()
        
        while(input != 1.toLong()){
            if(input % 2 == 0.toLong()){
                input /= 2
                answer += 1
            }else{
                input = input *3 +1
                answer+= 1
            }
            
            if(answer == 500){
                answer = -1
                break
            }
        }
        return answer
    }
}