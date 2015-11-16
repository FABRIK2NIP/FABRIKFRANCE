document.addEventListener('page:change', function() {
        document.getElementById('content').className += 'animatefadein';
});
document.addEventListener('page:fetch', function() {
        document.getElementById('content').className += 'animatefadeout';
});