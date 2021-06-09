const changeNextBtnHref = (event) => {
//   console.log(event.currentTarget);
  const nextBtn = document.getElementById('nextBtn');
  nextBtn.href = event.target.dataset.href
};

const bindButtonToClick = () => {
  const items = document.querySelectorAll(".item-card");
  items.forEach(item => {
      item.addEventListener("click", changeNextBtnHref);
  });
};

export { bindButtonToClick };
