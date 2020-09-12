//
//  ScrollViewController.swift
//  CM Project (Draft 1)
//
//  Created by Jia Yu Lee on 25/8/20.
//  Copyright © 2020 Jia Yu. All rights reserved.
//

import UIKit

var nameOfTopic = "Topic"
var nameOfSubtitle = "Subtitle"
var nameOfDescription = "Description"
var thingsToBring = "Description"
var actionsNeeded = "Actions"
var emergencyNumbers = "Numbers"
var disasters = "Disasters"
var selectedImage = "Tokyo.jpg"


class ScrollViewController: UIViewController {

    
    @IBOutlet weak var Img_1: UIImageView!
    @IBOutlet weak var Tokyo_1: UIView!
    @IBOutlet weak var Img_2: UIImageView!
    @IBOutlet weak var Brunei_1: UIView!
    @IBOutlet weak var Img_3: UIImageView!
    @IBOutlet weak var Beijing_1: UIView!
    @IBOutlet weak var Img_4: UIImageView!
    @IBOutlet weak var Cambodia_1: UIView!
    @IBOutlet weak var Img_5: UIImageView!
    @IBOutlet weak var Shanghai_1: UIView!
    @IBOutlet weak var Img_6: UIImageView!
    @IBOutlet weak var HongKong_1: UIView!
    @IBOutlet weak var Img_7: UIImageView!
    @IBOutlet weak var Jakarta_1: UIView!
    @IBOutlet weak var Img_8: UIImageView!
    @IBOutlet weak var Osaka_1: UIView!
    @IBOutlet weak var Img_9: UIImageView!
    @IBOutlet weak var Malaysia_1: UIView!
    @IBOutlet weak var Img_10: UIImageView!
    @IBOutlet weak var Taiwan_1: UIView!
    @IBOutlet weak var Img_11: UIImageView!
    @IBOutlet weak var Thailand_1: UIView!
    
    var Haze = "Haze: \n Information about the disaster: \n Air pollution is caused by solid and liquid particles and certain gases that are suspended in the air. These particles and gases can come from car and truck exhaust, factories, dust, pollen, mold spores, volcanoes and wildfires. \n Preperation needed for disaster: \n 1. Ensure you have a few face mask with you\n 2. Ensure you have the necessary\n medication/ things if you have respitatory problems "
    
    var PoorAirVentilation = "Poor Air Ventilation: \n Information about the disaster: \n Indoor air pollution is higher than that outdoors. The situation could be aggravated by factors such as high-rise living, subdivided flats, a lack of windows and ventilation in some rooms, and restaurants occupying ground-floor premises in residential buildings \n Preperation needed for disaster: \n 1. 1. Ensure you have a few face mask with you\n 2. Ensure you have the necessary\n medication/ things if you have respitatory problems"
    
    var Cyclones = "Cyclones: \n Information about the disaster: \n A cyclone is a system of winds rotating counterclockwise in the Northern Hemisphere arounda low pressure center. The swirling air rises and cools, creating clouds and precipitation. \n Preperation needed for disaster: \n 1. non perishable food and enough bottled water e.g.energy bars\n 2. a flashlight with extra batteries\n 3. Inform someone outside the cyclone area of your plans\n 4. Keep updated on the forecast and updates from the local agencies"
    
    var Droughts = "Droughts: \n Information about the disaster: \n It happens when there is a prolonged period of time\n when water is not avaliable \n Preperation needed for disaster: \n 1. Keep a watch out on the forecast by the local authorities\n 2. Ensure you have bottled water"
    
    var Earthquake = "Earthquake: \n Information about the disaster: \n An earthquake is the result of a sudden release of stored energy in the Earth's crust that creates seismic waves \n Preperation needed for disaster: \n 1. 1. Bring some non pershiable food and bottled water\n 2. A flashlight with extra batteries\n 3. Mini first aid kit\n 4. Essential medicine\n 5. A whistle"
    
