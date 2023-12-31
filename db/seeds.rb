# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Destroying tables..."
# Unnecessary if using `rails db:seed:replant`
Review.destroy_all
Product.destroy_all
User.destroy_all


puts "Resetting primary keys..."
# For easy testing, so that after seeding, the first `User` has `id` of 1
ApplicationRecord.connection.reset_pk_sequence!('reviews')
ApplicationRecord.connection.reset_pk_sequence!('products')
ApplicationRecord.connection.reset_pk_sequence!('users')


puts "Creating demo user..."
User.create!({
    name: 'demo',
    email: 'demo@user.io', 
    password: 'password'
})
puts "creating more users"
# More users
User.create!({
    name: 'demo2',
    email: 'demo2@user.io', 
    password: 'password'
})

puts "creating product"

require "open-uri"

# Electronics
electronics1 = Product.create(
    name: "FMotorola Moto G Stylus 5G | 2021 | 2-Day Battery | Unlocked | Made for US 4/128GB | 48MP Camera | Cosmic Emerald",
    feature: [
        "Carrier Compatibility: AT&T (4G, VoLTE), Verizon (5G sub6 NSA, VoLTE), T-Mobile (5G sub6 SA/NSA, VoLTE, WiFi Calling, Video Calling), Tracfone (GSM, CDMA), Spectrum (5G sub6 NSA, VoLTE, WiFi Calling). Not supported: U.S. Cellular, Republic Wireless, Xfinity Wireless.",
        "Performance: Powered by Qualcomm Snapdragon 480 5G processor for ultra-fast 5G speed, streaming, and downloads.",
        "Built-in Stylus: Perfect for navigation, highlighting, editing, and precise tasks. Use it for jotting notes, editing photos, sketching, and controlling apps and games.",
        "48MP Quad Camera: Capture sharper and brighter 12MP photos, even in low-light conditions, with the 48MP Quad Camera System.",
        "Battery Life and Storage: Up to two days of battery life with a 5000mAh battery. Enjoy 128GB of built-in storage and expand up to 1TB with a microSD card."
    ],
    description: "The Moto G Stylus 5G is a versatile smartphone that combines powerful performance and creative flexibility. With blazing-fast 5G connectivity, a built-in stylus for precise tasks, a 48MP Quad Camera for stunning photos, and extended battery life, it's your go-to device for work and play. Enjoy the expansive 6.8\" Full HD+ display, ample storage, and water-repellent design. Stay connected with carrier compatibility, and unleash your productivity and creativity with this feature-packed phone.",
    category: "electronics",
    price: 145.11,
)
electronics1.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics1.jpg"),
    filename: "electronics1.jpg"
)

electronics2 = Product.create(
    name: "Digital Camera, FHD 1080P Camera for Kids Digital Point and Shoot Camera with 16X Zoom Anti Shake, Compact Small Camera for Boys Girls Kids",
    feature: [
        "Effortless Photography: Capture high-clarity FHD 1080P videos and 44MP photos with ease, thanks to the newest CMOS metering system that automatically produces natural color images without complex manual settings.",
        "Portable and Long-Lasting: This petite and lightweight camera is perfect for travel, easily fitting in your pocket. With two large capacity batteries, it can last for up to a month on a single charge. Automatic turn-off settings help save energy during vacations and camping.",
        "User-Friendly Design: Designed with ergonomics in mind, this camera features easy-to-access buttons, a simple functions menu, LED fill light for clear low-light photos, and a large LCD display, making it suitable for kids aged 5-13 and beginners.",
        "Encourage Creativity: Beyond automatic settings, this camera allows for customization, including 16X zoom for distant objects and 20 creative filter effects for artistic photos. Features like anti-shake, webcam, face and smile detection, continuous shooting, and self-timer await exploration.",
        "Comprehensive Gift Package: The camera comes with everything you need, including an SD card, lanyard, storage bag, batteries, adapter, cable, and an exquisite box. It's an ideal gift for boys, girls, and teens on special occasions, offering them their first real camera."
    ],
    description: "The digital camera is perfect for both beginners and kids, as it effortlessly captures high-quality photos and videos with automatic settings. It's portable and offers an extended battery life, making it suitable for travel. The user-friendly design ensures that anyone can easily operate it. Additionally, it encourages creativity with customizable features and comes as a comprehensive gift package, making it an excellent choice for young photographers on birthdays, Christmas, or other important events.",
    category: "electronics",
    price: 49.99,
)
electronics2.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics2.jpg"),
    filename: "electronics2.jpg"
)

electronics3 = Product.create(
    name: "HP Newest 14\" Ultral Light Laptop for Students and Business, Intel Quad-Core N4120, 8GB RAM, 192GB Storage(64GB eMMC+128GB Micro SD), 1 Year Office 365, Webcam, HDMI, WiFi, USB-A&C, Win 11 S",
    feature: [
        "14\" HD Display: Enjoy a 14.0-inch diagonal, HD (1366 x 768) micro-edge BrightView display with virtually no bezels for an ultra-wide viewing experience.",
        "Processor & Graphics: Powered by an Intel Celeron N4120 processor with 4 cores, 4 threads, and Intel UHD Graphics 600 for reliable multitasking.",
        "RAM & Storage: Equipped with 8GB of high-bandwidth DDR4 memory for smooth multitasking and 64GB high-speed eMMC storage for your office and webinar needs.",
        "Ports: Offers a variety of ports, including USB 3.1 Type-C, USB 3.1 Type-A, HDMI, and a headphone/microphone combo jack, along with a microSD slot.",
        "Windows 11 Home in S mode: Easily switch to regular Windows 11 for a more versatile computing experience."
    ],
    description: "The 14\" HD laptop is designed to enhance your computing experience. With its expansive HD display featuring micro-edge BrightView and minimal bezels, you'll enjoy an immersive viewing experience. Powered by the Intel Celeron N4120 processor and Intel UHD Graphics 600, this laptop offers reliable performance for multitasking. It comes with 8GB of high-bandwidth DDR4 memory for smooth operation and 64GB of high-speed eMMC storage to meet your office and webinar needs. With a variety of ports and the option to switch to regular Windows 11 from Windows 11 Home in S mode, this laptop is versatile and practical for various computing tasks.",
    category: "electronics",
    price: 299.99,
)
electronics3.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics3.jpg"),
    filename: "electronics3.jpg"
)

electronics4 = Product.create(
    name: "Amazon Fire HD 10 tablet, 10.1\", 1080p Full HD, 32 GB, (2021 release), Olive",
    feature: [
        "Vivid Display: Enjoy a clear 10.1\" 1080p Full HD display with over 2 million pixels, offering a nearly 20% brighter screen compared to the Samsung Galaxy Tab A8 (2022).",
        "Long Battery Life and Storage: Benefit from a 12-hour battery and choose from 32GB or 64GB of internal storage. Expand your storage capacity by up to 1TB with a microSD card (sold separately).",
        "Responsive Performance: Equipped with a fast octa-core processor and 3GB of RAM, ensuring quick and responsive performance for your tasks and apps.",
        "Extensive App Access: Access a wide range of apps through Amazon's Appstore, including popular ones like Netflix, Facebook, Hulu, Instagram, TikTok, and more. (Please note that Google Play is not supported, and certain apps may require a subscription.)",
        "Stay Connected and Productive: Stay connected by downloading apps like Zoom and make video calls using Alexa. Increase productivity by managing emails, updating shopping lists, setting reminders, and utilizing apps such as Microsoft Office, OneNote, and Dropbox."
    ],
    description: "Experience vivid visuals on the 10.1\" 1080p Full HD display with 20% more brightness than the Samsung Galaxy Tab A8 (2022). Enjoy extended 12-hour battery life and choose from 32GB or 64GB storage, expandable up to 1TB via a microSD card (sold separately). With a fast octa-core processor and 3GB of RAM, enjoy responsive performance. Access a wide range of apps through Amazon's Appstore, stay connected with Alexa for video calls, and boost productivity with Microsoft Office and more. Note: Google Play is not supported, and some apps may require a subscription.",
    category: "electronics",
    price: 119.99,
)
electronics4.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics4.jpg"),
    filename: "electronics4.jpg"
)

electronics5 = Product.create(
    name: "Amazon Echo Dot (5th Gen) with clock | Compact smart speaker with Alexa and enhanced LED display for at-a-glance clock, timers, weather, and more | Cloud Blue",
    feature: [
        "Improved audio for clearer vocals, deeper bass, and vibrant sound",
        "LED display for time, alarms, weather, and song titles",
        "Play music, audiobooks, and podcasts from various services or via Bluetooth",
        "Alexa for hands-free timers, answers to questions, and smart home control",
        "Designed with multiple privacy controls and a mic off button"
    ],
    description: "Elevate your audio experience with the improved Echo Dot, offering clearer vocals, deeper bass, and an LED display for easy time checks, weather updates, and more. Play your favorite music, audiobooks, and podcasts from popular services or connect via Bluetooth throughout your home. Alexa is at your service, providing answers, setting timers, and offering smart home control. Built with multiple privacy controls, including a microphone-off button, it's designed to protect your privacy. Plus, it's eco-friendly with 100% recyclable packaging and sustainability in mind, making it an excellent choice for enhanced sound and a smarter, more responsible home.",
    category: "electronics",
    price: 59.99,
)
electronics5.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics5.jpg"),
    filename: "electronics5.jpg"
)

electronics6 = Product.create(
    name: "JBL Tune 510BT: Wireless On-Ear Headphones with Purebass Sound - Black",
    feature: [
        "JBL Pure Bass Sound: Experience renowned JBL Pure Bass sound, known from top venues worldwide.",
        "Wireless Bluetooth 5.0 Streaming: Stream wirelessly from your device and switch between two devices to stay connected.",
        "Long-Lasting Battery: Enjoy up to 40 hours of wireless listening and recharge in just 2 hours with a Type-C USB cable. A 5-minute charge adds 2 hours of music.",
        "Convenient Controls: Manage your sound and calls easily with buttons on the ear-cup, providing a seamless listening experience.",
        "Voice Assistant Ready: Access Siri or Hey Google with the push of a button, making it simple to interact with your device's voice assistant."
    ],
    description: "The JBL Tune 510BT wireless headphones offer impressive sound quality, seamless connectivity, and a comfortable fit with an adjustable headband. Whether you're listening to music, answering calls, or interacting with your device's voice assistant, these headphones are designed for personal enjoyment.",
    category: "electronics",
    price: 24.95,
)
electronics6.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics6.jpg"),
    filename: "electronics6.jpg"
)

electronics7 = Product.create(
    name: "Apple Watch Series 8 [GPS 41mm] Smart Watch w/Midnight Aluminum Case with Midnight Sport Band - S/M. Fitness Tracker, Blood Oxygen & ECG Apps, Always-On Retina Display, Water Resistant",
    feature: [
        "Advanced Health Insights: The Apple Watch Series 8 is equipped with advanced sensors that provide valuable insights into your health, including temperature sensing for women's health and blood oxygen monitoring. It can also detect irregular rhythms and track your sleep stages.",
        "Innovative Safety Features: Stay safe with features like Crash Detection, Fall Detection, and Emergency SOS, which can automatically connect you to emergency services when needed.",
        "Customizable Design: Choose from a variety of sizes, materials, bands, and watch faces to personalize your Apple Watch to your liking.",
        "Seamless Compatibility: The Apple Watch works seamlessly with your Apple devices and services, enabling features like automatic Mac unlocking, device finding, Apple Pay, and more.",
        "Durable and Versatile: The Apple Watch Series 8 is exceptionally durable, with crack resistance, dust resistance, and water resistance. It also serves as a powerful fitness partner with advanced workout metrics and access to a wide range of apps."
    ],
    description: "The Apple Watch Series 8 is your ultimate health and safety companion, offering advanced health features, innovative safety capabilities, customizable design options, seamless Apple device integration, and impressive durability. Stay connected, informed, and motivated on the go with this powerful wearable device.",
    category: "electronics",
    price: 319.97,
)
electronics7.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics7.jpg"),
    filename: "electronics7.jpg"
)

