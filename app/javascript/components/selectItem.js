import { randomiseBorderColor } from "./randomColor";
const selectItem = () => {
  
  let lastClickedCard;
  const items = document.querySelectorAll(".item-card");
  const changeNextBtnHref = (event) => {
    //   console.log(event.currentTarget);
    let clickedCard = event.target
    const nextBtn = document.getElementById('nextBtn');
    nextBtn.href = event.target.dataset.href
    items.forEach(item => {
       item.classList.remove('selected')
       item.classList.add('greyscale')
       item.style.borderColor = 'black'
     }) 
     // if target is already selected
    if (lastClickedCard == clickedCard) {
      // remove all greyscale and all selected
      items.forEach(item => {
        item.classList.remove('selected')
        item.classList.remove('greyscale')
        item.style.borderColor = 'black'
        // remove memory of last clicked card
        lastClickedCard = ''
      })
    } else {
      event.target.classList.add('selected')
      event.target.classList.remove('greyscale')
      randomiseBorderColor(event.target)
      // set last clicked card to current card
      lastClickedCard = clickedCard
    }
  };
  
  const bindButtonToClick = () => {
    items.forEach(item => {
      item.addEventListener("click", changeNextBtnHref);
    });
  };
  bindButtonToClick()
}

export { selectItem };
