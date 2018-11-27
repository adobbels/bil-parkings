module ApplicationHelper

def randomized_background_image
  images = ['assets/bmw.jpeg', 'assets/audi.jpg', 'assets/mercedes.jpg']
  images.sample
end

end
