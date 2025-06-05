/////////메뉴 토글 스크립트///////

$(function () {
  $('.menu').on('click', function (e) {
    e.preventDefault(); // 링크 이동 방지
    e.stopPropagation(); // 문서 클릭 이벤트 차단

    const $clickedLi = $(this).closest('li');
    const $targetMenu = $clickedLi.find('.main_sub_menu');

    // 1. 다른 메뉴 접기
    $('.main_sub_menu').not($targetMenu).stop().slideUp();

    // 2. 현재 메뉴 토글
    $targetMenu.stop().slideToggle();

    // 3. active 클래스 갱신
    $('.main_menu > ul > li').not($clickedLi).removeClass('active');
    $clickedLi.addClass('active');
  });

  // 메뉴 클릭 시 문서 클릭 이벤트 차단
  $('.main_menu').on('click', function (e) {
    e.stopPropagation();
  });

  // 문서 클릭 시: 닫힌 메뉴라면 active 제거
  $(document).on('click', function () {
    $('.main_menu > ul > li').each(function () {
      const $submenu = $(this).find('.main_sub_menu');

      // 서브메뉴가 닫혀 있으면 active 클래스 제거
      if (!$submenu.is(':visible')) {
        $(this).removeClass('active');
      }
    });
  });
});