    var FlashFlood = "Flash flood: \n Information about the disaster: \nThe inundation of a normally dry area caused by rising water in an existing waterway, such as a river, stream, or drainage ditch. \n Preperation needed for disaster: \n 1. Keep updated on the weather forecast\n 2. Evacuate the place before the flood occurs "
    
    var Floods = "Floods: \n Information about the disaster: \n Flooding occurs most commonly from heavy rainfall when natural watercourses do not have the capacity to carry excess water. \n Preperation needed for disaster: \n 1. Bring some non pershiable food and bottled water\n 2. Keep updated on the weather forecast\n 3. Flashlight and extra batteries\n 4. Evacuate the place before the flood occurs"
    
    var ForestFire = "Forest Fire: \n Information about the disaster: \n Forest fires are uncontrolled fire occurring in vegetation more than 6 feet (1.8 m) in height. These fires often reach the proportions of a major conflagration and are sometimes begun by combustion and heat from surface and ground fires."
    
    var HeatWave = "Heat Wave: \n Information about the disaster: \n A heat wave, or heatwave, is a period of excessively hot weather, which may be accompanied by high humidity, especially in oceanic climate countries. \n Preperation needed for disaster: \n 1. Always check local weather forecast\n 2. Bring necassary medication\n 3. Bring light, loose-fitting, light coloured clothes"
    
    var HeavyRainfall = "Heavy Rainfall: \n Information about the disaster: \n Heavy rainfall is more than 0.30 inches of rain per hour. \n Preperation needed for disaster: \n 1. Bring extra clothes (to change if needed)\n 2. Rain coat/ umbrella"
    
    var HecticWeather = "Hectic Weather: \n Information about the disaster: \n The weather changes really fast and unexpectedly \n Preperation needed for disaster: \n 1. Always lookout for weather forecast for the day\n 2. Always have a poncho, umbrella, sunscreen and sunglasses\n 3. Have a waterbottle "
    
    var LandSlide = "Heavy Rainfall: \n Information about the disaster: \n A landslide is defined as the movement of a mass ofrock, debris, or earth down a slope. Landslides are a type of mass wasting, which denotes any down-slope movement of soil and rock under the direct influence of gravity."
    
    var Snow = "Snow: \n Information about the disaster: \n Snow comprises individual ice crystals that grow whilesuspended in the atmosphere—usually within clouds—and then fall\n Preperation needed for disaster: \n 1. Winter clothes\n 2. Flashlights\n 3. have some non perishable food\n 4. Mini first aid kit"
    
    var Typhoon = "Typhoon: \n Information about the disaster: \n A typhoon is a mature tropical cyclone that develops between 180° and 100°E in the Northern Hemisphere. \n Preperation needed for disaster: \n 1. nonperishable food and enough bottled water e.g.energy bars\n 2. a flashlight with extra batteries\n 3. Inform someone outside the cyclone area of your plans\n 4. Keep updated on the forecast and updates from the local agencies"
    
    var Volcaniceruption = "Volcanic eruption: \n Information about the disaster: \n When volcanoes erupt they can spew hot, dangerous gases, ash, lava and rock that can cause disastrous loss of life and property, especially in heavily populated areas. \n Preperation needed for disaster: \n 1. Know the area well if volcanic eruption has taken place before\n 2. Know the evacuation plans in the area should an eruption occur\n 3. Do bring along\n - N95 mask\n - non persihable food\n - whistle\n - cotton clothes\n - Flashlight\n - extra batteries"
    
    var Tsunami  = "Tsunami: \n Information about the disaster: \n A series of waves in a water body caused by the displacement of a large volume of water, generally in an ocean or a large lake. \n Preperation needed for disaster: \n Get to high ground as far inland as possible. Be alert to signs of a tsunami, such as a sudden rise or draining of ocean waters. Listen to emergency information and alerts. Evacuate: DO NOT wait! Leave as soon as you see any natural signs of a tsunami or receive an official tsunami warning."