electronics8 = Product.create(
    name: "Xbox Core Wireless Controller | Shock Blue | Xbox Series X|S, Xbox One, and Windows Devices",
    feature: [
        "Modernized Design: The controller features a modern design with sculpted surfaces and refined geometry for enhanced comfort during extended gameplay sessions, offering up to 40 hours of battery life.",
        "Precision Controls: Stay on target with the new hybrid D-pad and textured grip on the triggers, bumpers, and back-case, providing improved control and accuracy.",
        "Share Button: Seamlessly capture and share content such as screenshots and recordings with the new Share button, making it easy to showcase your gaming achievements.",
        "Multi-Device Compatibility: The controller is compatible with a range of devices, including Xbox Series X, Xbox Series S, Xbox One, Windows PC, Android, and iOS, thanks to Xbox Wireless and Bluetooth technology.",
        "Customizable Button Mapping: Personalize your gaming experience by customizing button mappings using the Xbox Accessories app, allowing you to tailor the controller to your preferences."
    ],
    description: "The Xbox Shock Blue Wireless Controller offers a modernized design for comfortable gaming, precise controls with a hybrid D-pad and textured grips, and a Share button for easy content sharing. It provides versatility by working across various devices, and you can customize button mappings to make it your own. Whether you're playing on an Xbox console, PC, or mobile device, this controller enhances your gaming experience.",
    category: "electronics",
    price: 54.99,
)
electronics8.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics8.jpg"),
    filename: "electronics8.jpg"
)

electronics9 = Product.create(
    name: "MUSICOZY Sleep Headphones Bluetooth 5.2 Headband, Sports Wireless Earphones Music Sleeping Eye Mask Earbuds with HD Stereo Speaker for Mom Women Men Teen Running Cool Gadgets Unique Gifts",
    feature: [
        "Bluetooth Sleep Headphones & Sports Headband",
        "Advanced 5.2 Version Music Headband",
        "Greater IPX6 Waterproof Workout Headphones",
        "2 Hours Quick Charge, 10 Hours Continuous Playing",
        "Great Gift Choices for Men and Women",
    ],
    description: "Introducing the MUSICOZY Bluetooth Sleep Headphones & Sports Headband, a versatile and innovative audio solution. This stylish headband with built-in headphones allows you to enjoy your favorite music without the hassle of additional headphones. It not only provides excellent sound quality with advanced 5.2 version technology but also features a waterproof design (IPX6) that's perfect for workouts and outdoor activities. With a quick 2-hour charge, you can enjoy up to 10 hours of continuous playback. This makes it an ideal companion for travel, sleep, workouts, running, yoga, and more. It's not just a functional gadget; it's also a great gift choice for both men and women, suitable for various occasions. Say goodbye to tangled wires and uncomfortable earbuds, and say hello to an immersive and convenient audio experience with the MUSICOZY headband headphones.",
    category: "electronics",
    price: 39.99,
)
electronics9.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics9.jpg"),
    filename: "electronics9.jpg"
)

electronics10 = Product.create(
    name: "Electronic Accessories Case, Universal Cable Cord Holder Organizer/Electronic Case, Waterproof Portable Cable Organizer Bag, USB Flash Drives Bag, Cable case Bag, USB Case Organizer,USB Charger Bag",
    feature: [
        "Premium material: Waterproof, Shockproof, Heavy-duty, and Durable",
        "2 Compartments Design for Gadgets and Stationeries",
        "Compact External Dimensions: 7.48'' x 4.33'' x 2.16''",
        "Easy to Carry with Portable Belt",
        "24-Hour Customer Support and Warranty",
    ],
    description: "Introducing our premium gadget and stationery carrying case, designed to keep your valuable items safe and organized. Crafted from waterproof, shockproof, and heavy-duty material, this case offers exceptional protection against scratches, dust, impacts, and accidental drops. With two compartments, it's perfect for storing electronic gadgets like power banks, external hard drives, SD memory cards, cables, earphones, and connector adapters. Additionally, it's ideal for kids' or students' stationery items like pens, pencils, highlighters, and gel pens. Its compact external dimensions make it easy to slip into your backpack or carry by hand, and the convenient portable belt ensures hassle-free transport. We take pride in offering a 24-hour customer support service and a reliable warranty. If you're not satisfied with our electric accessories bag, don't hesitate to contact us, and we'll ensure you have a seamless shopping experience, whether it's a replacement or a refund.",
    category: "electronics",
    price: 13.99,
)
electronics10.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics10.jpg"),
    filename: "electronics10.jpg"
)

electronics11 = Product.create(
    name: "JBL Go 3 Eco: Portable Speaker with Bluetooth, Built-in Battery, Waterproof and Dustproof Feature - Blue",
    feature: [
        "Innovative and Eco-Friendly Design with Up to 90% PCR Plastic",
        "Rich JBL Original Pro Sound Performance",
        "Ultra-Compact and Stylish Ultra-Portable Design",
        "Wireless Music Streaming via Bluetooth",
        "IP67 Waterproof and Dustproof with 5 Hours Playtime",
    ],
    description: "Experience the future of audio with the JBL Go 3 Eco, featuring a groundbreaking, eco-friendly design. Crafted using up to 90% PCR (post-consumer recycled) plastic and adorned with a 100% recycled fabric speaker grille, this speaker not only delivers rich JBL Original Pro Sound performance but also significantly reduces its carbon footprint. The use of sustainable packaging made from FSC-certified paper printed with soy ink further showcases its commitment to the environment. Enjoy surprisingly big audio and punchy bass from this ultra-compact speaker that complements the latest styles effortlessly. With wireless Bluetooth streaming, you can connect your phone, tablet, or any Bluetooth-enabled device seamlessly. Plus, the Go 3 Eco boasts IP67 waterproof and dustproof ratings, making it your perfect companion for any adventure with up to 5 hours of playtime on a single charge.",
    category: "electronics",
    price: 49.95,
)
electronics11.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics11.jpg"),
    filename: "electronics11.jpg"
)

electronics12 = Product.create(
    name: "GE 6-Outlet Surge Protector, 10 Ft Extension Cord, Power Strip, 800 Joules, Flat Plug, Twist-to-Close Safety Covers, UL Listed, White, 14092",
    feature: [
        "6 Grounded and Protected 3-Prong Outlets",
        "10ft. Extra-Long Power Cord with 14-Gauge SJT Cable",
        "800 Joules Protection Rating",
        "Twist-to-Close Safety Outlets and Integrated Keyhole Slots",
        "Trusted Brand: #1 in Surge Protection and Extension Cords - GE",
    ],
    description: "Elevate your power connectivity with this versatile power strip by GE. Featuring six grounded and protected 3-prong outlets, it extends your power source to a distance, making it the perfect choice for centralizing your electronics at home, in the office, workshop, or garage. The extra-long 10ft. power cord is constructed with 14-gauge SJT cable, encased in durable PVC insulation and a jacket. The space-saving flat plug design allows the unit to fit neatly against the wall. With an 800 Joules protection rating, your electronics are shielded from voltage spikes. The integrated circuit breaker and automatic shutdown technology provide additional safety from overvoltage and overheating. Its functionality shines through twist-to-close safety outlets that keep dust and foreign objects out of unused sockets. For convenience, integrated keyhole slots make mounting to a desk, table, or counter a breeze. Trust in the #1 brand in surge protection and extension cords—GE—for your power needs.",
    category: "electronics",
    price: 15.99,
)
electronics12.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/electronics12.jpg"),
    filename: "electronics12.jpg"
)

# Clothing & Fashion
clothing1 = Product.create(
    name: "Aloodor Sweatsuit for Women 2 Piece Outfits for Womens Crewneck Sweatshirts Pullover",
    feature: [
        "Material: Made of 95% polyester and 5% spandex for a soft and comfortable wearing experience.",
        "Design: Long sleeve pullover top with a color block crewneck and striped sleeves, and drawstring elastic waistband sweatpants with functional pockets and stripes on the sides.",
        "Multi-functional Wear: Suitable for daily wear, outdoor activities, sports, exercise, and lounging at home. Ideal for spring, fall, and winter.",
        "Comfort: Crafted from smooth, stretchy, and high-quality fabrics that remain comfortable even during exercise. Does not become sticky or itchy when you sweat.",
        "Sizing: Please refer to the Aloodor Size Chart before ordering. Machine or hand wash with cold water. Avoid wearing brightly colored underwear under the white sets to prevent transparency."
    ],
    description: "This women's 2-piece loungewear sweatsuit set combines comfort and style. Made from a high-quality blend of 95% polyester and 5% spandex, it offers a soft and cozy wearing experience. The set features a classic design with a long-sleeve pullover top adorned with a color block crewneck and striped sleeves, complemented by drawstring elastic waistband sweatpants equipped with functional pockets and side stripes. This versatile outfit is perfect for various occasions, whether it's daily wear, outdoor activities, sports, exercise, or relaxing at home. Crafted from smooth, stretchy, and high-quality materials, it ensures comfort even during workouts without feeling sticky or itchy when you sweat. Please check the Aloodor Size Chart for accurate sizing and follow care instructions for long-lasting wear. Whether as a gift for a loved one or for your personal collection, this sweatsuit set offers both comfort and style.",
    category: "clothing",
    price: 40.99,
)
clothing1.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing1.jpg"),
    filename: "clothing1.jpg"
)

clothing2 = Product.create(
    name: "New Balance Men's 608 V5 Cross Trainer",
    feature: [
        "Material: 100% genuine leather upper for durability and style.",
        "Imported: Crafted with precision and quality materials for long-lasting performance.",
        "Rubber Sole: The rubber sole provides excellent traction and support for various activities.",
        "ABZORB Midsole: Built with ABZORB midsole cushioning to absorb forceful impacts, enhancing comfort.",
        "Premium PU Comfort Insert: Equipped with a premium PU comfort insert for additional cushioning and support."
    ],
    description: "This shoe offers a blend of style, comfort, and durability. The upper is crafted from 100% genuine leather, providing both a classic look and long-lasting quality. Imported with precision, this shoe features a rubber sole that offers excellent traction and support for various activities. What sets it apart is the ABZORB midsole cushioning, designed to absorb forceful impacts and provide enhanced comfort. To add even more comfort and support, it includes a premium PU comfort insert. Whether you're looking for a stylish everyday shoe or footwear for specific activities, this product combines premium materials and cushioning to ensure a satisfying wearing experience.",
    category: "clothing",
    price: 64.99,
)
clothing2.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing2.jpg"),
    filename: "clothing2.jpg"
)

clothing3 = Product.create(
    name: "Gildan Ultra Cotton Long Sleeve T-Shirt, Style G2400, Multipack",
    feature: [
        "Material: Made of 95% polyester and 5% spandex for a soft and comfortable wearing experience.",
        "Design: Long sleeve pullover top with a color block crewneck and striped sleeves, and drawstring elastic waistband sweatpants with functional pockets and stripes on the sides.",
        "Multi-functional Wear: Suitable for daily wear, outdoor activities, sports, exercise, and lounging at home. Ideal for spring, fall, and winter.",
        "Comfort: Crafted from smooth, stretchy, and high-quality fabrics that remain comfortable even during exercise. Does not become sticky or itchy when you sweat.",
        "Sizing: Please refer to the Aloodor Size Chart before ordering. Machine or hand wash with cold water. Avoid wearing brightly colored underwear under the white sets to prevent transparency."
    ],
    description: "This women's 2-piece loungewear sweatsuit set combines comfort and style. Made from a high-quality blend of 95% polyester and 5% spandex, it offers a soft and cozy wearing experience. The set features a classic design with a long-sleeve pullover top adorned with a color block crewneck and striped sleeves, complemented by drawstring elastic waistband sweatpants equipped with functional pockets and side stripes. This versatile outfit is perfect for various occasions, whether it's daily wear, outdoor activities, sports, exercise, or relaxing at home. Crafted from smooth, stretchy, and high-quality materials, it ensures comfort even during workouts without feeling sticky or itchy when you sweat. Please check the Aloodor Size Chart for accurate sizing and follow care instructions for long-lasting wear. Whether as a gift for a loved one or for your personal collection, this sweatsuit set offers both comfort and style.",
    category: "clothing",
    price: 17.99,
)
clothing3.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing3.jpg"),
    filename: "clothing3.jpg"
)

