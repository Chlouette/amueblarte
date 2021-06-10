import flatpickr from "flatpickr";

const initFlatpickr = () => {
  const datepicker = document.querySelector(".datepicker");
  if (datepicker) {
    let options
    if (datepicker.dataset.multiple === "true") {
      options = {
        minDate: "today",
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d",
        mode: "range"
      }
    } else {
      options = {
        minDate: "today",
        altInput: true,
        altFormat: "F j, Y",
        dateFormat: "Y-m-d"
      }
    }
    flatpickr(".datepicker", options);
  }
}

export { initFlatpickr };
