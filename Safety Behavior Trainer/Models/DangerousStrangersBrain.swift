//
//  DangerousStrangersBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 11.05.21.
//

import Foundation

struct DangerousStraingersBrain {
    var currentStoryNumber = 0
    
    func getCurrentStory() -> StrangerStory {
        return stories[currentStoryNumber]
    }
    
    mutating func nextStory() -> Void {
        if !isLastStory() {
            currentStoryNumber += 1
        }
    }
    
    mutating func previousStory() -> Void {
        if currentStoryNumber > 0 {
            currentStoryNumber -= 1
        }        
    }
    
    func isLastStory() -> Bool {
        return currentStoryNumber + 1 == stories.count
    }
    
    func isFirstStory() -> Bool {
        return currentStoryNumber == 0
    }
    
    let stories = [
        StrangerStory(title: "ЗВОНОК В ДВЕРЬ", text: """
    Серёжа остался дома один. Бабушка ушла в магазин и сказала, что скоро придёт. Не прошло и пяти минут, раздался звонок в дверь.
        – Кто там? – подойдя к двери, спросил Серёжа.
        – Сантехник. Открывайте!
        – Взяв табурет, Серёжа подвинул его к двери, встал на него и посмотрел в глазок. На лестничной площадке стоял какой-то незнакомый дядька.
        – Папа сейчас в ванной, вот выйдет и откроет, - сообщил Серёжа, вспомнив, как его учили родители отвечать, когда звонит в дверь незнакомый человек.
        Через минуту Серёжа снова посмотрел в глазок – там никого не было. Незнакомец ушёл.
 """, imageName: "ring"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Услышав звонок в дверь, всегда смотри в глазок.

    2) Не открывай дверь незнакомому человеку, даже, если у него ласковый голос, как бы он себя ни назвал – работником полиции, знакомым родителей.

    3) Скажи незнакомцу, что ты дома не один и сейчас позовёшь кого-нибудь из взрослых.
 """, imageName: "ring-2"),
        StrangerStory(title: "КЛЮЧ!", text: """
    Алёша носил ключ на шнурке, привязывал его к поясу и прятал в кармане.
    Однажды, возвращаясь со школы, Алёша увидел во дворе ребят. Он положил рюкзачок на лавочку и побежал к ним.
    Вдруг к рюкзаку подошёл какой-то мужчина и принялся его рассматривать. Мальчик подбежал к незнакомцу.
    – А, мальчик! Это твой рюкзак? Какой красивый! С модными рисунками и надписями! Я ни у кого такого не видел. Где тебе его купили? – стал расспрашивать мужчина.
    – Рюкзак как рюкзак, ничего особенного, – пробурчал Алёша, взял его и собрался уходить.
    – Давай я тебе помогу, книжки-то тяжёлые. Тебя, наверное, бабушка ждёт? А где ты живёшь? Где твои ключи? В рюкзаке?
    Мальчик ничего не ответил, «Какой подозрительный дядечка, всё чего-то допытывался и расспрашивал», – подумал Алёша и быстро побежал домой.
 """, imageName: "key"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Носи ключи в одном и том же кармане или на специальной ленте, которая крепится к одежде.

    2) Не говори на каждом шагу о ваших семейных планах\\поездках.

    3) Не хвастайся ценными вещами.

    4) Если незнакомец расспрашивает тебя о местожительстве, работе родителей и частной жизни семьи, немедленно прекрати с ним разговор!
 """, imageName: "key"),
        StrangerStory(title: "ЗВОНОК ПО ТЕЛЕФОНУ", text: """
    В этот день Серёжке предстояло быть дома одному. Бабушка заболела, и её положили в больницу, а родители как всегда утром отправились на работу.
    Вдруг раздался телефонный звонок. Серёжа подумал, что это звонит мама или папа … А это была какая-то незнакомая тётенька, которая ласковым голосом спросила:
    – Как тебя зовут, деточка?
    Она задавала ещё много разных вопросов: о любимых мультиках, о родителях, о бабушке…
    – А знаешь, – неожиданно сказала она, – я подруга твоей бабушки, мы в одном классе учились. Я сейчас привезу фруктов, мама пойдёт навещать её и передаст от меня гостинец. Только вот я адрес ваш забыла…
    – А я помню! – и Серёжа назвал свой адрес.
    Никому не говори. Пусть это будет сюрприз, – попросила незнакомка.
    Но мальчик не утерпел и позвонил маме.
    – Какая подруга бабушки? Какой сюрприз? – всполошилась мама. – Никому не открывай! Я сейчас приеду!
 """, imageName: "ring-3"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Не вступай в телефонный разговор с незнакомым человеком, не говори, что родители не дома.

    2) Не отвечай ни на какие вопросы, положи трубку.

    3) О любом звонке незнакомца тут же сообщи родителям.
 """, imageName: "police"),
        StrangerStory(title: "БУДЬ ВНИМАТЕЛЬНЕЕ", text: """
    Однажды, возвращаясь из магазина, Оля заметила, что за ней украдкой идёт незнакомый дядька. Она свернула во двор, он последовал за ней. Незнакомец уже совсем близко! Хочет войти в подъезд! Что же делать?
    Оля быстро набрала код входной  двери и думала, что проскочит в подъезд, но незнакомец успел схватить дверную ручку и вошёл в подъезд за девочкой.
    Он вызвал лифт.
    – Тебе, девочка, на какой?
    Оля молча отстранилась от незнакомца. Тогда он схватил её за руку и потащил в лифт.
    Девочка стала громко кричать. Ей повезло. Этот крик услышал сосед. Мужчина открыл дверь и вышел на лестничную площадку. Там он увидел Олю, которая плакала и вырывалась из рук бандита.
    Сосед достал мобильный телефон и стал звонить в полицию. Незнакомец увидев это сразу убежал.
 """, imageName: "pay_attention"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Не входи в подъезд, если рядом стоит незнакомец.

    2) Подожди, когда пройдёт домой кто-нибудь из знакомых, живущих в твоём доме.

    3) Позвони родителям и попроси, чтобы тебя встретили.

    4) Не заходи в лифт с незнакомцами!

    5) Будь внимателен при входе в квартиру. Преступник может ждать поблизости.
 """, imageName: "abduction"),
        StrangerStory(title: "ПОТЕРЯШКА", text: """
    Мама взяла Катю с собой в магазин, но та быстро устала и начала капризничать.
    – «Мама, пойдём домой!»
    – «Ну хорошо, - сказала мама, - подожди меня на детской площадке у магазина. Я оплачу продукты и вернусь за тобой. Никуда не уходи!»
    Катя вышла на площадку и заметила неподалёку котёнка. Она подошла к нему и попыталась погладить, а он убежал. Катя обошла дом и попала в соседний двор, но котёнка там не оказалось.
    Девочка стала его искать, уходя всё дальше. Оглядевшись по сторонам, Катя увидела незнакомые высокие дома и поняла, что заблудилась. Девочка расплакалась. Где тот магазин и детская площадка, на которой они должны встретиться с мамой?
    Потом девочка вспомнила, чему её учили родители. Она подошла к полицейскому и всё ему рассказал. Он взял девочку за руку и повёл. Очень скоро перед нами оказалась та самая детская площадка, а мама стояла, взволнованно смотрела по сторонам и искала Катю.
 """, imageName: "cry"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Не уходи с того места, где тебя оставили.

    2) Если ты потерялся, подумай, к кому можно обратиться за помощью: на улице – к бабушкам, гуляющим с детьми мамам, к дворнику; в магазине – к продавцу или кассиру. Но лучше подойти к полицейскому.

    3) Важно знать свою фамилию, как зовут родителей, адрес и номера телефонов!!!
 """, imageName: "police-2"),
        StrangerStory(title: "ЧУЖАЯ МАШИНА", text: """
    Миша стоял у дороги рядом с домом и ждал маму с работы. Неожиданно рядом с ним остановилась машина.
    Эй, мальчик, как мне проехать к магазину «Игрушки»? – с улыбкой спросил мужчина, высунувшись из машины. Миша стал объяснять незнакомцу.
    – А знаешь что, мальчик, садись-ка в машину и покажи мне дорогу, а я тебе что-нибудь куплю там, согласен?
    – Спасибо, но игрушки мне покупают родители. И они говорят, что нельзя садиться в машины к незнакомым людям, – ответил Миша.
 """, imageName: "car"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Если рядом с тобой притормаживает машина, не вступай в разговор с водителем!

    2) Не садись в чужую машину, даже если за рулём сидит женщина или приветливая девушка.

    3) Если тебя насильно пытаются посадить в машину, попробуй вырваться и убежать, зови на помощь.
 """, imageName: "candy"),
        StrangerStory(title: "ОПАСНЫЕ МЕСТА", text: """
    Славик с бабушкой пошли в парк на родник. Там было много людей. Бабушка стояла в очереди, чтобы набрать чистой родниковой воды, а Славик смотрел по сторонам.
    Куда течёт вода из родника? Славик пошёл вдоль ручейка, который весело журчал и бежал вниз к оврагу. «Ой как здесь здорово! Сколько разных птиц! А вон и белка с ёжиком!» – радовался он и подбежал поближе к ежу.
    Вокруг было безлюдно. Вдруг Славик услышал, что его кто-то зовёт. Он повернул голову и обомлел – из-за дерева выглядывал какой-то странный дядька. Бормоча что-то, он поманил мальчика пальцем.
    – Ма-ма-а! – закричал Славик.
    Человек сделал несколько шагов навстречу, а Славик со всех ног бросился назад к роднику, к людям, к бабушке. Он бежал так быстро, что незнакомец даже не пытался его догнать.
 """, imageName: "forest"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Не уходи без взрослых далеко от дома, в лес, на реку.

    2) Не ходи по проходным дворам, пустырям, новостройкам. В таких местах могут поджидать хулиганы, злодеи и агрессивно настроенные люди.

    3) Увидев хулиганов, постарайся изменить маршрут.

    4) Не вступай с незнакомцами в разговор, сделай вид, что спешишь.
 """, imageName: "building"),
        StrangerStory(title: "В ТЕМНОТЕ", text: """
    Коля решил зайти в гости к своему другу Павлику, который жил на соседней улице. Ребята заигрались и не заметили, как наступил вечер.
    – «Ой, мне пора домой», - заторопился Коля, - я обещал родителям, что буду гулять во дворе и приду в семь часов.
    Было уже половина восьмого. Коля выбежал из подъезда и с досадой подумал: «Зря я не сказал родителям, куда пошёл. Они, наверное, волнуются!». Мальчик хотел сократить дорогу и пошёл через сквер. Впереди он увидел незнакомца. Мужчина громко кричал и слонялся из стороны в сторону. Заметив мальчика, он остановился, а потом направился к Коле. Коля испугался и побежал в сторону через газоны на освещённую улицу. Незнакомец бросился за ним. Оставалось до дома совсем немного.
    «Вот и мой двор!» – обрадовался Коля и увидел родителей, которые уже ждали его возле подъезда.
 """, imageName: "abduction-2"),
        StrangerStory(title: "ЧТО НАДО ДЕЛАТЬ?", text: """
    1) Не гуляй до темноты, не засиживайся в гостях до вечера.

    2) Не возвращайся домой в одиночку.

    3) Предупреди родителей,  с кем и куда ты пошёл.

    4) Вечером иди только по людным, освещённым местам.

    5) Запомни «островки безопасности» – отделы полиции, посты ГИБДД, охраняемые административные здания.
 """, imageName: "stranger"),
        StrangerStory(title: "ВАЖНЫЕ НОМЕРА", text: """
    101 – пожарная (МЧС)
    102 - милиция
    103 – скорая помощь
    104 – газовая служба
    112 – единая служба спасения
    Важно знать номера своих родителей!
 """, imageName: "phone-call")
    ]
}