clothing4 = Product.create(
    name: "MANGOPOP Women's Mock Turtle Neck Long Sleeve Tops Bodysuit Jumpsuit",
    feature: [
        "Stretchy Fabric: Made from 95% modal and 5% spandex for a comfortable fit and feel.",
        "Imported: Crafted with quality and precision, ensuring a reliable product.",
        "Snap Closure: Designed with 2 snap buttons at the butt closure for convenience.",
        "Mock Turtle Neck and Sleeve Options: Featuring a stylish mock turtle neck and available in both sleeveless and long-sleeve versions.",
        "Size Selection: Please refer to the size chart in the last image before ordering and select your normal size; there's no need to go up a size."
    ],
    description: "This bodysuit for women offers both style and comfort with its stretchy fabric, crafted from 95% modal and 5% spandex. It features a chic mock turtle neck and is available in both sleeveless and long-sleeve options to suit your preference. The tanga bottom design, along with the 2 snap buttons at the butt closure, adds convenience to your daily wear. When ordering, please refer to the provided size chart in the last image, and select your normal size; there's no need to go up a size. Whether you choose it for a stylish ensemble or everyday comfort, this bodysuit is a versatile addition to your wardrobe.",
    category: "clothing",
    price: 26.98,
)
clothing4.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing4.jpg"),
    filename: "clothing4.jpg"
)

clothing5 = Product.create(
    name: "Under Armour Men's Tech 2.0 Short-Sleeve T-Shirt",
    feature: [
        "100% Polyester: Made from durable and moisture-wicking polyester material.",
        "Imported: Crafted with precision to ensure a high-quality product.",
        "UA Tech Fabric: Features quick-drying properties, an ultra-soft texture, and a natural feel for ultimate comfort.",
        "Moisture-Wicking: Effectively wicks sweat away from your body to keep you dry and comfortable during physical activities.",
        "Streamlined Fit and Shaped Hem: Designed for a new, streamlined fit with a shaped hem for added style."
    ],
    description: "This versatile performance shirt is crafted from 100% polyester and imported to ensure durability and quality. It features UA Tech fabric, known for its quick-drying properties, ultra-soft texture, and natural feel against the skin. The material efficiently wicks away sweat, keeping you dry and comfortable during your workouts or outdoor activities. The shirt offers a new, streamlined fit with a shaped hem, combining practicality with a stylish look. With its loose and fuller cut, it provides complete comfort for your active lifestyle.",
    category: "clothing",
    price: 24.99,
)
clothing5.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing5.jpg"),
    filename: "clothing5.jpg"
)

clothing6 = Product.create(
    name: "Thermajohn Long Johns Thermal Underwear for Men Fleece Lined Base Layer Set for Cold Weather",
    feature: [
        "92% Polyester, 8% Spandex: Crafted from a blend of polyester and spandex for warmth and comfort.",
        "Imported: Designed with precision and quality assurance.",
        "Heat Retention: Specifically designed to keep you warm and protected from the cold during everyday wear.",
        "Ultra Soft Fleece Lining: Features a soft fleece lining and high-quality materials for all-day comfort.",
        "Moisture-Wicking: Made from breathable fabric that effectively wicks away moisture and perspiration, keeping you dry.",
        "4-Way Stretch: Stretchable material offers freedom of movement without chafing or bunching up.",
        "Layer Up: Essential for staying warm in cold weather, making it perfect for outdoor activities or as comfortable pajamas for bedtime."
    ],
    description: "These men's long johns are the ideal solution for staying warm and comfortable in cold weather. Crafted from a blend of 92% polyester and 8% spandex, they offer excellent heat retention, ensuring you stay protected from the cold during everyday wear. The ultra-soft fleece lining and high-quality materials keep you comfortable throughout the day, while the moisture-wicking fabric effectively removes perspiration, keeping you dry. With 4-way stretch material, these thermals provide freedom of movement without chafing or bunching up. Whether you're heading outdoors or need cozy pajamas, these men's thermals are the perfect choice for layering up and staying warm in style.",
    category: "clothing",
    price: 27.99,
)
clothing6.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing6.jpg"),
    filename: "clothing6.jpg"
)

clothing7 = Product.create(
    name: "Amazon Essentials Women's French Terry Fleece Jogger Sweatpant (Available in Plus Size)",
    feature: [
        "60% Cotton, 40% Polyester: Made from a comfortable cotton-polyester blend.",
        "Imported: Designed with precision and quality assurance.",
        "Regular Fit: Offers a close but comfortable fit through the hip and thigh, with a mid-rise that sits below the natural waist.",
        "Cozy Brushed Back Fleece: Features buttery soft and comfy midweight cotton blend fleece with a brushed interior for extra comfort.",
        "Classic Jogger: Versatile sweatpants suitable for being on the go, hitting the gym, or lounging at home, making them an everyday essential.",
        "Details: Equipped with an easy pull-on rib-knit waistband with an adjustable drawstring, handy front slant pockets, and tall rib cuffs at the bottom to cinch the leg in.",
        "Inseam: 28 1/2” on US size S."
    ],
    description: "These jogger sweatpants are a must-have addition to your wardrobe. Made from a comfortable 60% cotton and 40% polyester blend, they offer a regular fit that's close but comfortable through the hip and thigh, with a mid-rise that sits below the natural waist. The cozy brushed back fleece with a buttery-soft interior ensures you stay comfortable all day. Whether you're on the go, hitting the gym, or just lounging at home, these classic joggers are your everyday essential. They feature an easy pull-on rib-knit waistband with an adjustable drawstring, convenient front slant pockets, and tall rib cuffs at the bottom to cinch the leg in. The inseam measures 28 1/2” on US size S.",
    category: "clothing",
    price: 23.70,
)
clothing7.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing7.jpg"),
    filename: "clothing7.jpg"
)

clothing8 = Product.create(
    name: "Hanes EcoSmart Fleece, Cotton-Blend Pullover, Crewneck Sweatshirt for Men",
    feature: [
        "80% Cotton, 20% Polyester: Made with a blend of cotton and polyester for a comfortable and durable sweatshirt.",
        "Imported: Designed with precision and quality assurance.",
        "Fleece to Feel Good About: Hanes EcoSmart midweight sweatshirt is made with cotton sourced from American farms, so you can feel good about wearing it.",
        "Classic Silhouette: Features a basic crewneck sweatshirt shaping for that versatile look you love.",
        "Made to Last: Double-needle stitching at the neck and armholes adds extra quality and sturdiness.",
        "Stays Soft: Thick, sturdy fleece stays warm and cozy even after multiple washes.",
        "Convenient Tearaway Tags: Say goodbye to itchy tags for added comfort.",
        "Cold Water Wash: Hanes recommends machine washing this sweatshirt in cold water to reduce energy usage."
    ],
    description: "The Hanes EcoSmart midweight sweatshirt is a classic and versatile addition to your wardrobe. Made from a durable blend of 80% cotton and 20% polyester, this sweatshirt features a basic crewneck silhouette for a timeless look you'll love. What makes it even better is that it's made with cotton sourced from American farms, so you can feel good about wearing it. This sweatshirt is designed to last, thanks to double-needle stitching at the neck and armholes, ensuring quality and sturdiness. The thick and sturdy fleece material keeps you warm and cozy even after multiple washes. Plus, you can enjoy added comfort with convenient tearaway tags that eliminate itchy labels. For eco-conscious consumers, Hanes recommends machine washing this sweatshirt in cold water to reduce energy usage.",
    category: "clothing",
    price: 14.00,
)
clothing8.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing8.jpg"),
    filename: "clothing8.jpg"
)

clothing9 = Product.create(
    name: "EFAN Women's Cute Hoodies Teen Girl Fall Jacket Oversized Sweatshirts Casual Drawstring Zip Up Y2K Hoodie with Pocket",
    feature: [
        "Comfy Material: Cotton, Polyester, and Spandex for Warmth",
        "Stylish Design: Long Sleeve, Solid Color, Lapel, Drawstring Collar, Kangaroo Pockets, and More",
        "Versatile Match: Ideal for Various Occasions and Easy to Pair with Other Outfits",
        "Multi-Occasion: Suitable for Sports, Daily Wear, Travel, and Fall/Winter Seasons",
        "Size Reference: Please Check EFAN Size Chart (Not Amazon Size) for Accurate Fit",
    ],
    description: "Elevate your comfort and style with this Women's Pullover Sweatshirt, crafted from a blend of cotton, polyester, and spandex. The thick and cozy material keeps you warm during the fall and winter seasons. The sweatshirt features a chic design with long sleeves, a solid color, lapel, drawstring collar, kangaroo pockets, and a loose fit style. Its versatility is unmatched, making it an ideal choice for various occasions, from running, dancing, and cycling to everyday wear and travel. The adjustable drawstring collar keeps you warm, and the high-quality zipper adds a fashionable touch. Plus, the timeless solid color ensures it never goes out of style. Make sure to consult the EFAN Size Chart for accurate sizing, and for any questions, feel free to contact us.",
    category: "clothing",
    price: 25.73,
)
clothing9.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing9.jpg"),
    filename: "clothing9.jpg"
)

clothing10 = Product.create(
    name: "Amazon Essentials Men's Long-Sleeve Polar Fleece Shirt Jacket",
    feature: [
        "Mid-Weight Fleece Shirt Jacket for Versatile Comfort",
        "Four Pockets: Two Welt Pockets and Two Chest Flap Pockets with Button Closures",
        "Full Button Front and Button Cuffs for Adjustable Styling",
        "Woven Fabric Details Add a Touch of Style",
        "Everyday Made Better: Focused on Quality, Fit, and Comfort Based on Customer Feedback",
    ],
    description: "Elevate your everyday style with this Mid-Weight Fleece Shirt Jacket. It's the perfect balance between comfort and functionality. The jacket features four pockets, including two welt pockets and two chest flap pockets with button closures, providing ample space for your essentials. With a full button front and button cuffs, you can easily adjust your style to suit your needs. Woven fabric details add a touch of elegance, making it suitable for various occasions. What sets this jacket apart is the dedication to quality, fit, and comfort. Customer feedback has been carefully considered, ensuring that you're getting a product that's 'Everyday Made Better.'",
    category: "clothing",
    price: 34.80,
)
clothing10.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing10.jpg"),
    filename: "clothing10.jpg"
)

clothing11 = Product.create(
    name: "Yeokou Womens Sherpa Lined Sweatpants Winter Athletic Jogger Fleece Pants",
    feature: [
        "Elastic Closure for Easy Wear",
        "Two Side Pockets for Convenience",
        "Adjustable Drawstring Waist for a Comfortable Fit",
        "Ribbed Ankles Provide a Stylish Finish",
        "Winter Warm Fleece Lined Design for Extra Comfort",
        "Available in Solid Colors for a Versatile Look",
    ],
    description: "Experience the ultimate comfort and style with these Fleece-Lined Closed-Bottom Sweatpants. These pants feature an elastic closure for easy wear and two side pockets for added convenience. The adjustable drawstring waist ensures a comfortable and secure fit, while ribbed ankles provide a stylish finish. Designed with a warm fleece lining, these sweatpants are perfect for the winter season. Available in various solid colors, they complement a wide range of outfits. Whether you're running errands or staying cozy at home, these sweatpants are your go-to choice. For the same style for men, search 'Yeokou Mens Winter Warm Sherpa Lined Active Thermal Jogger Fleece Sweatpants Pant.' And for baby girls and boys, search 'Yeokou Unisex Boys Girls Kid's Sherpa Lined Athletic Jogger Fleece Sweatpants.'",
    category: "clothing",
    price: 38.99,
)
clothing11.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing11.jpg"),
    filename: "clothing11.jpg"
)