    @IBAction func tokyoButton(_ sender: Any) {
        
        nameOfTopic = "TOKYO"
        nameOfSubtitle = "Tokyo, Japan"
        nameOfDescription = "Tokyo, Japan’s busy capital, mixes the ultramodern and the traditional, from neon-lit skyscrapers to historic temples. The opulent Meiji Shinto Shrine is known for its towering gate and surrounding woods. The Imperial Palace sits amid large public gardens. The city’s many museums offer exhibits ranging from classical art (in the Tokyo National Museum) to a reconstructed kabuki theater (in the Edo-Tokyo Museum)."
        thingsToBring = " 1. Flashlight (Phone flashlight)\n 2. Evacuate the place before the flood occurs\n 3. Mini first aid kit\n 4. Essential medicine\n 5. A whistle\n 6. Winter clothes"
        actionsNeeded = "1. Keep updated on the weather forecast"
        emergencyNumbers = "Abulence: 119\n Fire Brigade: 119\n Polic: 110"
        disasters = "\(Typhoon)\n\n\(Earthquake)\n\n\(Cyclones)\n\n\(Snow)\n\n\(Tsunami)"
        selectedImage = "Tokyo.jpg"
        
    }
    
    @IBAction func bruneiButton(_ sender: Any) {
        
        nameOfTopic = "BRUNEI"
        nameOfSubtitle = "Brunei"
        nameOfDescription = "Brunei is a tiny nation on the island of Borneo, in 2 distinct sections surrounded by Malaysia and the South China Sea. It's known for its beaches and biodiverse rainforest, much of it protected within reserves. The capital, Bandar Seri Begawan, is home to the opulent Jame’Asr Hassanil Bolkiah mosque and its 29 golden domes. The capital's massive Istana Nurul Iman palace is the residence of Brunei’s ruling sultan."
        thingsToBring = " 1. Ensure you have a few face mask with you\n 2. Ensure you have the necessary medication/ things if you have respitatory problems\n 3. Whistle\n 4. Cotton t-shirt to filter air\n 5. Flashlight (Phone flashlight)"
        actionsNeeded = "1. Become familiar with the land around you; learn whether lanslide have occurred in the area around you\n 2. Keep updated on the weather forecast\n 3. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 991\n Fire Brigade: 995\n Polic: 993"
        disasters = "\(Floods)\n\n\(LandSlide)\n\n\(Haze)"
        selectedImage = "Brunei.jpg"

    }
    
    @IBAction func beijingButton(_ sender: Any) {
        
        nameOfTopic = "BEIJING"
        nameOfSubtitle = "Beijing"
        nameOfDescription = "Beijing, China’s sprawling capital, has history stretching back 3 millennia. Yet it’s known as much for modern architecture as its ancient sites such as the grand Forbidden City complex, the imperial palace during the Ming and Qing dynasties. Nearby, the massive Tiananmen Square pedestrian plaza is the site of Mao Zedong’s mausoleum and the National Museum of China, displaying a vast collection of cultural relics."
        thingsToBring = " 1. A flashlight (Phone flashlight)\n 2. Mini first aid kit\n 3. Essential medicine\n 4. A whistle\n 5. Bring light, loose-fitting, light coloured clothes\n 6. Cotton clothes"
        actionsNeeded = "1. Keep updated on the weather forecast\n 2. Should a flood occur soon, evacuate the place first before it happens\n 3. Become familiar with the land around you; learn whether lanslide have occurred in the area around you"
        emergencyNumbers = "Abulence: 120/999\n Fire Brigade: 119\n Polic: 119"
        disasters = "\(Earthquake)\n\n\(Floods)\n\n\(HeatWave)\n\n\(LandSlide)"
        selectedImage = "Beijing.jpg"

    }
    
