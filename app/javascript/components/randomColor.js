
const randomiseBorderColor = (element) => {
  const colors = ["#DE8FAD", "#D1733E", "#E3A61B", "#7EB77F", "#9BBEC7"];
  const randomColor = colors[Math.floor(Math.random() * colors.length)];
  if (element) {
      element.style.borderColor = randomColor;
  }
};

export { randomiseBorderColor };
