const name=document.getElementById('name')
const pass1=document.getElementById('pass1')
const pass2=document.getElementById('pass2')
const form=document.getElementById('form')

const errorElement=document.getElementById('error')


form.addEventListener('submit',(e) =>{
	let messages=[]
	if (name.value.trim() === '') {
		messages.push('Name is required')
	}
	if (pass1.value.length<4) {
		messages.push('password must be longer than four characters')
	}
	if (pass1.value.length>=20) {
		messages.push('Password must be less than twenty characters')
	}
	if (pass1.value.trim() != pass2.value.trim()) {
		messages.push('Password does not match')
	}
	if (pass1.value === 'password') {
		messages.push('password can not be password')
	}
	if (pass1.value.search(/[0-9]/) == -1 || pass1.value.search(/[a-z]/) == -1 || pass1.value.search(/[A-Z]/) == -1){
		messages.push('Password must contain a combination of atleast one number, lowercase and uppercase')
	}
	
	if (messages.length>0) {
		e.preventDefault()
		errorElement.innerText=messages.join(',')}
	})
