<price>

  <h2>合計 { total } 円</h2>

  <script>
    total = 0;

    this.mixin('notify');

    _this = this;

    this.notify.on('sum', function(price) {
      _this.total =  price;
      _this.update();
    });

  </script>

</price>

