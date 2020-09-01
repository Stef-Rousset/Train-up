import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  minDate: Date.now(),
  minDate: "today",
  dateFormat: "d-m-Y",
  inline: true,

});

flatpickr(".hourpicker", {
	enableTime: true,
	noCalendar: true,
	time_24hr: true,
  	dateFormat: "H:i",
});

const date = document.querySelector(".date");
const startHour = document.querySelector(".start");
const endHour = document.querySelector(".end");	
const pricePerHour = document.querySelector(".price");
const totalPriceElement = document.getElementById("total-price");

const modalDate = document.getElementById("modal-date")
const modalStartHour = document.getElementById("modal-start-hour")
const modalEndHour = document.getElementById("modal-end-hour")

const dynamicPriceCalculator = () => {
	const bookingForm = document.querySelector('.booking-form');
	if (bookingForm) {
		let nbrOfHours = 0;
		if(date && startHour && endHour) {
			[startHour, endHour].forEach(hour => {
				hour.addEventListener("change", (event) => {
		        if (isNaN(dynamicPrice()) === true) {
	 				 totalPriceElement.innerText = 0;
	 				} else {
						totalPriceElement.innerText = Math.floor(dynamicPrice() * (Number(pricePerHour.innerText)/60));
	 				};
				});
			});
		}	
  	}
};

  		
const dynamicPrice = () => {
    const dateReverse = date.value.split("-").reverse().join("-");
    const startDate = new Date(dateReverse + "T" + startHour.value + ":00.000Z");
    const endDate = new Date(dateReverse + "T" + endHour.value + ":00.000Z");
    const nbrOfMn = (endDate - startDate) / 1000 / 60;
	return nbrOfMn;
};

// const dynamicModal = () => {
// 	const modal = document.querySelector(".modal")
// 	if modal {
// 		const dateCreated = document.querySelector('.date').value;
// 		const startHourCreated = document.querySelector('.start').value;
// 		const endHourCreated = document.querySelector('.end').value;
// 		modalDate.innerText = dateCreated;
// 		modalStartHour.innerText = startHourCreated;
// 		modalEndHour.innerText = endHourCreated
// 	}
// };


export {dynamicPriceCalculator};
// export {dynamicModal}










