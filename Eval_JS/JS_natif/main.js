
const incQtyElem = document.querySelector('#quantity_inc_button');
const decQtyElem = document.querySelector('#quantity_dec_button');
const inputQtyElem = document.querySelector('#quantity_input');
const addToCartBtn = document.querySelector('#add_to_card');
const cartTBodyContent = document.querySelector('.modal-body Tbody')
const totalCartShow = document.querySelector(".total-cart")
// console.log(totalCartShow)


let finalQtyProduct = 0
let product_name = document.querySelectorAll('.product_name')[0].innerText
let product_price = document.querySelectorAll('.product_price')[0].innerText.slice(0, -1)
let totalPrice =0
// console.log(cartTBodyContent.innerText.length)
totalCartShow.innerText = totalPrice

function refreshCart() {
	totalPrice = (finalQtyProduct * parseFloat(product_price.replace(",", "."))).toFixed(2)
	const newRow = document.createElement('tr')
	const tCellQty = document.createElement("td")
		tCellQty.innerText = finalQtyProduct
	const tCellName = document.createElement("td")
		tCellName.innerText = product_name
	const tCellPrice = document.createElement("td")
		tCellPrice.innerText = product_price + " ="
	const tCellTotal = document.createElement("td")
		tCellTotal.innerText = totalPrice + "€"
	
	// console.log(tCellQty, tCellName, tCellPrice, tCellTotal)
	newRow.appendChild(tCellQty)
	newRow.appendChild(tCellName)
	newRow.appendChild(tCellPrice)
	newRow.appendChild(tCellTotal)
	
	if (cartTBodyContent.hasChildNodes) {
		cartTBodyContent.replaceChild(newRow, cartTBodyContent.firstChild)
	} else {
		cartTBodyContent.appendChild(newRow)
	}
	totalCartShow.innerText = totalPrice

}

incQtyElem.addEventListener('click', () => {
	inputQtyElem.value = (parseInt(inputQtyElem.value) ? parseInt(inputQtyElem.value) : 0) + 1;
});

decQtyElem.addEventListener('click', () => {
	inputQtyElem.value = (parseInt(inputQtyElem.value) ? parseInt(inputQtyElem.value) : 0) - 1;
	if(inputQtyElem.value < 0) {
		inputQtyElem.value = 0;
	}
});

addToCartBtn.addEventListener('click', () => {
	finalQtyProduct += parseInt(inputQtyElem.value);
	refreshCart();
});



