class Solution {
    fun solution(s: String): String {
        var input = s.split(" ")
        var answer = ""
        for(i in input){
            for(j in 0..i.length-1){
                if(j % 2 == 0){
                    answer += i[j].uppercase()
                }else{
                    answer += i[j].lowercase()
                }
            }
            answer+= " "
        }
        return answer.substring(0..s.length-1)
    }
}