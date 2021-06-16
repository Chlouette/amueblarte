import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal(options);
      const realButton = document.getElementById("real-button")
      console.log(realButton)
      setTimeout(function(){
        realButton.click()
      }, 2000)
    });
  }
};

export { initSweetalert };