//faviorate
function toggleHeart(icon) {
    icon.classList.toggle('clicked');
    if (icon.classList.contains('clicked')) {
      icon.textContent = 'favorite'; // Change the icon to filled heart
    } else {
      icon.textContent = 'favorite_border'; // Change the icon back to outline heart
    }
  }
  