

const fadeText = () => {
	// Récupérer le span
	let category = document.querySelector("#banner-typed-text")
	const terms = ["techniques", "mentales", "physiques"];
	setInterval(() => {
		
		// Lui attribuer une classe fade-out (le faire disparaître)
		category.classList.remove("fade-in");
		category.classList.add("fade-out");

		setTimeout(() => {
			// Changer son texte
			const currentTerm = category.innerText;
			const currentIndex = terms.indexOf(currentTerm);
			let nextIndex;

			if (currentIndex === terms.length - 1) {
				nextIndex = 0
			} else {
				nextIndex = currentIndex + 1
			}
			category.innerText = terms[nextIndex]
		
			category.classList.remove("fade-out");
			category.classList.add("fade-in");
		}, 1000)
		
		
		// // Lui attribuer une classe fade-in (le faire réapparaître)
		// category.classList.add("fade-in");

		// category.classList.remove("fade-in")
		// setTimeout(function(){
		//     //do what you need here
		// setTimeout(function(){
		// 	category.classList.add("fade-out");
		// }, 200);

		// category.innerHTML = terms[2]

		// category.classList.remove("fade-out");

		// category.classList.add("fade-in");
		// 	category.classList.remove("fade-in")
		// setTimeout(function(){
		//     //do what you need here
		// 	category.classList.add("fade-out");
		// }, 2000);

		// category.innerHTML = terms[2]
		// // // Lui attribuer une classe fade-in (le faire réapparaître)
		// category.classList.add("fade-in");
		// category.classList.remove("fade-oin")


	}, 2000)
}


export {fadeText}