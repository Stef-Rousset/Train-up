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
const pricePerHour = document.querySelector(".price-show");
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
	// const modal = document.getElementById()
    const dateReverse = date.value.split("-").reverse().join("-");
    const startDate = new Date(dateReverse + "T" + startHour.value + ":00.000Z");
    const endDate = new Date(dateReverse + "T" + endHour.value + ":00.000Z");
    const nbrOfMn = (endDate - startDate) / 1000 / 60;
	return nbrOfMn;
};

const dynamicModal = () => {
	const bookingForm = document.querySelector('.booking-form');
	if (bookingForm) {
		date.addEventListener('change', (event) => {
			console.log(modalDate)	
			modalDate.innerText = event.target.value;
		});

		startHour.addEventListener('change', (event) => {
			console.log(modalStartHour)
			modalStartHour.innerText = event.target.value;
		});

		endHour.addEventListener('change', (event) => {
			console.log(modalEndHour)
			modalEndHour.innerText = event.target.value;
		})	
	}
};

const dynamicBooking = () => {
	const bookingForm = document.getElementById("new_booking");
	const btnConfirm = document.querySelector('#btn-confirm');
	if (bookingForm) {
		btnConfirm.addEventListener('click', (event) => {
			console.log(event);
			bookingForm.submit();
		})
	}
};

export {dynamicPriceCalculator};
export {dynamicModal};
export {dynamicBooking}










