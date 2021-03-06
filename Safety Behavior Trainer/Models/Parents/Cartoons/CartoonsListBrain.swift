//
//  CartoonsListBrain.swift
//  Safety Behavior Trainer
//
//  Created by Pavel Tsymbal on 13.06.21.
//

import Foundation

struct CartoonsListBrain {
    var selectedCartoonsList: CartoonsListEntity?
    
    mutating func setSelectedCartoonsList(list: CartoonsListEntity) -> Void {
        selectedCartoonsList = list
    }
    
    let headers: [String] = ["По локации", "По названию"]
    
    let items: [[CartoonsListEntity]] = [
        [
            CartoonsListEntity(
                title: "В городе",
                items: [
                    "Смешарики: \"Безопасное место\"",
                    "Смешарики: \"Зебры в городе\"",
                    "Смешарики: \"Метро\"",
                    "Три котенка: \"Служит для почты ящик почтовый\"",
                    "Спасик: \"Спасик в городе\"",
                    "Аркадий Паровозов: \"Классики\", \"Качели\"",
                    "Аркадий Паровозов: \"Незнакомец - 2\", \"Прятки\"",
                    "Аркадий Паровозов: \"Не касайтесь железных предметов\"",
                    "Аркадий Паровозов: \"В магазине\", \"В транспорте\" \"В метро\""
                ]
            ),
            CartoonsListEntity(
                title: "Дома",
                items: [
                    "Смешарики: \"Игры с огнем\"",
                    "Смешарики: \"Тушение электроприборов\" (2 части)",
                    "Смешарики: \"Невеселые петарды\"",
                    "Три котенка: \"Коробок - шершавый бок\"",
                    "Три котенка: \"В проводах гуляет ток\"",
                    "Три котенка: \"Газ - невидимка\"",
                    "Три котенка: \"А возьму - ка я пилу, ножницы и нож\"",
                    "Три котенка: \"Океан в ванной\"",
                    "Спасик: \"Спасик на пожаре\"",
                    "Фиксики: \"Фен\"",
                    "Фиксики: \"Короткое замыкание\"",
                    "Фиксики: \"Термометр\"",
                    "Фиксики: \"Электрочайник\"",
                    "Фиксики: \"Микроволновка\"",
                    "Аркадий Паровозов: \"Газ\", \"Спички\"",
                    "Аркадий Паровозов: \"Лекарство\", \"Уборка\"",
                    "Аркадий Паровозов: \"Не залезать на подоконник\"",
                    "Аркадий Паровозов: \"Незнакомец\", \"Обогреватель\"",
                ]
            ),
            CartoonsListEntity(
                title: "На дороге",
                items: [
                    "АЗБУКА БЕЗОПАСНОСТИ НА ДОРОГЕ ТЁТУШКИ СОВЫ",
                    "Серия 1: Правила дорожного движения",
                    "Серия 2: Дорога и транспорт",
                    "Серия 3: Двор",
                    "Серия 4: Дорожные знаки",
                    "Серия 5: Пешеходный переход",
                    "Серия 6: Перекрёсток",
                    "Серия 7: Правила безопасности на разных дорогах",
                    "Серия 8: Плохая погода на дороге",
                    "Серия 9: Обходить транспорт на остановке запрещено",
                    "Серия 10: Метро .Железнодорожный переезд",
                    "Серия 11: Правила поведения в автомобиле",
                    "Серия 12: Самокат, велосипед",
                ]
            ),
            CartoonsListEntity(
                title: "На природе",
                items: [
                    "Смешарики: \"Опасные сосульки\"",
                    "Смешарики: \"На тонком льду\"",
                    "Смешарики: \"Как не замерзнуть от холода\"",
                    "Аркадий Паровозов: \"Остерегайтесь сосулек\"",
                    "Смешарики: \"Опасные игрушки\"",
                    "Смешарики: \"Место для купания\"",
                    "Смешарики: \"За бортом\"",
                    "Три котенка: \"Знай цветные правила\"",
                    "Три котенка: \"Мы так не играли\"",
                    "Три котенка: \"Не пойдем одни к реке\"",
                    "Спасик: \"Спасик на природе\"",
                    "Аркадий Паровозов: \"Лес\", \"Молния\"",
                    "Аркадий Паровозов: \"Не отплывайте далеко от берега\"",
                ]
            ),
            
        ],
        [
            
            CartoonsListEntity(
                title: "Смешарики",
                items: [
                    "Серия 1: Светофор",
                    "Серия 2: Пешеходная \"Зебра\"",
                    "Серия 3: Самая страшная машина",
                    "Серия 4: Метро",
                    "Серия 5: Гармония светофора",
                    "Серия 6: Пляшущие человечки",
                    "Серия 7: Мигающие человечки",
                    "Серия 8: Тушение электроприборов. Часть 1",
                    "Серия 9: За бортом",
                    "Серия 10: Тушение электроприборов. Часть 2",
                    "Серия 11: Игры с огнём",
                    "Серия 12: Некультурные автомобили",
                    "Серия 13: Опасные сосульки",
                    "Серия 14: Гонки с препятствиями",
                    "Серия 15: Где кататься?",
                    "Серия 16: Кто быстрее?",
                    "Серия 17: Опасные игрушки",
                    "Серия 18: Как не замёрзнуть в холода",
                    "Серия 19: Теплее, ещё теплее",
                    "Серия 20: Нетерпеливые водители",
                    "Серия 21: На тонком льду",
                    "Серия 22: Невесёлые петарды",
                    "Серия 23: Место для купания",
                    "Серия 24: Мотоциклетные правила",
                    "Серия 25: Недетский знак",
                    "Серия 26: На остановке",
                    "Серия 27: В автобусе",
                    "Серия 28: Пристегните ремни",
                    "Серия 29: Пограничная территория",
                    "Серия 30: Зебры в городе!",
                    "Серия 31: Безопасное место",
                    "Серия 32: Автомобили специального назначения",
                ]
            ),
            CartoonsListEntity(
                title: "Фиксики и безопасность",
                items: [
                    "Огнетушитель",
                    "Гирлянда",
                    "Термометр",
                    "Короткое замыкание",
                    "Микроволновка",
                    "Лифт",
                    "Фен",
                    "Электрочайник",
                ]
            ),
            CartoonsListEntity(
                title: "Уроки Тётушки Совы",
                items: [
                    "Серия 1: Бытовые приборы",
                    "Серия 2: Дорога",
                    "Серия 3: Электричество",
                    "Серия 4: Бродячие животные",
                    "Серия 5: Горячие предметы",
                    "Серия 6: Микробы",
                    "Серия 7: Лекарства",
                    "Серия 8: Незнакомцы",
                    "Серия 9: Огонь",
                    "Серия 10: Острые предметы",
                    "Серия 11: Подземелья",
                    "Серия 12: Высота",
                    "Серия 13: Водоёмы",
                    "Серия 14: Про грибы",
                ]
            ),
            CartoonsListEntity(
                title: "Лёлек и Болек",
                items: [
                    "Пожар",
                    "На пожарном полигоне",
                    "Игра со спичками",
                    "Неудачный день",
                    "Завтра будет лучше",
                    "Когда зажигается ёлка",
                    "Просто искорка",
                ]
            ),
            CartoonsListEntity(
                title: "Лукоморье Пикчерс",
                items: [
                    "Знак \"Осторожно, дети!\"",
                    "Пешеходный переход",
                    "Не кури",
                    "Игра с огнем",
                    "Светофор",
                    "Где опасно играть",
                    "Опасные сосульки",
                    "Незнакомец",
                    "Два похожих знака",
                    "Электрические розетки",
                    "Гололед",
                    "Острые предметы",
                ]
            ),
            CartoonsListEntity(
                title: "Спасик и его друзья",
                items: [
                    "Правила при пожаре",
                    "Правила поведения в городе",
                    "Правила поведения на природе",
                    "Правила безопасного поведения в быту",
                ]
            ),
            CartoonsListEntity(
                title: "Аркадий Паровозов",
                items: [
                    "Газ.Спички",
                    "Осторожно!Пожар!",
                    "Осторожно!Электричество!",
                    "Незнакомец",
                    "Почему опасно прислоняться к дверям автобуса?",
                    "Безопасность в метро",
                    "Осторожно!Яд!",
                    "Безопасность зимой",
                    "Безопасность на улицах и дорогах",
                ]
            ),
            CartoonsListEntity(
                title: "Азбука Безопасности",
                items: [
                    "Азбука безопасности в интернете",
                    "На пути железнодорожном будь предельно осторожным",
                    "\"Ток жесток\" - Правила безопасности на железной дороге",
                    "Правила поведения детей на объектах железнодорожного транспорта.",
                    "Приключения Зины и Кеши в метрополитене",
                    "Землетрясения",
                    "Пожар в квартире",
                    "Пожарная безопасность на кухне",
                    "Пожарная безопасность в квартире",
                    "Безопасность в доме",
                    "Правила безопасного поведения в быту",
                    "Новая азбука безопасности. Что делать если стучат в дверь?",
                    "Безопасность в доме. Решение опасных проблем",
                    "Пожарная безопасность детей в лесу",
                    "Лесной пожар",
                    "Пожар в лесу",
                    "На льду водоёмов",
                    "Игры на тонком льду",
                    "Правила безопасности зимой",
                    "Правила поведения зимой",
                    "Правила безопасности на улице",
                    "Правила безопасности на дороге",
                    "Ремень безопасности и ПДД",
                    "Братья пилоты. Безопасность дорожного движения",
                    "Правила безопасного поведения при гололеде",
                    "Правила поведения при наводнениях",
                    "Правила безопасного поведения на льду",
                    "Правила безопасного поведения при цунами",
                    "Цунами",
                    "Гавань ракушек. Цунами",
                    "Правила безопасного поведения при землетрясениях",
                    "Один дома",
                    "Как Коксик и Зубок запускали петарды",
                    "Коксик и Зубок. Как избавиться от вредных привычек",
                    "Памятка для детей содержит правила поведения детей в различных ситуациях.",
                    "Например, как вести себя с незнакомыми людьми на улице, в подъезде, в лифте.",
                ]
            ),
            CartoonsListEntity(
                title: "Пожарный Сэм",
                items: [
                    "По тонкому льду",
                    "Морозный день",
                    "Роковой снежок",
                    "Океан огней",
                    "Собака спасатель",
                    "Значок пожарного",
                    "Двойная опасность",
                    "Цвет опасности",
                    "Тревога на пляже",
                    "Опасные прятки",
                    "Спасение пожарного",
                    "Односторонняя улица",
                    "Открытие железной дороги",
                ]
            ),
            CartoonsListEntity(
                title: "Волшебная книга МЧС",
                items: [
                    "По тонкому льду",
                    "Морозный день",
                    "Роковой снежок",
                    "Океан огней",
                    "Собака спасатель",
                    "Значок пожарного",
                    "Двойная опасность",
                    "Цвет опасности",
                    "Тревога на пляже",
                    "Опасные прятки",
                    "Спасение пожарного",
                    "Односторонняя улица",
                    "Открытие железной дороги",
                ]
            ),
            
        ],
    ]
    
}
