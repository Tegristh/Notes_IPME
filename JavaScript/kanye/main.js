const showKanyeJoke = (joke) => {
	// const img = document.querySelector('.img-thumbnail');
	// img.src = joke.icon_url;

	const quote = document.querySelector("#quote");
	quote.innerText = joke.quote;
};

fetch('https://api.kanye.rest')
	.then(res => res.json())
	.then(showKanyeJoke)
	.catch(e => console.log(e));