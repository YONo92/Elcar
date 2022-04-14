<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCAR | Hello :)</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Merriweather&display=swap');
body {
  margin: 0;
  padding: 0;
}
:root {
  --sizeCreaBlock: 470px;
  --bgCreaBlock: #f5bfba;
  --blockTranslateX: 410px;
  --blockRotateY: 40deg;
  --marginSize: 32px;
  --shadowColor: 15px 5px 20px -7px rgb(0 0 0 / 30%);
  --blocImgSize: 400px;

  --arc-blue: rgba(53, 113, 158, 1);
  --arc-vert: #4caf50;
  --arc-jaune: #ffeb3b;
  --arc-rose: #E91E63;
  --arc-orange: #f76334;
}

.blocImg {
  width: 100%;
  height: var(--blocImgSize);
  position: relative;
  z-index: 9999;
  padding: 10px;
}

.blocImg > img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  object-fit: cover;
}

.blocImg > img::after {
  content: '';
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;

}

.creaBlock {
  width: var(--sizeCreaBlock);
  background-color: var(--bgCreaBlock);
  padding: 50px 20px 20px 20px;
  border-radius: 7px;
  position: relative;
  overflow: hidden;
  display: inline-block;
  white-space: normal;
  vertical-align: top;
  transition: all .3s;
  -webkit-box-shadow: var(--shadowColor);
  -moz-box-shadow: var(--shadowColor);
  box-shadow: var(--shadowColor);
  cursor: pointer;
}

.creaBlock:not(.creaBlockPrez):hover {
  transform: scale(1);
}

.creaBlock::after {
  content: "";
  position: absolute;
  top: 50%;
  left: 10%;
  width: calc(var(--sizeCreaBlock) * 2);
  height: calc(var(--sizeCreaBlock) * 2);
  background-color: #89c8ef;
  transform: rotateZ(70deg);
  z-index: -1;
}

.creaBlock > figcaption {
  position: absolute;
  left: 0;
  top: 0;
  right: 20%;
  font-weight: bold;
  color: white;
  padding: 25px;
  font-size: 16px;
  opacity: .8;
  text-align: left;
}

.creaBlock h2 {
  font-size: 20px;
  width: 70%;
  color: white;
  font-weight: bold;
  height: 54px;
  display: block;
  text-align: left;
  overflow: hidden;
  background-color: transparent;
  transition: var(--background-color) .6s;
}

.creaBlock img {
  width: 100%;
  height: 100%;
  border-radius: 10px;
}

/* FIN CREA BLOCK */

.creaBlock {
  transform: scale(.9);
}

.creaBlock .lineSeparator {
  background-color: #00bcd4;
}


/* BOX 1 */

.creaBlockPrez:nth-child(1) {
  z-index: 1;
  transform: scale(.9);
}

.creaBlockPrez:nth-child(1):hover {
  transform: scale(1.1);
}

