#AppVersionChecker (ROR version)

- **GAE Version** [GAE version](https://github.com/iamchiwon/AppVersionChecker)
- **Implementation** [Working Sample](https://appversionchecker.herokuapp.com/)

### 등록된 버전 리스트 확인
- 브라우저에서 / 로 라우팅

### 어플 별 최신 버전 확인
- /query 로 라우팅
- appkey 와 cver 파라미터가 있어야 함
- 결과는 json 으로 반환됨
- ex) https://appversionchecker.herokuapp.com/query?appkey=com.test.app1&cver=0.1.1


