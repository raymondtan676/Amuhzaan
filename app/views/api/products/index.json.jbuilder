@products.each do |product|
    json.set! product.id do
        json.extract! product, :id, :category, :name, :feature, :description, :price
        json.photoUrl product.photo.attached? ? product.photo.url : nil

        reviews = product.reviews.includes(:product)

        sum = 0
        reviews.each do |review|
            sum += review.rating
        end

        avg = product.reviews.length == 0 ? 0 : (sum / product.reviews.length) 
        json.rating avg
    end
end
