# Flutter Riverpod MVVM Example 💡

Flutter에서 Riverpod을 활용해 MVVM 아키텍처를 구현한 간단한 상태 관리 실습 프로젝트입니다.  
버튼을 눌러 사용자 정보를 비동기로 받아와 화면에 표시하는 과정을 통해 **Notifier**, **Provider**, **Model-View-ViewModel** 구조를 연습할 수 있습니다.

---

## 📁 폴더 구조

```
lib/
├── main.dart
├── model/
│   └── user.dart
├── repository/
│   └── user_repository.dart
├── view/
│   └── home_page.dart
└── view_model/
    └── home_view_model.dart

 ```
 
 

---

## ✨ 주요 학습 내용


| 구성요소     | 설명 |
|--------------|------|
| **View**      | 사용자 인터페이스 (Flutter 위젯) |
| **ViewModel** | 상태 관리 및 로직 처리. UI와 분리된 비즈니스 계층 |
| **Model**     | 데이터 구조 정의. 이 예제에서는 User 정보를 다룸 |

Flutter에서 MVVM 아키텍처를 적용하면 다음과 같은 장점이 있습니다:

- UI 로직과 상태 관리를 분리하여 **가독성 향상**
- 각 계층이 명확하므로 **유지보수 및 테스트 용이**
- 재사용 가능한 ViewModel 구성 가능

  
---

## ✍ 정리하며 – 나의 시행착오와 배운 점
🔸 처음엔 복잡하고 낯설었다
Riverpod의 구조를 처음 접했을 땐 ref.watch, ref.read, NotifierProvider 등이 낯설게 느껴졌습니다.

특히 state = ...처럼 새로운 객체를 할당해야만 위젯이 갱신된다는 개념이 헷갈렸어요.

🔸 구조를 이해하니 명확해졌다
ViewModel은 로직과 상태만 담당하고 View는 UI만 처리하니 코드가 훨씬 명확해졌습니다.

테스트, 유지보수, 기능 확장까지 고려할 때 더 이상 setState()로는 돌아갈 수 없겠다는 생각이 들었습니다.

---


## 🚀 실행 방법
1. Flutter SDK가 설치되어 있는지 확인하세요  
   👉 [Flutter 설치 안내](https://docs.flutter.dev/get-started/install)

2. 저장소를 클론합니다:

```
git clone https://github.com/your-username/flutter_riverpod_mvvm_example.git
cd flutter_riverpod_mvvm_example

 ```

 ---
 ##  📸 앱 예시 화면

버튼 클릭 시 사용자 정보(JSON 형식)를 받아오고,
화면에 이름, 나이, 받아온 시간을 출력합니다.
Riverpod의 NotifierProvider와 ConsumerWidget을 활용해 ViewModel의 상태를 구독합니다.

```
[정보 가져오기] 버튼 클릭 시:

이름: 이지원
나이: 20
가져온 시간: 2024-04-16 14:30:01.000
```

 ---

 ## 📚 더 자세한 내용은 블로그에서 확인하세요!
MVVM 구조를 배우며 느낀 점, 시행착오, 구조적 이점 등을 정리한 블로그 포스팅입니다.
앱 아키텍처를 처음 접하는 분들께 추천드려요.

🔗 블로그 포스팅
[👉 Flutter 숙련 – 상태관리 패키지 Riverpod 사용하기]([https://grmeems.tistory.com/entry/Flutter-%EC%88%99%EB%A0%A8-TIL-MVVM-%EC%95%84%ED%82%A4%ED%85%8D%EC%B3%90-%EC%95%8C%EC%95%84%EB%B3%B4%EA%B8%B0-StatefulWidget-%EC%BD%94%EB%93%9C-%EC%9D%B4%ED%95%B4](https://grmeems.tistory.com/entry/Flutter-%EC%88%99%EB%A0%A8-TIL-%EC%83%81%ED%83%9C%EA%B4%80%EB%A6%AC-%ED%8C%A8%ED%82%A4%EC%A7%80-Riverpod-%EC%82%AC%EC%9A%A9%EB%B2%95%EA%B3%BC-MVVM-%EA%B5%AC%EC%A1%B0-%EC%A0%81%EC%9A%A9%ED%95%98%EA%B8%B0))


 ---

 
 ## 🛠 사용 기술
 
 - VSCode + Dart CLI
 - dart:convert 라이브러리 (jsonEncode, jsonDecode)
 - Flutter 3.7
 - Dart
 - Cupertino-style Dialog
 - Git & GitHub
 
 ---
 
 ## 👨‍💻 개발자
 - GitHub: [Linayoo01](https://github.com/Linayoo01)
