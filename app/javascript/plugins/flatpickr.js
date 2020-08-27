import flatpickr from "flatpickr";

flatpickr(".datepicker", {
	enableTime: true
});

const startDate = document.querySelector(".start");
const endDate = document.querySelector(".end");
const pricePerHour = document.querySelector(".price");
const totalPriceElement = document.getElementById("total-price");

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

  // const display = document.querySelector(".display")

      // if(startDate && endDate) {
      //   [startDate, endDate].forEach(date => {
      //     date.addEventListener("change", (event) => {
      // //     display.classList.remove("d-none");
      //      if (isNaN(dynamicPrice()) === true) {
      //       totalPriceElement.innerText = 0;
      //      } else {
      //       totalPriceElement.innerText = dynamicPrice() * pricePerHour;
      //      }
      //     });
      //   })
      // };
  }
};
  		
const dynamicPrice = () => {
    const hourDiffInMilliseconds = new Date(endDate.value) - new Date(startDate.value);
    const nbrOfHours = hourDiffInMilliseconds / 86400000;	
		return nbrOfHours;
};



  // dynamicPriceCalculator();


export {dynamicPriceCalculator}
