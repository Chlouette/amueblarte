import { randomiseBorderColor } from "./randomColor";
const selectItem = () => {
  
  const items = document.querySelectorAll(".item-card");
  const changeNextBtnHref = (event) => {
    //   console.log(event.currentTarget);
    const nextBtn = document.getElementById('nextBtn');
    nextBtn.href = event.target.dataset.href
    items.forEach(item => {
       item.classList.remove('selected')
       item.classList.add('greyscale')
       item.style.borderColor = 'black'
     }) 
    event.target.classList.add('selected')
    event.target.classList.remove('greyscale')
    randomiseBorderColor(event.target)
  };
  
  const bindButtonToClick = () => {
    items.forEach(item => {
      item.addEventListener("click", changeNextBtnHref);
    });
  };
  bindButtonToClick()
}

export { selectItem };
