console.log('Ayo Homie')
fetch('http://localhost:3000/api/v1/fighters')
.then(fighters => fighters.json())
.then(json => console.log(json))


document.addEventListener('DOMContentLoaded',function(event){
  let createFighterForm = document.getElementById('create_fighter_form')
  let welcomeContainer = document.getElementById('welcome_container')

  createFighterForm.addEventListener('click',createFighter)

})


function createFighter(event){
  event.preventDefault();
  console.log('Ok')
}
