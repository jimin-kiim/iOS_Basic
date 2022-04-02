#  1. Xcode 사용 기초

## 프로젝트 생성
###- Create a new project
###- Shift (⇧) + command(⌘) + N
###- File >> New >> Project를 누르거나

###- App >> Next

###- Product Name, Team(개발자 계정 없으면 personal team), organization identifier, interface : StoryBoard

## Xcode 구성
### - Editor Area
### - Navigation Area
### - Inspector Area
### - Debug Area

### - Delegate.swift : 생명 주기 담당.
### - ViewController.swift : 화면의 개수만큼 필요.

### - Main.storyboard : 프로젝트 생성 시 자동 생성. 사용자 인터페이스 설계 담당.
### - LaunchScreen.storyboard : 앱 처음 실행했을 때의 시작 화면 담당.

### - Assets.xcassets : 이미지, 아이콘.
### - Info.plist : 카메라 접근, 위치 정보 사용 등 여러 프로젝트 설정 담당.

## 첫 빌드 
### - Main.storyboard > + 클릭. > Object Library 속 아이템을 drag and drop > Inspector Area 에서 수정.
### - simulator도 원하는 걸로 설정.


# 2. Layout 기초

## View의 이해
### - storyboard는 일련의 Scene들로 이루어 진다. 
### - Scene : View + ViewController
#### 각 Scene은 seque를 통해 이어진다. 하지만 사실 상 세그를 잘 사용하지 않고 코드로 연결한다. 세그를 이용하면 충돌이 많이 일어난다. 
### - ViewController : View의 계층 구조 관리. 하나의 Root View와 그 외 필요한 View들을 추가.
### - View : UI를 구성하는 기본 요소이자 UI 요소를 담는 바구니.

## UI 컴포넌트의 이해
###### Command + Shift + L
### - Label : 짧은 텍스트
### - TextView : 긴 텍스트
### - Button : 사용자와의 상호작용에 대한 응답으로 특정 코드를 실행하는 UI. 

### 점검 사항
#### - 하나의 Scene에는 하나의 View Controller
#### Assistant Editor 열기 ) command + option + control + enter. 안 되면 Xcode 껐다 켜기.

## UI 요소 연결
### Scene에서 View 클릭 control 누른 채로 assistant editor로 drag and drop 
### @IBOutlet : 변수 개념
### @IBAction : 동작 개념
