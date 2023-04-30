const checkbox = document.querySelectorAll('input[type=checkbox]')
const radio = document.querySelectorAll('input[type=radio]')
const divsDay = document.getElementsByClassName("day")


function checkDay(day) {
    console.log(checkbox)
    for (let c=0;c<checkbox.length;c++) {
        if (checkbox[c].id == day) {
            checkbox[c].disabled = false
            checkbox[c].click()
            checkbox[c].disabled = true
        }
    }  
} 

for (let c=0;c<radio.length;c++) {
    radio[c].addEventListener("click", e => {
        let day = radio[c].parentNode.parentNode.id
        day = String(day).replace("d_", "")
        if (radio[c].className == "r_feito" || document.getElementById(day).checked == true) {
            checkDay(day)
        }
    })
}