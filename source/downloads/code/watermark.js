// Require library
gd = require('easy-gd')

// Open an image
gd.createFrom("original.jpg", function (err, image) {
    // Resize image to fit into 480x360
    var thumb = image.resized({width: 480, height: 360})

    // Open watermark image
    gd.createFrom('watermark.png', function (err, watermark) {
        // Put the watermark at the center of the image
        thumb.watermark(watermark, {x:0.5, y:0.5})

        // Save result with target format inherited from the source image
        // {ext} gets automatically replaced with 'jpg'
        thumb.save('resized.{ext}', {jpegquality: 90}, function (err, watermark) {
            console.log('Done')
        })
    })
})