//
//  Model.swift
//  5_Lesson
//
//  Created by Evgeny Mastepan on 30.06.2025.
//

import Foundation

struct TableItem: Identifiable {
    static let cellName = "FrozenCell"
    var id = UUID().uuidString
    var image: String
    var title: String
    var description: String? = nil
    
    static func getFirstData() -> [[TableItem]] {
        [
            [
                TableItem(image: "logo", title: "Новый дом"),
                TableItem(image: "logo", title: "Ковчеги"),
                TableItem(image: "logo", title: "Беженцы"),
                TableItem(image: "logo", title: "Конец Винтерхоума"),
            ],
            [
                TableItem(image: "1", title: "Палатка", description: "Это простое жилище базового уровня, доступное для постройки сразу. Актуальна на старте игры, когда ресурсов крайне мало."),
                TableItem(image: "2", title: "Дом", description: "Наиболее продвинутое жилище в игре. Его можно как построить с нуля, так и перестроить из Палатки или Барака"),
                TableItem(image: "3", title: "Барак", description: "Это достаточно крепкое жильё, доступное после освоения технологии - Барак"),
                TableItem(image: "4", title: "Детское убежище", description: "В этом здании дети будут пережидать дневное время и обучаться, на ночь возвращаясь в жилые здания."),
                TableItem(image: "5", title: "Бар", description: "Если предоставить горожанам возможность собираться вместе и выпивать, каждый вечер Недовольство будет снижаться"),
                TableItem(image: "6", title: "Арена", description: "Люди, живущие в пределах зоны влияния арены смогут сбрасывать напряжение, наблюдая за кровавыми побоищами."),
                TableItem(image: "7", title: "Кладбище", description: "Когда кто-то умирает, уровень Надежды уменьшается. Если негде похоронить мертвеца, люди испытывают недовольство."),
                TableItem(image: "8", title: "Снежная яма", description: "Трупы из Снежной ямы смогут ускорить выздоровление больных граждан"),
                TableItem(image: "9", title: "Лазарет", description: "Продвинутое медицинское учреждение, доступное после освоения технологии - Лазарет."),
                TableItem(image: "10", title: "Дом исцеления", description: "Это больница под управлением верующих."),
                TableItem(image: "11", title: "Дом опеки", description: "После постройки Дома опеки тяжело больные или калеки перестают занимать места в Санитарных пунктах"),
                TableItem(image: "12", title: "Баня", description: "Наличие бани в жилом квартале снижает риск рабочих заболеть"),
                TableItem(image: "13", title: "Санитарный пункт", description: "Санитарный пункт доступен изначально и является базовым медицинским учреждением, необходимым для функционирования города на начальных этапах развития"),
                TableItem(image: "14", title: "Амбулатория", description: "В Амбулатории используется экспериментальное лечение и сильнодействующие лекарства, поэтому её посещение может помочь тяжелобольным людям, но у лечения могут быть побочные эффекты."),
                TableItem(image: "15", title: "Часовня", description: "Символ нашей веры и главное место поклонения. Наполняет умиротворением сердца верующих и даёт надежду всему городу."),
            ]

        ]
    }
}

struct LindemannData: Identifiable {
    static let cellName = "LindemannCell"
    var id = UUID().uuidString
    var album: String
    var song: String
    var desc: String?
    
    static func getData() -> [[LindemannData]] {
        [
            // Альбом "Skills in Pills" (2015)
            [
                LindemannData(album: "Skills in Pills", song: "Skills in Pills", desc: "Ироничный гимн фармацевтике"),
                LindemannData(album: "Skills in Pills", song: "Ladyboy", desc: "Провокационная песня о гендерных границах"),
                LindemannData(album: "Skills in Pills", song: "Fat", desc: "Саркастичный взгляд на ожирение"),
                LindemannData(album: "Skills in Pills", song: "Fish On", desc: "Метафора зависимостей"),
                LindemannData(album: "Skills in Pills", song: "Children of the Sun", desc: "Апокалиптическая баллада"),
                LindemannData(album: "Skills in Pills", song: "Home Sweet Home", desc: "Тёмная сторона семейного очага"),
                LindemannData(album: "Skills in Pills", song: "Cowboy", desc: "Грубая пародия на вестерны"),
                LindemannData(album: "Skills in Pills", song: "Golden Shower", desc: "Провокация с эстетикой BDSM")
            ],
            
            // Альбом "F & M" (2019)
            [
                LindemannData(album: "F & M", song: "Steh auf", desc: "Хард-роковый призыв к действию"),
                LindemannData(album: "F & M", song: "Ich weiß es nicht", desc: "Экспериментальный звук"),
                LindemannData(album: "F & M", song: "Allesfresser", desc: "Мрачная метафора потребления"),
                LindemannData(album: "F & M", song: "Blut", desc: "Поэзия в духе готических баллад"),
                LindemannData(album: "F & M", song: "Knebel", desc: "Эротико-агрессивный трек"),
                LindemannData(album: "F & M", song: "Platz eins", desc: "Самоирония о звездной болезни"),
                LindemannData(album: "F & M", song: "Wer weiß das schon", desc: "Философские размышления"),
                LindemannData(album: "F & M", song: "Ach so gern", desc: "Мрачный кабаре-рок"),
                LindemannData(album: "F & M", song: "Schlaf ein", desc: "Колыбельная в стиле Линдемана")
            ],
            
            // Отдельные синглы и каверы
            [
                LindemannData(album: "Songs", song: "Mathematik", desc: "Кавер на трек Агаты Кристи"),
                LindemannData(album: "Songs", song: "Ich hasse Kinder", desc: "Скандальный сингл 2022 года"),
                LindemannData(album: "Songs", song: "Alle Tage ist kein Sonntag", desc: "Кавер на народную немецкую песню")
            ]
        ]
    }
}

struct TownData: Identifiable {
    static let cellName = "TownCell"
    var id = UUID().uuidString
    var name: String
    var iconName: String
    
    static func getData() -> [TownData] {
        [
            TownData(name: "Москва", iconName: "star.fill"),
            TownData(name: "Санкт-Петербург", iconName: "theatermask.and.paintbrush"),
            TownData(name: "Новосибирск", iconName: "atom"),
            TownData(name: "Екатеринбург", iconName: "hammer.fill"),
            TownData(name: "Казань", iconName: "moon.stars.fill"),
            TownData(name: "Владивосток", iconName: "ferry.fill"),
            TownData(name: "Сочи", iconName: "sun.max.fill"),
            TownData(name: "Калининград", iconName: "leaf.fill"),
            TownData(name: "Барнаул", iconName: "gear.circle.fill"),
            TownData(name: "Берлин", iconName: "flag.fill"),
            TownData(name: "Токио", iconName: "bolt.fill"),
            TownData(name: "Стамбул", iconName: "moon.fill"),
            TownData(name: "Рим", iconName: "hourglass"),
            TownData(name: "Барселона", iconName: "soccerball"),
            TownData(name: "Амстердам", iconName: "bicycle"),
            TownData(name: "Прага", iconName: "heart.fill"),
            TownData(name: "Вена", iconName: "music.note"),
            TownData(name: "Сидней", iconName: "sailboat.fill"),
            TownData(name: "Торонто", iconName: "film.fill"),
            TownData(name: "Дубай", iconName: "dollarsign.circle.fill") 
        ]
    }
}
