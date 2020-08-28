import flatpickr from "flatpickr";



flatpickr(".datepicker", {
	enableTime: true,
  minDate: "today",
  // dateFormat: "d-m-Y H:i",
});

const startDate = document.querySelector(".start");
const endDate = document.querySelector(".end");
const pricePerHour = document.querySelector(".price");
const totalPriceElement = document.getElementById("total-price");

// let startCalandar = flatpickr(startDate);
// let endCalandar = flatpickr(endDate);

// changeCalandar()

const dynamicPriceCalculator = () => {
	const bookingForm = document.querySelector('.booking-form');
	if (bookingForm) {
		let nbrOfHours = 0;
		if(startDate && endDate) {
			[startDate, endDate].forEach(date => {
				date.addEventListener("change", (event) => {
		       if (isNaN(dynamicPrice()) === true) {
		 				 totalPriceElement.innerText = 0;
		 				} else {
  						totalPriceElement.innerText = dynamicPrice() * pricePerHour.innerText;
		 				}
				});
			});
		}
  }
};
  		
const dynamicPrice = () => {
    const hourDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
    const nbrOfHours = Math.round(hourDiffInMilliseconds/3660000)
		return nbrOfHours;
};

// const fp = flatpicker(document.querySelector(.datepicker))
// const changeCalandar = () => {
//   startDate.addEventListener("change", (event) => {
//     startCalandar.close()
//     });
// };





export {dynamicPriceCalculator}











