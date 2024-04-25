class Solution {
    fun solution(phone_number: String): String {
        var answer = ""
        var length = phone_number.length 
        for(i in 1..length-4){ 
            answer += "*"  
        }
        answer += phone_number.substring(length-4,length)
        return answer
    }
}