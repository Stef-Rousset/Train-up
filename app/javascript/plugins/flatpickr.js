import flatpickr from "flatpickr";

flatpickr(".datepicker", {
  minDate: Date.now(),
  minDate: "today",
  dateFormat: "d-m-Y",
  inline: true,

});

flatpickr(".startpicker", {
	enableTime: true,
	noCalendar: true,
	time_24hr: true,
  	defaultHour: 18,
  	defaultMinute: 0,
  	dateFormat: "H:i",
});

flatpickr(".endpicker", {
	enableTime: true,
	noCalendar: true,
	time_24hr: true,
  	defaultHour: 19,
  	defaultMinute: 0,
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
	// console.log(startHour.value);

	document.querySelectorAll('.flatpickr-hour').forEach((input) => {
		input.addEventListener('blur', e => {
			if (startHour.value != '' && endHour.value != '') {
				totalPriceElement.innerText = Math.floor(dynamicPrice() * (Number(pricePerHour.innerText)/60));
			}
		})
	})

	// endHour.addEventListener('blur', e => {
		// if (startHour.value != '' && endHour.value != '') {
		// 	dynamicPrice();
		// }
	// })

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
	// if (startHour.value === "") {
	// 	startHour.value = "18:00";
	// } else if (endHour.value === "") {
	// 	endHour.value = "19:00";
	// };
    const dateReverse = date.value.split("-").reverse().join("-");
    const startDate = new Date(dateReverse + "T" + startHour.value + ":00.000Z");
    const endDate = new Date(dateReverse + "T" + endHour.value + ":00.000Z");
    const nbrOfMn = (endDate - startDate) / 1000 / 60;
	return nbrOfMn;
};

const dynamicModal = () => {
	document.querySelector('#modal-trig').addEventListener('click', e => {
		console.log(startHour.innerText)
		console.log(endHour.innerText)
		modalStartHour.innerText = startHour.value
		modalEndHour.innerText = endHour.value
	}) 

	const bookingForm = document.querySelector('.booking-form');
	if (bookingForm) {
		date.addEventListener('change', (event) => {
			console.log(modalDate)	
			modalDate.innerText = event.target.value;
		});

		startHour.addEventListener('change', (event) => {
			console.log(modalStartHour);
			if (startHour.value == '') {
				modalStartHour.innerText = "18:00";
				console.log(modalStartHour.value);	
			}
			else {
				modalStartHour.innerText = event.target.value;
			}
		});

		endHour.addEventListener('change', (event) => {
			console.log(modalStartHour);
			if (endHour.value == '') {
				modalEndHour.innerText = "19:00";
				console.log(modalStartHour.value);
			}
			else {
				modalEndHour.innerText = event.target.value;
			}
		});	
	}
};

const dynamicBooking = () => {
	const bookingForm = document.getElementById("new_booking");
	const btnConfirm = document.querySelector('#btn-confirm');
	if (bookingForm) {
		btnConfirm.addEventListener('click', (event) => {
			// console.log(event);
			bookingForm.submit();
		})
	}
};

export {dynamicPriceCalculator};
export {dynamicModal};
export {dynamicBooking}










