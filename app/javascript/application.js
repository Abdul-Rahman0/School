// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "portal"




import Rails from "@rails/ujs";
Rails.start();

$('form').on('click', '.add_subjects', function(event){
    console.log('clicked');     
    var regexp, time;
     time = new Date().getTime();
     regexp= new RegExp($(this).data('id'), 'g');
     $(this).before($(this).data('subjects').replace(regexp, time));
     return event.preventDefault();
 });