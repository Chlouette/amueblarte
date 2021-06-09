const items = document.querySelectorAll(".item-card");

const changeNextBtnHref = (event) => {
//   console.log(event.currentTarget);
  const nextBtn = document.getElementById('nextBtn');
  nextBtn.href = event.target.dataset.href
  items.forEach(item => {
    item.classList.remove('selected')
  })
  event.target.classList.add('selected')
};

const bindButtonToClick = () => {
  items.forEach(item => {
      item.addEventListener("click", changeNextBtnHref);
  });
};

export { bindButtonToClick };
