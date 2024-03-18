class Solution {
    fun solution(n: Int): Int {
        var input = n
        var answer = 0
        while(input != 0){
            if(n%input == 0){
                answer+=input
                input = input-1
                }else{
                    input = input - 1
                }
        }
        return answer
    }
}