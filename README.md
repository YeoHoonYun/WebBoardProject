# WebBoardProject
## 작업 기간 2019-01-14 ~ 20
### 작업 툴 : Intelli J

1. 사용목적 : 회원가입 및 게시판 프로그램 제작

2. 기능 : 
  * 상단바 : 메인(목록), 글쓰기, 회원가입 및 제목 검색 바 / 로그인을 하고 생기는 환영글을 클릭하면 로그아웃 가능
  * 메인 페이지
    - 게시물 총 건수(테이블 뷰 사용), 페이지 및 게시물 범위 표출
    - 게시물 및 답글은 등록일순으로(답글의 댑스가 길수록 후순위)
    - 페이징 << >> : 앞뒤 +- 5 / 각각의 번호를 누르면 그번호의 이전, 이후, 그 순번 이후의 순번만큼 이동 / 음수일 경우 1페이지로
  
  * 글쓰기 페이지
    - 로그인을 해야만 입력가능(경고창 표출)
    - 제목, 내용, 파일입력(필수입력은 아님)
    - 제목과 내용은 빈값이 들어가면 안됨.(제목은 2자 이상 - 경고창 표출)
    
  * 상세 페이지
    - 해당 번호의 글을 클릭하면 볼수 있음.
    - 파일을 넣었다면 파일을 다운로드 할수 있는 버튼이 생성
    - 이전글, 이후글 볼수 있음.(그 범위를 넘어가면 이동하지 않음.)
    - 답글 작성, 수정, 삭제 가능 => 마찬 가지로 로그인을 해야 가능
    - 목록으로 이동하는 버튼
    
  * 수정 페이지
    - 로그인을 해야 수정 가능
    - 제목, 내용, 파일 수정가능
    
  * 회원가입
    - 이름, 닉네임, 이메일, 비밀번호 확인
    - 빈값을 넣으면 다시 포워딩으로 실행 되도록 수정
    
  * 로그인
    - 이전에 수정, 작성 페이지에서 넘어왔다면 진행하려는 페이지로 이동
    - 회원가입 페이지로 
  
3. 보완점
  * 회원가입 할 때 각각의 문자들이 몇자 이상이면 페이지 못넘어 가게 함.
  * 글을 삭제 할때 파일을 삭제해야함....
  * 이후 추가적인 자바스크립트로 alert를 날리는 곳에서 서블릿으로 처리한 작업들이 실행됨. 추후 문제를 해야함.
  * 자바스크립트 Ajax를 적용하여 새롭게 게시판을 만들수 있도록 수정 
