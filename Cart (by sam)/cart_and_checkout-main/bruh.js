document.getElementById('country').addEventListener('change', function() {
    const country = this.value;
    const cities = document.querySelectorAll('#city option');
    
    // Show only cities that match the selected country
    cities.forEach(function(city) {
      if (country === '' || city.classList.contains(country)) {
        city.style.display = 'block';  // Show city option
      } else {
        city.style.display = 'none';   // Hide city option
      }
    });
  });
  