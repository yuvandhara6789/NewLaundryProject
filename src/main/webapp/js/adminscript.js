// Sidebar DropDown

const allDropDown = document.querySelectorAll('#sidebar .side-dropdown');
const sidebar = document.getElementById("sidebar")


allDropDown.forEach(item => {
    const a = item.parentElement.querySelector('a:first-child');
    // console.log(a)
    a.addEventListener('click', function (e) {
        e.preventDefault()

        if (!this.classList.contains('active')) {
            allDropDown.forEach(i => {
                const aLink = i.parentElement.querySelector('a:first-child');
                aLink.classList.remove('active')
                i.classList.remove('show')
            })
        }

        this.classList.toggle('active')
        item.classList.toggle('show')
    })
})


sidebar.addEventListener('mouseleave', function(){
    if(this.classList.contains('hide')){
        allDropDown.forEach(item => {
            const a = item.parentElement.querySelector('a:first-child');
            a.classList.remove('active')
            item.classList.remove('show')
        })
    }
})


const profile = document.querySelector('.navcont .profile');
const imgProf = profile.querySelector('.profimg')
const dropdownProfile = profile.querySelector('.profile-link')

imgProf.addEventListener('click', function (e) {
    e.stopPropagation(); // Prevent the click event from propagating to the window
    dropdownProfile.classList.toggle('show');
    // Hide the message dropdown if it's open
    const message = document.querySelector('.navcont .message');
    const dropdownMsg = message.querySelector('.msg-link');
    if (dropdownMsg.classList.contains('show')) {
        dropdownMsg.classList.remove('show');
    }
});

// Message Dropdown

const message = document.querySelector('.navcont .message')
const notification = message.querySelector('.nav-link')
const dropdownMsg = message.querySelector('.msg-link')

notification.addEventListener('click', function(e){
    e.stopPropagation(); // Prevent the click event from propagating to the window
    dropdownMsg.classList.toggle('show');
    // Hide the profile dropdown if it's open
    const profile = document.querySelector('.navcont .profile');
    const dropdownProfile = profile.querySelector('.profile-link');
    if (dropdownProfile.classList.contains('show')) {
        dropdownProfile.classList.remove('show');
    }
});

window.addEventListener('click', function (){
    // Hide both dropdowns if open
    const profile = document.querySelector('.navcont .profile');
    const dropdownProfile = profile.querySelector('.profile-link');
    if (dropdownProfile.classList.contains('show')) {
        dropdownProfile.classList.remove('show');
    }

    const message = document.querySelector('.navcont .message');
    const dropdownMsg = message.querySelector('.msg-link');
    if (dropdownMsg.classList.contains('show')) {
        dropdownMsg.classList.remove('show');
    }
})


// Sidebar Collaspse
const toggleSidebar = document.querySelector('.navcont .toggle-sidebar');

toggleSidebar.addEventListener('click', function () {
    sidebar.classList.toggle('hide')
})