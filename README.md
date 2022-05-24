# SwiftUI_MVVM

## SwiftUI Alamofire
https://github.com/nee0305/MVVMExample
Clone Coding 


## Test API
https://reqres.in. 


## 🤔 Thinking
### Flow
1. ViewModel 에서 Class를 ObservableObject(다른 View가 관찰할 수 있는 객체로 만든다는 듯?)로 만들고 변수를 Publish(출판) 하면 
2. View 에서 ViewModel의 Class를 들고와서 StateObject로 만든다.
3. View 에서 StateObject를 사용하는데 Publish(출판)한 변수를 사용하려면 $(바인딩)을 붙여서 ViewModel 를 조작한다.
4. 그럼 실시간으로 작동된다~?