.creaBlockPrez:nth-child(1):hover ~ .creaBlockPrez:nth-child(2) {
  transform: scale(.83) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

.creaBlockPrez:nth-child(1):hover ~ .creaBlockPrez:nth-child(3) {
  transform: scale(.88) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

.creaBlockPrez:nth-child(1):hover ~ .creaBlockPrez:nth-child(4) {
  transform: scale(.93) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

.creaBlockPrez:nth-child(1):hover ~ .creaBlockPrez:nth-child(5) {
  transform: scale(.98) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

/* BOX 2 */

.creaBlockPrez:nth-child(2) {
  z-index: 2;
  margin-left: calc(-6 * var(--marginSize));
  transform: scale(.94);
  animation: displayCreations .5s linear .4s forwards;
}

.creaBlockPrez:nth-child(2):hover {
  transform: scale(1.1);
}

.creaBlockPrez:nth-child(2):hover ~ .creaBlockPrez:nth-child(3) {
  transform: scale(.88) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

.creaBlockPrez:nth-child(2):hover ~ .creaBlockPrez:nth-child(4) {
  transform: scale(.93) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

.creaBlockPrez:nth-child(2):hover ~ .creaBlockPrez:nth-child(5) {
  transform: scale(.98) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

/* BOX 3 */

.creaBlockPrez:nth-child(3) {
  z-index: 3;
  margin-left: calc(-6 * var(--marginSize));
  transform: scale(.98);
}

.creaBlockPrez:nth-child(3):hover {
  transform: scale(1.1);
}

.creaBlockPrez:nth-child(3):hover ~ .creaBlockPrez:nth-child(4) {
  transform: scale(.93) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

.creaBlockPrez:nth-child(3):hover ~ .creaBlockPrez:nth-child(5) {
  transform: scale(.98) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

/* BOX 4 */

.creaBlockPrez:nth-child(4) {
  z-index: 4;
  margin-left: calc(-6 * var(--marginSize));
  transform: scale(1.02);
}

.creaBlockPrez:nth-child(4):hover {
  transform: scale(1.1);
}

.creaBlockPrez:nth-child(4):hover ~ .creaBlockPrez:nth-child(5) {
  transform: scale(.98) translateX(var(--blockTranslateX)) rotateY(var(--blockRotateY));
}

/* BOX 5 */

.creaBlockPrez:nth-child(5) {
  z-index: 5;
  margin-left: calc(-6 * var(--marginSize));
  transform: scale(1.06);
}

.creaBlockPrez:nth-child(5):hover {
  transform: scale(1.1);
}

/* SEPARATORS */

.lineSeparator {
  width: 100%;
  background-color: var(--main-box-border-color);
  height: 4px;
  border-radius: 5px;
  margin: 40px 0 25px 0;
  opacity: .4;
}

.creaBlockPrez:nth-child(1) .lineSeparator {
  background-color: var(--arc-orange);
}

.creaBlockPrez:nth-child(2) .lineSeparator {
  background-color: var(--arc-rose);
}

.creaBlockPrez:nth-child(3) .lineSeparator {
  background-color: var(--arc-jaune);
}

.creaBlockPrez:nth-child(4) .lineSeparator {
  background-color: var(--arc-vert);
}

.creaBlockPrez:nth-child(5) .lineSeparator {
  background-color: var(--arc-blue);
}

/* –––––––––––––––––––– */



.creationsBlocUl {
  white-space: nowrap;
  text-align: center;
  min-height: 450px;
  overflow: hidden;
  padding: 50px 0;
}

@media only screen and (max-width: 600px) {
  .creaBlock {
    margin-left: 0 !important;
    margin: 60px 20px; 
    z-index: -1 !important;
  }

  li.creaBlockPrez {
    transform: scale(.9) !important;
  }

  .creationsBlocUl {
    white-space: nowrap;
    overflow-x: auto;
    padding: 0;
    min-height: 420px;
    -ms-overflow-style: none;  /* IE and Edge */
    scrollbar-width: none;  /* Firefox */
  }

  .creationsBlocUl::-webkit-scrollbar {
    display: none;
  }
}

main {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100vh;
}

main > div { width: 100%; }

#toggleFullScreen {
   position: absolute;
   bottom: 0;
   right: 0;
   margin: 20px;
   background-color: white;
   border: none;
   padding: 10px;
   cursor: pointer;
   transition: transform 0.3s;
}

#toggleFullScreen:hover {
   transform: scale(0.9);
}
   
</style>
</head>
<body>
   <!-- Service End -->
   <div class="breadcrumb-option set-bg"
      data-setbg="resources/img/breadcrumb-bg.jpg">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <div class="breadcrumb__text">
                  <h2>Elcar Service</h2>
                  <div class="breadcrumb__links">
                     <a href="./"><i class="fa fa-home"></i> Home</a> <span>서비스
                        안내</span>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Service Begin -->

   <!-- Service Section Begin -->
   <section class="about spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="section-title about-title">
                  <h2>
                     Wellcome To ELCAR 
                  </h2>
                  <p>
                     엘카는 전기차 충전소 찾기 서비스와 전기차카쉐어링을 제공하는 서비스입니다.<br /> 
                  </p>
               </div>
            </div>
         </div>
         <div class="about__feature">
            <div class="row">
               <div class="col-lg-4 col-md-6 col-sm-6">
                  <div class="about__feature__item">
                     <img src="resources/img/about/af-1.png" alt="">
                     <h5>검증된 드라이버</h5>
                     <p>엘카는 면허취득후 1년이 지난 분들만 드라이버로 등록되며 실제 자차소유자만 드라이버로 등록될수 있어 신원이 확인된 사람들의 차를 이용하수 있습니다.</p>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6">
                  <div class="about__feature__item">
                     <img src="resources/img/about/af-2.png" alt="">
                     <h5>신고게시판</h5>
                     <p>카쉐어링을 이용하다 불편한점 이나 탑승자분 운전자분의 불쾌한 언행을 신고 할수 있습니다.</p>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6">
                  <div class="about__feature__item">
                     <img src="resources/img/about/af-3.png" alt="">
                     <h5>전기차 충전소</h5>
                     <p>위치를 기반으로 한 전기차 충전소를 조회 할 수 있으며 길찾기 또한 가능합니다. </p>
                  </div>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-lg-12">
               <div class="about__pic">
                  <img src="/resources/img/about/Ecar.jpg" alt="">
               </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
               <div class="about__item">
                  <h5>내연기관 자동차에서 전기동력 자율주행차시대로 전환</h5>
                  <p>자동차 산업에서의 파괴적인 혁신이 가속화되고 있다. 자동차산업의 기술패러다임이 내연기관에서 전기동력으로 바뀌고 있는 가운다
                  자동차의 스마트화가 더 빠른 속도로 진행되고 있다. </p>
               </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
               <div class="about__item">
                  <h5>엘카 서비스 개요</h5>
                  <p>매연을 뿜어내지 않는 전기차는 대기오염에 시달리는 현대인들에게는 큰 매력으로 다가온다. 건강에 좋다는 점과 더불어 전기차를 
                  운전하는 또 하나의 매력은 심리적인 것이다. 인간에게 오염되어 병들어 가는 지구를 위해서 친환경적인 전기차를 운전함으로써 인류와 자연에 공헌한다는 
                  믿음이 전기차를 운전하는 사람들에게 일종의 자부심과 심리적 평안을 가져다 주기도 한다. </p>
               </div>
            </div>
         </div>
      </div>
    <main></main>
  </section>

  
   
   <script>
      const $ = (s) => document.querySelector(s);

  const GALLERY = [
  {
    title: "엘카 이용시 유의사항",
    img: {
      src: "resources/img/about/warning.png",
      alt: "엘카 이용시 유의사항",
      title: "엘카이용 유의사항"
    }
  },

  {
    title: "엘카 회원 등급제도",
    img: {
      src: "resources/img/about/grade2.png",
      alt: "엘카 회원 등급제도",
      title: "엘카 회원 등급제도."
    }
  }

];

const initGallery = (
  function() {
  const createContent = function(content) {
    const $creaBlock = document.createElement('figure')
    $creaBlock.classList.add('creaBlock')
    $creaBlock.classList.add('creaBlockPrez')
    const $lineSeparator = document.createElement('div')
    $lineSeparator.classList.add('lineSeparator')
    $creaBlock.appendChild($lineSeparator)
    const $blocImg = document.createElement('div')
    $blocImg.classList.add('blocImg')
    const $img = document.createElement('img')
    $img.setAttribute('src', content.img.src)
    $img.setAttribute('alt', content.img.alt)
    $img.setAttribute('title', content.img.title)
    $blocImg.appendChild($img)
    $creaBlock.appendChild($blocImg)
    const $title = document.createElement('figcaption')
    $title.innerText = content.title;
    $creaBlock.appendChild($title)
    return $creaBlock
  }
  const $galleryBloc = document.createElement('div')
  const $galleryContent = document.createElement('div')
  $galleryContent.classList.add('creationsBlocUl')
  GALLERY.forEach((e, index) => $galleryContent.appendChild(createContent(e)))
  $galleryBloc.appendChild($galleryContent)
  $('main').appendChild($galleryBloc)
})()


   </script>

   <!-- About Us Section End -->
  </body>
  </html>