clothing12 = Product.create(
    name: "Gerber Baby Boys 4 Pack Sleep 'N Play Footie",
    feature: [
        "Includes four (4) long-sleeve Gerber sleep n' plays",
        "Front zippers with safety tabs for easier changes",
        "Keeps your baby comfortable as they rest or romp",
        "Machine washable and tumble dry for easy care",
        "Art details with screenprint for added style",
    ],
    description: "Elevate your baby's comfort and style with this set of four Gerber sleep n' plays. These long-sleeve sleep n' plays are designed with front zippers and safety tabs to make diaper changes easier and more convenient. Your little one will stay cozy and comfortable whether they are resting or on the move. These garments are not only adorable but also practical, making them a perfect addition to your baby's wardrobe. They are machine washable, allowing for easy cleaning and care, and can be tumble dried. The art details on these sleep n' plays are enhanced with screenprint, adding a touch of style to your baby's everyday outfits.",
    category: "clothing",
    price: 23.99,
)
clothing12.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/clothing12.jpg"),
    filename: "clothing12.jpg"
)


# Home & Furniture
home1 = Product.create(
    name: "16 Pcs Refrigerator Liners, MayNest Washable Mats Covers Pads, Home Kitchen Gadgets Accessories Organization for Top Freezer Glass Shelf Wire Shelving Cupboard Cabinet Drawers (16 White)",
    feature: [
        "Size: Each liner measures 17.7\"x11.6\", pre-cut for standard fridges, or trim to fit any area and use two per shelf for larger refrigerators.",
        "Nonslip Design: The smooth side grips to the shelves to prevent shifting, while the dotted side is non-sticking to foods.",
        "Easy to Clean: Simply wipe with a cloth or rinse with water to clean spills, crumbs, and dust for easy maintenance.",
        "Versatile Uses: Use these liners for shelves, drawers, cupboards, cabinets, as placemats, or in the pantry to keep your storage areas clean and organized.",
        "Non-Toxic Material: Made from 100% food-grade EVA, these liners are odor-free, BPA-free, and safe to come into contact with your food."
    ],
    description: "These refrigerator shelf liners provide a practical and versatile solution for maintaining a clean and organized kitchen. Each liner measures 17.7\"x11.6\" and is pre-cut for standard fridges, but you can easily trim them to fit any area. The nonslip design ensures that items stay in place, with the smooth side gripping to the shelves and the dotted side preventing foods from sticking. Cleaning is a breeze – just wipe with a cloth or rinse with water to remove spills, crumbs, and dust. These liners have a wide range of applications, making them perfect for use in shelves, drawers, cupboards, cabinets, as placemats, or in the pantry. They are crafted from non-toxic, 100% food-grade EVA, ensuring they are odor-free, BPA-free, and safe to come into contact with your food.",
    category: "home",
    price: 15.99,
)
home1.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home1.jpg"),
    filename: "home1.jpg"
)

home2 = Product.create(
    name: "Furinno Luder Bookcase / Book / Storage , 7-Cube, White",
    feature: [
        "Simple Stylish Design: A functional and aesthetically pleasing design that complements any room's decor.",
        "Material: Made from engineered particle board, providing durability and affordability.",
        "Space and Budget-Friendly: Designed to fit well in limited spaces and budget-friendly for cost-conscious buyers.",
        "Sturdy and Easy Assembly: Ensures stability on flat surfaces and comes with straightforward assembly instructions.",
        "Product Dimensions: Measures 19.53 inches in width, 41.73 inches in height, and 9.44 inches in depth."
    ],
    description: "This stylish yet functional piece of furniture offers a simple and elegant design that seamlessly fits into any room while serving a practical purpose. Crafted from engineered particle board, it strikes a balance between durability and affordability, making it suitable for budget-conscious buyers. Its space-efficient design ensures it can fit well in compact areas. Moreover, it stands sturdy on flat surfaces, and assembly is hassle-free with clear instructions provided. With product dimensions measuring 19.53 inches in width, 41.73 inches in height, and 9.44 inches in depth, it's a versatile addition to your living space.",
    category: "home",
    price: 36.33,
)
home2.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home2.jpg"),
    filename: "home2.jpg"
)

home3 = Product.create(
    name: "Coleshome 40 Inch Computer Desk, Modern Simple Style Desk for Home Office, Study Student Writing Desk, Vintage",
    feature: [
        "Diversified Use of Scenes: Choose from 7 top and 3 leg colors to match your room's style. Ideal for classrooms, offices, or home use.",
        "Small Desk Panel Dimension: Compact size of 40\"(L) x 19\"(W) x 29\"(H) fits perfectly in small corners, providing ample legroom and workspace.",
        "Sturdy and Durable: Heavy-duty powder-coated steel frames enhance stability and safety, supporting heavy parcels. The waterproof and scratch-resistant desktop is easy to clean.",
        "Easy Setup and Maintenance: All necessary tools are included for quick assembly within 30 minutes. The melamine veneer tabletop is heat-resistant and dust-free, requiring minimal maintenance.",
        "100% Customer Satisfaction: We are dedicated to ensuring your satisfaction. Contact us for support before or after your purchase. Enjoy the convenience and style of this desk now."
    ],
    description: "This versatile computer desk offers a range of color options for both the top and leg, allowing you to customize your workspace's aesthetics. With compact dimensions of 40 inches in length, 19 inches in width, and 29 inches in height, it's designed to fit seamlessly into smaller corners while providing ample legroom and work surface. Constructed with thick metal frames made of heavy-duty powder-coated steel, it ensures stability and safety for your workspace. The easy-to-clean desktop is both waterproof and scratch-resistant. Assembling the desk is a breeze with included tools, taking just 30 minutes. With its heat-resistant melamine veneer tabletop, low maintenance is required. We are committed to your satisfaction and offer support before and after purchase, ensuring you can enjoy this desk with confidence.",
    category: "home",
    price: 49.99,
)
home3.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home3.jpg"),
    filename: "home3.jpg"
)

home4 = Product.create(
    name: "Acko Folding Step Stool 13 inch Heavy Duty Plastic Foldable Step Stool for Kids and Adults, Small Collapsible Fold Up Stepping Stool 1 Packz",
    feature: [
        "Premium Quality: Made of tough and durable heavy-duty plastic with EN 14183 Certificate for long-lasting durability.",
        "Carrying Handle: Ergonomic handle for easy folding and carrying with one hand, ideal for kids to move around.",
        "Squash and Round Corner Protection: Safety stop gap feature for improved rigidity and rounded corners for enhanced safety, especially for kids.",
        "Anti Slip: Rubber grips on the surface and anti-slip rubber feet provide maximum grip and comfort. Unique grip-dot textured surface ensures safety for everyone.",
        "Proper Use: Maximum load capacity of 300 pounds, suitable for both children and adults in indoor settings. Must be used on a dry and flat surface within temperature limits."
    ],
    description: "Acko's folding step stool stands out with its premium quality, constructed from heavy-duty plastic that meets EN 14183 Certificate standards, ensuring long-lasting durability. Its ergonomic carrying handle makes folding and moving this stool a breeze, perfect for kids. Safety is a top priority, with a unique safety stop gap feature for stability and rounded corners to protect little ones. The anti-slip surface with rubber grips and feet guarantees maximum grip and comfort for various uses, from the kitchen and bathroom to the office and garden. With a maximum load capacity of 300 pounds, it's suitable for both children and adults in indoor settings, provided the surface is dry and flat. A versatile and dependable addition to your home.",
    category: "home",
    price: 15.99,
)
home4.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home4.jpg"),
    filename: "home4.jpg"
)

home5 = Product.create(
    name: "Serta Rane Convertible Sofa Bed, Charcoal",
    feature: [
        "Premium Comfort: Serta's contemporary Rane sofa offers Serta-comfortable, sensibly priced seating with high-density foam, tufted design, and modern chrome legs.",
        "Elegant Design: The futuristically sleek silhouette of this convertible sofa adds beauty to your living area. It's easy to assemble with included tools.",
        "High-Quality Construction: Made from premium-quality polyester with a solid hardwood frame. Sofa dimensions: 66.1\"W x 33.1\"D x 29.5\"H. Bed dimensions: 66.1\"W x 37.6\"D x 15.1\"H.",
        "Care Instructions: Vacuum and spot clean regularly. Use a dry cloth with soap and water for deep cleaning. Avoid harsh chemicals for treatment."
    ],
    description: "Serta's Rane sofa delivers premium comfort and contemporary elegance at a sensible price. This versatile, convertible sofa features high-density foam, a tufted design, and modern chrome legs, ensuring both style and comfort. It's easy to assemble with the included tools, and its premium-quality polyester construction with a solid hardwood frame guarantees long-lasting durability. The sofa's dimensions are 66.1W x 33.1D x 29.5H, while the bed's dimensions are 66.1W x 37.6D x 15.1H. Maintenance is simple, requiring regular vacuuming and spot cleaning, with deeper cleaning achieved using a dry cloth with soap and water while avoiding harsh chemicals.",
    category: "home",
    price: 215.00,
)
home5.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home5.jpg"),
    filename: "home5.jpg"
)

home6 = Product.create(
    name: "Homepop Home Decor | Upholstered Round Velvet Tufted Foot Rest Ottoman | Ottoman with Storage for Living Room & Bedroom | Decorative Home Furniture, Teal Small",
    feature: [
        "Small and stylish storage solution for accessories",
        "Soft and durable velvet upholstery with button tufting",
        "Wooden legs with a striking finish for timeless style",
        "Supports up to 250 lbs, weighing 14.3 lbs",
        "Easy assembly and spot clean maintenance"
    ],
    description: "Introducing our Velvet Tufted Ottoman with Storage, a stylish and compact solution for keeping your accessories organized. This round ottoman stool features durable velvet upholstery with elegant button tufting and is supported by sturdy wooden legs with a striking finish, offering timeless style for your living room or bedroom. With a weight of 14.3 lbs, it can support up to 250 lbs. Assembly is easy, and maintenance is a breeze with spot cleaning. Its dimensions are 18 inches in height, 19 inches in width, and 19 inches in depth, making it a versatile addition to your home.",
    category: "home",
    price: 89.99,
)
home6.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home6.jpg"),
    filename: "home6.jpg"
)

home7 = Product.create(
    name: "T-Shape Hand Towel Stand with Marble Base for Bathroom, Countertop Towel Racks, Kitchen Towel Rack Black, Free-Standing Towel Hanger, Home Decor",
    feature: [
        "Unique and elegant marble base for stability and charm",
        "Stainless steel construction with a matte black finish for rust resistance",
        "Anti-scratch and anti-slip base with circular paddings to prevent movement and scratches",
        "Vertical hanging space of 11.2 inches and horizontal hanging space of 14.8 inches",
        "Worry-free after-sales service with free return or replacement"
    ],
    description: "Elevate your bathroom decor with our Marble Hand Towel Holder. This T-shaped towel stand features a weighted natural marble base, each with a unique grain, adding a touch of elegance and charm to your home. The stainless steel construction with a matte black finish is not only rust-resistant but also easy to clean. Circular paddings on the base prevent movement and scratches, making it a practical choice. With vertical hanging space of 11.2 inches and horizontal hanging space of 14.8 inches, it's ideal for hand towels and washcloths. Plus, we offer worry-free after-sales service, ensuring your satisfaction with free returns or replacements.",
    category: "home",
    price: 19.99,
)
home7.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home7.jpg"),
    filename: "home7.jpg"
)

