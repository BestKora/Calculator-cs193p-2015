# Cтэнфордский курс CS193P 2015 "**Разработка iOS 8 приложений с Swift**". Код Лекции 2.

Лектор работал с Xcode 6.2 iOS 8.2 Swift 1.1

Для Swift 1.2  при появлении ошибки 

  ```swift
   Method 'perform' with Objective-C selector 'perform: ' conflicts with previous declaration with the same Objective-C selector
```

 Достаточно сделать один (или оба) из этих методов private

 
  ```swift
   class ViewController: UIViewController{
    
    @IBOutlet weak var display: UILabel!

    .  .  .  .  .  .  .  .  .
    func performOperation (operation: Double -> Double){...
    .  .  .  .  .  .  .  .  .
    private func performOperation (operation: (Double, Double) -> Double ){
   
```

и проблема «уйдет».

Код на отдельных этапах Лекции 2 доступен через Tags

[Лекция 2 первая часть](http://bestkora.com/IosDeveloper/lektsiya-2-cs193p-winter-2015-bolshe-xcode-i-swift-mvc-chast-1/)-> [Lecture2/1](https://github.com/BestKora/Calculator-cs193p-2015/tree/Lecture2/1)

[Лекция 2 вторая часть без Autolayout](http://bestkora.com/IosDeveloper/lektsiya-2-cs193p-winter-2015-bolshe-xcode-i-swift-mvc-chast-2/)-> [Lecture2/2](https://github.com/BestKora/Calculator-cs193p-2015/tree/Lecture2/2)

[Лекция 2 вторая часть c Autolayout](http://bestkora.com/IosDeveloper/lektsiya-2-cs193p-winter-2015-bolshe-xcode-i-swift-mvc-chast-3/)-> [Lecture2/3](https://github.com/BestKora/Calculator-cs193p-2015/tree/Lecture2/3)


