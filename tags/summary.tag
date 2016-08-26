<summary>
  <p>
    <input type="text" name="foo1" onblur={ up } value="0" placeholder="0">
  </p>
  <p>
    <input type="text" name="foo2" onblur={ up } value="0" placeholder="0">
  </p>
  <p>
    <input type="text" name="foo3" onblur={ up } value="0" placeholder="0">
  </p>

  <style scope>
    :scope {
      font-size: 12px;
    }
    input {
      width: 200px;
      line-height: 30px;
      height: 30px;
      padding: 0 10px;
      box-sizing: border-box;
      text-align: right;
    }
  </style>

  <script>
    sum = 0;
    this.mixin('notify');
    up() {
      sum = parseInt(this.foo1.value, 10) + parseInt(this.foo2.value, 10) + parseInt(this.foo3.value, 10)
      this.notify.trigger('sum', sum)
    }
  </script>
</summary>