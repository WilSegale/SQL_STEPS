const dropdown = document.getElementById('dropdown');
const content = document.getElementById('content');

dropdown.addEventListener('change', function() {
     if (dropdown.value === 'option1') {
          content.style.display = 'block';
     } else {
          content.style.display = 'none';
     }
});
