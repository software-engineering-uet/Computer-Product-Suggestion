var download = require('image-downloader');
options = {
    url: 'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/cdn.fptshop.com.vn/Uploads/Originals/2018/8/15/636699244300754504_Lenovo-330-15.png',
    dest: './public/img/laptop/1.png'        // Save to /path/to/dest/photo.jpg
  }
   
  download.image(options)
    .then(({ filename, image }) => {
    })
    .catch((err) => {
        throw err;
        })