home8 = Product.create(
    name: "VASAGLE Ladder Shelf, 4-Tier Bookshelf, Storage Rack, Bookcase with Steel Frame, for Living Room, Home Office, Kitchen, Bedroom, Industrial Style, Camel Brown and Black ULLS144B50",
    feature: [
        "Stable design with a solid frame, reinforced by X-shaped bars, adjustable feet, and an anti-tip kit",
        "Durable construction with a robust steel frame and quality particleboard",
        "Reasonable spacing with shelves having a 13” distance between them and 7.5” floor space for easy vacuuming",
        "Versatile usage for displaying trinkets, plants, books, or kitchen utensils in various rooms",
        "Hassle-free assembly with a simple structure, numbered parts, and illustrated instructions"
    ],
    description: "Introducing our 4-Tier Ladder Shelf, a versatile storage solution for your home. This ladder shelf is designed for stability, featuring a solid frame, reinforced by X-shaped bars, adjustable feet, and an anti-tip kit. Its durable construction combines a robust steel frame with quality particleboard for long-term use. With reasonable spacing and 13” between shelves, it accommodates taller items and provides 7.5” of floor space for easy vacuuming. Whether you want to display trinkets, plants, books, or kitchen utensils, this storage rack can adapt to any room's needs. The hassle-free assembly, with a simple structure and illustrated instructions, ensures a quick setup.",
    category: "home",
    price: 79.99,
)
home8.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home8.jpg"),
    filename: "home8.jpg"
)

home9 = Product.create(
    name: "PuroAir HEPA 14 Air Purifier for Home Large Room - Covers 1,115 Sq Ft - Air Purifier for Allergies and Pets - Automated Air Quality Sensor - Captures 99.99% (2 PACK)",
    feature: [
        "Cleans large rooms up to 1,115 sq ft in just 60 minutes. Perfect for homes and offices.",
        "Utilizes the world's first HEPA 14 Medical-Grade filter that removes up to 99.99% of fine particulate matter down to 0.1 microns in size, including dust, pet dander, odors, and smoke. Up to 10x more powerful than HEPA 13 filters.",
        "Backed by scientific testing and certification, proven to detect and filter out 99.99% of fine particulate matter, including pollutants, allergens, smoke, mold, pollen, dust, and odors.",
        "Cleans air automatically with a smart particle sensor that monitors air quality and adjusts power as needed. Ideal for any room.",
        "Enhance your air quality and well-being with features like a timer, fan speed control, sleep mode, filter replacement indicator, and child lock for safety. Great for allergy sufferers, asthma patients, and quality sleep enthusiasts.",
    ],
    description: "Experience cleaner and fresher air within minutes with the PuroAir air purifier. Designed to clean large rooms up to 1,115 sq ft in just 60 minutes, it's the perfect addition to homes and offices. What sets this air purifier apart is its utilization of the world's first HEPA 14 Medical-Grade filter, capable of removing up to 99.99% of fine particulate matter as small as 0.1 microns. This includes dust, pet dander, odors, and smoke, making it up to 10 times more effective than HEPA 13 filters. Backed by scientific testing and certification, it's proven to detect and filter out pollutants, allergens, smoke, mold, pollen, dust, and odors. The smart particle sensor ensures it cleans the air automatically, making it suitable for any room. Breathe easier, reduce allergies, alleviate asthma symptoms, and enhance your sleep quality with the PuroAir. It comes equipped with a timer, fan speed control, sleep mode, filter replacement indicator, and child lock for safety, making it perfect for both families and pet owners.",
    category: "home",
    price: 349.00,
)
home9.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home9.jpg"),
    filename: "home8.jpg"
)

home10 = Product.create(
    name: "Amazon Basics 6 Sheet Cross Cut Paper and Credit Card Home Office Shredder, Black",
    feature: [
        "6-sheet crosscut shredder for paper and credit cards.",
        "Auto Start and overheat protection for safe operation.",
        "Thermal Protection prevents overheating during extended use.",
        "Manual reverse function to clear paper jams easily.",
        "Capable of shredding credit cards, small paper clips, and staples.",
        "Important Note: Avoid spraying aerosol products near the shredder and refrain from shredding items like metallic credit cards to maintain optimal performance and longevity.",
    ],
    description: "This 6-sheet crosscut paper and credit card shredder is designed to provide both security and convenience. It features an Auto Start function along with overheat protection to ensure safe and efficient operation. Additionally, thermal protection prevents the shredder from overheating during extended use, enhancing its durability. In the event of a paper jam, the manual reverse function comes to the rescue, making the clearing process a breeze. This shredder is not limited to just paper; it can also shred credit cards, small paper clips, and staples with ease. To maintain its peak performance and longevity, please avoid spraying aerosol products near the shredder and refrain from attempting to shred metallic credit cards. It's a reliable addition to any workspace or home office, offering peace of mind when disposing of sensitive documents and materials.",
    category: "home",
    price: 42.71,
)
home10.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home10.jpg"),
    filename: "home10.jpg"
)

home11 = Product.create(
    name: "Swiffer WetJet Hardwood and Floor Spray Mop Cleaner Starter Kit, Includes: 1 Power Mop, 10 Pads, Cleaning Solution, Batteries",
    feature: [
        "Swiffer refills are recyclable, with a free shipping label from TerraCycle for eco-friendly disposal.",
        "Starter kit includes 1 WetJet Spray Mop, 6 Heavy Duty Mopping Pad refills, 4 Original Mopping pad refills, 1 bottle of cleaning solution, and 4 batteries.",
        "Microfiber head material for effective cleaning.",
        "ABSORB + LOCK STRIP technology traps dirt and grime deep within the pad to prevent spreading.",
        "Designed to work as a hardwood floor cleaner, laminate floor cleaner, and tile cleaner.",
        "Safe for use on all finished wood floors; avoid use on unfinished, oiled, or waxed wooden boards, non-sealed tiles, or carpeted floors due to water sensitivity."
    ],
    description: "The Swiffer WetJet Starter Kit is an all-in-one cleaning solution that keeps your floors spotless and your conscience clear. Each Swiffer refill is environmentally conscious, being easily recyclable with a free shipping label from TerraCycle. The kit includes a WetJet Spray Mop, 6 Heavy Duty Mopping Pad refills, 4 Original Mopping pad refills, 1 bottle of cleaning solution, and 4 batteries, providing a comprehensive cleaning experience. The mop features a microfiber head material, ensuring efficient and thorough cleaning, while the patented ABSORB + LOCK STRIP technology traps dirt and grime deep within the pad, preventing it from being pushed around. This versatile floor mop is suitable for all finished wood floors, serving as a hardwood floor cleaner, laminate floor cleaner, and tile cleaner. However, it's essential to avoid use on unfinished, oiled, or waxed wooden boards, non-sealed tiles, and carpeted floors due to their water-sensitive nature. Keep your floors clean and eco-friendly with Swiffer WetJet.",
    category: "home",
    price: 28.24,
)
home11.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home11.jpg"),
    filename: "home11.jpg"
)

home12 = Product.create(
    name: "Tenmiro Led Lights for Bedroom 100ft (2 Rolls of 50ft) Music Sync Color Changing Strip Lights with Remote and App Control RGB Strip, for Room Home Party Decoration",
    feature: [
        "Music Sync Function: LED light strip changes colors with sound and music rhythm, creating a lively party atmosphere.",
        "Easy Control: Use the 44-key IR remote control or the app to select colors, change modes, adjust brightness, and set smart timing.",
        "Versatile Colors and Modes: Offers millions of different colors and 25 modes to suit various moods and occasions.",
        "Simple Installation: Easily stick the LED strips on a clean, dry surface for instant lighting. Please test the product before permanent installation.",
        "Long Coverage: 100ft (2 rolls of 50ft strip lights) provides extensive room coverage, making it perfect for bedroom, ceiling, computer desk, living rooms, and holiday event decorations."
    ],
    description: "Enhance your ambiance with these 100ft LED light strips that offer an immersive experience. The built-in music sync function, featuring an adjustable mic sensitivity, makes the LED lights dance to the rhythm of your music, creating a vibrant party atmosphere. You can effortlessly control the lights via a 44-key IR remote control or a convenient app, enabling color selection, mode changes, brightness adjustments, and smart timing. With millions of color options and 25 lighting modes, you can personalize your space to match any mood or occasion. Installing these lights is a breeze—simply adhere them to a clean, dry surface and enjoy instant illumination. These long, flexible strips are suitable for decorating bedrooms, ceilings, computer desks, living rooms, and are perfect for holiday events like Christmas, Halloween, parties, birthdays, and New Year celebrations. Brighten up your life with these versatile LED strip lights.",
    category: "home",
    price: 14.99,
)
home12.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/home12.jpg"),
    filename: "home12.jpg"
)

# Book & Media
books1 = Product.create(
    name: "Never Split the Difference: Negotiating as if Your Life Depended on It",
    feature: [
        "Field-tested approach to high-stakes negotiations from a former FBI international hostage negotiator",
        "Reveals effective principles and counterintuitive tactics for becoming more persuasive",
        "Offers skills for negotiations in both professional and personal life",
        "Learn negotiation techniques for scenarios like buying a car, negotiating a salary, and more",
        "Gain a competitive edge in any discussion with enhanced emotional intelligence and intuition"
    ],
    description: "Discover the art of negotiation with 'Never Split the Difference.' Written by former FBI international hostage negotiator Chris Voss, this book takes you inside the world of high-stakes negotiations. Voss shares the nine effective principles and counterintuitive tactics he and his colleagues used to succeed in saving lives. Whether you're negotiating in the boardroom or at home, this practical guide provides you with the skills to become more persuasive in both professional and personal situations. From buying a car to renegotiating rent, this book helps you enhance your emotional intelligence and gain a competitive edge in any discussion.",
    category: "books",
    price: 19.99,
)
books1.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books1.jpg"),
    filename: "books1.jpg"
)

books2 = Product.create(
    name: "How to Win Friends & Influence People",
    feature: [
        "Learn six effective ways to make people like you",
        "Discover twelve strategies to win people over to your point of view",
        "Understand nine methods for influencing people without generating resentment",
        "Gain timeless advice that has helped countless individuals achieve success in both their personal and professional lives"
    ],
    description: "Discover the secrets of success with Dale Carnegie's enduring classic, 'How to Win Friends and Influence People.' This audiobook, presented by Simon & Schuster Audio, provides a wealth of invaluable advice that has propelled countless individuals towards achievement and prosperity for over six decades. Explore the art of building relationships with techniques for making people like you, winning them over to your perspective, and bringing about change without creating resistance. Don't miss the opportunity to learn from this perennial best-seller that offers timeless wisdom for success.",
    category: "books",
    price: 10.82,
)
books2.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books2.jpg"),
    filename: "books2.jpg"
)

books3 = Product.create(
    name: "The Pragmatic Programmer: 20th Anniversary Edition, 2nd Edition: Your Journey to Mastery",
    feature: [
        "Gain fresh insights with each listen, whether you're new to the field or an experienced practitioner",
        "Explore lessons that transcend programming languages, frameworks, and methodologies",
        "Learn about personal responsibility, career development, and architectural techniques for adaptable and reusable code",
        "Access updated classic topics and new content reflecting the latest industry knowledge",
        "Enhance personal productivity, accuracy, and job satisfaction, forming the foundation for long-term career success"
    ],
    description: "The Pragmatic Programmer, a timeless tech audiobook by Dave Thomas and Andy Hunt, provides enduring wisdom and insights for both novice and seasoned professionals. Originally published in 1999, it has influenced countless programmers, guiding them in creating superior software and rediscovering the joy of coding. This 20th-anniversary edition delves into what it means to be a modern programmer, covering personal responsibility, career development, and architectural techniques for flexible and reusable code. Whether you're a beginner, an experienced coder, or a project manager, applying these lessons will boost your productivity, precision, and job satisfaction, establishing you as a pragmatic programmer. With its wealth of knowledge and fresh updates, this audiobook is a valuable resource for all in the field.",
    category: "books",
    price: 35.99,
)
books3.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books3.jpg"),
    filename: "books3.jpg"
)

