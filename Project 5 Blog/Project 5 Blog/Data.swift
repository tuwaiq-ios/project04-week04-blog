//
//  Data.swift
//  Project 5 Blog
//
//  Created by Eth Os on 17/03/1443 AH.
//

import Foundation


struct Blog {
    let articleImage: String
    let title: String
    let subtitle: String
    let article: String
    let writerImage: String
    let writerName : String
}


var articles = [Blog(articleImage: "1",
                     title: "BLOG",
                     subtitle: "Italy’s Puglia.",
                     article: "The trulli of Alberobello were listed as UNESCO world heritage in 1996 and date all the way back to the mid-14th century. These distinct structures house hotels, private residences, restaurants, and bars, and offers no shortage of specialty shops. If you love shopping for local crafts, you can score traditional handcrafted treasures here to take home . Have you ever heard of Alberobello and would you like to go here? 🇮🇹",
                     writerImage: "eth",
                     writerName: "Atheer"),
                Blog(articleImage: "2",
                     title: "BLOG",
                     subtitle: "The best of Britain.",
                     article: """
                                  🇬🇧 Old-world charm, vibrant history, and picture-perfect landscapes await you in these lovely nooks and corners of its countryside. 🍃


                                 𝗕𝗲𝗮𝘂𝘁𝗶𝗳𝘂𝗹 𝗦𝗽𝗼𝘁𝘀 𝘁𝗼 𝗩𝗶𝘀𝗶𝘁 📝
                                 1. Lake District National Park
                                 2. Stockbridge, Edinburgh
                                 3. Grasmere
                                 4. Haworth, Bronte Country
                                 5. The Garrick Inn, Stratford-upon-Avon
                                 6. The Crooked House of Windsor
                                 7. Bath, Somerset
                                 8. Thornton-le-Dale Duck Pond, North Yorkshire
                                 9. Anne Hathaway's Cottage, Stratford-upon-Avon
                                 10. Lyme Park "
                                """,
                     writerImage: "sahar",
                     writerName: "Sahar"),
                Blog(articleImage: "3",
                     title: "BLOG",
                     subtitle: "Disney Land Vibes.",
                     article:"""
                            The ever-so-beautiful France has plenty of gems to explore, one of the most sought-after ones being the Mont-Saint-Michel. The world-famous destination always puts on a sublime, ever-changing show all throughout the seasons. If you want to be transported to the Middle Ages, make sure to visit this magical place. 🏰"
                            """,
                     writerImage: "eth",
                     writerName: "Atheer"),
                Blog(articleImage: "4",
                     title: "BLOG",
                     subtitle: "The Beauty of Japan.",
                     article:"""
                            Boasting a blend of culture, tradition, and modernity, Japan offers diverse landscapes that are sure to inspire all kinds of travelers. 🌕🇯🇵

                            𝗕𝗲𝗮𝘂𝘁𝗶𝗳𝘂𝗹 𝗗𝗲𝘀𝘁𝗶𝗻𝗮𝘁𝗶𝗼𝗻𝘀 𝗶𝗻 𝗝𝗮𝗽𝗮𝗻
                            1. Gifu Prefecture
                            2. Yoshino Mountain, Nara
                            3. Shirahige Shrine, Shiga
                            4. Mt. Fuji, Shizuoka
                            5. Colony of Mitsumata, Kyoto
                            6. Gujō, Gifu
                            7. Nagano Prefecture
                            8. Mie Prefecture
                            9. Mt. Fuji, Shizuoka
                            10. Tottori Sand Dunes, Tottori"
                            """,
                     writerImage: "sahar",
                     writerName: "Sahar"),
                Blog(articleImage: "5",
                     title: "BLOG",
                     subtitle: "Monarch Butterfly.",
                     article:"""
                            This was shot in the Monarch Butterfly Biosphere Reserve, a World Heritage Site in Mexico containing most of the overwintering sites of the eastern population of the monarch butterfly. 🇲🇽

                            "Leaving the sanctuary at the end of the season, I looked up at the sky and I saw thousands and thousands of butterflies leaving the sanctuary towards their places where they came from, either to the USA or Canada."

                            Every autumn, butterflies from North America return to the site and cluster on the forest reserve. In the spring, they embark on an 8-month migration that takes them all the way to Eastern Canada and back, during which time four consecutive generations are born and die."
                            """,
                     writerImage: "eth",
                     writerName: "Atheer"),
                Blog(articleImage: "7",
                     title: "BLOG",
                     subtitle: "Canada's Breathtaking Spots.",
                     article:"""
                             From natural landscapes to modern cities, Canada is truly all-encompassing when it comes to gorgeous scenery. 🇨🇦

                            𝗕𝗲𝗮𝘂𝘁𝗶𝗳𝘂𝗹 𝗗𝗲𝘀𝘁𝗶𝗻𝗮𝘁𝗶𝗼𝗻𝘀 𝗶𝗻 𝗖𝗮𝗻𝗮𝗱𝗮 🌈
                            1-3. Niagara Falls, Ontario
                            4. Spirit Island, Alberta
                            5. Jasper, Alberta
                            6. Golden fields near Stony Plain, Alberta
                            7. Emerald Lake, British Columbia
                            8. Moraine Lake Road, Alberta
                            9. Lake Louise, Alberta
                            10. Edmonton, Alberta"
                            """,
                     writerImage: "eth",
                     writerName: "Atheer"),
                Blog(articleImage: "8",
                     title: "BLOG",
                     subtitle: "Basking in Paradise.",
                     article:"""
                             🐠 Situated in the Atlantic Ocean, The Bahamas is a tropical paradise with more than 700 islands. 🇧🇸

                             Curious about the sunken plane in the first shot? Read this:
                             Urban legend has it that this plane was owned by Pablo Escobar during the 1970’s smuggling era. It crashed when the pilot, high on his own cargo, missed the runway and ended up in the water. While the actual story is likely a lot less interesting, it still makes for a fun place to snorkel!"
                            """,
                     writerImage: "sahar",
                     writerName: "Sahar"),
                Blog(articleImage: "10",
                     title: "BLOG",
                     subtitle: "Mallorca.",
                     article:"""
                              The charming town is packed with character and flavor, with beaches, architectural marvels, shops,  and fresh produce farms to explore. 😍

                             𝗕𝗲𝗮𝘂𝘁𝗶𝗳𝘂𝗹 𝗠𝘂𝘀𝘁-𝗩𝗶𝘀𝗶𝘁 𝗦𝗽𝗼𝘁𝘀 𝗶𝗻 𝗠𝗮𝗹𝗹𝗼𝗿𝗰𝗮
                             1. Palma De Mallorca
                             2. Alcúdia
                             3. Deià
                             4. Valldemossa
                             5. Palma de Mallorca
                             6. Port de Sóller and Sóller
                             7. Alcudia
                             8. Caló des Moro"
                            """,
                     writerImage: "eth",
                     writerName: "Atheer"),

]

