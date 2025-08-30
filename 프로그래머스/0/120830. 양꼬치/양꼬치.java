class Solution {
    public int solution(int n, int k) {
        int service = k-(n/10);
        int answer = (n*12000)+(service*2000);
        
        return answer;
    }
}