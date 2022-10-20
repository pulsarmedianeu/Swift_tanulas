import Foundation


//  001_For    -----------------------------------------//
/* 1.  szamok kiirása 1 től 100 ig indexukkel egyutt   */

    //one_hundred_numbers()


//  001_For    For-----------------------------------------//
/* 2.  Minden második szam kiirása 100 től 1 ig indexukkel egyutt   */

    //hundred_one_numbers()
    //print("\(index) - \(value)")


//  001_For    For-----------------------------------------//
/* 3.  tomb bejarasa foreach enumerated clouserel   */

    //foreachEmumerated()



//  002_Array    -----------------------------------------//
/* 1. Szám tömb kiirása map closure-val.
 input: [1,2,3,4,5,6,7,8,9,0], var arr = Array(1...100)
 output:print("\(index),\(value)")  */

    //arrayFor()


//  002_Array    Array-----------------------------------------//
/* 2. tömb feltöltése random számmal */

    //arrayRandom()


//  002_Array    -----------------------------------------//
/* 3. két tömb össszefésülése a hosszabbik alapján default értékkel feltöltve a rövidebb tömböt */

    //arrayZip()



//  002_Array    -----------------------------------------//
/* 4. tömbhöz készítsünk saját iterátort és while al járjuk be */

    //arrayMakeIterator()



//  003_MapFilterReduce    -------------------------------//
/* 1. 1..100 tomb filterrel adjuk vissza a 100 at */

    //simpleFilter100()



//  003_MapFilterReduce    -------------------------------//
/* 2. 1..5000 tomb, filterrel csak a párosok, aztan  map Int into String el adjuk vissza.
 .suffix(3) optimalizalva */
    
    //LazyFilterMap()


//  003_MapFilterReduce    -------------------------------//
/* 3. 1..5000 tomb, az elemeket összeadva */

    //simpleReduce()


//  003_MapFilterReduce    -------------------------------//
/* 4. Bevásárló kosár készítése, total(ár) függvénnyel  */

    //var cart = Cart2()
    //cart.addItem(Item2(name:"proba 1",price:10))
    //cart.addItem(Item2(name:"proba 2",price:20))

    //print(cart.total)

//  003_MapFilterReduce    -------------------------------//
/* 5. reduceInto: 1...5 jegyek, gyujtsuk le melyik jegybol hany van es feliratozzuk szovegesen    */

    //reduceInto()


//  005_InOutParameter    -------------------------------//
/* 1. struct User(userId,name)  saveUser(inout user, id = 100)*/

    //printUser()


//  006_Closure    -------------------------------//
/* 1. Simple Closure */

    //echo("hello simple closure")



//  006_Closure    -------------------------------//
/* 2. timed fv with Closure */

    //getPosts { posts in
    //    print(posts)
    //}



//  007_Enum    -------------------------------//
/* 1 struct helyett enum hasznalata, switch es if feloldassal */

    //fillPrimitives()

    //shapes.forEach { primitive in
    //    printShape(primitive)
    //}
    
    //circlePrint(primitive: shapes[0])



//  007_Enum    -------------------------------//
/* 2 struct szerkezet és tipus elrejtese enumban, tombben tobb tipus */

    //printTeacherAndStudent()

//  007_Enum    -------------------------------//
/* 3 url parameter from Enum */

    //printWeatherUrl()


//  007_Enum    -------------------------------//
/* 4 enum with init */

    //print(getImageExtension(for: "bitmap"))


//  008_Lazy    -------------------------------//
/* 1 question level, simulation fetch API */

    //getLazyExam()

//  009_ComputedProperty    -------------------------------//
/* 1 Workout Time szamitasa */

    //elapsedTime()

//  010_PropertyObserver    -------------------------------//
/* 1  a didset nem fut le az init eseteben ezert felul kell irni, de hogyan?*/

    //printUrl()

//  011_Struct    -------------------------------//
/* 1  Több init a structhoz ugy hogy ne veszitsuk el a beepitett initet*/


    //let name = Name(name: "beepitett init")
    //let name2 = Name()
    //print(name)
    //print(name2)

//  012_Class    -------------------------------//
/* 1  make tesla from car*/


    //let name = Name(name: "beepitett init")
    //let name2 = Name()
    //print(name)
    //print(name2)


//  050_Sequence    -----------------------------------------//
/* 1. CountDown iterator struktura irasa */

    //var countDown = Countdown(start:10)

    //for c in countDown {
    //    print(c)
    //}


RunLoop.main.run()