    @IBAction func cambodiaButton(_ sender: Any) {
        
        nameOfTopic = "CAMBODIA"
        nameOfSubtitle = "Cambodia"
        nameOfDescription = "Cambodia is a Southeast Asian nation whose landscape spans low-lying plains, the Mekong Delta, mountains and Gulf of Thailand coastline. Phnom Penh, its capital, is home to the art deco Central Market, glittering Royal Palace and the National Museum's historical and archaeological exhibits. In the country's northwest are the ruins of Angkor Wat, a massive stone temple complex built during the Khmer Empire."
        thingsToBring =  " 1. Flashlight (Phone flashlight)\n 2. Bring extra clothes (to change if needed)\n 3. Rain coat/ umbrella \n 4. Ensure you have bottled water\n 5. Ensure you have a few face mask with you\n 6. Ensure you have the necessary medication/ things if you have respitatory problem"
        actionsNeeded = "1. Keep updated on the weather forecast\n 2. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 119\n Fire Brigade: 118\n Polic: 117"
        disasters = "\(Floods)\n\n\(HeavyRainfall)\n\n\(Droughts)\n\n\(Typhoon)\n\n\(Haze)"
        selectedImage = "Cambodia.jpg"

        
    }
    
    @IBAction func shanghaiButton(_ sender: Any) {
        
        nameOfTopic = "SHANGHAI"
        nameOfSubtitle = "Shanghai, China"
        nameOfDescription = "Shanghai, on China’s central coast, is the country's biggest city and a global financial hub. Its heart is the Bund, a famed waterfront promenade lined with colonial-era buildings. Across the Huangpu River rises the Pudong district’s futuristic skyline, including 632m Shanghai Tower and the Oriental Pearl TV Tower, with distinctive pink spheres. Sprawling Yu Garden has traditional pavilions, towers and ponds."
        thingsToBring = " 1. A flashlight (Phone flashlight)\n 2. Mini first aid kit\n 3. Essential medicine\n 4. A whistle\n 5. Bring light, loose-fitting, light coloured clothes"
        actionsNeeded = "1. Keep updated on the weather forecast\n 2. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 120\n Fire Brigade: 119\n Polic: 110"
        disasters = "\(Droughts)\n\n\(Earthquake)\n\n\(Floods)\n\n\(HeatWave)\n\n\(Typhoon)"
        selectedImage = "Shanghai.jpg"


    }
    
    @IBAction func hongkongButton(_ sender: Any) {
        
        nameOfTopic = "HONG KONG"
        nameOfSubtitle = "Hong Kong, China"
        nameOfDescription = "Hong Kong, officially the Hong Kong Special Administrative Region of the People's Republic of China, is a metropolitan area and special administrative region of the People's Republic of China on the eastern Pearl River Delta of the South China Sea."
        thingsToBring = " 1. Bring extra clothes (to change if needed)\n 2. Rain coat/ umbrella\n 3. Ensure you have a few face mask with you\n 4. Ensure you have the necessary\n 5. medication/ things if you have respitatory problems"
        actionsNeeded = "1. Keep updated on the weather forecast\n 2. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 999\n Fire Brigade: 999\n Polic: 999"
        disasters = "\(HeavyRainfall)\n\n\(Floods)\n\n\(Droughts)\n\n\(ForestFire)\n\n\(PoorAirVentilation)"
        selectedImage = "Hong Kong.jpg"


    }
    
    @IBAction func jakartaButton(_ sender: Any) {
        
        nameOfTopic = "JAKARTA"
        nameOfSubtitle = "Jakarta, Indonedia"
        nameOfDescription = "Jakarta, Indonesia's massive capital, sits on the northwest coast of the island of Java. A historic mix of cultures – Javanese, Malay, Chinese, Arab, Indian and European – has influenced its architecture, language and cuisine. The old town, Kota Tua, is home to Dutch colonial buildings, Glodok (Jakarta’s Chinatown) and the old port of Sunda Kelapa, where traditional wooden schooners dock."
        thingsToBring = " 1. Bring extra clothes (to change if needed)\n 2. Ensure you have a few face mask with you\n 3. Ensure you have the necessary medication/ things if you have respitatory problems\n 4. A flashlight (Phone flashlight)\n 5. Mini first aid kit\n 6. Essential medicine\n 7. A whistle"
        actionsNeeded = "1. Keep updated on the weather forecast\n 2. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 119\n Fire Brigade: 113\n Polic: 110"
        disasters = "\(Earthquake)\n\n\(Volcaniceruption)\n\n\(Floods)\n\n\(Haze)"
        selectedImage = "Jakarta.jpg"


    }
    
