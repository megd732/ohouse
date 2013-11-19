
// AJAX functionality for search form.
$(function() {
    $('#houses-search').submit(function() {
        $.get(this.action, $(this).serialize(), null, 'script');
        event.preventDefault();
    });
});