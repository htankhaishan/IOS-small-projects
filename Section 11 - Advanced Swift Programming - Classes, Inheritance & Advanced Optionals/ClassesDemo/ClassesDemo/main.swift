var skeleton1 = Enemy(health: 5, attackStrength: 5)

var skeleton2 = skeleton1

skeleton1.takeDamage(amount: 2)
print(skeleton1.health )
print(skeleton2.health)

//let dragon = Dragon()
//dragon.wingSpan = 5
//dragon.attackStrength = 15
//dragon.attack()
//dragon.move()
//dragon.talk(speech: "My teeth are swords!")