    @IBAction func osakaButton(_ sender: Any) {
        nameOfTopic = "OSAKA"
        nameOfSubtitle = "Osaka, Japan"
        nameOfDescription = "Osaka is a large port city and commercial center on the Japanese island of Honshu. It's known for its modern architecture, nightlife and hearty street food. The 16th-century shogunate Osaka Castle, which has undergone several restorations, is its main historical landmark. It's surrounded by a moat and park with plum, peach and cherry-blossom trees. Sumiyoshi-taisha is among Japan’s oldest Shinto shrines."
        thingsToBring = "1. Flashlight (Phone flashlight)\n 2. Evacuate the place before the flood occurs\n 3. Mini first aid kit\n 4. Essential medicine\n 5. A whistle\n 6. N95 mask\n 7. Cotton clothes"
        actionsNeeded = "1. Keep updated on the weather forecast\n 2. Should a flood occur soon, evacuate the place first before it happens\n 3. Inform someone else outside the country of your plans\n 4. Know the area well if volcanic eruption has taken place before\n 5. Know the evacuation plans in the area should an eruption occur"
        emergencyNumbers = "Abulence: 119\n Fire Brigade: 119\n Polic: 110"
        disasters = "\(Floods)\n\n\(Typhoon)\n\n\(Earthquake)\n\n\(Cyclones)\n\n\(Volcaniceruption)\n\n\(Tsunami)"
        selectedImage = "Osaka.jpg"

    }
    
    @IBAction func malaysiaButton(_ sender: Any) {
        nameOfTopic = "MALAYSIA"
        nameOfSubtitle = "Malaysia"
        nameOfDescription = "Malaysia is a Southeast Asian country occupying parts of the Malay Peninsula and the island of Borneo. It's known for its beaches, rainforests and mix of Malay, Chinese, Indian and European cultural influences. The capital, Kuala Lumpur, is home to colonial buildings, busy shopping districts such as Bukit Bintang and skyscrapers such as the iconic, 451m-tall Petronas Twin Towers."
        thingsToBring = "1. Flashlight (Phone flashlight)\n 2. Whistle\n 3. Cotton t-shirt to filter air\n 4. A few face masks\n 5. Ensure you have the necessary medication/ things if you have respitatory problems\n 6. Mini first aid kit\n 7. Essential medicine"
        actionsNeeded = "1. Keep updated on weather forecast\n 2. Become familiar with the land around you; learn whether lanslide have occurred in the area around you\n 3. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 999\n Fire Brigade: 994\n Polic: 999"
        disasters = "\(Floods)\n\n\(LandSlide)\n\n\(Haze)\n\n\(Earthquake)\n\n\(Droughts)\n\n\(Tsunami)"
        selectedImage = "Malaysia.jpg"

    }
    
    @IBAction func taiwanButton(_ sender: Any) {
        nameOfTopic = "TAIWAN"
        nameOfSubtitle = "Taiwan"
        nameOfDescription = "Taiwan, officially the Republic of China, is a country in East Asia. Neighbouring countries include the People's Republic of China to the northwest, Japan to the northeast, and the Philippines to the south."
        thingsToBring = "1. Flashlight (Phone flashlight)\n 2. Bring extra clothes (to change if needed)\n 3. Rain coat/ umbrella\n 4. Mini first aid kit\n 5. Essential medicine\n 6. A whistle"
        actionsNeeded = "1. Keep updated on weather forecast\n 2. Become familiar with the land around you; learn whether lanslide have occurred in the area around you\n 3. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 119\n Fire Brigade: 119\n Polic: 110"
        disasters = "\(Typhoon)\n\n\(HeavyRainfall)\n\n\(Floods)\n\n\(LandSlide)\n\n\(Droughts)\n\n\(Earthquake)"
        selectedImage = "Taiwan.jpg"

    }
    