books4 = Product.create(
    name: "Where the Crawdads Sing",
    feature: [
        "A #1 New York Times bestselling phenomenon, now a major motion picture",
        "Over 18 million copies sold worldwide",
        "Selected as a defining book of the decade by Business Insider",
        "Endorsed by Reese Witherspoon and praised by The New York Times Book Review",
        "Combines elements of a compelling murder mystery with a poetic coming-of-age story set in the enchanting natural world of North Carolina"
    ],
    description: "Where the Crawdads Sing is a literary sensation, with over 18 million copies sold worldwide and its recent adaptation into a major motion picture. It is a captivating blend of murder mystery and coming-of-age tale, set against the backdrop of the hauntingly beautiful North Carolina coast. The story follows the life of Kya Clark, known as the 'Marsh Girl,' who has survived in solitude in her beloved marsh. The book explores her sensitive and intelligent nature, the enigmatic circumstances surrounding a local man's death, and the profound impact of the natural world on her life. With endorsements from Reese Witherspoon and accolades from The New York Times, this novel is a breathtaking ode to nature, childhood, and the secrets it conceals.",
    category: "books",
    price: 20.24,
)
books4.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books4.jpg"),
    filename: "books4.jpg"
)

books5 = Product.create(
    name: "The Midnight Library: A Novel",
    feature: [
        "A number one New York Times best-selling phenomenon",
        "Winner of the Goodreads Choice Award for Fiction",
        "Selected as a Good Morning America Book Club Pick",
        "Recognized as one of the Independent (London) 10 Best Books of the Year",
        "A feel-good, uplifting novel by acclaimed author Matt Haig that explores the choices that shape a life well lived"
    ],
    description: "The Midnight Library is an enchanting and thought-provoking novel by Matt Haig that has taken the literary world by storm. It is a New York Times best-seller and a winner of the Goodreads Choice Award for Fiction. This feel-good book, featured in the Good Morning America Book Club, tells the captivating story of Nora Seed, who discovers a library that contains books representing different lives she could have lived based on her choices. Nora must navigate this Midnight Library to uncover the true meaning of life and what makes it worth living. With heartwarming prose, it's a book that will lift your spirits and leave you pondering the infinite possibilities that shape our existence.",
    category: "books",
    price: 13.48,
)
books5.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books5.jpg"),
    filename: "books5.jpg"
)

books6 = Product.create(
    name: "1984: New Classic Edition",
    feature: [
        "A classic cautionary tale by George Orwell that remains relevant in today's world",
        "A depiction of a totalitarian society dominated by Big Brother and the Thought Police",
        "Winston Smith, the unheroic hero, yearns for truth and decency in a world devoid of privacy",
        "A prophetic and haunting narrative that exposes the consequences of the destruction of freedom and truth",
        "A modern classic that continues to resonate with readers, offering a stark warning of a dystopian future"
    ],
    description: "Experience George Orwell's timeless classic, '1984,' in this new recording by Blackstone Publishing. This celebrated work has never lost its relevance, offering a cautionary tale of a world under the watchful eye of an authoritarian state, a reality that feels as pertinent today as it did in Orwell's time. The story unfolds in a gray, totalitarian society ruled by Big Brother and the Thought Police, where the concept of privacy is nonexistent, and dissenting voices are silenced. Winston Smith, the novel's unheroic hero, strives for truth and decency, even as he knows that his forbidden love affair will lead to his destruction. '1984' remains a prophetic and chilling masterpiece, serving as a stark reminder of the consequences of eroded freedom and truth.",
    category: "books",
    price: 13.39,
)
books6.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books6.jpg"),
    filename: "books6.jpg"
)

books7 = Product.create(
    name: "Dune",
    feature: [
        "The acclaimed novel 'Dune' by Frank Herbert, soon to be a major motion picture",
        "Directed by Denis Villeneuve and featuring an all-star cast including Timothée Chalamet, Josh Brolin, Jason Momoa, Zendaya, and more",
        "Set on the desert planet Arrakis, it tells the story of Paul Atreides and his journey to become Maud'dib",
        "An epic blend of adventure, mysticism, environmentalism, and politics",
        "Winner of the Nebula Award and Hugo Award, 'Dune' is a cornerstone of science fiction literature"
    ],
    description: "Prepare to embark on a thrilling cinematic journey with 'Dune,' the acclaimed novel by Frank Herbert, soon to be a major motion picture directed by Denis Villeneuve. This epic adaptation features an ensemble cast of renowned actors, including Timothée Chalamet, Josh Brolin, Jason Momoa, Zendaya, and many more. 'Dune' is a mesmerizing tale set on the desert planet Arrakis, following the life of Paul Atreides as he transforms into the enigmatic figure known as Maud'dib. Along his path, he seeks to avenge a treacherous plot against his noble family and to fulfill humankind's most elusive dream. This grand narrative weaves together adventure, mysticism, environmentalism, and political intrigue, earning it prestigious awards like the Nebula and Hugo. Though Frank Herbert's passing in 1986 was a great loss, his visionary legacy in science fiction continues to captivate audiences for generations to come.",
    category: "books",
    price: 20.99,
)
books7.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books7.jpg"),
    filename: "books7.jpg"
)

books8 = Product.create(
    name: "The Art of War",
    feature: [
        "An ancient Chinese military handbook, 'The Art of War' dates back to the fifth century BC",
        "Attributed to the brilliant military strategist Sun Tzu, also known as Master Sun's Rules of Warfare",
        "Comprises 13 chapters, each dedicated to a specific aspect of warfare strategy",
        "Emperor Shenzong of Song recognized it as the most important of China's Seven Military Classics",
        "Continues to be one of the most influential strategy texts in East Asia and has inspired leaders like Mao Zedong and General Douglas MacArthur"
    ],
    description: "'The Art of War,' an ancient Chinese military masterpiece dating back to the fifth century BC, offers timeless wisdom in the realm of strategy and warfare. Attributed to the brilliant military strategist Sun Tzu, the work is aptly titled 'Master Sun's Rules of Warfare' when translated from Chinese. Within its 13 chapters, this profound text delves into various aspects of warfare strategy. Recognized as the most crucial of China's Seven Military Classics by Emperor Shenzong of Song in 1080, it continues to hold a prominent place as one of the most influential strategy texts in East Asia. Notable leaders like Mao Zedong, General Douglas MacArthur, and General Vo Nguyen Giap have drawn inspiration from the profound teachings of Sun Tzu, making it a timeless resource for strategic thinkers and military minds.",
    category: "books",
    price: 13.77,
)
books8.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books8.jpg"),
    filename: "books8.jpg"
)

books9 = Product.create(
    name: "Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones",
    feature: [
        "Proven Framework for Habit Improvement: Learn how to form good habits, break bad ones, and master tiny behaviors for remarkable results.",
        "System for Change: Discover the role of systems in habit formation and how to create a system that elevates you to new heights.",
        "Scientific Insights: Gain insights from biology, psychology, and neuroscience to make good habits inevitable and bad habits impossible.",
        "Real-Life Success Stories: Be inspired by true stories of individuals who achieved greatness using the science of small habits.",
        "Comprehensive Guidance: Learn to make time for new habits, overcome motivation challenges, optimize your environment for success, and get back on track when facing setbacks."
    ],
    description: "Unlock the secrets to personal and professional transformation with 'Atomic Habits' by James Clear. This groundbreaking book provides a proven framework for improving your life every day. Clear, a leading expert in habit formation, reveals practical strategies to help you establish positive habits, break free from detrimental ones, and harness the power of small behaviors that yield remarkable results. 'Atomic Habits' empowers you to recognize that it's not a lack of willpower that's holding you back—it's the need for the right system. With a deep understanding of biology, psychology, and neuroscience, Clear distills complex concepts into easily applicable daily routines. Through inspiring anecdotes from Olympians, artists, leaders, physicians, and comedians who harnessed the science of small habits, you'll learn how to make time for new habits, boost motivation, design an environment conducive to success, and get back on track after setbacks. This book will revolutionize your perspective on progress and success, equipping you with the tools and strategies needed to transform your habits, whether you're an individual pursuing personal goals or part of a team or organization striving for excellence.",
    category: "books",
    price: 13.79,
)
books9.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books9.jpg"),
    filename: "books9.jpg"
)

books10 = Product.create(
    name: "Killers of the Flower Moon: The Osage Murders and the Birth of the FBI",
    feature: [
        "New York Times Bestseller: A twisting and haunting true-life murder mystery.",
        "Monstrous Crime in American History: Unveils one of the most shocking crimes in the nation's past.",
        "Acclaimed Author: Written by the author of 'The Wager' and 'The Lost City of Z.'",
        "Critical Acclaim: Praised as a masterful work of literary journalism and a National Book Award Finalist.",
        "Historical Conspiracy Uncovered: Reveals a chilling conspiracy in the 1920s involving the Osage Nation in Oklahoma and the FBI's pursuit of justice."
    ],
    description: "Dive into the riveting narrative of a true-life murder mystery in 'Killers of the Flower Moon,' a New York Times Bestseller by the acclaimed author of 'The Wager' and 'The Lost City of Z.' This haunting account uncovers one of the most monstrous crimes in American history, involving the Osage Nation in 1920s Oklahoma. After an oil discovery on their land, the Osage experienced newfound wealth, but their prosperity soon turned to tragedy as they were systematically murdered. Mollie Burkhart's family became prime targets, with relatives shot and poisoned. The death toll mounted as those investigating the killings met violent ends. With the FBI entering the scene, the story takes a chilling turn, led by the young director J. Edgar Hoover and former Texas Ranger Tom White. Together, they expose a harrowing conspiracy that shook the nation, making this book a masterful work of literary journalism and a National Book Award Finalist.",
    category: "books",
    price: 18.52,
)
books10.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books10.jpg"),
    filename: "books10.jpg"
)

books11 = Product.create(
    name: "Iron Flame (The Empyrean, 2)",
    feature: [
        "Limited First Print Run: Preorder now to receive the exclusive first edition with spray-painted edges and detailed map endpapers.",
        "Compelling Storyline: A tale of survival and intrigue at Basgiath War College, where the stakes are life and humanity.",
        "Challenging Trials: Follow Violet Sorrengail as she faces grueling, brutal, and endurance-stretching tests to prove her worth.",
        "Betrayal and Love: Navigate a complex web of relationships and loyalties, as Violet grapples with her love and a vice commandant's power.",
        "Secrets Unveiled: Discover the ancient mysteries hidden at Basgiath War College in this captivating installment of the Empyrean series."
    ],
    description: "Embark on a thrilling journey with Violet Sorrengail in 'Fourth Wing,' a mesmerizing installment of the Empyrean series. Preorder now to secure your exclusive limited first print run with spray-painted edges and intricate map endpapers. In a world where life and humanity hang in the balance, Violet faces the challenges of Basgiath War College, where survival means overcoming brutal trials and enduring pain. As she strives to prove her worth, she confronts a complex web of relationships and the harsh teachings of a vice commandant who tests her love's limits. Amidst the grueling trials, Violet must uncover the ancient secrets hidden at the college, where dragon riders forge their own rules. Experience a story of resilience, betrayal, and the unraveling of hidden mysteries in this captivating narrative.",
    category: "books",
    price: 18.44,
)
books11.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books11.jpg"),
    filename: "books11.jpg"
)

