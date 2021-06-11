import { randomiseBorderColor } from "./randomColor";
const selectItem = () => {
  
  const items = document.querySelectorAll(".item-card");
  
  const changeNextBtnHref = (event) => {
    //   console.log(event.currentTarget);
    const nextBtn = document.getElementById('nextBtn');
    nextBtn.href = event.target.dataset.href
    items.forEach(item => {
      item.classList.remove('selected')
      item.style.borderColor = 'black'
    })
    event.target.classList.add('selected')
    randomiseBorderColor(event.target)
  };
  
  const bindButtonToClick = () => {
    console.log('hello' )
    items.forEach(item => {
      item.addEventListener("click", changeNextBtnHref);
    });
  };
  bindButtonToClick()
}

export { selectItem };