    @IBAction func thailandButton(_ sender: Any) {
        nameOfTopic = "THAILAND"
        nameOfSubtitle = "Thailand"
        nameOfDescription = "Thailand is a Southeast Asian country. It's known for tropical beaches, opulent royal palaces, ancient ruins and ornate temples displaying figures of Buddha. In Bangkok, the capital, an ultramodern cityscape rises next to quiet canalside communities and the iconic temples of Wat Arun, Wat Pho and the Emerald Buddha Temple (Wat Phra Kaew). Nearby beach resorts include bustling Pattaya and fashionable Hua Hin."
        thingsToBring = "1. Flashlight (Phone flashlight)\n 2. Bring extra clothes (to change if needed)\n 3. Rain coat/ umbrella\n 4. Whistle\n 5. Cotton t-shirt to filter air\n 6. Mini first aid kit\n 7. Essential medicine\n 8. A whistle"
        actionsNeeded = "1. Keep updated on weather forecast\n 2. Become familiar with the land around you; learn whether lanslide have occurred in the area around you\n 3. Should a flood occur soon, evacuate the place first before it happens"
        emergencyNumbers = "Abulence: 1154\n Fire Brigade: 119\n Polic: 1155"
        disasters = "\(Floods)\n\n\(HeavyRainfall)\n\n\(LandSlide)\n\n\(ForestFire)\n\n\(Earthquake)"
        selectedImage = "Thailand.jpg"


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Img_1.layer.cornerRadius = 15
        Img_1.layer.masksToBounds = true
        
        Tokyo_1.layer.cornerRadius = 15
        Tokyo_1.layer.masksToBounds = true
        
        Img_2.layer.cornerRadius = 15
        Img_2.layer.masksToBounds = true
        
        Brunei_1.layer.cornerRadius = 15
        Brunei_1.layer.masksToBounds = true
        
        Img_3.layer.cornerRadius = 15
        Img_3.layer.masksToBounds = true
        
        Beijing_1.layer.cornerRadius = 15
        Beijing_1.layer.masksToBounds = true
        
        Img_4.layer.cornerRadius = 15
        Img_4.layer.masksToBounds = true
        
        Cambodia_1.layer.cornerRadius = 15
        Cambodia_1.layer.masksToBounds = true
        
        Img_5.layer.cornerRadius = 15
        Img_5.layer.masksToBounds = true
        
        Shanghai_1.layer.cornerRadius = 15
        Shanghai_1.layer.masksToBounds = true
        
        Img_6.layer.cornerRadius = 15
        Img_6.layer.masksToBounds = true
        
        HongKong_1.layer.cornerRadius = 15
        HongKong_1.layer.masksToBounds = true
        
        Img_7.layer.cornerRadius = 15
        Img_7.layer.masksToBounds = true
        
        Jakarta_1.layer.cornerRadius = 15
        Jakarta_1.layer.masksToBounds = true
        
        Img_8.layer.cornerRadius = 15
        Img_8.layer.masksToBounds = true
        
        Osaka_1.layer.cornerRadius = 15
        Osaka_1.layer.masksToBounds = true
        
        Img_9.layer.cornerRadius = 15
        Img_9.layer.masksToBounds = true
        
        Malaysia_1.layer.cornerRadius = 15
        Malaysia_1.layer.masksToBounds = true
        
        Img_10.layer.cornerRadius = 15
        Img_10.layer.masksToBounds = true
        
        Taiwan_1.layer.cornerRadius = 15
        Taiwan_1.layer.masksToBounds = true
        
        Img_11.layer.cornerRadius = 15
        Img_11.layer.masksToBounds = true
        
        Thailand_1.layer.cornerRadius = 15
        Thailand_1.layer.masksToBounds = true
        
        }
        // Do any additional setup after loading the view.
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


