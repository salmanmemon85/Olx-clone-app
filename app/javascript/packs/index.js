const carss = document.querySelectorAll('.carss')
const selectCar = document.querySelector('.selected-car')

carss.forEach(car => {
  car.addEventListener("click" , (e) => {
    e.preventDefault()
    selectCar.src = car.src
  })
})

const blockArea = document.querySelector('.list-of-categories-blocks')
const menuIcon = document.querySelector('.menu-icon')
const closeIcon = document.querySelector('.close-icon')

menuIcon.addEventListener('click', ()=>{
  blockArea.classList.toggle('active')
})
closeIcon.addEventListener('click', ()=>{
  blockArea.classList.remove('active')
})

$('.responsive').slick({
    dots: true,
    infinite: true,
    speed: 1000,
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    prevArrow : ".pre-cat",
    nextArrow : ".next-cat",
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          infinite: true,
          dots: false
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
  });
  $('.center').slick({
    centerMode: false,
    centerPadding: '0',
    slidesToShow: 4,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 3
        }
      },
      {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
        }
      }
    ]
  });
  
  AOS.init();
const addBtn = document.querySelector('#add-btn')
const minusBtn = document.querySelector('#minus-btn')
const input = document.querySelector('#input')


addBtn.addEventListener("click" , ()=>{
  input.value = parseInt(input.value) + 1;
})

minusBtn.addEventListener("click" , ()=>{
  input.value = parseInt(input.value) - 1;
})