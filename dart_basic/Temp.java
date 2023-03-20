import java.util.ArrayList;
import java.util.List;

class Temp {
    public static void main(String[] args) {

        List<String> list = List.of("jaybon", "sunny", "duck");
        // 리스트에서 u가 포함된 문자열만 추출해서 리스트로 반환
        // 리스트의 문자열에 @temp.com을 붙여서 리스트로 반환

        // List<String> result1 = new ArrayList<>();
        // for (String s : list) {
        // if (s.contains("u")) {
        // result1.add(s);
        // }
        // }

        // List<String> result2 = new ArrayList<>();
        // for (String s : result1) {
        // result2.add(s + "@temp.com");
        // }

        List<String> result = list.stream()
                .filter(s -> s.contains("u"))
                .map(s -> s + "@temp.com")
                .toList();

        System.out.println(result);

    }
}