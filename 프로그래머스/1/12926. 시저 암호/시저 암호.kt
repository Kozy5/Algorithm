class Solution {
    fun solution(s: String, n: Int): String {
        var answer = ""   
        for(char in s){
            if(char == ' '){
                answer+= ' '
            }else if(char in ('a'..'z')){
                answer += 'a'+(char.code-'a'.code+n)%26
            }else if(char in ('A'..'Z')){
                answer += 'A'+(char.code-'A'.code+n)%26
            }
        }
        return answer
    }
}