books12 = Product.create(
    name: "Anatomy & Physiology For Dummies (For Dummies (Lifestyle))",
    feature: [
        "Comprehensive Knowledge: Explore the fascinating world inside the human body and gain insights into its complexity and wonders.",
        "Accessible Learning: Anatomy & Physiology For Dummies combines anatomical terminology with an easy-to-understand approach, making it suitable for students, aspiring healthcare professionals, and the curious.",
        "Covering the Basics: Learn the names, terms, and the inner workings of the human body, from anatomical structures to systems, in a fun and engaging manner.",
        "Understand Health and Disease: Gain knowledge about how the body's structures and systems function in both sickness and health, offering a holistic perspective.",
        "Illustrated Guide: Packed with beautiful illustrations and written in plain English, this book provides a fantastic voyage into the world of human anatomy and physiology."
    ],
    description: "Unlock the mysteries of the human body with 'Anatomy & Physiology For Dummies.' This comprehensive guide delves into the inner workings of the human body, offering insights into its awe-inspiring complexity and countless wonders. Whether you're a student, an aspiring medical or healthcare professional, or simply curious about the intricacies of the human body, this book provides an accessible and enjoyable way to grasp the fundamentals of anatomy and physiology. From understanding anatomical terms to exploring the body's systems and their interactions, you'll gain knowledge about how these structures and systems function in both sickness and health. With its engaging plain English narrative and beautiful illustrations, this book takes you on a fantastic voyage through the human body, making learning a delightful experience.",
    category: "books",
    price: 14.99,
)
books12.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/books12.jpg"),
    filename: "books12.jpg"
)

# Sports & Outdoor
sports1 = Product.create(
    name: "Franklin Sports Outdoor Pickleballs - X-40 Pickleball Balls - USA Pickleball (USAPA) Approved - Official US Open Ball - 3 Packs, 12 Packs, 36 Pickleball Buckets, 100 + 400 Bulk Packs of Pickleballs",
    feature: [
        "Premium quality outdoor pickleballs favored by pro and amateur players",
        "Precision design with 40 machine-drilled holes for balanced flight and consistent spin",
        "Durable one-piece, no-seam construction for longevity on outdoor courts",
        "USA Pickleball approved for official tournament play",
        "Includes 3 X-40 pickleballs with a convenient ball tube for storage and transportation"
    ],
    description: "Franklin's X-40 outdoor pickleballs are the preferred choice of both professional and amateur players. These premium-quality pickleballs are meticulously crafted and extensively tested to ensure top-notch performance and durability. Their precision design, featuring 40 machine-drilled holes, provides a balanced flight pattern and consistent spin that remains uniform across all balls. The one-piece, no-seam construction enhances their outdoor durability, making them resistant to dents and cracking on pickleball courts. Approved by USA Pickleball (USAPA) for official tournament play, these X-40 pickleballs are the selected balls for prestigious events like the US Open Pickleball Championships and USA Pickleball. This set includes three X-40 pickleballs along with a convenient ball tube for easy transportation and storage when you're off the court.",
    category: "sports",
    price: 11.99,
)
sports1.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports1.jpg"),
    filename: "sports1.jpg"
)

sports2 = Product.create(
    name: "Occer 12x25 Compact Kids Binoculars with Low Light Night Vision,Folding Small Waterproof Large Eyepiece Binoculars for Adults,Great for Travel,Bird Watching,Hunting,Hiking,Outdoor Sports",
    feature: [
        "High-powered binoculars with 12x magnification and 25mm objective lens",
        "Wide field of view, 273ft/1000yds, for extended visibility",
        "FMC Broadband coating and premium BAK4 prism for true-to-life imaging",
        "Adjustable eye cups suitable for both eyeglass wearers and non-wearers",
        "Compact and portable design, ideal for various outdoor activities",
        "Durable, life waterproof, and comfortable grip with nonslip rubber armor",
        "Suitable for all ages, making it a great gift for special occasions"
    ],
    description: "These high-powered binoculars provide 12x magnification and a 25mm objective lens, delivering a wide field of view with 273ft/1000yds range, allowing you to see farther and wider. Equipped with FMC Broadband coating and premium BAK4 prism, these binoculars ensure verisimilar and true-to-life imaging. They feature adjustable eye cups that accommodate both eyeglass wearers and non-wearers, offering comfortable viewing experiences. The compact and portable design makes them ideal for various outdoor activities such as bird watching, wildlife observation, and sporting events. These binoculars are not only durable and life waterproof but also comfortable to hold with nonslip rubber armor. They are suitable for users of all ages and make a great gift for special occasions like Father's Day and Children's Day.",
    category: "sports",
    price: 35.99,
)
sports2.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports2.jpg"),
    filename: "sports2.jpg"
)

sports3 = Product.create(
    name: "Franklin Sports Blackhawk Soccer Goal - Pop Up Backyard Soccer Nets - Foldable Indoor + Outdoor Soccer Goals - Portable Adult + Kids Soccer Goal",
    feature: [
        "Backyard soccer goals designed for training and short-sided games",
        "Durable construction with a fiberglass frame and all-weather netting",
        "Includes tie-down ground stakes for stability during gameplay",
        "Portable and foldable with a carry bag for easy transport",
        "Compact 4' x 3' size for skill training and short-sided games"
    ],
    description: "The Blackhawk Pop Up Soccer Goals are the perfect addition to any backyard, instantly transforming it into a personal soccer pitch. Whether you're looking to improve your skills or enjoy short-sided games with friends, these goals have you covered. Built with a durable fiberglass frame and all-weather netting, they are designed to last season after season, ensuring premium quality performance. For stability during gameplay, tie-down ground stakes are included, preventing disruption from powerful shots or strong winds. These portable goals are lightweight and foldable, complete with a carry bag for easy transport. Measuring 4' x 3', they offer a compact size ideal for skill training and short-sided games. Take your soccer game to the backyard, beach, park, or wherever your passion for the game leads you.",
    category: "sports",
    price: 30.99,
)
sports3.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports3.jpg"),
    filename: "sports3.jpg"
)

sports4 = Product.create(
    name: "Spalding Outdoor Basketballs, Performance Rubber Cover Stands up to Asphalt or Concrete - 29.5\", 28.5\", 27.5\"",
    feature: [
        "Official size and weight: Size 7, 29.5\"",
        "Performance outdoor rubber cover for durability",
        "Shipped inflated and game-ready for immediate use",
        "Designed for outdoor play on asphalt or concrete surfaces",
    ],
    description: "The Spalding Outdoor Basketballs are your go-to choice for outdoor play on asphalt or concrete surfaces. These basketballs come in various sizes including 29.5\", 28.5\", and 27.5\" to suit your preferences. They are officially sized and weighted, with the size 7 (29.5\") ball being the standard size. The performance outdoor rubber cover is designed to stand up to the rigors of outdoor play, ensuring durability and long-lasting performance. Plus, these basketballs are shipped inflated and game-ready, allowing you to hit the court without delay. Whether you're practicing your skills or playing a competitive game, these Spalding basketballs are built to perform in outdoor conditions.",
    category: "sports",
    price: 18.03,
)
sports4.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports4.jpg"),
    filename: "sports4.jpg"
)

sports5 = Product.create(
    name: "Spikeball 3 Ball Original Roundnet Game Set - Includes 3 Balls, net and Bag",
    feature: [
        "Competitive Spikeball Game Set for thrilling outdoor play with friends and family",
        "Versatile outdoor game: Suitable for play on grass, sand, or indoors",
        "Complete set includes 3 Spikeball balls, a Spikeball set, drawstring bag, and rulebook",
        "Quick and easy setup for instant fun; made with durable materials for long-lasting outdoor play",
        "Spikeball's mission is to unite people through competitive and fun sports experiences"
    ],
    description: "Elevate your outdoor fun with the Competitive Spikeball Game Set. This exciting lawn and yard game is perfect for gatherings with friends and family. You can set up and play Roundnet on various surfaces, whether it's the backyard grass, the beach sand, or even indoors. The complete set includes everything you need to get started, with 3 Spikeball balls, a Spikeball set, a convenient drawstring bag for storage and portability, and a rulebook for those who want to play by the book. Designed for durability, this Spikeball set ensures hours of competitive play. Spikeball's mission is to bring people together through thrilling competition and endless fun, making this set the perfect choice for both adults and kids.",
    category: "sports",
    price: 62.99,
)
sports5.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports5.jpg"),
    filename: "sports5.jpg"
)

sports6 = Product.create(
    name: "VIFUUR Water Sports Shoes Barefoot Quick-Dry Aqua Yoga Socks Slip-on for Men Women",
    feature: [
        "100% Synthetic construction for durability and comfort",
        "Rubber sole provides foot protection and is wear-resistant",
        "Convenient smooth neck design prevents chafing during wear",
        "Breathable and flexible fabric offers a comfortable fit, similar to wearing socks",
        "Versatile water shoes suitable for various activities including yoga, beach sports, swimming, and more",
        "Available in various sizes to fit different feet, including little kids, big kids, men, and women"
    ],
    description: "These water shoes are the perfect choice for water-related activities and more. Constructed from 100% synthetic materials, they are both durable and comfortable. The rubber sole offers foot protection and is wear-resistant, making them suitable for various outdoor activities. The smooth neck design ensures convenience and prevents chafing during wear. These shoes are designed for a comfortable fit, with breathable and flexible fabrics that feel like socks. They are versatile and ideal for activities such as yoga training, beach sports, swimming, and more. These water shoes are available in various sizes to fit different feet, including little kids, big kids, men, and women.",
    category: "sports",
    price: 11.99,
)
sports6.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports6.jpg"),
    filename: "sports6.jpg"
)

sports7 = Product.create(
    name: "Sport-Brella Versa-Brella SPF 50+ Adjustable Umbrella with Universal Clamp",
    feature: [
        "UPF 50+ protection for safety from 99.5% of UVA and UVB rays",
        "Rugged canopy cover that is tear-resistant",
        "Durable universal clamp for secure attachment to various surfaces",
        "Adjustable to any angle with a 4-way, 360-degree swivel and 2 push button hinges",
        "Conveniently portable and lightweight design with a compact carrying case included",
        "XL size offering a spacious shade area measuring 43 x 44 inches",
        "Versatile use, suitable for the beach, sidelines, and more",
        "Heavy-duty clamp opens up to 1.5 inches for a secure fit"
    ],
    description: "The Versa-Brella is your ultimate clamp-on shade solution, providing UPF 50+ protection against 99.5% of UVA and UVB rays. Its rugged canopy cover is tear-resistant, and it features a durable universal clamp that securely attaches to square and tubular surfaces, such as golf bags, beach chairs, or bleachers. This versatile shade umbrella can be adjusted to any angle using a 4-way, 360-degree swivel and 2 push button hinges, ensuring you stay comfortably shaded. When not in use, it conveniently folds into a compact carrying case, weighing only 1.8 pounds, making it highly portable. The XL size of the Versa-Brella spans 43 x 44 inches, providing ample shade for various outdoor activities. From the beach to the sidelines, it allows you to stay committed to your team, family, and friends while keeping your skin well-protected against the sun.",
    category: "sports",
    price: 42.50,
)
sports7.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports7.jpg"),
    filename: "sports7.jpg"
)

