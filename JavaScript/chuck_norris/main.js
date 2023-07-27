const showChuckNorrisJoke = (joke) => {
	const img = document.querySelector('.img-thumbnail');
	img.src = joke.icon_url;

	const cardText = document.querySelector('.card-text');
	cardText.innerText = joke.value;
};

fetch('https://api.chucknorris.io/jokes/random')
	.then(res => res.json())
	.then(showChuckNorrisJoke)
	.catch(e => console.log(e));