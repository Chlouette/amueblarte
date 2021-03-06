// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")

$(".home-card-link").hover(function() {
  $(this).addClass("expand")
}, function() {
  $(this).removeClass("expand");
});

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initFlatpickr } from "../plugins/flatpickr";
import { initSweetalert } from '../plugins/init_sweetalert';
import { initConfetti } from '../plugins/confetti';

initSweetalert('#sweet-alert-demo', {
  title: "Item added to Basket",
  text: "Your item will stay in the basket for 1 hour",
  icon: "success"
});


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { selectItem } from "../components/selectItem";
import { randomiseBorderColor } from "../components/randomColor";


document.addEventListener('turbolinks:load', () => {

  if (document.getElementsByClassName("item-card") !== null) {
    selectItem()
  }
  if (document.getElementsByClassName("selected")) {
    randomiseBorderColor()
  }

  if (document.querySelector("#tsparticles")) {
    initConfetti();
  }
  
  initFlatpickr();
});