sports8 = Product.create(
    name: "BUZIO Vacuum Insulated Stainless Steel Water Bottle 64oz (Cold for 48 Hrs/Hot for 24 Hrs) BPA Free Double Wall Travel Mug/Flask for Outdoor Sports Hiking, Cycling, Camping, Running",
    feature: [
        "Vacuum insulated with ThermoArmour technology for up to 48 hours of cold beverage retention and 24 hours of hot beverage retention",
        "Comes with 2 caps: a straw lid for cycling and road trips, and a flex cap for beach, camping, and hiking",
        "Made of 100% non-toxic BPA-free plastics and durable food-grade 18/8 stainless steel to prevent oxidation and flavor transfer",
        "User-friendly design with Buzio powder-coat technology and a wide mouth (2.2 inches) for easy gripping, cleaning, and ice-filling",
        "Includes Buzio 64oz Water Bottle, carrying pouch, 2 x straws, bottle brush, and a worry-free lifetime warranty with friendly customer service"
    ],
    description: "Experience exceptional beverage temperature retention with the Buzio 64oz Water Bottle featuring ThermoArmour technology. Keep your drinks cold for up to 48 hours or hot for 24 hours. This stainless steel water bottle includes two versatile caps: a straw lid for cycling and road trips, and a flex cap for outdoor adventures like beach days, camping, and hiking. Crafted from 100% non-toxic BPA-free materials and durable food-grade 18/8 stainless steel, it safeguards your beverages from oxidation and flavor transfer. The Buzio bottle is designed for user-friendliness, with Buzio powder-coat technology for a secure grip, easy cleaning, and hassle-free ice-filling through its wide 2.2-inch mouth. You'll receive the Buzio 64oz Water Bottle, a convenient carrying pouch, two straws, a bottle brush, and the assurance of a worry-free lifetime warranty accompanied by friendly customer service.",
    category: "sports",
    price: 27.98,
)
sports8.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports8.jpg"),
    filename: "sports8.jpg"
)

sports9 = Product.create(
    name: "Orgain Organic Vegan Protein Powder, Creamy Chocolate Fudge - 21g Plant Based Protein, Gluten Free, Dairy Free, Lactose Free, Soy Free, No Sugar Added, Kosher, For Smoothies & Shakes - 2.03lb",
    feature: [
        "Organic Protein Powder: Enjoy the new look and label of Orgain Organic Plant Based Protein Powder in Creamy Chocolate Fudge, with the same great product in a 2.03 Lb container.",
        "Powerful Nutrition: Each serving provides 21 grams of organic plant-based protein sourced from pea, brown rice, and chia seeds. It also contains 2 grams of organic dietary fiber, low net carbs, and zero added sugar, offering a guilt-free protein boost with just 150 calories per serving.",
        "Certified Organic: This protein powder is USDA organic, making it suitable for vegans and those following gluten-free, dairy-free, lactose-free, soy-free, and kosher diets. It's also non-GMO, carrageenan-free, and free from artificial ingredients.",
        "Versatile Usage: Mix this protein powder with water, milk, or your favorite protein shake recipe to kickstart your day or enjoy as a snack. It's a versatile ingredient that can be used in baking to give your cakes, muffins, brownies, or cookies a protein and energy boost.",
        "On-the-Go Nutrition: Ideal for individuals of all ages, this protein powder offers healthy and convenient nutrition for those on the move. Whether you need a meal replacement, a smoothie booster, or post-workout muscle recovery, it's got you covered."
    ],
    description: "Elevate your nutrition with Orgain Organic Plant Based Protein Powder, now featuring a new look and label in Creamy Chocolate Fudge flavor. Inside the 2.03 Lb container, you'll discover a powerhouse of organic goodness. With 21 grams of organic plant-based protein derived from peas, brown rice, and chia seeds, this protein powder is not only a protein source but also a rich source of 2 grams of organic dietary fiber. Low in net carbs, free from added sugar, and delivering just 150 calories per serving, it's a guilt-free option for health-conscious individuals. This product is USDA organic certified and caters to a variety of dietary preferences, including vegan, gluten-free, dairy-free, lactose-free, soy-free, and kosher. It's also non-GMO, carrageenan-free, and contains no artificial ingredients. Whether you mix it with water, milk, or incorporate it into your favorite protein shake recipe, this protein powder is perfect for a quick breakfast or snack. Additionally, it can be a secret ingredient in your baking endeavors, giving your cakes, muffins, brownies, or cookies a delightful protein and energy boost. With its versatility and on-the-go convenience, it's a go-to choice for men, women, and kids, offering meal replacement solutions, smoothie enhancements, muscle recovery support, and pre- or post-workout nutrition.",
    category: "sports",
    price: 25.64,
)
sports9.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports9.jpg"),
    filename: "sports9.jpg"
)

sports10 = Product.create(
    name: "Band-Aid Brand Flexible Fabric Adhesive Bandages for Wound Care and First Aid, All One Size, 100 Count",
    feature: [
        "Comprehensive First Aid: This pack includes 100 Band-Aid Brand Sterile Flexible Fabric Adhesive Bandages, an essential addition to your first aid supplies for protecting minor wounds like cuts, scrapes, and burns.",
        "Memory Weave Fabric: Designed with Memory Weave fabric, these first aid bandages offer superior comfort and flexibility. They stretch, bend, and move with your skin, allowing you to maintain mobility and comfort throughout the day. They also feature a Quilt-Aid Comfort Pad that cushions and safeguards painful wounds, potentially preventing reinjury.",
        "Long-Lasting Adhesion: These Band-Aid Brand Flexible Fabric adhesive bandages are built to stay put for up to 24 hours. They include a unique Hurt-Free Pad that won't stick to the wound. Instead, they wick away blood and fluids, facilitating pain-free removal.",
        "Infection Protection: Recommended by doctors, these bandages help protect minor wounds from dirt and germs for up to 24 hours. Studies have shown that wounds covered with bandages tend to heal faster than uncovered ones.",
        "Proper Wound Care: An excellent addition to your first aid kit, these flexible fabric bandages should be applied to clean, dry skin. Change them daily, or as needed, especially if they become wet. For optimal wound care, consider treating the wound with an antibiotic ointment such as Neosporin before applying the bandage."
    ],
    description: "Ensure you're well-prepared for any minor mishaps with the 100-count Band-Aid Brand Sterile Flexible Fabric Adhesive Bandages. These adhesive bandages are a fundamental inclusion in your first aid arsenal, offering protection for minor wounds such as cuts, scrapes, and burns. Crafted with Memory Weave fabric, they prioritize comfort and flexibility. These bandages readily stretch, bend, and move with your skin, allowing you to maintain your daily activities without discomfort. What sets them apart is the Quilt-Aid Comfort Pad, which provides cushioning and protective care to painful wounds, potentially preventing reinjury. Their adhesive strength ensures they stay put for up to 24 hours, and they feature a unique Hurt-Free Pad that's designed not to stick to the wound, making removal gentle and pain-free. Coming from the trusted doctor-recommended Band-Aid Brand, these bandages provide up to 24 hours of defense against dirt and germs, potentially preventing infection. Plus, studies have shown that wounds covered with a bandage tend to heal faster than uncovered ones. An essential part of your first aid kit, these flexible fabric bandages should be applied to clean, dry skin and changed daily or as needed, especially when they become wet. For comprehensive wound care, consider using a wound antibiotic ointment like Neosporin prior to bandage application.",
    category: "sports",
    price: 11.78,
)
sports10.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports10.jpg"),
    filename: "sports10.jpg"
)

sports11 = Product.create(
    name: "HotHands Hand Warmers - Long Lasting Safe Natural Odorless Air Activated Warmers - Up to 10 Hours of Heat - 40 Pair",
    feature: [
        "Safe and Natural Heat: These warmers provide odorless, long-lasting heat and are designed for single use. They should not be applied directly to the skin. TSA approved and made in the USA using both domestic and imported materials. No shaking or kneading is required.",
        "Easy Activation: To activate the warmers, simply remove them from the outer package and shake to start the heating process. They reach their desired heat level in 15-30 minutes. If the heat decreases, expose the warmer to air and give it a shake. After use, dispose of the warmer with regular garbage. The ingredients are environmentally friendly.",
        "Multipurpose Warmers: These single-use, air-activated heat packs are versatile and suitable for everyday warmth. They come in various styles designed for your hands, feet, and body.",
        "Ideal for Various Activities: These warmers are perfect for a wide range of outdoor activities, including tailgating at events, outdoor sporting events, hunting, fishing, camping, hiking, yard work, jogging, or walking your pet. They are convenient, compact, and portable with an ultra-thin design and adhesive backing for easy application."
    ],
    description: "Experience safe, natural, and long-lasting warmth with these single-use air-activated heat warmers. They are odorless, TSA approved, and made in the USA using a combination of domestic and imported materials. Not only do they provide heat without any shaking or kneading, but they also offer the convenience of easy activation: simply remove a warmer from its outer package and give it a quick shake to initiate the heating process. Within 15-30 minutes, you'll enjoy the desired level of warmth. If the heat diminishes, a brief exposure to air and a gentle shake will rejuvenate it. After use, disposal is hassle-free as the ingredients are environmentally safe. These versatile warmers are available in various styles designed for hands, feet, and the body, making them suitable for everyday warmth. Whether you're tailgating at an event, participating in outdoor sports, or embarking on activities like hunting, fishing, camping, hiking, yard work, jogging, or dog walking, these warmers are your dependable companions. They are convenient, compact, and portable with an ultra-thin design and adhesive backing for easy application.",
    category: "sports",
    price: 24.00,
)
sports11.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports11.jpg"),
    filename: "sports11.jpg"
)

sports12 = Product.create(
    name: "Gatorade Classic Thirst Quencher, Variety Pack, 12 Fl Oz (Pack of 24)",
    feature: [
        "Don’t Count the Days: Make the Days Count. Enhance your home workouts with Gatorade Thirst Quencher.",
        "Electrolyte Replenishment: Gatorade contains essential electrolytes to replace what's lost when you sweat, going beyond just water.",
        "Carbohydrate Energy: Replenish your body's fuel stores with carbohydrate energy, the preferred source of fuel.",
        "Proven Performance: Tested in the lab and trusted by professionals.",
        "Variety of Flavors: This pack includes an assortment of flavors, such as Lemon Lime, Orange, Fruit Punch, and Berry.",
        "Convenient Packaging: Each pack contains 24 bottles, with each bottle holding 12 ounces of Gatorade."
    ],
    description: "Transform your home workouts with Gatorade Thirst Quencher, the perfect companion to ensure that you make every day count. This pack includes 24 bottles, each containing 12 ounces of Gatorade in a variety of flavors, including Lemon Lime, Orange, Fruit Punch, and Berry. When you exercise and sweat, you lose more than just water, and that's where Gatorade steps in. It's enriched with critical electrolytes to help replenish what you lose through perspiration, ensuring your body gets what it needs during intense workouts. Moreover, Gatorade is designed to provide your body with essential carbohydrate energy, which happens to be your body's preferred source of fuel. Trusted by professionals and rigorously tested in the lab, Gatorade Thirst Quencher is your reliable choice to refuel and replenish during your home workouts. So, don't count the days; make them count with the support of Gatorade.",
    category: "sports",
    price: 12.84,
)
sports12.photo.attach(
    io: URI.open("https://amuhzaan-seeds.s3.us-west-1.amazonaws.com/sports12.jpg"),
    filename: "sports12.jpg"
)


titles = [
    "Great product", "Excellent choice", "Worth the money", "Impressive", 
    "Highly recommended", "Very satisfied", "Good purchase",
    "Not worth it", "Disappointing", "Terrible experience", "Regrettable",
    "Waste of money", "Poor quality", "Worst purchase ever"
]
bodies = [
    "This product exceeded my expectations.", "I couldn't be happier with my purchase.",
    "It's a great value for the price.", "I love it!", "I would buy it again in a heartbeat.",
    "It's exactly what I was looking for.", "I'm very impressed with this product.",
    "I'm very dissatisfied with this product.", "It fell short of my expectations.",
    "I wouldn't recommend this product to anyone.", "I regret buying this.",
    "Total waste of money.", "The quality is terrible.", "It's the worst purchase I've made."
]

user_id = 2 #demo2

(1..40).each do |product_id|
    rating = rand(1..5)  
    title = titles.sample  
    body = bodies.sample  

    review = Review.create(
        user_id: user_id,
        product_id: product_id,
        rating: rating,
        title: title,   
        body: body     
    )
end

puts "Done!"
