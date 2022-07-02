# AWS Code Serise 구성 내용입니다.

AWS Code Serise를 통해 특정 서버에 배포 

빌드 내용은 appsepc.yml에 정의 

appspec.yml 에 정의된 파이프 라인에 따라 빌드 및 배포 실행 

1. Vue.js 테스트 파일 
- 기본 Vue 화면이 나오는 테스트 구성 파일

2. AWS Code Serise appspec.yml을 통해 빌드 배포 

- 스크립트 파일로 npm build / install 

  - scripts/npm_build.sh
  - scripts/npm_install.sh
  
- build 가 완료된 파일을 특정 서버에 디렉토리에 배포
  - index.js



# npm build 

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
