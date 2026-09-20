# Seongkyu Choi — Academic Website

[Academic Pages](https://github.com/academicpages/academicpages.github.io) 기반 개인 연구 홈페이지입니다.
원본 템플릿 버전: `c77da751a8124450d5fb818056c0cf081fea08e1`.

## 노트북에서 미리 보기

이 Mac에는 Homebrew Ruby 3.3과 필요한 패키지를 설치했습니다. Docker 없이 실행할 수 있습니다.

```bash
cd /Users/kyu/sk950324.github.io
bash scripts/preview.sh
```

브라우저에서 <http://localhost:4000>을 여세요. 종료는 터미널에서 `Ctrl+C`입니다.
Markdown 수정 후 저장하고 브라우저를 새로고침하면 반영됩니다.
`_config.yml`을 바꿨다면 서버를 종료한 뒤 다시 실행하세요.
`index.html`을 직접 열어 보는 방식은 더 이상 사용하지 않습니다.

다른 Mac의 최초 설정:

```bash
brew install ruby@3.3
export PATH="$(brew --prefix ruby@3.3)/bin:$PATH"
bundle config set --local path vendor/bundle
bundle install
bash scripts/preview.sh
```

Docker를 쓰고 싶다면 Docker Desktop을 실행한 뒤 프로젝트 폴더에서 `docker compose up --build`를 실행하세요.
Docker 미리보기 설정도 포함했지만 이번 로컬 검증은 Ruby 실행 방식으로 진행했습니다.

## 무엇을 어디서 수정하나요?

| 내용 | 파일 |
| --- | --- |
| 이름, 소속, 이메일, 소셜 링크 | `_config.yml` |
| 메인 소개글과 연구 관심사 | `_pages/about.md` |
| 웹 이력서 | `_pages/cv.md` |
| PDF 이력서 | `utils/Choi_CV.pdf` |
| 상단 메뉴 | `_data/navigation.yml` |
| 논문 정보 | `_publications/*.md` |
| 논문 목록 페이지 | `_pages/publications.html` |
| 프로필 사진 | `images/profile.png` |
| 추가 스타일 | `_sass/_custom.scss` |

웹 이력서와 PDF 이력서는 별개이므로 각각 업데이트하세요.
기존 PDF와 `img/` 주소는 계속 사용할 수 있습니다.
연구·학력·경력·프로젝트 내용은 기존 홈페이지 및 CV PDF를 바탕으로 옮겼습니다.
프로젝트 날짜와 심사 상태는 원본 자료에 기재된 내용을 기준으로 합니다.
기존 홈페이지에서 CSTR로 소개한 논문의 웹 제목은 연결된 논문 PDF의 정식 제목으로 맞췄습니다. 원본 CV PDF는 그대로 보존했습니다.

## GitHub에 반영하기

현재 작업 브랜치는 `academic-pages-migration`입니다. 로컬 미리보기를 확인한 뒤 변경 내용을 커밋하고 이 브랜치를 push하여 `main`으로 Pull Request를 만드세요.

```bash
git add .
git commit -m "Migrate personal website to Academic Pages"
git push -u origin academic-pages-migration
```

저장소 Settings → Pages에서 **Deploy from a branch**, **main**, **/(root)**로 설정된 경우,
PR을 main으로 병합하면 Jekyll 사이트가 배포됩니다. 실제 Pages 설정은 GitHub에서 확인하세요.
`.github/workflows/build.yml`은 빌드 검증용이며 배포 설정을 변경하지 않습니다.

로컬 빌드 검증:

```bash
export PATH="$(brew --prefix ruby@3.3)/bin:$PATH"
bundle exec jekyll build --safe --strict_front_matter
```

전환 전 홈페이지는 Git 기록과 로컬 `local/index-before-academic-pages.html`에 보관했습니다.
`local/`, `_site/`, `vendor/`는 Git 및 사이트 배포에서 제외됩니다.

## License

기존 사이트 라이선스는 `LICENSE`, Academic Pages / Minimal Mistakes 템플릿 라이선스는 `LICENSE-academicpages`에 있습니다.
