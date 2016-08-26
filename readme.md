# Riot コンポ通信 (仮)


##コンポーネント同士の通知

コンポ部分と普通のhtmlが入り組んだときに、  
コンポ同士が通信しあう状況を想定した場合のアプローチを考えてみた。

mixinを定義する

```js
riot.mixin('notify', {
  notify: riot.observable()
});
```

上記をmixinとしてコンポーネントに読み込む  
```js
this.mixin('notify');
````

A -> B を 呼び出したい時に、オブザーバブルのインスタンスを共有して通信を行う
```js
// A
this.notify.trigger('hello', 'world')

// B
this.notify.on('hello', function(word) {
  console.log('Hello world');
});

```