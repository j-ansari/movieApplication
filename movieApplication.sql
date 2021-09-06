-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2021 at 05:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieApplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy_account`
--

CREATE TABLE `buy_account` (
  `id` int(11) NOT NULL,
  `price` varchar(25) COLLATE utf8mb4_persian_ci NOT NULL,
  `month` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `buy_account`
--

INSERT INTO `buy_account` (`id`, `price`, `month`) VALUES
(1, '15000', '1 Month'),
(2, '25000', '2 Month'),
(3, '40000', '6 Month');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_persian_ci NOT NULL,
  `user_email` text COLLATE utf8mb4_persian_ci NOT NULL,
  `confirmation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `item_id`, `comment`, `user_email`, `confirmation`) VALUES
(1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'j@a.com', 1),
(2, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'j@a.com', 1),
(3, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'j@a.com', 1),
(4, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'j@a.com', 1),
(5, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'j@a.com', 1),
(6, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'j@a.com', 1),
(7, 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic', 'jansari.it@gmail.com', 1),
(8, 2, 'xxxxxxxx', 'jansari.it@gmail.com', 0),
(9, 2, 'xxxxxxxx', 'jansari.it@gmail.com', 0),
(10, 2, 'xxxxxxxx', 'jansari.it@gmail.com', 0),
(11, 2, 'dcbhjdcbhjss', 'jansari.it@gmail.com', 0),
(12, 2, 'dcbhjdcbhjss', 'jansari.it@gmail.com', 0),
(13, 2, 'ssssss', 'jansari.it@gmail.com', 0),
(14, 2, 'csdvsvsf', 'jansari.it@gmail.com', 0),
(15, 3, 'fvsfvsss', 'jansari.it@gmail.com', 0),
(16, 3, 'dfdssds', 'jansari.it@gmail.com', 0),
(17, 4, 'sdsdsds', 'jansari.it@gmail.com', 0),
(18, 1, 'wert', 'jansari.it@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `genre_name`) VALUES
(1, 'Animation'),
(2, 'Action'),
(3, 'Crime'),
(4, 'Drama'),
(5, 'Western'),
(6, 'Horror'),
(7, 'Romantic'),
(8, 'Classic');

-- --------------------------------------------------------

--
-- Table structure for table `get_detail`
--

CREATE TABLE `get_detail` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_persian_ci NOT NULL,
  `image_url` text COLLATE utf8mb4_persian_ci NOT NULL,
  `play_movie_url` text COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `get_detail`
--

INSERT INTO `get_detail` (`id`, `item_id`, `description`, `image_url`, `play_movie_url`) VALUES
(1, 1, 'Andy Dufresne, a successful banker, is arrested for the murders of his wife and her lover, and is sentenced to life imprisonment at the Shawshank prison. He becomes the most unconventional prisoner.', 'https://i.pinimg.com/originals/df/60/cb/df60cb2f7fcd96cac71d1435da46b35d.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/5dad875f2b52ae3aa4bd88252999e6513179822-360p.mp4'),
(2, 2, 'The Godfather is an American film series that consists of three crime films directed by Francis Ford Coppola inspired by the 1969 novel of the same name by Italian American author Mario Puzo...', 'https://m.media-amazon.com/images/M/MV5BNzA4N2MxZGItNDc5Zi00YmJiLWFlOWUtOGQyNjIwYmYzZWExXkEyXkFqcGdeQW1pYnJ5YW50._V1_QL75_UX500_CR0,0,500,281_.jpg', 'https://aspb11.cdn.asset.aparat.com/aparat-video/770e6e417e015fbb1cd72d003e60a7808537925-144p.mp4'),
(3, 3, 'Michael, Vito Corleone\'s son, attempts to expand his family\'s criminal empire. While he strikes a business deal with gangster Hyman Roth, he remains unaware of the lurking danger.', 'https://jayjournal.org/wp-content/uploads/2018/03/Screen-Shot-2018-03-20-at-9.02.33-AM.png', 'https://aspb10.cdn.asset.aparat.com/aparat-video/626debdeeb1990592473708099bc2f5011733354-144p.mp4'),
(4, 4, 'After Gordon, Dent and Batman begin an assault on Gotham\'s organised crime, the mobs hire the Joker, a psychopathic criminal mastermind who offers to kill Batman and bring the city to its knees.', 'https://r7k2t3x9.rocketcdn.me/wp-content/uploads/2021/01/img-34038.jpg', 'https://aspb2.cdn.asset.aparat.com/aparat-video/e7fc3be1436ad645fb642ee4e3d4641713941564-144p.mp4'),
(5, 5, 'A dissenting juror in a murder trial slowly manages to convince the others that the case is not as obviously clear as it seemed in court.', 'https://www.doostihaa.com/img/uploads/2020/12/12-Angry-Men-1957-Trailer.jpg', 'https://aspb15.cdn.asset.aparat.com/aparat-video/99456a6af774e555a5cbbaed76c307f718828193-144p.mp4'),
(6, 6, 'Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews in Poland.', 'https://i.guim.co.uk/img/media/208d00c732eeed823ec55afe35faf252843e0c59/0_0_2520_1760/master/2520.jpg?width=700&quality=85&auto=format&fit=max&s=dee8947155aa30b56963e4d95b729d5f', 'https://aspb3.cdn.asset.aparat.com/aparat-video/bddb128305e4b963efc830241a08399018193475-144p.mp4'),
(7, 7, 'The former Fellowship members prepare for the final battle. While Frodo and Sam approach Mount Doom to destroy the One Ring, they follow Gollum, unaware of the path he is leading them to.', 'https://www.syfy.com/sites/syfy/files/2020/12/lord-of-the-rings-return-of-the-king.jpg', 'https://aspb13.cdn.asset.aparat.com/aparat-video/5ef1c7026b74d218f17b7741a46a01d011775002-144p.mp4'),
(8, 8, 'In the realm of underworld, a series of incidents intertwines the lives of two Los Angeles mobsters, a gangster\'s wife, a boxer and two small-time criminals.', 'https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/share_link_image_large/public/screenshots/csm-movie/pulp-fiction-ss1.jpg', 'https://aspb11.cdn.asset.aparat.com/aparat-video/328dbb6d72286566e98f0c66cffef53d16470589-144p.mp4'),
(9, 9, 'During the Civil War, two men, Blondie and Tuco, form an uncomfortable alliance while looking for treasure. They must also outwit Angel Eyes, an outlaw who wants to plunder the riches for himself.', 'https://www.revolutionarymisfit.com/wp-content/uploads/2014/01/the-god-the-bad-and-the-ugly.jpg', 'https://hw17.cdn.asset.aparat.com/aparat-video/dc161a8fd13280eb78ca57117438e4aa11774993-144p.mp4'),
(10, 10, 'A young hobbit, Frodo, who has found the One Ring that belongs to the Dark Lord Sauron, begins his journey with eight companions to Mount Doom, the only place where it can be destroyed.', 'https://cdn57.androidauthority.net/wp-content/uploads/2014/12/lotr-free-movie.jpg', 'https://aspb16.cdn.asset.aparat.com/aparat-video/a89ac929b20584ac6d3898bdb672501f18514127-144p.mp4'),
(11, 11, 'Scrat causes a monumental disaster when his nut chasing leads to a continental drift. Once again, Manny, Diego and Sid experience an adventure while trying to return home.', 'https://i.pinimg.com/originals/bc/fc/76/bcfc7696913c6aa4ef2c61f34349a767.jpg', 'https://aspb1.cdn.asset.aparat.com/aparat-video/07697f05171f244648211cb1350285829929118-144p.mp4'),
(12, 12, 'Woody attempts to make Forky, a toy, suffering from existential crisis, realise his importance in the life of Bonnie, their owner. However, things become difficult when Gabby Gabby enters their lives.', 'https://packs.toonyland.ir/wp-content/uploads/2021/02/toy-story-4.jpg', 'https://aspb1.cdn.asset.aparat.com/aparat-video/25ea87a470bb21129e17658f5f9f22d915044655-108p.mp4'),
(13, 13, 'Entrusted with a task to restore public faith in superheroes, Helen sets off on a mission to catch a supervillain, while Bob faces the challenges of stay-at-home parenting.', 'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fscottmendelson%2Ffiles%2F2018%2F06%2Fbanner-1200x674.jpg', 'https://aspb1.cdn.asset.aparat.com/aparat-video/75aa1013b510109c9ebe98a0168c664612393739-178p.mp4'),
(14, 14, 'Rango, a pet chameleon who aspires to be a hero, lands in a drought-affected town plagued by bandits. He claims to be the saviour and makes an attempt to protect it.', 'https://www.syfy.com/sites/syfy/files/styles/1200x680/public/2021/03/rango-1200-1200-675-675-crop-000000.jpeg', 'https://aspb13.cdn.asset.aparat.com/aparat-video/c021ebf435e2628762270f4834480e351834825.mp4'),
(15, 15, 'A jazz musician, stuck in a mediocre job, finally gets his big break. However, when a wrong step takes him to the Great Before, he tries to help an infant soul in order to return to reality.', 'https://hparvizi.ir/wp-content/uploads/2021/01/%D8%B1%D9%88%D8%AD-soul.jpg', 'https://as1.cdn.asset.aparat.com/aparat-video/e680fb98850f3ad6a497c0c49f04b75620193725-144p.mp4'),
(16, 16, 'Rapunzel, a naive and young girl, is locked up by her overly protective mother. Her wish to escape into the world outside finally comes true when she meets the good-hearted thief, Flynn.', 'https://lumiere-a.akamaihd.net/v1/images/open-uri20160812-3094-guyr2r_a5d6062a.jpeg', 'https://aspb2.cdn.asset.aparat.com/aparat-video/c5bd972abee5d4d6f081d88083dcc2c89816462-144p.mp4'),
(17, 17, 'Lighting McQueen, a legendary racer, is overcome by new generation racers. He sets out to prove that he is the best racer in the world with the help of Cruz Ramirez.', 'https://lumiere-a.akamaihd.net/v1/images/cars3-webpageheader1-h1a-640x320-builder_53f99aa3.jpeg', 'https://aspb2.cdn.asset.aparat.com/aparat-video/42484e16a8de32a654cc019e90b2342d6997880-180p.mp4'),
(18, 18, 'Now adults, Tim Templeton is a stay-at-home dad for two adorable daughters, while his estranged brother, Ted, is a big-shot CEO. They come together in an unexpected way when they take a magical formula that transforms them into babies for 48 hours. Joining forces with Tim\'s secret-agent daughter, th… ', 'https://thenationroar.com/wp-content/uploads/2020/04/images-6-1.jpeg', 'https://hw19.cdn.asset.aparat.com/aparat-video/3ae23b58498498976e0b771e7005065d27270657-144p.mp4'),
(19, 19, 'To get back home and evade capture by Animal Control, Alex, Marty, Gloria and Melman embark on a riotous adventure as they join a travelling circus.', 'https://occ-0-1433-1432.1.nflxso.net/art/8d66e/99b203dc57ddc9dfc8acf1e934a787c6c1f8d66e.jpg', 'https://aspb1.cdn.asset.aparat.com/aparat-video/6f4444d85d18e3b6b2d0dddd52971016147946.mp4'),
(20, 20, 'Oscar, a fast-talking fish, becomes an overnight sensation when he lies about having killed a shark. However, he soon begins to suffer the consequences of his deceptive actions.', 'https://occ-0-149-769.1.nflxso.net/art/f62ac/bc27ab3822412eab20ff4b6fac85b0f3502f62ac.jpg', 'https://aspb1.cdn.asset.aparat.com/aparat-video/7e69c352b71579b8d5736900e727a4e016303266-144p.mp4'),
(21, 21, 'When a few objects that can be manipulated and used as weapons in the future fall into the wrong hands, a CIA operative, known as the Protagonist, must save the world.', 'https://mmo.aiircdn.com/265/5f33f643c1ef1.jpg', 'https://as11.cdn.asset.aparat.com/aparat-video/eed48cbb423bc032fa89fe7780759d6e19207174-144p.mp4'),
(22, 22, 'Paranormal investigators Ed and Lorraine Warren take on one of the most sensational cases of their careers after a cop stumbles upon a dazed and bloodied young man walking down the road. Accused of murder, the suspect claims demonic possession as his defense, forcing the Warrens into a supernatural inquiry unlike anything they\'ve ever seen before.', 'https://d13ezvd6yrslxm.cloudfront.net/wp/wp-content/images/conjuring3-logoart-frontpage-700x279.jpg', 'https://as5.cdn.asset.aparat.com/aparat-video/245db74618f049bd2c27bb233bda4a4a32511456-144p.mp4'),
(23, 23, 'US agent Luke Hobbs and British mercenary Deckard Shaw are forced to put their rivalry side and work together to stop a genetically enhanced supervillain.', 'https://www.namibian.com.na/public/uploads/images/5d52ba1ac45e5/hobbsandshaw.jpg', 'https://aspb12.cdn.asset.aparat.com/aparat-video/789153f25290d3a69fc39bef8055519915682696-144p.mp4'),
(24, 24, 'A group of terrorists plans to detonate three plutonium cores for a simultaneous nuclear attack on different cities. Ethan Hunt, along with his IMF team, sets out to stop the carnage.', 'https://www.geeky-gadgets.com/wp-content/uploads/2018/05/Mission-Impossible-Fallout-2018-Movie.jpg', 'https://as10.cdn.asset.aparat.com/aparat-video/33c0e670bed22245cf84c306339484f110343200-144p.mp4'),
(25, 25, 'After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.', 'http://tigermedianet.com/wp-content/uploads/2019/05/endgame2.jpg', 'https://hw18.cdn.asset.aparat.com/aparat-video/67d3e278c7a74c51ab6fd9ce8f44c23012893093-144p.mp4'),
(26, 26, 'Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City. Arthur wears two masks -- the one he paints for his day job as a clown, and the guise he projects in a futile attempt to feel like he\'s part of the world around him. Isolated, bullied and ...', 'https://www.irishtimes.com/polopoly_fs/1.4065835.1572355651!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'https://aspb12.cdn.asset.aparat.com/aparat-video/68c4a97f08bae7fae407f58531789e0617462879-144p.mp4'),
(27, 27, 'Released from prison for bringing shame to his country, Kazakh funnyman Borat risks life and limb when he returns to America with his 15-year-old daughter.', 'https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/share_link_image_large/public/video-thumbnails/borat-2-site1.jpg', 'https://aspb23.cdn.asset.aparat.com/aparat-video/c7b9cb87905dfaaba186e5f3e8b01a4d32264101-144p.mp4'),
(28, 28, 'Aladdin, a kind thief, woos Jasmine, the princess of Agrabah, with the help of Genie. When Jafar, the grand vizier, tries to usurp the king, Jasmine, Aladdin and Genie must stop him from succeeding.', 'https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/1A94ED2D367C8B13E60889F14627E8FD7C13DCA64FC5CC41E24FB96865186F94/scale?width=1200&aspectRatio=1.78&format=jpeg', 'https://aspb12.cdn.asset.aparat.com/aparat-video/09734ebdfe13535695ebc73f5ecb0a7615779027-144p.mp4'),
(29, 29, 'Rick, a washed-out actor, and Cliff, his stunt double, struggle to recapture fame and success in 1960s Los Angeles. Meanwhile, living next door to Rick is Sharon Tate and her husband Roman Polanski.', 'https://hd-report.com/wp-content/uploads/2019/11/Quentin-Tarantino-Once-Upon-a-Time-in-Hollywood-poster-2-crop.jpg', 'https://hw2.cdn.asset.aparat.com/aparat-video/936b504e0c6f9ae4eca748d7f06e823014230082-144p.mp4'),
(30, 30, 'In the 1950s, truck driver Frank Sheeran gets involved with Russell Bufalino and his Pennsylvania crime family. As Sheeran climbs the ranks to become a top hit man, he also goes to work for Jimmy Hoffa -- a powerful Teamster tied to organized crime.', 'https://cdn.extra.ie/wp-content/uploads/2019/09/27135856/the-irishman-feat.jpg', 'https://as8.cdn.asset.aparat.com/aparat-video/4acd381ebb54c40a0a249387ea514f1719747910-144p.mp4'),
(31, 31, 'Tommy Shelby, a dangerous man, leads the Peaky Blinders, a gang based in Birmingham. Soon, Chester Campbell, an inspector, decides to nab him and put an end to the criminal activities.', 'https://cultbox.co.uk/wp-content/uploads/2021/01/Peaky-Blinders-ending-after-series-six.jpg', 'https://as6.cdn.asset.aparat.com/aparat-video/4618af098a462f9c5549f4c2ce3af55920200315-144p.mp4'),
(32, 32, 'Walter White, a chemistry teacher, discovers that he has cancer and decides to get into the meth-making business to repay his medical debts. His priorities begin to change when he partners with Jesse.', 'https://images.theconversation.com/files/32113/original/zddchmvm-1380482556.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip', 'https://aspb2.cdn.asset.aparat.com/aparat-video/20eff92d7c09dc8cc5b448ff99e64a7f9915617-144p.mp4'),
(33, 33, 'Nine noble families wage war against each other in order to gain control over the mythical land of Westeros. Meanwhile, a force is rising after millenniums and threatens the existence of living men.', 'https://mb.com.ph/wp-content/uploads/2021/04/8F713CEF-8733-40D9-94D5-D1B2BD12FEA1-1024x481.jpeg', 'https://as8.cdn.asset.aparat.com/aparat-video/8f381b0311703317d2354c55b79648942070987-360p.mp4'),
(34, 34, 'A criminal mastermind who goes by \"The Professor\" has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain. To help him carry out the ambitious plan, he recruits eight people with certain abilities and who have nothing to lose...', 'https://images.indianexpress.com/2020/08/money-heist-3-1200.jpg', 'https://hw14.cdn.asset.aparat.com/aparat-video/915622d438d8f394134593f2234549c120251414-144p.mp4'),
(35, 35, 'In April 1986, the city of Chernobyl in the Soviet Union suffers one of the worst nuclear disasters in the history of mankind. Consequently, many heroes put their lives on the line to save Europe.', 'https://www.provideocoalition.com/wp-content/uploads/market.jpg', 'https://hw19.cdn.asset.aparat.com/aparat-video/8874594cf9f3ec240d428d3e3878a29f17976761-144p.mp4'),
(36, 36, 'The Frog is a crime and mystery series written, edited and directed by Houman Seyyedi and produced by Ali Asadzadeh, produced in 2020–2021 in Iran.', 'https://cdn.mashreghnews.ir/d/2020/10/27/0/2959858.jpeg', 'https://as2.cdn.asset.aparat.com/aparat-video/866ea8d40e835fba26f1db0704feee7418593479-144p.mp4'),
(37, 37, 'A narrative of several families with their stories and problems that each character has his story and past.', 'https://31nama.com/media/k2/items/cache/3d44fa2fcafdc9643e1896e3e52e556b_XL.jpg', 'https://hw7.cdn.asset.aparat.com/aparat-video/2ae5c0cfab3a26d3fa9769d7e0fc700218130992-144p.mp4'),
(38, 38, 'Shahrzad is an Iranian romantic and historical drama series. The series is written by Hassan Fathi and Naghmeh Samini and directed by Hassan Fathi The storyline is set around and after the 1953 Iranian coup d\'état.', 'https://static2.borna.news/servev2/j9i3QqtaTwFQ/KxuoffTghAA,/futureImage-915-1-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87-%D8%AA%D8%B5%D8%A7%D9%88%DB%8C%D8%B1%DB%8C-%D8%B2%DB%8C%D9%88%D8%B1%D8%A2%D9%84%D8%A7%D8%AA-%D8%A8%D8%A7%D8%B2%DB%8C%DA%AF%D8%B1%D8%A7%D9%86-%D8%B3%D8%B1%DB%8C%D8%A7%D9%84-%D8%B4%D9%87%D8%B1%D8%B2%D8%A7%D8%AF.jpg', 'https://aspb25.cdn.asset.aparat.com/aparat-video/9dd9b29956d3c454dbeba0569956d2ed30144710-144p.mp4'),
(39, 39, 'Great and deep loves have always had great and terrible enemies. Kaveh and Hamta have started a romantic relationship, but many problems cause them to face challenges along the way.', 'https://cdn.isna.ir/d/2019/12/22/3/61518458.jpg', 'https://hw16.cdn.asset.aparat.com/aparat-video/1083ffe2c2fbd18cde15637ebbac41f817909175-144p.mp4'),
(40, 40, 'Blue Whale is a Drama-Mystery series directed by Fereydoun Jeyrani, written by Bahram Tavakoli and produced by Saeid Malekan. This series is in an adventurous atmosphere in Persian and a product of Iran. In addition to Saeid Malekan, Honar Aval and Filimo companies are also investors in the series.', 'https://click.ir/wp-content/uploads/2019/01/nahang.jpg', 'https://aspb23.cdn.asset.aparat.com/aparat-video/7cd9b71343d8f051903df621c5086f6930873242-240p.mp4'),
(41, 41, 'Just 6.5 with the original name Six and a half per meters is a 2019 Iranian thriller drama film written and directed by Saeed Roustayi.', 'https://irandaily.ir/content/imgcache/file/288714/0/image_650_365.jpg', 'https://as10.cdn.asset.aparat.com/aparat-video/868827b0a8bbcc42f866ffdd1caba86320230854-144p.mp4'),
(42, 42, 'Reza and his friend Mansoor are pickpockets. When Reza by his mother becomes aware that a rich girl has take an oath to marry a war injured person he decides to get close to her and find a way to marry her and inherit her fortune.', 'https://www.saliss.com/media/k2/items/cache/98cd27a9ec6668fd255be4380c71b8bd_XL.jpg', 'https://aspb12.cdn.asset.aparat.com/aparat-video/75e0101df929bca33767d00589c76c3114020242-144p.mp4'),
(43, 43, 'The story of a gang of drug dealers in the south of Tehran who has sheltered many youngsters and orphans from the streets. Shahin and Shakoor who are brothers are leading the gang but when it is collapsed creates a crisis in their family and their lives. Two brothers are making crystal meth in a hidden laboratory in middle of nowhere in an urban jungle, however, they ... ', 'https://darichehcinema.com/wp-content/uploads/2019/03/sheeple-026.jpg', 'https://as9.cdn.asset.aparat.com/aparat-video/36bf139cf004bd28e33d727adb3483a414926201-240p.mp4'),
(44, 44, 'Saint Petersburg is a 2010 Iranian comedy film directed by Behrouz Afkhami. Mohsen Tanabandeh, Peyman Ghassemkhani, Bahareh Rahnama, Shila Khodadad, Amin Hayai, Soroush Sehhat and Andisheh Fooladvand ...', 'https://techrato.com/wp-content/uploads/2019/07/best-comedy-movies-iran-5.jpg', 'https://as10.cdn.asset.aparat.com/aparat-video/67853006634bfe75aff33f3dcb4af8f34902908-270p.mp4'),
(45, 45, 'Somaieh, the youngest daughter of an indigent family, is getting married and fear is overwhelming each and every member of the family regarding how to overcome their difficulties after she\'s gone.', 'http://sharafoddin.ir/wp-content/uploads/2020/10/19.jpg', 'https://aspb2.cdn.asset.aparat.com/aparat-video/ce23daab5c94bb0022ee7635751628c14248002-270p.mp4'),
(46, 46, 'Ibrahim is a nightclub singer who, like other singers of that era and is being removed from the scene with the 1979 revolution. Eventually he becomes the singer of various ceremonies but he doesn\'t agree with them to be called Motreb.', 'https://cdn.isna.ir/d/2020/03/17/3/61596496.jpg', 'https://as8.cdn.asset.aparat.com/aparat-video/f348eb137f84bfd8729009fe8b194f3520163474-144p.mp4'),
(47, 47, 'In the market Abdolhamid meets Faezeh and falls in love with her. They get marry and begin their life. But after a while Faezeh becomes aware of Abdolhamid\'s family in Sistan and Baluchestan province and that they are doing illegals. Faezeh decides to escape with her husband to Pakistan but there they meet Abdolhamid\'s brother Abdolmalek Rigi who is a terrorist.', 'https://files.virgool.io/upload/users/7117/posts/c9x1odnejilo/g209er3cgsjd.jpeg', 'https://hw16.cdn.asset.aparat.com/aparat-video/142e107a1bf180401830ea53f045adca24425331-144p.mp4'),
(48, 48, 'After their flat becomes damaged, Emad (Shahab Hosseini) and Rana (Taraneh Alidoosti), a young couple living in Tehran, Iran, must move into another apartment. Once relocated, a sudden eruption of violence linked to the previous tenant of their new home dramatically changes their lives, creating a simmering tension between husband and wife.', 'https://static3.fardanews.com/servev2/jhhMGEyZGMxN/5Uwvb7W7Zm0,/file.png', 'https://aspb15.cdn.asset.aparat.com/aparat-video/a026e0a65d9b895fdb08177db97d74f216249725-144p.mp4'),
(49, 49, 'A film of a woman swimming in a pool is distributed through the internet. Now her husband and her brother are after finding the one who is responsible for that and taking revenge on him.', 'https://static4.donya-e-eqtesad.com/thumbnail/jyrOmZPJUeZt/vXJwwA1o8rIoZ7wrPHPV-QYqssTF6UH1BwhMCHO9O4SdbVkfXsgGzjveTjHGdNzdlBH-hXHgenSPkchyUb3fFQ8Bvzddp2ShrRpHUJwm5iVGjY9M5rhbwA,,/p25+%282%29.jpg', 'https://hw5.cdn.asset.aparat.com/aparat-video/be130c215bf87ae3f5685471090dde7423409996-144p.mp4'),
(50, 50, 'Accidentally, a poor couple and a rich one meet each other. These young couple have some difficulties.', 'https://www.entekhab.ir/files/fa/news/1396/10/30/353442_528.jpg', 'https://as7.cdn.asset.aparat.com/aparat-video/1f5207dbb3b53c250ed8c382da4067f210642240-240p.mp4'),
(51, 51, 'Nick Carraway, a World War I veteran who moves to New York with the hope of making it big, finds himself attracted to Jay Gatsby and his flamboyant lifestyle', 'https://www.socialsamosa.com/wp-content/uploads/2016/02/great_gatsby.jpg', 'https://hw17.cdn.asset.aparat.com/aparat-video/619e8fe305ab1fb93d8e167726fce7dc19721173-144p.mp4'),
(52, 52, 'Duke reads the story of Allie and Noah, two lovers who were separated by fate, to Ms Hamilton, an old woman who suffers from dementia, on a daily basis out of his notebook.', 'https://mhshighlife.com/wp-content/uploads/2017/11/Screenshot-2017-11-02-at-12.00.22-PM.png', 'https://dl2.mp4.ir/video/2019/9/34759-199271097/34759-199271097-200.mp4'),
(53, 53, 'When a young nun at a cloistered abbey in Romania takes her own life, a priest with a haunted past and a novitiate on the threshold of her final vows are sent by the Vatican to investigate. Together, they uncover the order\'s unholy secret. Risking not only their lives but their faith and their very … ', 'https://www.reviewsphere.org/wp-content/uploads/2018/09/The-Nun-2018.jpg', 'https://as9.cdn.asset.aparat.com/aparat-video/53ec04fb8c428fb4a6dace63938d4b1a20967517-144p.mp4'),
(54, 54, 'While chasing El Indio, a most-wanted criminal, Monco meets Colonel Douglas Mortimer, who incidentally is also looking for El Indio. They enter into a partnership and decide to split the reward.', 'https://d2j1wkp1bavyfs.cloudfront.net/wp-content/legacy/posts/72768b48-6346-49e9-b416-d9d05886f51c.jpg', 'https://aspb12.cdn.asset.aparat.com/aparat-video/660de9170dcd870bb9cfef9f8a94f98119902040-144p.mp4'),
(55, 55, 'A stranger rides into a town known for the deadly rivalry between two of its factions-the Baxter\'s and the Rojo\'s. Instead of fearing for his life, the man plays the two sides to his own advantage.', 'https://www.independent.ie/entertainment/ab3b7/30472016.ece/AUTOCROP/w1240h700/2014-08-02_ent_1973944_I1.JPG', 'https://aspb2.cdn.asset.aparat.com/aparat-video/e80b4d1c58945a2d1654e1fd8e9f9e225430490-266p.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `home_information`
--

CREATE TABLE `home_information` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `image_url` text COLLATE utf8mb4_persian_ci NOT NULL,
  `director_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `imdb_rate` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL,
  `published` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `movie_time` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `imdb_rank` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL,
  `genre_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `home_information`
--

INSERT INTO `home_information` (`id`, `movie_name`, `image_url`, `director_name`, `imdb_rate`, `published`, `movie_time`, `category_name`, `imdb_rank`, `genre_name`) VALUES
(1, 'The Shawshank Redemption', 'https://m.media-amazon.com/images/I/51NiGlapXlL._AC_.jpg', 'Frank Darabont', '9.3/10', '22 September 1994', '2h 22min', 'top_movie_imdb', '1', 'Drama'),
(2, 'The Godfather', 'https://www.reelviews.net/resources/img/posters/thumbs/godfather_poster.jpg', 'Francis Ford Coppola', '9.2/10', '14 March 1972', '2h 55min', 'top_movie_imdb', '2', 'Crime'),
(3, 'The Godfather: Part II', 'https://i.pinimg.com/originals/ea/29/0d/ea290d22010032b85a762c5267c2f735.jpg', 'Francis Ford Coppola', '9.0/10', '12 December 1974', '3h 22min', 'top_movie_imdb', '3', 'Crime'),
(4, 'The Dark Knight', 'https://m.media-amazon.com/images/I/51+OYclQIZS._AC_SY445_.jpg', 'Christopher Nolan', '9.0./10', '14 July 2008', '2h 32min', 'top_movie_imdb', '4', 'Action'),
(5, '12 Angry Men', 'https://m.media-amazon.com/images/I/81LX+JlavLL._AC_SY679_.jpg', ' Sidney Lumet', '9.0/10', '10 April 1957', '1h 36min', 'top_movie_imdb', '5', 'Classic'),
(6, 'Schindler\'s List', 'https://upload.wikimedia.org/wikipedia/fa/2/22/Schindler%27sList.jpg', 'Steven Spielberg', '8.9/10', '30 November 1993', '3h 15min', 'top_movie_imdb', '6', 'Drama'),
(7, 'The Lord of the Rings ||', 'https://www.reelviews.net/resources/img/posters/thumbs/return_of_the_king_poster.jpg', ' Peter Jackson', '8.9/10', '3 December 2003', '3h 21min', 'top_movie_imdb', '7', 'Action'),
(8, 'Pulp Fiction', 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/66cf2910776883.560eaca5f2a02.jpg', 'Quentin Tarantino', '8.9/10', '23 September 1994', '2h 34min', 'top_movie_imdb', '8', 'Crime'),
(9, 'The Good, the Bad the Ugly', 'https://m.media-amazon.com/images/I/51BOMqjL+6L.jpg', 'Sergio Leone', '8.8/10', '29 December 1967', '2h 58min', 'top_movie_imdb', '9', 'Western'),
(10, 'The Lord of the Rings', 'https://m.media-amazon.com/images/I/51cw3aOJmOL._AC_.jpg', 'Peter Jackson', '8.8/10', '13 December 2001', '2h 58min', 'top_movie_imdb', '10', 'Action'),
(11, 'Ice Age: Continental Drift', 'https://www.dvdplanetstore.pk/wp-content/uploads/2013/12/Ice_Age_Continental_Drift_DVD_Cover.png', 'Mike Thurmeier', '6.5/10', 'June 26, 2012', '1h 34m', 'animation', '', 'Animation'),
(12, 'Toy Story 4', 'https://m.media-amazon.com/images/I/51v+OPsk1+L.jpg', 'Josh Cooley', '7.7/10', 'June 11, 2019', '1h 40m', 'animation', '', 'Animation'),
(13, 'Incredibles 2', 'https://www.prints4u.net/wp-content/uploads/2019/11/041_Incredibles.jpg', 'Brad Bird', '7.6/10', 'June 5, 2018', '2h 5m', 'animation', '', 'Animation'),
(14, 'Rango', 'https://i.pinimg.com/originals/3f/dd/7b/3fdd7bb4782b36b3eccba912df3fb496.jpg', 'Gore Verbinski', '7.2/10', 'February 14, 2011', '1h 51m', 'animation', '', 'Animation'),
(15, 'Soul', 'https://themoviespoiler.com/wp-content/uploads/2020/12/soul_ver7.jpg', 'Pete Docter', '8.1/10', 'December 25, 2020', '1h 47m', 'animation', '', 'Animation'),
(16, 'Tangled', 'https://lumiere-a.akamaihd.net/v1/images/p_tangled_20509_cd0a5809.jpeg', 'Byron Howard', '7.7/10', 'November 24, 2010', '1h 40m', 'animation', '', 'Animation'),
(17, 'Cars 3', 'https://m.media-amazon.com/images/I/812PcgUQZ4L._AC_SY679_.jpg', 'Brian Fee', '6.7/10', 'June 15, 2017', '1h 49m', 'animation', '', 'Animation'),
(18, 'Baby Boss', 'https://upload.wikimedia.org/wikipedia/en/3/3b/The_poster_for_The_Boss_Baby%2C_Family_Business%2C_with_new_date.jpg', 'Tom McGrath', '5.9/10', 'March 24, 2021', '1h 48m', 'animation', '', 'Animation'),
(19, 'Madagascar 3', 'https://upload.wikimedia.org/wikipedia/en/c/c4/Madagascar3-Poster.jpg', 'Tom McGrath', '6.8/10', 'June 6, 2012 ', '1h 35m', 'animation', '', 'Animation'),
(20, 'Shark Tale', 'https://m.media-amazon.com/images/I/61PMO99r6AL.jpg', 'Rob Letterman', '6/10', 'September 10, 2004', '1h 31m', 'animation', '', 'Animation'),
(21, 'Tenet', 'https://upload.wikimedia.org/wikipedia/en/1/14/Tenet_movie_poster.jpg', 'Christopher Nolan', '7.4/10', 'August 12, 2020', '2h 30m', 'new_movie', '', 'Action'),
(22, 'The Conjuring', 'https://in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/the-conjuring-3-the-devil-made-me-do-it-et00122455-22-04-2021-08-12-06.jpg', 'Michael Chaves', '6.3/10', 'May 26, 2021', '1h 52m', 'new_movie', '', 'Horror'),
(23, 'Hobbs & Shaw', 'https://upload.wikimedia.org/wikipedia/en/0/00/Fast_%26_Furious_Presents_Hobbs_%26_Shaw_-_theatrical_poster.jpg', 'David Leitch', '6.4/10', 'July 13, 2019', '2h 16m', 'new_movie', '', 'Action'),
(24, 'Mission: Impossible - Fallout', 'https://upload.wikimedia.org/wikipedia/vi/thumb/3/39/Nhiem_vu_bat_kha_thi_sup_do_poster_phim.jpg/220px-Nhiem_vu_bat_kha_thi_sup_do_poster_phim.jpg', 'Christopher McQuarrie', '7.7/10', 'July 12, 2018', '2h 28m', 'new_movie', '', 'Action'),
(25, 'Avengers: Endgame', 'https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg', 'Joe Russo', '8.4/10', 'April 22, 2019', '3h 2m', 'new_movie', '', 'Action'),
(26, 'Joker', 'https://upload.wikimedia.org/wikipedia/en/e/e1/Joker_%282019_film%29_poster.jpg', 'Todd Phillips', '8.4/10', 'October 2, 2019', '2h 2m', 'new_movie', '', 'Drama'),
(27, 'Borat Subsequent Moviefilm', 'https://karanmovie.org/wp-content/uploads/2020/10/Borat-Subsequent-Moviefilm-2020.jpg', 'Jason Woliner', '6.7/10', 'October 23, 2020', '1h 36m', 'new_movie', '', 'Comedy'),
(28, 'Aladdin', 'https://upload.wikimedia.org/wikipedia/en/9/9a/Aladdin_%28Official_2019_Film_Poster%29.png', 'Guy Ritchie', '6.9/10', 'May 8, 2019', '2h 8m', 'new_movie', '', 'Fantasy'),
(29, 'Once Upon a Time... in Hollywood', 'https://www.vintagemovieposters.co.uk/wp-content/uploads/2019/06/IMG_9698-482x720.jpeg', 'Quentin Tarantino', '7.6/10', 'July 24, 2019', '2h 40m', 'new_movie', '', 'Comedy'),
(30, 'The Irishman', 'https://www.filmink.com.au/wp-content/uploads/2020/02/irishman.jpg', 'Martin Scorsese', '7.8/10', '27 September 2019', '3h 30m', 'new_movie', '', 'Crime'),
(31, 'Peaky Blinders', 'https://moviezuniverse.com/wp-content/uploads/2021/04/peaky-poster-1.jpg', 'Katie Swinden', '8.8/10', '30', '5 seasons', 'series', '', 'Crime'),
(32, 'Breaking Bad', 'https://static.wikia.nocookie.net/breakingbad/images/9/95/BB_S4_poster.jpg', 'Vince Gilligan', '9.4/10', '62', '5 seasons', 'series', '', 'Crime'),
(33, 'Game of Thrones', 'https://upload.wikimedia.org/wikipedia/fa/e/e0/Game_of_Thrones_Season_8.png', 'David BenioffD', '9.2/10', '73', '8 seasons', 'series', '', 'Action'),
(34, 'Money Heist', 'https://m.media-amazon.com/images/I/71QKqGokUrL._SY550_.jpg', ' Álex Pina', '8.3/10', '38', '4 seasons', 'series', '', 'Drama'),
(35, 'Chernobyl', 'https://upload.wikimedia.org/wikipedia/en/a/a7/Chernobyl_2019_Miniseries.jpg', 'Johan Renck', '9.4/10', '5', '1 season', 'series', '', 'Drama'),
(36, 'The Frog', 'https://m.media-amazon.com/images/M/MV5BMmMzMGIxNjgtZWZlOS00MTg2LTk5N2EtMTYzNmEzYTQxYjBhXkEyXkFqcGdeQXVyMTAyNDg0Njk1._V1_QL75_UY281_CR4,0,190,281_.jpg', 'hooman seyedi', '8.6/10', '15', '1 season', 'iranian_series', '', 'Crime'),
(37, 'Asheghaneh', 'https://shayanfilm.com/uploads/articles/articles-1888-91799.jpg', 'Manoochehr Hadi', '5.5/10', '39', '2 season', 'iranian_series', '', 'Drama'),
(38, 'Shahrzad', 'https://i.pinimg.com/564x/76/6b/4e/766b4ea2cbe7cfda0f2a221566998f71.jpg', 'hassan fathi', '8.1/10', '59', '3 season', 'iranian_series', '', 'Drama'),
(39, 'Mannequin', 'https://m.media-amazon.com/images/M/MV5BMGI2NDA3M2ItMzE5Mi00YzUzLWI0ZTctZDM5OGQ0MzcwMDgxXkEyXkFqcGdeQXVyMTA2OTk0NDEy._V1_.jpg', 'hossein soheily zadeh', '4.7/10', '26', '1 season', 'iranian_series', '', 'Drama'),
(40, 'Blue Whale', 'https://m.media-amazon.com/images/M/MV5BYjE0MmM2MjAtN2I3NC00NWZiLWFjNzQtMDQ0ZDA3MTI4ZmI3XkEyXkFqcGdeQXVyODUwNzk5NDU@._V1_UY268_CR100,0,182,268_AL_.jpg', 'fereydoon jeyrani', '6.1/10', '30', '1 season', 'iranian_series', '', 'Crime'),
(41, 'Just 6.5', 'https://www.iranianmoviebox.com/wp-content/uploads/2020/04/Metri-Shish-o-Nim.jpg', 'Saeed Roustayi', '8/10', 'March 14, 2019', '2h 15m', 'iranian_movie', '', 'Drama'),
(42, 'Centipede', 'https://m.media-amazon.com/images/M/MV5BMzhkYmI3YjItZGMxNS00OWM3LThlNmItMzI1NmRiMzA4ODkwXkEyXkFqcGdeQXVyNjkxOTM4ODY@._V1_.jpg', 'Abolhassan Davoodi', '5.8/10', 'July 4, 2018', '2h 2m', 'iranian_movie', '', 'Comedy'),
(43, 'Sheeple', 'https://www.iranianmoviebox.com/wp-content/uploads/2020/04/Maghzhaye-Koochake-Zang-Zadeh-300x450.jpg', 'Houman Seyyedi', '7.7/10', 'February 6, 2018', '1h 50m', 'iranian_movie', '', 'Drama'),
(44, 'Saint Petersburg', 'https://upload.wikimedia.org/wikipedia/en/3/31/Saintpetersburg_film_poster.jpg', 'Behrouz Afkhami', '6.4/10', '6 October 2010', ' 2h', 'iranian_movie', '', 'Comedy'),
(45, 'Life and a Day', 'https://doostihaa.com/img/uploads/2016/11/Abad-Va-Yek-Rooz.jpg', 'Saeed Roustayi', '8.2/10', 'February 2, 2016', '1h 50m', 'iranian_movie', '', 'Drama'),
(46, 'The Singer', 'https://m.media-amazon.com/images/M/MV5BMTI1ODMyMjgtNTVmYS00NmZiLTg4NzItNGEwNjJjMGNkZDhmXkEyXkFqcGdeQXVyOTcxNzU0NzM@._V1_.jpg', 'Mostafa Kiayee', '4.4/10', '6 November 2019', '1h 47m', 'iranian_movie', '', 'Drama'),
(47, 'When the Moon Was Full', 'https://pro.festivalscope.com/media/cache/film_extra_thumbnail_poster/uploads/1576839240-5dfca848220a1-poster-when-the-moon-was-full-jpg', 'Narges Abyar', '6.8/10', 'February 1, 2019', '2h 20m', 'iranian_movie', '', 'Drama'),
(48, 'The Salesman', 'https://m.media-amazon.com/images/M/MV5BOGY0MzA4MzMtZTFjNC00N2MyLWIxOGYtMDNmNWQ1OTYwNDA0XkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg', 'Asghar Farhadi', '7.7/10', 'February 2, 2017', '2h 5m', 'iranian_movie', '', 'Drama'),
(49, 'Butterfly Stroke', 'https://static1.ilna.news/thumbnail/zUAuf14MYeFh/zD2ly951Lbe1X4vBXmeYxnwvBKd2o-upCBoRpuXWWQ3xVYIwBtE8SJc5CgG8w1SR1HhaeHPcWe7Z4QQxwQ5aCQuC6bW65Yo2vzNA1A_oYcME-xuDHnCGIC-kHgCp4We0jmO2kLy1DGWCKlL5SndO1w96qHB4I0VpXuOejRjZDSys4NdjIqNZJEQ6csj1vAj0PYzofVrI7-0,/%D9%BE%D9%88%D8%B3%D8%AA%D8%B1+%281%29.jpg', 'Mohammad Kart', '7.7/10', 'February 1, 2020', ' 2h', 'iranian_movie', '', 'Drama'),
(50, 'Wing Mirror', 'https://upload.wikimedia.org/wikipedia/fa/2/29/Wing_Mirror_Poster.jpg', 'Manouchehr Hadi', '4.3/10', 'December 6, 2017', '1h 42min', 'iranian_movie', '', 'Comedy'),
(51, 'The Great Gatsby', 'https://www.awesomepostersonline.com/uploads/2018-03-02/2e68cb45/baf7e348444.jpg', 'Baz Luhrmann', '7.2/10', 'May 1, 2013', '2h 23m', 'new_movie', '', 'Romantic'),
(52, 'The Notebook', 'https://upload.wikimedia.org/wikipedia/en/8/86/Posternotebook.jpg', 'Nick Cassavetes', '7.8/10', 'June 25, 2004', '2h 4m', 'new_movie', '', 'Romantic'),
(53, 'The Nun', 'https://res.cloudinary.com/jerrick/image/upload/c_scale,f_jpg,q_auto/5ebc89c139137b001cf60ee2.jpg', 'Corin Hardy', '5.3/10', 'September 5, 2018', '1h 36m', 'new_movie', '', 'Horror'),
(54, 'For a Few Dollars More', 'https://upload.wikimedia.org/wikipedia/en/0/09/For_a_Few_Dollars_More-ita-poster.jpg', 'Sergio Leone', '8.2/10', 'December 18, 1965', '2h 12m', 'classic', '', 'Western'),
(55, 'A Fistful of Dollars', 'https://m.media-amazon.com/images/I/51TPtbeez-L.jpg', 'Sergio Leone', '8/10', 'September 12, 1964', '1h 39m', 'classic', '', 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `movie_star`
--

CREATE TABLE `movie_star` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `star_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `image_url` text COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `movie_star`
--

INSERT INTO `movie_star` (`id`, `item_id`, `star_name`, `image_url`) VALUES
(1, 1, 'Morgan Freeman', 'https://www.famousbirthdays.com/faces/freeman-morgan-image.jpg'),
(2, 1, 'Tim Robbins', 'https://www.famousbirthdays.com/headshots/tim-robbins-8.jpg'),
(3, 2, 'Marlon Brando', 'https://static.wikia.nocookie.net/godfather/images/0/07/Marlon_Brando.jpg'),
(4, 2, 'Al Pacino', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/al-pacino-97-18-10-2016-01-10-33.jpg'),
(5, 3, 'Al Pacino', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/al-pacino-97-18-10-2016-01-10-33.jpg'),
(6, 3, 'Robert De Niro', 'https://www.caa.com/sites/default/files/styles/headshot_500x500/public/2020-01/Robert-De-Niro.jpg'),
(7, 4, 'Christian Bale', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/christian-bale-440-24-03-2017-12-31-22.jpg'),
(8, 4, 'Heath Ledger', 'https://i.pinimg.com/originals/98/53/d2/9853d2766b958f456b52a013fccd74cc.jpg'),
(9, 4, 'Cillian Murphy', 'https://i1.sndcdn.com/artworks-000552012672-yuvr8m-t500x500.jpg'),
(10, 4, 'Morgan Freeman', 'https://www.famousbirthdays.com/faces/freeman-morgan-image.jpg'),
(11, 5, 'Henry Fonda', 'https://www.thefamouspeople.com/profiles/images/henry-fonda-8.jpg'),
(12, 5, 'Lee J. Cobb', 'https://bsp-static.playbill.com/dims4/default/69f57e5/2147483647/crop/310x369%2B0%2B1/resize/300x358%3E/quality/90/?url=http%3A%2F%2Fpb-asset-replication.s3.amazonaws.com%2F71%2Fab%2F3b4aec614fe2a0845556cc41e1f9%2FLee-J-Cobb.jpg'),
(13, 6, 'Liam Neeson', 'https://www.thehandbook.com/cdn-cgi/image/width=300,height=300,fit=cover,q=85/https://files.thehandbook.com/uploads/2014/10/LiamNeeson.jpg'),
(14, 6, 'Ben Kingsley', 'https://www.famousbirthdays.com/headshots/ben-kingsley-3.jpg'),
(15, 7, 'Ian McKellen', 'https://images.celeb-networth.com/5/1939/ian-mckellen/ian-mckellen.jpg'),
(16, 7, 'Elijah Wood', 'https://marriedbiography.com/wp-content/uploads/2017/03/Elijah-Woods.jpg'),
(17, 7, 'Viggo Mortensen', 'https://m.media-amazon.com/images/M/MV5BNTNhZDliNmItYjk2ZC00OGMwLTlhM2YtMWNhYTdiYzFhMDZiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY350_CR87,0,350,350_AL_.jpg'),
(18, 8, 'John Travolta', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/john-travolta-1044-28-05-2017-13-43-31.jpg'),
(19, 8, 'Uma Thurman', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/uma-thurman-2417-29-04-2020-11-52-03.jpg'),
(20, 8, 'Samuel L. Jackson', 'https://speaking.com/wp-content/uploads/2016/12/samuel-jackson.jpg'),
(21, 8, 'Bruce Willis', 'https://marriedbiography.com/wp-content/uploads/2018/06/Bruce-Willis.jpg'),
(22, 8, 'Ving Rhames', 'https://vz.cnwimg.com/wp-content/uploads/2010/11/Ving-Rhames-e1609182532473.jpg'),
(23, 9, 'Clint Eastwood', 'https://cinema.icrewplay.com/wp-content/uploads/2021/02/clint-eastwood.jpg'),
(24, 9, 'Lee Van Cleef', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Lee_Van_Cleef_in_Stories_of_the_Century.jpg/220px-Lee_Van_Cleef_in_Stories_of_the_Century.jpg'),
(25, 9, 'Eli Wallach', 'https://bsp-static.playbill.com/dims4/default/33c0f05/2147483647/crop/310x369%2B0%2B1/resize/300x358%3E/quality/90/?url=http%3A%2F%2Fpb-asset-replication.s3.amazonaws.com%2F95%2F05%2F153a3e674653a3a5ba6ba22b0776%2FEli-Wallach-B.jpg'),
(26, 10, 'Ian McKellen', 'https://images.celeb-networth.com/5/1939/ian-mckellen/ian-mckellen.jpg'),
(27, 10, 'Elijah Wood', 'https://marriedbiography.com/wp-content/uploads/2017/03/Elijah-Woods.jpg'),
(28, 10, 'Viggo Mortensen', 'https://m.media-amazon.com/images/M/MV5BNTNhZDliNmItYjk2ZC00OGMwLTlhM2YtMWNhYTdiYzFhMDZiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SY350_CR87,0,350,350_AL_.jpg'),
(29, 11, 'Jennifer Lopez', 'http://static2.bornrichimages.com/cdn2/500/500/91/c/wp-content/uploads/2014/08/jlo1_thumb.jpg'),
(30, 11, 'Drake', 'https://a10.gaanacdn.com/gn_img/artists/XYybzNrb2g/YybzaQoW2g/size_l_1558424109.jpg'),
(31, 11, 'Nicki Minaj', 'https://cdn.idolbirthdays.net/images/16/nicki-minaj.jpg'),
(32, 11, 'Ray Romano', 'https://smartbiography.com/wp-content/uploads/2019/12/Ray-Romano.jpg'),
(33, 12, 'Tom Hanks', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/tom-hanks-2386-24-03-2017-12-31-02.jpg'),
(34, 12, 'Keanu Reeves', 'https://i.pinimg.com/564x/b4/f7/f6/b4f7f6733120f6c18eccb5461e1fdbff.jpg'),
(35, 12, 'Tim Allen', 'https://static.wikia.nocookie.net/goldenthroats/images/c/c0/Timallen.jpg'),
(36, 13, 'Holly Hunter', 'https://www.famousbirthdays.com/faces/hunter-holly-image.jpg'),
(37, 13, 'Brad Bird', 'https://s3.amazonaws.com/view-conference-www/assets/author/2019/06/11/bradbird-headshot_512x512.jpg'),
(38, 13, 'Craig T. Nelson', 'https://vz.cnwimg.com/wp-content/uploads/2010/12/Craig-T.-Nelson-e1564339631543.jpg'),
(39, 13, 'Samuel L. Jackson', 'https://speaking.com/wp-content/uploads/2016/12/samuel-jackson.jpg'),
(40, 14, 'Johnny Depp', 'https://i.pinimg.com/originals/a7/97/86/a7978600e3c2862df761ac20a9607308.jpg'),
(41, 14, 'Isla Fisher', 'https://d3hjzzsa8cr26l.cloudfront.net/d6a52a5a-5da7-11e8-91b1-dddecad98d1d.jpg?zcw=1500&zch=1500&zct=63&zcl=0&pw=260'),
(42, 15, 'Tina Fey', 'https://i.pinimg.com/236x/a9/7a/87/a97a873abd2cd40906a844e001d76108--tina-fey-kermit.jpg'),
(43, 15, 'Jamie Foxx', 'https://www.deardoctor.com/images/blog/foxx.jpg'),
(44, 16, 'Mandy Moore', 'https://marriedbiography.com/wp-content/uploads/2017/05/download-6-7.jpg'),
(45, 16, 'Zachary Levi', 'https://hollywoodzam.com/wp-content/uploads/2021/05/zachary-levi.jpg'),
(46, 17, 'Owen Wilson', 'https://cdn.idolbirthdays.net/images/22/owen-wilson.jpg'),
(47, 17, 'Cristela Alonzo', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2019/08/Cristela-Alonzo-Contact-Information.jpeg'),
(48, 17, 'Armie Hammer', 'https://static.onecms.io/wp-content/uploads/sites/6/2013/06/armie-hammer.jpg'),
(49, 18, 'Alec Baldwin', 'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQ2MTEwOTU3MTA0NDA4MDk2/alec_baldwin_photo_dimitrios_kambourisgetty_images_461499158_cropped.jpg'),
(50, 18, 'James Marsden', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2016/03/James-Marsden-Contact-Information.jpg'),
(51, 18, 'Amy Sedaris', 'https://static.wikia.nocookie.net/scroogemcduck/images/7/71/AmySerandis.jpg/revision/latest/top-crop/width/360/height/360?cb=20200921224133'),
(52, 19, 'Frances McDormand', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2016/03/Frances-McDormand-Contact-Information.jpg'),
(53, 19, 'Jessica Chastain', 'https://www.nextbirthdays.com/wp-content/uploads/jessica-chastain-actrice.jpg'),
(54, 19, 'Ben Stiller', 'https://i.pinimg.com/originals/ee/8f/56/ee8f56648818fe09f9dcfcdbb3b00198.png'),
(55, 19, 'Bryan Cranston', 'https://www.datingcelebs.com/wp-content/uploads/2019/08/cranston-bryan-image.jpg'),
(56, 20, 'Will Smith', 'https://cdn.britannica.com/s:250x250,c:crop/66/103066-050-B89D5EAF/Will-Smith-actor-musician-2006.jpg'),
(57, 20, 'Angelina Jolie', 'https://i1.sndcdn.com/artworks-8wLmSVtRzsXzK3u8-fCTNuw-t500x500.jpg'),
(58, 20, 'Robert De Niro', 'https://www.caa.com/sites/default/files/styles/headshot_500x500/public/2020-01/Robert-De-Niro.jpg'),
(59, 20, 'Jack Black', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2014/12/Jack-Black-Contact-Information.jpg'),
(60, 20, 'Renée Zellweger', 'https://marriedbiography.com/wp-content/uploads/2017/06/Renee-Zellweger-Plastic-Surgery-6.jpg'),
(61, 21, 'John David Washington', 'https://cdn.allfamous.org/people/headshots/john-david-washington-1qkc-allfamous.org-5.jpg'),
(62, 21, 'Elizabeth Debicki', 'https://m.media-amazon.com/images/M/MV5BMWRiNzczYzMtOGE1Yi00Njg0LWFkNTUtYzE3NmVkZDZkMjg5XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg'),
(63, 21, 'Robert Pattinson', 'https://pinkmirror.com/Data_Store/person/Robert%20Pattinson/229831.jpg'),
(64, 22, 'Vera Farmiga', 'https://biogossip.com/wp-content/uploads/2019/05/Vera-Farmiga.jpg'),
(65, 22, 'Patrick Wilson', 'https://cdn.idolbirthdays.net/imgs/9/9b/patrick-wilson-patrick-wilson.jpg'),
(66, 23, 'Dwayne Johnson', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2021/02/Dwayne-Johnson-The-Rock-Contact-Information.jpg'),
(67, 23, 'Jason Statham', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2020/09/jason_statham.jpg'),
(68, 23, 'Vanessa Kirby', 'https://m.media-amazon.com/images/M/MV5BZjVmZjAxZjAtMWUxMy00ZGE2LWFiNTEtMzA0YjM4ZWJjOTc5XkEyXkFqcGdeQXVyMzY4ODI3NDA@._V1_UY180_CR54,0,180,180_AL_.jpg'),
(69, 23, 'Idris Elba', 'https://www.famousbirthdays.com/headshots/idris-elba-1.jpg'),
(70, 24, 'Tom Cruise', 'https://magazine.xpert.tv/wp-content/uploads/2020/06/tom_cruise.jpg'),
(71, 24, 'Rebecca Ferguson', 'https://cdn.idolbirthdays.net/images/22/rebecca-ferguson.jpg'),
(72, 24, 'Henry Cavill', 'https://purewows3.imgix.net/images/articles/2018_03/Henry_Cavill_Mustache.c..jpg?auto=format,compress&cs=strip'),
(73, 24, 'Vanessa Kirby', 'https://m.media-amazon.com/images/M/MV5BZjVmZjAxZjAtMWUxMy00ZGE2LWFiNTEtMzA0YjM4ZWJjOTc5XkEyXkFqcGdeQXVyMzY4ODI3NDA@._V1_UY180_CR54,0,180,180_AL_.jpg'),
(74, 24, 'Ving Rhames', 'https://vz.cnwimg.com/wp-content/uploads/2010/11/Ving-Rhames-e1609182532473.jpg'),
(75, 25, 'Scarlett Johansson', 'https://aisvip-a.akamaihd.net/themenarchiv/scarlett-johansson-bilder/3-1e1eaqaq/460x0/476/scarlett-johansson-t2893.jpg'),
(76, 25, 'Chris Evans', 'https://i.pinimg.com/564x/ac/c0/ca/acc0ca4083cf9a2c3f6200f66db4c15c.jpg'),
(77, 25, 'Chris Hemsworth', 'https://menshairstyle.funtouzy.com/wp-content/uploads/2019/07/Chris-Hemsworth-Hairstyles-The-Quiff-300x300.jpg'),
(78, 25, 'Robert Downey Jr.', 'https://i.pinimg.com/564x/88/3e/6d/883e6d13e9f7c8c9457b59c3f4464d79.jpg'),
(79, 25, 'Mark Ruffalo', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/mark-ruffalo-1393-03-11-2017-01-04-20.jpg'),
(80, 25, 'Brie Larson', 'https://www.arageek.com/wp-content/uploads/2019/06/brie-larson-captain-marvel-premiere-1553420926-500x500.jpg'),
(81, 26, 'Joaquin Phoenix', 'https://cdn.idolbirthdays.net/images/46/joaquin-phoenix.jpg'),
(82, 26, 'Robert De Niro', 'https://www.caa.com/sites/default/files/styles/headshot_500x500/public/2020-01/Robert-De-Niro.jpg'),
(83, 27, 'Sacha Baron Cohen', 'https://www.sajr.co.za/wp-content/uploads/2020/07/sasha-baron-cohen.jpg'),
(84, 27, 'Maria Bakalova', 'https://cdn.idolbirthdays.net/images/25/claudia-lee.jpg'),
(85, 28, 'Will Smith', 'https://cdn.britannica.com/s:250x250,c:crop/66/103066-050-B89D5EAF/Will-Smith-actor-musician-2006.jpg'),
(86, 28, 'Naomi Scott', 'https://i.pinimg.com/474x/e5/d2/65/e5d2651ca1310c6fbe88a221e632d575.jpg'),
(87, 28, 'Mena Massoud', 'https://note-store.com/upload/resize_cache/iblock/e84/325_380_2/Mena-Massoud.png'),
(88, 29, 'Brad Pitt', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/brad-pitt-345-24-03-2017-12-34-50.jpg'),
(89, 29, 'Margot Robbie', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2017/10/Margot-Robbie-Contact-Information.jpg'),
(90, 29, 'Leonardo DiCaprio', 'https://www.sportcafe24.com/wp-content/uploads/2014/02/leonardo-dicaprio-5079.jpg'),
(91, 29, 'Al Pacino', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/al-pacino-97-18-10-2016-01-10-33.jpg'),
(92, 30, 'Robert De Niro', 'https://www.caa.com/sites/default/files/styles/headshot_500x500/public/2020-01/Robert-De-Niro.jpg'),
(93, 30, 'Al Pacino', 'https://in.bmscdn.com/iedb/artist/images/website/poster/large/al-pacino-97-18-10-2016-01-10-33.jpg'),
(94, 30, 'Joe Pesci', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2021/03/Joe-Pesci-Contact-Information.jpg'),
(95, 31, 'Cillian Murphy', 'https://i1.sndcdn.com/artworks-000552012672-yuvr8m-t500x500.jpg'),
(96, 31, 'Tom Hardy', 'https://i.pinimg.com/236x/53/7e/e4/537ee45d2b0c817a423382d1a1847141--tom-hardy-toms.jpg'),
(97, 31, 'Helen McCrory', 'https://static.wikia.nocookie.net/jamesbond/images/9/92/Helen_mccrory.jpeg/revision/latest/top-crop/width/360/height/360?cb=20121117005303'),
(98, 31, 'Paul Anderson', 'https://mediamass.net/jdd/public/documents/celebrities/7782.jpg'),
(99, 31, 'Adrien Brody', 'https://medias.spotern.com/people/w320/1/1875-1532336937.jpg'),
(100, 31, 'Annabelle Wallis', 'https://i.pinimg.com/564x/04/ae/29/04ae299a4ea4a15b909a4770ff7bbdff.jpg'),
(101, 32, 'Bryan Cranston', 'https://www.datingcelebs.com/wp-content/uploads/2019/08/cranston-bryan-image.jpg'),
(102, 32, 'Aaron Paul', 'https://lsinsight.org/wp-content/uploads/2018/01/aaron-paul.jpg'),
(103, 32, 'Anna Gunn', 'https://i.pinimg.com/236x/8e/41/d5/8e41d5326121a53dd49ec7eeefee3028--anna-gunn-green-eyes.jpg'),
(104, 32, 'Jonathan Banks', 'https://mediamass.net/jdd/public/documents/celebrities/5183.jpg'),
(105, 32, 'Giancarlo Esposito', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2018/03/Giancarlo-Esposito-Contact-Information.jpg'),
(106, 33, 'Emilia Clarke', 'https://static.wikia.nocookie.net/gameofthrones/images/9/99/Emilia_Clarke_SAG_awards_2016.jpg/revision/latest/top-crop/width/360/height/360?cb=20161215025937'),
(107, 33, 'Kit Harington', 'https://www.rockandpop.cl/wp-content/uploads/2019/06/kit-harington-3-400x360.jpg'),
(108, 33, 'Sophie Turner', 'https://upload.wikimedia.org/wikipedia/commons/4/47/Sophie_Turner_Deauville_2019.jpg'),
(109, 33, 'Peter Dinklage', 'https://www.celebrityborn.com/admin/assets/images/people/vhUEnxptAVv7iesni7Au_2017_06_07.jpg'),
(110, 33, 'Lena Headey', 'https://static.wikia.nocookie.net/gameofthrones/images/9/92/Lena_Heady_s6_premeire_of_series_2016.jpg/revision/latest/top-crop/width/360/height/360?cb=20160703041824'),
(111, 33, 'Jason Momoa', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Jason_Momoa_%2843055621224%29_%28cropped%29.jpg/220px-Jason_Momoa_%2843055621224%29_%28cropped%29.jpg'),
(112, 33, 'Maisie Williams', 'https://pinkmirror.com/Data_Store/person/Maisie%20Williams/153887.jpg'),
(113, 34, 'Álvaro Morte', 'https://www.nextbirthdays.com/wp-content/uploads/alvaro-morte-actor.jpg'),
(114, 34, 'Úrsula Corberó', 'https://cdn.statically.io/img/www.celebrities-contact.com//wp-content/uploads/2019/07/ursula-corbero-email-phone-contact-417.jpg'),
(115, 35, 'Jared Harris', 'https://topicimages.mrowl.com/large/navpreet/thecrown_tvser/cast/jaredharris_1.jpg'),
(116, 35, 'Stellan Skarsgård', 'https://agentfirman.com/wp-content/uploads/2018/02/stellan-skarsgard.jpg'),
(117, 36, 'Navid Mohammadzadeh', 'https://static.sekans.com/images/prVd4YGjg.jpg'),
(118, 36, 'Fereshteh Hosseini', 'https://www.beytoote.com/images/stories/fun/biography-fereshteh-hosseini-22.jpg'),
(119, 36, 'Saber Abar', 'https://static.sekans.com/images/p6eWMwYjb.jpg'),
(120, 36, 'Sahar Dolatshahi', 'https://static.sekans.com/images/pwKWeNdkg.jpg'),
(121, 36, 'Mehran Ghafourian', 'https://files.namnak.com/users/kk/aup/201811/438_pics/%D9%85%D9%87%D8%B1%D8%A7%D9%86-%D8%BA%D9%81%D9%88%D8%B1%DB%8C%D8%A7%D9%86.jpg'),
(122, 37, 'Mohammad Reza Golzar', 'https://music-fa.com/wp-content/uploads/2021/02/Mohammadreza-Golzar-Be-Daram-Beres-Music-fa.com_.jpg'),
(123, 37, 'Sareh Bayat', 'https://upload.wikimedia.org/wikipedia/commons/8/81/Sareh_Bayat_1_%28cropped%29.jpg'),
(124, 37, 'Houman Seyyedi', 'https://cdn-tehran.wisgoon.com/dlir-s3/1053500x538_1518250297812595.jpg'),
(125, 37, 'Mahnaz Afshar', 'https://www.berimfilm.com/wp-content/uploads/2021/02/mahnaz-afshar.jpg'),
(126, 37, 'Hossein Yari', 'https://static.namava.ir/Content/Upload/Images/f5e2b493-117e-4ca0-84d6-760040e36c49.jpg'),
(127, 37, 'Bahareh Kian Afshar', 'https://i.pinimg.com/originals/1a/6e/78/1a6e78afdb6f3f00a4b380c0f93f5df3.jpg'),
(128, 38, 'Taraneh Alidoosti', 'https://static.sekans.com/images/pzVBo6jlb.jpg'),
(129, 38, 'Shahab Hosseini', 'https://www.berimfilm.com/wp-content/uploads/2019/07/shahab-hosseini.jpg'),
(130, 38, 'Parinaz Izadyar', 'https://static.sekans.com/images/pvndXE4jo.jpg'),
(131, 38, 'Mostafa Zamani', 'https://cdn.idolbirthdays.net/images/26/mostafa-zamani.jpg'),
(132, 38, 'Ali Nassirian', 'https://upload.wikimedia.org/wikipedia/commons/f/fd/Ali_Nasirian_in_Ghoghnos_Film_Festival.jpg'),
(133, 38, 'Amir Jafari', 'https://static.sekans.com/images/pOejz1LdE.jpg'),
(134, 38, 'Reza Kianian', 'https://static.sekans.com/images/pDajyxzdE.jpg'),
(135, 39, 'Amir Hossein Arman', 'https://www.persiantvseries.com/wp-content/uploads/amir-hossein-arman-photo.jpg'),
(136, 39, 'Merila Zare\'i', 'https://static.sekans.com/images/pZlWmGVjP.jpg'),
(137, 39, 'Mohammad-Reza Foroutan', 'https://www.berimfilm.com/wp-content/uploads/2021/02/Mohammad-Reza-Foroutan.jpg'),
(138, 39, 'Nazanin Bayati', 'https://static.sekans.com/images/pzgdwYrBm.jpg'),
(139, 39, 'Farzad Farzin', 'https://1musics.com/wp-content/uploads/2019/08/Farzad-Farzin-Mankan.jpeg'),
(140, 40, 'Saed Soheili', 'https://uploads.celebheightwiki.com/images/99/saed-soheili.jpg'),
(141, 40, 'Leila Hatami', 'https://static.sekans.com/images/py5jZZxjR.jpg'),
(142, 40, 'Mostafa Zamani', 'https://cdn.idolbirthdays.net/images/26/mostafa-zamani.jpg'),
(143, 40, 'Vishka Asayesh', 'https://rozup.ir/view/3064684/%D9%88%DB%8C%D8%B4%DA%A9%D8%A7-%D8%A2%D8%B3%D8%A7%DB%8C%D8%B4.jpg'),
(144, 40, 'Hossein Yari', 'https://static.namava.ir/Content/Upload/Images/f5e2b493-117e-4ca0-84d6-760040e36c49.jpg'),
(145, 40, 'Mahoor Alvand', 'https://www.berimfilm.com/wp-content/uploads/2021/03/mahoor-alvand.jpg'),
(146, 41, 'Navid Mohammadzadeh', 'https://static.sekans.com/images/prVd4YGjg.jpg'),
(147, 41, 'Payman Maadi', 'https://www.berimfilm.com/wp-content/uploads/2019/07/peyman-maadi.jpg'),
(148, 41, 'Parinaz Izadyar', 'https://static.sekans.com/images/pvndXE4jo.jpg'),
(149, 41, 'Farhad Aslani', 'https://majaletime.com/wp-content/uploads/2020/04/%D9%81%D8%B1%D9%87%D8%A7%D8%AF-%D8%A7%D8%B5%D9%84%D8%A7%D9%86%DB%8C-1.jpg'),
(150, 42, 'Reza Attaran', 'https://upload.wikimedia.org/wikipedia/commons/e/e6/Reza_Attaran_13970619000020636721371289673248_15159_%28cropped%29_%28cropped%29.jpg'),
(151, 42, 'Sara Bahrami', 'https://static.sekans.com/images/pw5jq9gj0.jpg'),
(152, 42, 'Javad Ezati', 'https://static.sekans.com/images/p9gBKQQdZ.jpg'),
(153, 42, 'Mehran Ahmadi', 'https://static.sekans.com/images/p8mdkDwjV.jpg'),
(154, 43, 'Navid Mohammadzadeh', 'https://static.sekans.com/images/prVd4YGjg.jpg'),
(155, 43, 'Farhad Aslani', 'https://majaletime.com/wp-content/uploads/2020/04/%D9%81%D8%B1%D9%87%D8%A7%D8%AF-%D8%A7%D8%B5%D9%84%D8%A7%D9%86%DB%8C-1.jpg'),
(156, 43, 'Nazanin Bayati', 'https://static.sekans.com/images/pzgdwYrBm.jpg'),
(157, 44, 'Peyman GhasemKhani', 'https://static.sekans.com/images/pKqB1eABy.jpg'),
(158, 44, 'Mohsen Tanabandeh', 'https://static.sekans.com/images/pVlBEZJWZ.jpg'),
(159, 44, 'Shila Khodadad', 'https://persianv.com/goonagoon/wp-content/uploads/sites/48/2018/11/%D8%B9%DA%A9%D8%B3-%D8%B4%DB%8C%D9%84%D8%A7-%D8%AE%D8%AF%D8%A7%D8%AF%D8%A7%D8%AF-%D9%88-%D9%81%D8%B1%D8%B2%DB%8C%D9%86-%D8%B3%D8%B1%DA%A9%D8%A7%D8%B1%D8%A7%D8%AA-500x496.jpg'),
(160, 44, 'Amin Hayai', 'https://static.sekans.com/images/p8VB8qXWX.jpg'),
(161, 44, 'Andishe Fooladvand', 'https://static3.ilna.news/thumbnail/crp5241iaXrF/zD2ly951Lbe1X4vBXmeYxnwvBKd2o-upCBoRpuXWWQ3xVYIwBtE8SJc5CgG8w1SR1HhaeHPcWe7Z4QQxwQ5aCQuC6bW65Yo2vzNA1A_oYcME-xuDHnCGIC-kHgCp4We0w8rbxZQ2J6KCKlL5SndO1w96qHB4I0VpXuOejRjZDSys4NdjIqNZJEQ6csj1vAj0julH6xuow5o,/photo6026080455251571553.jpg'),
(162, 45, 'Navid Mohammadzadeh', 'https://static.sekans.com/images/prVd4YGjg.jpg'),
(163, 45, 'Payman Maadi', 'https://www.berimfilm.com/wp-content/uploads/2019/07/peyman-maadi.jpg'),
(164, 45, 'Parinaz Izadyar', 'https://static.sekans.com/images/pvndXE4jo.jpg'),
(165, 45, 'Shabnam Moghadami', 'https://arga-mag.com/file/img/2019/02/shabnam-moghadami-3.jpg'),
(166, 46, 'Parviz Parastui', 'https://static.sekans.com/images/pZlWm6adP.jpg'),
(167, 46, 'Elnaz Shakerdoost', 'https://i.pinimg.com/originals/26/1b/11/261b11e922b46aa1bde77cc4af98a6d4.jpg'),
(168, 46, 'Mehran Ahmadi', 'https://static.sekans.com/images/p8mdkDwjV.jpg'),
(169, 46, 'Ayşegül Coşkun', 'https://radioplayer.ir/wp-content/uploads/2019/12/Ay%C5%9Feg%C3%BCl-Co%C5%9Fkun-Deniz-Ol-Gel-mp3-image.jpg'),
(170, 47, 'Elnaz Shakerdoost', 'https://i.pinimg.com/originals/26/1b/11/261b11e922b46aa1bde77cc4af98a6d4.jpg'),
(171, 47, 'Houtan Shakiba', 'https://d73o4i22vgk5h.cloudfront.net/53841/public/public/system/posters/800078/standard/-----------_1612939559.png'),
(172, 47, 'Shabnam Moghadami', 'https://arga-mag.com/file/img/2019/02/shabnam-moghadami-3.jpg'),
(173, 48, 'Shahab Hosseini', 'https://www.berimfilm.com/wp-content/uploads/2019/07/shahab-hosseini.jpg'),
(174, 48, 'Taraneh Alidoosti', 'https://static.sekans.com/images/pzVBo6jlb.jpg'),
(175, 49, 'Javad Ezati', 'https://static.sekans.com/images/p9gBKQQdZ.jpg'),
(176, 49, 'Tannaz Tabatabaei', 'https://www.samatak.com/image/2017/12/1/107177869-samatak-com-e1512140029409.jpg'),
(177, 49, 'Amir Aghaei', 'https://static.namava.ir/Content/Upload/Images/e3de4409-7bb5-42e5-b902-2f59c2d65fd5.jpg'),
(178, 50, 'Mohammad Reza Golzar', 'https://music-fa.com/wp-content/uploads/2021/02/Mohammadreza-Golzar-Be-Daram-Beres-Music-fa.com_.jpg'),
(179, 50, 'Javad Ezati', 'https://static.sekans.com/images/p9gBKQQdZ.jpg'),
(180, 50, 'Nazanin Bayati', 'https://static.sekans.com/images/pzgdwYrBm.jpg'),
(181, 50, 'Yekta Naser', 'https://saednews.com/storage/media-center/images/ac-image-ot1575045365Et.jpeg'),
(182, 51, 'Leonardo DiCaprio', 'https://www.sportcafe24.com/wp-content/uploads/2014/02/leonardo-dicaprio-5079.jpg'),
(183, 51, 'Carey Mulligan', 'https://marriedbiography.com/wp-content/uploads/2018/04/carey-mulligan-.jpg'),
(184, 51, 'Joel Edgerton', 'https://biographymask.com/wp-content/uploads/2019/11/Joel-Edgerton-1.jpg'),
(185, 51, 'Elizabeth Debicki', 'https://m.media-amazon.com/images/M/MV5BMWRiNzczYzMtOGE1Yi00Njg0LWFkNTUtYzE3NmVkZDZkMjg5XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_.jpg'),
(186, 52, 'Ryan Gosling', 'https://www.quien.net/wp-content/uploads/cine-quien-es/Ryan-Gosling.jpg'),
(187, 52, 'Rachel McAdams', 'https://img.i-scmp.com/cdn-cgi/image/fit=contain,width=425,format=auto/sites/default/files/styles/768x768/public/images/methode/2016/12/07/a7937cd8-babd-11e6-b1a9-d0a597083a8f_1280x720.JPG'),
(188, 53, 'Taissa Farmiga', 'https://c8d8q6i8.stackpathcdn.com/wp-content/uploads/2018/09/Taissa-Farmiga-Contact-Information-1.jpg'),
(189, 53, 'Demián Bichir', 'https://mediamass.net/jdd/public/documents/celebrities/8047.jpg'),
(190, 53, 'Bonnie Aarons', 'https://wikinetworth.com/uploads/images/bonnie-aarons.jpg'),
(191, 54, 'Lee Van Cleef', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Lee_Van_Cleef_in_Stories_of_the_Century.jpg/220px-Lee_Van_Cleef_in_Stories_of_the_Century.jpg'),
(192, 54, 'Clint Eastwood', 'https://cinema.icrewplay.com/wp-content/uploads/2021/02/clint-eastwood.jpg'),
(193, 54, 'Gian Maria Volonté', 'https://www.addeditore.it/wp-content/uploads/2018/06/Gian-Maria-Volont%C3%A8-lo-sguardo-ribelle-su-in-verso.it-1-300x300.png'),
(194, 55, 'Clint Eastwood', 'https://cinema.icrewplay.com/wp-content/uploads/2021/02/clint-eastwood.jpg'),
(195, 55, 'Gian Maria Volonté', 'https://www.addeditore.it/wp-content/uploads/2018/06/Gian-Maria-Volont%C3%A8-lo-sguardo-ribelle-su-in-verso.it-1-300x300.png'),
(196, 55, 'Marianne Koch', 'https://upload.wikimedia.org/wikipedia/commons/4/41/Marianne_Koch_in_%22A_Fistful_of_Dollars%22_1964.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `series_episode`
--

CREATE TABLE `series_episode` (
  `id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `episode_detail` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL,
  `episode_time` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL,
  `play_url_episode` text COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `series_episode`
--

INSERT INTO `series_episode` (`id`, `season_id`, `episode_detail`, `episode_time`, `play_url_episode`) VALUES
(1, 1, 'S01 E01', '53 min', 'https://as10.cdn.asset.aparat.com/aparat-video/4d607351aa5f59155c2bef1cc5c2180220232502-240p.mp4'),
(2, 1, 'S01 E02', '58 min', 'https://as8.cdn.asset.aparat.com/aparat-video/cab6f1d384fa69b9164ec313e9e285c420805719-240p.mp4'),
(3, 1, 'S01 E03', '44 min', 'https://as4.cdn.asset.aparat.com/aparat-video/1322a4de1f0e243cd7635dbc3a687a8720805725-240p.mp4'),
(4, 1, 'S01 E04', '53 min', 'https://as6.cdn.asset.aparat.com/aparat-video/db0b3b65ca744c1aa29f26354c60e9e520805835-240p.mp4'),
(5, 1, 'S01 E05', '51 min', 'https://as1.cdn.asset.aparat.com/aparat-video/2e304545b10ebf4d561d80fcf275645b20805971-240p.mp4'),
(6, 1, 'S01 E06', '49 min', 'https://hw16.cdn.asset.aparat.com/aparat-video/bd7df1f948afc64662fae46e3d03022517072061-240p.mp4'),
(7, 2, 'S02 E01', '54 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/62b40e0e50ebee47d5d7b42ebc441de717072083-240p.mp4'),
(8, 2, 'S02 E02', '52 min', 'https://aspb11.cdn.asset.aparat.com/aparat-video/e41c1ab2d88a8c0ef416b0d9e2819b1a17072108-240p.mp4'),
(9, 2, 'S02 E03', '57 min', 'https://aspb15.cdn.asset.aparat.com/aparat-video/ed47708440972112f39a40b4066b55fd17072126-240p.mp4'),
(10, 2, 'S02 E04', '52 min', 'https://as3.cdn.asset.aparat.com/aparat-video/e55857d36494fc966b027ca28c345a5917072139-240p.mp4'),
(11, 2, 'S02 E05', '49 min', 'https://aspb15.cdn.asset.aparat.com/aparat-video/54a321d64f68c99c58714da9ae76002017072168-240p.mp4'),
(12, 2, 'S02 E06', '54 min', 'https://aspb12.cdn.asset.aparat.com/aparat-video/88448c29f92bcb9ca976a90ea17b48c617072202-240p.mp4'),
(13, 3, 'S03 E01', '44 min', 'https://hw13.cdn.asset.aparat.com/aparat-video/4de5aed42d3851d8ab96bcca577248f917072224-240p.mp4'),
(14, 3, 'S03 E02', '50 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/b7e6c1098fa96d0eff979541343d9fce17072232-240p.mp4'),
(15, 3, 'S03 E03', '53 min', 'https://as11.cdn.asset.aparat.com/aparat-video/2745cc6962059ac07600816e9c39080317072243-240p.mp4'),
(16, 3, 'S03 E04', '45 min', 'https://hw17.cdn.asset.aparat.com/aparat-video/2ec297573e7397c7eb3be9d7aee2dbc417072246-240p.mp4'),
(17, 3, 'S03 E05', '42 min', 'https://hw4.cdn.asset.aparat.com/aparat-video/6197cf4ebdab35dd7e3036509334689517072256-240p.mp4'),
(18, 3, 'S03 E06', '57 min', 'https://aspb2.cdn.asset.aparat.com/aparat-video/bfd33900b24ba4e3dfdb4333f8e3233217072265-240p.mp4\r\n'),
(19, 4, 'S04 E01', '56 min', 'https://as10.cdn.asset.aparat.com/aparat-video/5346b68088b7dcef5e0d09e4f278b9f317072279-240p.mp4'),
(20, 4, 'S04 E02', '46 min', 'https://hw7.cdn.asset.aparat.com/aparat-video/add719d5f1a3c9af48557e16a0a24c0c17072288-240p.mp4'),
(21, 4, 'S04 E03', '50 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/4fe2dc9b1c822c99e15942fd6242144517072304-240p.mp4'),
(22, 4, 'S04 E04', '52 min', 'https://aspb14.cdn.asset.aparat.com/aparat-video/7b8108a557906672190f31fb89e8ec8f17072333-240p.mp4'),
(23, 4, 'S04 E05', '51 min', 'https://as9.cdn.asset.aparat.com/aparat-video/fe0b4970224c3e09c972c4b488831fa117072562-240p.mp4'),
(24, 4, 'S04 E06', '52 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/72f6a2bafa5b12c23bc074930bf81dd517072598-240p.mp4'),
(25, 5, 'S05 E01', '53 min', 'https://as9.cdn.asset.aparat.com/aparat-video/df9df2d12a711dec8cad6e12bfdbdb0517072646-240p.mp4'),
(26, 5, 'S05 E02', '55 min', 'https://hw17.cdn.asset.aparat.com/aparat-video/6ada2f662fd249f0014f78934e82fe2917072664-240p.mp4'),
(27, 5, 'S05 E03', '54 min', 'https://as6.cdn.asset.aparat.com/aparat-video/44534b808083912f28f32f7c6148c19c17072685-240p.mp4'),
(28, 5, 'S05 E04', '49 min', 'https://as5.cdn.asset.aparat.com/aparat-video/7237621cd9eb84138fc9e9f5213d6baa17072714-240p.mp4'),
(29, 5, 'S05 E05', '53 min', 'https://hw3.cdn.asset.aparat.com/aparat-video/b48e9a908a8e2be15ed125830830a01c17072779-240p.mp4'),
(30, 5, 'S05 E06', '1h 6min', 'https://hw19.cdn.asset.aparat.com/aparat-video/a2f83c7f895af2517bf85c88302c935417200646-240p.mp4'),
(31, 6, 'S01 E01', '50 min', 'https://as5.cdn.asset.aparat.com/aparat-video/80dc1b3803657b9a531890a6071728bf18150409-240p.mp4'),
(32, 6, 'S01 E02', '46 min', 'https://as10.cdn.asset.aparat.com/aparat-video/1812f6eed69c1a0027d9b04c17ecbf5818952051-240p.mp4'),
(33, 6, 'S01 E03', '47 min', 'https://as3.cdn.asset.aparat.com/aparat-video/0c443bfa1eb8910f7ec4617cd6d79f9016514937-240p.mp4'),
(34, 6, 'S01 E04', '48 min', 'https://as9.cdn.asset.aparat.com/aparat-video/516568d9a54d1c181064652bcbfc5bf416515004-240p.mp4'),
(35, 6, 'S01 E05', '45 min', 'https://aspb3.cdn.asset.aparat.com/aparat-video/a9b879076510b1d00849d52fd42ee13316515015-240p.mp4'),
(36, 6, 'S01 E06', '47 min', 'https://aspb14.cdn.asset.aparat.com/aparat-video/95d0bc5ec636deb296607cea003934b016515102-240p.mp4'),
(37, 6, 'S01 E07', '45 min', 'https://aspb14.cdn.asset.aparat.com/aparat-video/b81e7ac898dda6fa2c9d3c4895f09eae16515131-240p.mp4'),
(38, 7, 'S02 E01', '45 min', 'https://aspb2.cdn.asset.aparat.com/aparat-video/fc51573dd7857e4cb62e9b8e04dc78c716515133-240p.mp4'),
(39, 7, 'S02 E02', '48 min', 'https://aspb15.cdn.asset.aparat.com/aparat-video/85e012a6c5b2ed56d8d0defeebd1c82016515171-240p.mp4'),
(40, 7, 'S02 E03', '45 min', 'https://as2.cdn.asset.aparat.com/aparat-video/45541600ed25474e347bd23aa7375b8916515201-240p.mp4'),
(41, 7, 'S02 E04', '48 min', 'https://aspb10.cdn.asset.aparat.com/aparat-video/62eb38f0475b83852d6b200bfeacdb4916515223-240p.mp4'),
(42, 7, 'S02 E05', '46 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/e25c691abd6e36f4076e944030dbaa4a16515232-240p.mp4'),
(43, 7, 'S02 E06', '47 min', 'https://aspb2.cdn.asset.aparat.com/aparat-video/3c69dca63dba42268274ad2b6fb1f84516515250-240p.mp4'),
(44, 7, 'S02 E07', '47 min', 'https://aspb11.cdn.asset.aparat.com/aparat-video/484da19492bdb34151bd344d2037840b16515291-240p.mp4'),
(45, 7, 'S02 E08', '44 min', 'https://aspb14.cdn.asset.aparat.com/aparat-video/688430b7e16d2fac3bb2ca4f69db3ea216515293-240p.mp4'),
(46, 7, 'S02 E09', '46 min', 'https://aspb10.cdn.asset.aparat.com/aparat-video/adb42223029e46d5a14d5edd43be9e5516515315-240p.mp4'),
(47, 7, 'S02 E10', '41 min', 'https://aspb3.cdn.asset.aparat.com/aparat-video/87b876842033055f4e35a956244bd9af16515314-240p.mp4'),
(48, 7, 'S02 E11', '42 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/4c7aa5a89da6c06c3e5514afbe59a33016515339-240p.mp4'),
(49, 7, 'S02 E12', '45 min', 'https://as2.cdn.asset.aparat.com/aparat-video/f17e385c394a179f5f0937c26a2f334816515340-240p.mp4'),
(50, 7, 'S02 E13', '47 min', 'https://as3.cdn.asset.aparat.com/aparat-video/51d576d4249ad2734defe8d21920a83716515362-240p.mp4'),
(51, 8, 'S03 E01', '48 min', 'https://aspb15.cdn.asset.aparat.com/aparat-video/aed3972e2b3628f981eca590a6faedc616515387-240p.mp4'),
(52, 8, 'S03 E02', '48 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/34082a1fac4d0b1159cde066f520a83f16515407-240p.mp4'),
(53, 8, 'S03 E03', '46 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/161e740abb3d8170fa5178f91d4a247c16515432-240p.mp4'),
(54, 8, 'S03 E04', '45 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/11e9954673aff0be40d004df42d9407416515441-240p.mp4'),
(55, 8, 'S03 E05', '43 min', 'https://aspb3.cdn.asset.aparat.com/aparat-video/d7c79c844f19584c36025d8143bb7d2316515639-240p.mp4'),
(56, 8, 'S03 E06', '48 min', 'https://aspb10.cdn.asset.aparat.com/aparat-video/5bad18d96cf4faa83b09e36f8df4ff4a16515648-240p.mp4'),
(57, 8, 'S03 E07', '47 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/97de03fe077c74f776d07fff68f296a716515658-240p.mp4'),
(58, 8, 'S03 E08', '47 min', 'https://aspb12.cdn.asset.aparat.com/aparat-video/3b3db6e622a255a0172c4b86f995ea9516515662-240p.mp4'),
(59, 8, 'S03 E09', '47 min', 'https://aspb2.cdn.asset.aparat.com/aparat-video/b6eb39cb148f31428dd204006151684b16515670-240p.mp4'),
(60, 8, 'S03 E10', '48 min', 'https://aspb13.cdn.asset.aparat.com/aparat-video/a7795f146cc0534bfec5978ca82e471916515673-240p.mp4'),
(61, 8, 'S03 E11', '42 min', 'https://as7.cdn.asset.aparat.com/aparat-video/05adf8376e6f5000ae65fd0fdb769a6216515676-240p.mp4'),
(62, 8, 'S03 E12', '43 min', 'https://as1.cdn.asset.aparat.com/aparat-video/a314162fa0368d6792f80c8943c45a6e18984608-240p.mp4'),
(63, 8, 'S03 E13', '48 min', 'https://as1.cdn.asset.aparat.com/aparat-video/e9f99d8febd58dff960652d0c471b41a20521854-240p.mp4'),
(64, 9, 'S04 E01', '47 min', 'https://hw1.cdn.asset.aparat.com/aparat-video/eb17dab77d10a2d89436e30f5503836820522752-240p.mp4'),
(65, 9, 'S04 E02', '42 min', 'https://as4.cdn.asset.aparat.com/aparat-video/f5388869517da6387217688ae297cc3020522871-240p.mp4'),
(66, 9, 'S04 E03', '42 min', 'https://as11.cdn.asset.aparat.com/aparat-video/529bf7a6c823685c784ffaa557b07b6e20522942-240p.mp4'),
(67, 9, 'S04 E04', '42 min', 'https://hw15.cdn.asset.aparat.com/aparat-video/0b6032ca8a2fd036c12cd773fecbd58620523146-240p.mp4'),
(68, 9, 'S04 E05', '43 min', 'https://as9.cdn.asset.aparat.com/aparat-video/52a1d42abb7e41249caec1405c4d1c0b20523227-240p.mp4'),
(69, 9, 'S04 E06', '48 min', 'https://as7.cdn.asset.aparat.com/aparat-video/7895dbeaf428181a91afce82ed3c9d0320523355-240p.mp4'),
(70, 9, 'S04 E07', '47 min', 'https://as5.cdn.asset.aparat.com/aparat-video/427253c3234d480f3e5c297541e099fc20523460-240p.mp4'),
(71, 9, 'S04 E08', '47 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/c05b9ddcf2a9cfb156047b3a88ac176c20523519-240p.mp4'),
(72, 9, 'S04 E09', '47 min', 'https://as11.cdn.asset.aparat.com/aparat-video/54898a3d2a9e80e149a5f0fc1e04a05420523575-240p.mp4'),
(73, 9, 'S04 E10', '46 min', 'https://hw3.cdn.asset.aparat.com/aparat-video/a8dd3b6202f9f9046edb33215ac7b3c320523628-240p.mp4'),
(74, 9, 'S04 E11', '47 min', 'https://hw7.cdn.asset.aparat.com/aparat-video/42e4d5fcfac82d7dd3f55bbc8eba285120523688-240p.mp4'),
(75, 9, 'S04 E12', '46 min', 'https://hw16.cdn.asset.aparat.com/aparat-video/fbdd7bb418494cbabc0f07dfbaa88b0720523744-240p.mp4'),
(76, 9, 'S04 E13', '51 min', 'https://hw1.cdn.asset.aparat.com/aparat-video/b0ccad0e8f95aab0648b491ba348454620523809-240p.mp4'),
(77, 10, 'S05 E01', '51 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/25bb692a8c4ed7f60c6e4b3e6ec507ac20528713-240p.mp4'),
(78, 10, 'S05 E02', '45 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/b6a222fd0bb023f0719b5d8ccf691ecf20528767-240p.mp4'),
(79, 10, 'S05 E03', '47 min', 'https://as4.cdn.asset.aparat.com/aparat-video/1217bb3abf3eb500d122812b27e41d6620528834-240p.mp4'),
(80, 10, 'S05 E04', '45 min', 'https://hw18.cdn.asset.aparat.com/aparat-video/0d8301a937a7c93f53e4c8faa621300320528875-240p.mp4'),
(81, 10, 'S05 E05', '48 min', 'https://hw14.cdn.asset.aparat.com/aparat-video/a0c4ca6f7bf2c193c79d6ad74570ca3420528933-240p.mp4'),
(82, 10, 'S05 E06', '47 min', 'https://aspb15.cdn.asset.aparat.com/aparat-video/fbd05249823f374faf577521ed9486c720528986-240p.mp4'),
(83, 10, 'S05 E07', '47 min', 'https://aspb24.cdn.asset.aparat.com/aparat-video/d73e79fceb5692fd4e6a049a0cc49c0f20529041-240p.mp4'),
(84, 10, 'S05 E08', '47 min', 'https://as7.cdn.asset.aparat.com/aparat-video/b57a55df8275213db7a0980cc69a177420529088-240p.mp4'),
(85, 10, 'S05 E09', '46 min', 'https://hw19.cdn.asset.aparat.com/aparat-video/0f96ec10ff8b2a2b203410d4ae44272020529144-240p.mp4'),
(86, 10, 'S05 E10', '46 min', 'https://hw15.cdn.asset.aparat.com/aparat-video/295ccb79e95e35625636af000dfa32fe20529211-240p.mp4'),
(87, 10, 'S05 E11', '47 min', 'https://as8.cdn.asset.aparat.com/aparat-video/155058f1f75f39f2c023fc9e5cc38ac120529270-240p.mp4'),
(88, 10, 'S05 E12', '48 min', 'https://hw2.cdn.asset.aparat.com/aparat-video/c8a3c5d00b21327281c508443d3548e920529311-240p.mp4'),
(89, 10, 'S05 E13', '47 min', 'https://as6.cdn.asset.aparat.com/aparat-video/23008f884d1eccabdbdfd26594e0556820529368-240p.mp4'),
(90, 10, 'S05 E14', '48 min', 'https://as5.cdn.asset.aparat.com/aparat-video/56c003f99d221409ac116106c05e258620529420-240p.mp4'),
(91, 10, 'S05 E15', '54 min', 'https://as7.cdn.asset.aparat.com/aparat-video/9125777b8db558148e1c164e0265c0f020529469-240p.mp4'),
(92, 10, 'S05 E16', '56 min', 'https://hw3.cdn.asset.aparat.com/aparat-video/1f39d221fcd0039b03a0473ddd4d3e4e20529523-240p.mp4'),
(93, 11, 'S01 E01', '49 min', 'https://hw2.cdn.asset.aparat.com/aparat-video/74cef83ce9b79060878729a220dd377418255874-240p.mp4'),
(94, 11, 'S01 E02', '49 min', 'https://hw18.cdn.asset.aparat.com/aparat-video/f922f3d7e1448ca6c54ce258e326e07111348710-240p.mp4'),
(95, 11, 'S01 E03', '52 min', 'https://as9.cdn.asset.aparat.com/aparat-video/33847a7df2e19d34c438fe4b1bdfa6ea18263492-240p.mp4'),
(96, 11, 'S01 E04', '48 min', 'https://hw19.cdn.asset.aparat.com/aparat-video/ad8dfa6f16495aeb9e8334bdd46c094c11375017-240p.mp4'),
(97, 11, 'S01 E05', '47 min', 'https://hw18.cdn.asset.aparat.com/aparat-video/d2aedf8702f98d3e8e6f94ed0076564222556795-240p.mp4'),
(98, 11, 'S01 E06', '53 min', 'https://hw2.cdn.asset.aparat.com/aparat-video/4551e7c59cd5079b5806a906dd1c792313353892-240p.mp4'),
(99, 11, 'S01 E07', '43 min', 'https://as9.cdn.asset.aparat.com/aparat-video/8ddb21b728c7a8d43ea88c5aa58233a219224934-240p.mp4'),
(100, 11, 'S01 E08', '58 min', 'https://hw6.cdn.asset.aparat.com/aparat-video/2ad2f16ad7bcca290cfafa0d4030340611786188-240p.mp4'),
(101, 11, 'S01 E09', '51 min', 'https://hw19.cdn.asset.aparat.com/aparat-video/d2c9de0e126c4aec7be88fe91255b39022582958-240p.mp4'),
(102, 11, 'S01 E10', '43 min', 'https://hw17.cdn.asset.aparat.com/aparat-video/1dabde9f1c2d61737a28081095718e8d22583050-240p.mp4'),
(103, 12, 'S02 E01', '49 min', 'https://as6.cdn.asset.aparat.com/aparat-video/174428cd6deb1938e6cbfa6345cecc9422598960-240p.mp4'),
(104, 12, 'S02 E02', '43 min', 'https://aspb1.cdn.asset.aparat.com/aparat-video/5970c82386217b419971d762995ee3e715152509-240p.mp4'),
(105, 12, 'S02 E03', '44 min', 'https://as2.cdn.asset.aparat.com/aparat-video/1abf9e5f951cd33b7d856354af9bedbf22602408-240p.mp4'),
(106, 12, 'S02 E04', '43 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/d5506dbd64676a6963307feb335edffc22605858-240p.mp4'),
(107, 12, 'S02 E05', '51 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/e5924631f043008e24ce8013dd5be1e322606254-240p.mp4'),
(108, 12, 'S02 E06', '47 min', 'https://hw4.cdn.asset.aparat.com/aparat-video/1a9bdb1b8394db95e138e57768df4ac614164621-240p.mp4'),
(109, 12, 'S02 E07', '50 min', 'https://hw4.cdn.asset.aparat.com/aparat-video/0c38f8c70aa79de84de2826e668091c322630234-240p.mp4'),
(110, 12, 'S02 E08', '51 min', 'https://as2.cdn.asset.aparat.com/aparat-video/8a04ae37c8fd8ea271e502425a0420f722635570-240p.mp4'),
(111, 12, 'S02 E09', '47 min', 'https://as2.cdn.asset.aparat.com/aparat-video/ee24f61fd78de90191e1793fd1d3fe5622635862-240p.mp4'),
(112, 12, 'S02 E10', '56 min', 'https://as10.cdn.asset.aparat.com/aparat-video/d27c0ce7825e26f10f92e7521462cd3b22636135-240p.mp4'),
(113, 13, 'S03 E01', '46 min', 'https://hw19.cdn.asset.aparat.com/aparat-video/28a5c8dad3f3434c693dbc68b6dd5c1714561819-240p.mp4'),
(114, 13, 'S03 E02', '53 min', 'https://hw2.cdn.asset.aparat.com/aparat-video/2f5e77bd48278b842de01ec36b3f25a414562937-240p.mp4'),
(115, 13, 'S03 E03', '44 min', 'https://aspb14.cdn.asset.aparat.com/aparat-video/613815f499748278dcd2d3b33060798c23360530-240p.mp4'),
(116, 13, 'S03 E04', '54 min', 'https://as11.cdn.asset.aparat.com/aparat-video/59ad09ebf46b6ab7a6a9d19f94d1d40c18616158-240p.mp4'),
(117, 13, 'S03 E05', '46 min', 'https://aspb11.cdn.asset.aparat.com/aparat-video/9193901bc40046c793d5996d010ac75323360748-240p.mp4'),
(118, 13, 'S03 E06', '51 min', 'https://aspb18.cdn.asset.aparat.com/aparat-video/0173d2128ae372321b096f629b2562aa23360829-240p.mp4'),
(119, 13, 'S03 E07', '42 min', 'https://hw18.cdn.asset.aparat.com/aparat-video/710d96f6d00750004e3154b48171662314703729-240p.mp4'),
(120, 13, 'S03 E08', '36 min', 'https://aspb10.cdn.asset.aparat.com/aparat-video/86050ee32e7d68f39fef4715fa28b93923360986-240p.mp4'),
(121, 13, 'S03 E09', '47 min', 'https://aspb11.cdn.asset.aparat.com/aparat-video/a0345665435a20d1c71901bc5377c56923361017-240p.mp4'),
(122, 13, 'S03 E10', '52 min', 'https://as3.cdn.asset.aparat.com/aparat-video/3dca1140ae947d86ffec0d1ac62ff43f14780544-240p.mp4'),
(123, 14, 'S04 E01', '41 min', 'https://as5.cdn.asset.aparat.com/aparat-video/db46eeeba7a6ba925a069792237bd9be18616837-240p.mp4'),
(124, 14, 'S04 E02', '47 min', 'https://hw7.cdn.asset.aparat.com/aparat-video/c4bbf1ec1a324cbda666682cfcd06ca320592907-240p.mp4'),
(125, 14, 'S04 E03', '47 min', 'https://hw7.cdn.asset.aparat.com/aparat-video/fe059e69a31a0810d03fa602f8b690cd20593212-240p.mp4'),
(126, 14, 'S04 E04', '52 min', 'https://hw4.cdn.asset.aparat.com/aparat-video/4cb77e8413660281bf98b1d8798cff1c20592918-240p.mp4'),
(127, 14, 'S04 E05', '51 min', 'https://as4.cdn.asset.aparat.com/aparat-video/15395e8473134eab43a52d63f90a214d20593208-240p.mp4'),
(128, 14, 'S04 E06', '47 min', 'https://hw7.cdn.asset.aparat.com/aparat-video/7c10ad4cf8fa55aaf982fa009b0e984920593218-240p.mp4'),
(129, 14, 'S04 E07', '41 min', 'https://hw5.cdn.asset.aparat.com/aparat-video/e782acf4dbcbf60892042aa15e1d228320593217-240p.mp4'),
(130, 14, 'S04 E08', '44 min', 'https://hw13.cdn.asset.aparat.com/aparat-video/81cc1189ae5fdd4960d4fcaae5212b2620593216-240p.mp4'),
(131, 14, 'S04 E09', '51 min', 'https://hw13.cdn.asset.aparat.com/aparat-video/eb77016e8112500663455d989b55ada520593215-240p.mp4'),
(132, 14, 'S04 E10', '1h 1min', 'https://hw4.cdn.asset.aparat.com/aparat-video/e2dda52030e157a2181e79b38ec5daa820593214-240p.mp4'),
(133, 15, 'S05 E01', '43 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/505371766663ee74f9e88b705e820a9619920974-240p.mp4'),
(134, 15, 'S05 E02', '56 min', 'https://hw2.cdn.asset.aparat.com/aparat-video/d97fef492bb8e6e69b2ec9e680c0f93a19920977-240p.mp4'),
(135, 15, 'S05 E03', '47 min', 'https://as10.cdn.asset.aparat.com/aparat-video/132d30ad0489b999d21f9eb14901d9ca19920983-240p.mp4'),
(136, 15, 'S05 E04', '44 min', 'https://as7.cdn.asset.aparat.com/aparat-video/ba7ae601fabd84ef957c6513f26d240319920990-240p.mp4'),
(137, 15, 'S05 E05', '54 min', 'https://as7.cdn.asset.aparat.com/aparat-video/c3605930939555d2e034d80fb5e2927b19920992-240p.mp4'),
(138, 15, 'S05 E06', '46 min', 'https://as10.cdn.asset.aparat.com/aparat-video/22d8456bc5e95231181eb7980b35e56019921033-240p.mp4'),
(139, 15, 'S05 E07', '47 min', 'https://hw18.cdn.asset.aparat.com/aparat-video/e10311e08a36ddb7ab91629c939bf1ad19921035-240p.mp4'),
(140, 15, 'S05 E08', '59 min', 'https://as6.cdn.asset.aparat.com/aparat-video/1852cdc8638b563c098dfa977d9fc04718418189-240p.mp4'),
(141, 15, 'S05 E09', '46 min', 'https://as11.cdn.asset.aparat.com/aparat-video/a74364c92ffab29e9f08c5ce99f5694018419230-240p.mp4'),
(142, 15, 'S05 E10', '53 min', 'https://aspb3.cdn.asset.aparat.com/aparat-video/2f7fd9adcad353becfb1642b0d5d90ea14747253-240p.mp4'),
(143, 16, 'S06 E01', '41 min', 'https://as6.cdn.asset.aparat.com/aparat-video/79ac83134faf69596f90285e91e0653619921069-240p.mp4'),
(144, 16, 'S06 E02', '53 min', 'https://as6.cdn.asset.aparat.com/aparat-video/5771311653ec7e5afddbd265ad56973019921073-240p.mp4'),
(145, 16, 'S06 E03', '52 min', 'https://as8.cdn.asset.aparat.com/aparat-video/08050f6e702c95c89898a3028f5792d319921080-240p.mp4'),
(146, 16, 'S06 E04', '53 min', 'https://as3.cdn.asset.aparat.com/aparat-video/5a9d2df927cdcec9b4709f7d70c0e5e618452061-240p.mp4'),
(147, 16, 'S06 E05', '55 min', 'https://as4.cdn.asset.aparat.com/aparat-video/c2c962f602ad10a90e232eac7403f22819921087-240p.mp4'),
(148, 16, 'S06 E06', '50 min', 'https://as9.cdn.asset.aparat.com/aparat-video/5ba9cab2037b7e59832f2af39ad5f64919921252-240p.mp4'),
(149, 16, 'S06 E07', '47 min', 'https://as1.cdn.asset.aparat.com/aparat-video/9f79abe0ee5a890f077b05f6ae7933cb19921258-240p.mp4'),
(150, 16, 'S06 E08', '56 min', 'https://as8.cdn.asset.aparat.com/aparat-video/2e71480ee61e6c4042737a505319d58019921263-240p.mp4'),
(151, 16, 'S06 E09', '59 min', 'https://as4.cdn.asset.aparat.com/aparat-video/b593ec0d835ed7ed0306265f7164411419921268-240p.mp4'),
(152, 16, 'S06 E10', '1h 6min', 'https://hw7.cdn.asset.aparat.com/aparat-video/85039a3d27d420b28e859328f36b3a1419921272-240p.mp4'),
(153, 17, 'S07 E01', '59 min', 'https://as7.cdn.asset.aparat.com/aparat-video/1574bb22e6d70e906bddae93fec131e019922579-240p.mp4'),
(154, 17, 'S07 E02', '52 min', 'https://hw5.cdn.asset.aparat.com/aparat-video/1e2c1d3a4d5a92ae6c92b0435156f9b219922582-240p.mp4'),
(155, 17, 'S07 E03', '59 min', 'https://hw13.cdn.asset.aparat.com/aparat-video/eec28f8a8a0f1678a8dbdede86e471e817067988-240p.mp4'),
(156, 17, 'S07 E04', '50 min', 'https://as5.cdn.asset.aparat.com/aparat-video/66d0450941c5094a2400b7addf8d487a19922606-240p.mp4'),
(157, 17, 'S07 E05', '58 min', 'https://hw14.cdn.asset.aparat.com/aparat-video/c0f644feb13d4b5f1c0a481f1bc8c64719922661-240p.mp4'),
(158, 17, 'S07 E06', '1h 10min', 'https://as5.cdn.asset.aparat.com/aparat-video/038af74dff7445ca7b2e388d59bf99f819922665-240p.mp4'),
(159, 17, 'S07 E07', '1h 18min', 'https://as1.cdn.asset.aparat.com/aparat-video/96f706dc049528fff78dd0e41e1eb62719922670-240p.mp4'),
(160, 18, 'S08 E01', '54 min', 'https://hw5.cdn.asset.aparat.com/aparat-video/49fb1a16db8cfdd5a040639ea91e9fad19922693-240p.mp4'),
(161, 18, 'S08 E02', '59 min', 'https://as4.cdn.asset.aparat.com/aparat-video/24eb5c5cb42f6d7e89b9ce62538985eb19922697-240p.mp4'),
(162, 18, 'S08 E03', '1h 22min', 'https://hw14.cdn.asset.aparat.com/aparat-video/bbedef5688718796793c559de583f09b19922702-240p.mp4'),
(163, 18, 'S08 E04', '1h 17min', 'https://as4.cdn.asset.aparat.com/aparat-video/96168fc8108a93efba78b1fd35571d9b19922738-240p.mp4'),
(164, 18, 'S08 E05', '1h 20min', 'https://as11.cdn.asset.aparat.com/aparat-video/f908b01be2b471cd58fa61f7956593da19922741-240p.mp4'),
(165, 18, 'S08 E06', '1h 19min', 'https://hw2.cdn.asset.aparat.com/aparat-video/c107968245b1d882baffe0a57adf665e19922744-240p.mp4'),
(166, 19, 'S01 E01', '45 min', 'https://as11.cdn.asset.aparat.com/aparat-video/276d2c99599d50c4950d417d17b31c6920844901-240p.mp4'),
(167, 19, 'S01 E02', '40 min', 'https://as11.cdn.asset.aparat.com/aparat-video/683b380bf79cbfab3a501f64668d571920844921-240p.mp4'),
(168, 19, 'S01 E03', '51 min', 'https://as5.cdn.asset.aparat.com/aparat-video/836a05f1b020d407651927e278a56e4f20844943-240p.mp4'),
(169, 19, 'S01 E04', '52 min', 'https://as5.cdn.asset.aparat.com/aparat-video/20340735a073303e78e10221536248d920844979-240p.mp4'),
(170, 19, 'S01 E05', '44 min', 'https://aspb10.cdn.asset.aparat.com/aparat-video/639aebe0942e542ef6b824a3a731ad1318567287-240p.mp4'),
(171, 19, 'S01 E06', '44 min', 'https://as1.cdn.asset.aparat.com/aparat-video/20737aabd9b145a4b459b041ba2f6e1420845056-240p.mp4'),
(172, 19, 'S01 E07', '42 min', 'https://as9.cdn.asset.aparat.com/aparat-video/1e093021caec56c4439df2f6ba60014f20845072-240p.mp4'),
(173, 19, 'S01 E08', '43 min', 'https://as1.cdn.asset.aparat.com/aparat-video/e20f606ad99e6b455cdf46e49fa2d56a20845090-240p.mp4'),
(174, 19, 'S01 E09', '41 min', 'https://as1.cdn.asset.aparat.com/aparat-video/5e60f385d0644c1ae97f3fd4f59c6eb420845110-240p.mp4'),
(175, 19, 'S01 E10', '52 min', 'https://as8.cdn.asset.aparat.com/aparat-video/2b61e8ce82d68e61003cc9fe3b22355220845150-240p.mp4'),
(176, 19, 'S01 E11', '40 min', 'https://as6.cdn.asset.aparat.com/aparat-video/8582e20cedb506e2a392780b51ba90f920845167-240p.mp4'),
(177, 19, 'S01 E12', '37 min', 'https://as8.cdn.asset.aparat.com/aparat-video/41d885adeeb72b6c994c676f5ea5b27e20845194-240p.mp4'),
(178, 19, 'S01 E13', '54 min', 'https://storage3.namayesh.com/videos/80000/80614/80614_240p.mp4'),
(179, 20, 'S02 E01', '40 min', 'https://as5.cdn.asset.aparat.com/aparat-video/65291c663c467de051d34074a63608e720845785-240p.mp4'),
(180, 20, 'S02 E02', '41 min', 'https://as4.cdn.asset.aparat.com/aparat-video/442de202485658a67be56e2bf6d9b5e820845833-240p.mp4'),
(181, 20, 'S02 E03', '44 min', 'https://as5.cdn.asset.aparat.com/aparat-video/81b1da50632938633d66908c2fb7d54420845858-240p.mp4'),
(182, 20, 'S02 E04', '45 min', 'https://as9.cdn.asset.aparat.com/aparat-video/5539be1287e10c0227d16028f7de316b20845900-240p.mp4'),
(183, 20, 'S02 E05', '42 min', 'https://as8.cdn.asset.aparat.com/aparat-video/3587344114c0594d0d5027295b87e24c20845991-240p.mp4'),
(184, 20, 'S02 E06', '45 min', 'https://as10.cdn.asset.aparat.com/aparat-video/67e7e6fe4d413e586da5406ea192645220846044-240p.mp4'),
(185, 20, 'S02 E07', '38 min', 'https://as10.cdn.asset.aparat.com/aparat-video/c22f6f021193f2745969c1d0921d36e720846088-240p.mp4'),
(186, 20, 'S02 E08', '48 min', 'https://as8.cdn.asset.aparat.com/aparat-video/531f8854197649faae58130fcea752fc21806388-240p.mp4'),
(187, 20, 'S02 E09', '44 min', 'https://as6.cdn.asset.aparat.com/aparat-video/8cf26c979fee1593f892acbcc2063ae020847121-240p.mp4'),
(188, 21, 'S03 E01', '47 min', 'https://as11.cdn.asset.aparat.com/aparat-video/31277f2a3dac69b15852f80bc2d1ba5420847907-240p.mp4'),
(189, 21, 'S03 E02', '42 min', 'https://as1.cdn.asset.aparat.com/aparat-video/0e68195290879c9e588cec11ec0c1d1a20847942-240p.mp4'),
(190, 21, 'S03 E03', '49 min', 'https://as7.cdn.asset.aparat.com/aparat-video/49bc48a0d64559bd570897529dd77e2620847979-240p.mp4'),
(191, 21, 'S03 E04', '43 min', 'https://as10.cdn.asset.aparat.com/aparat-video/b0d0da06b242de90b639ac516980f58420847994-240p.mp4'),
(192, 21, 'S03 E05', '49 min', 'https://as5.cdn.asset.aparat.com/aparat-video/00aa6ce09cefc6cb642c25addf48d09120849341-240p.mp4'),
(193, 21, 'S03 E06', '46 min', 'https://as11.cdn.asset.aparat.com/aparat-video/77affb671428b80a24b896d7924848b620849404-240p.mp4'),
(194, 21, 'S03 E07', '38 min', 'https://as9.cdn.asset.aparat.com/aparat-video/22934152b0a5a770fcb6d6add5e76da620849409-240p.mp4'),
(195, 21, 'S03 E08', '56 min', 'https://as11.cdn.asset.aparat.com/aparat-video/4fcd9431e7b1a12709bb7dc4ba97105420849921-240p.mp4'),
(196, 22, 'S04 E01', '50 min', 'https://as1.cdn.asset.aparat.com/aparat-video/e17b824dcf62e33a562e1fc71c1385ca20883210-240p.mp4'),
(197, 22, 'S04 E02', '43 min', 'https://as4.cdn.asset.aparat.com/aparat-video/cd965865d284a3b17c7196c225851c0220883308-240p.mp4'),
(198, 22, 'S04 E03', '42 min', 'https://as6.cdn.asset.aparat.com/aparat-video/acc4e6628cd62f8879a9a5b083b794b220883401-240p.mp4'),
(199, 22, 'S04 E04', '51 min', 'https://aspb27.cdn.asset.aparat.com/aparat-video/8ed8e02bb65a34953d04e5c5669d340229289302-240p.mp4'),
(200, 22, 'S04 E05', '41 min', 'https://as10.cdn.asset.aparat.com/aparat-video/e9cd87dded841db84b71829a6c14959220883629-240p.mp4'),
(201, 22, 'S04 E06', '39 min', 'https://hw19.cdn.asset.aparat.com/aparat-video/cd8f6ee573a34c90275a44cdb720225021082358-240p.mp4'),
(202, 22, 'S04 E07', '51 min', 'https://as10.cdn.asset.aparat.com/aparat-video/d84a7764b64e2c6af94549557104829e21082520-240p.mp4'),
(203, 22, 'S04 E08', '56 min', 'https://hw20.cdn.asset.aparat.com/aparat-video/d720192241133bb5126558ef2b67992e21082561-240p.mp4'),
(204, 23, 'S01 E01', '1h 3min', 'https://aspb13.cdn.asset.aparat.com/aparat-video/6d0864cba7d7a96500ad9dc501ed11fe25229332-240p.mp4'),
(205, 23, 'S01 E02', '1h 11min', 'https://hw13.cdn.asset.aparat.com/aparat-video/040249eceb715f48b27c74d48ab2c2f520735561-240p.mp4'),
(206, 23, 'S01 E03', '1h 5min', 'https://as10.cdn.asset.aparat.com/aparat-video/aac950cf5659c844425cc3d4b060162120735563-240p.mp4'),
(207, 23, 'S01 E04', '1h 10min', 'https://hw13.cdn.asset.aparat.com/aparat-video/489e9254dc66a6aa98ab247797366cca25268291-240p.mp4'),
(208, 23, 'S01 E05', '1h 16min', 'https://hw17.cdn.asset.aparat.com/aparat-video/7eb18d3557b99d6fca8f5b7ffdfcdc2c20735570-240p.mp4'),
(209, 24, 'S01 E01', '52 min', 'https://aspb23.cdn.asset.aparat.com/aparat-video/70eb92a911c4ae5455894e92ad2dea7e28235038-240p.mp4'),
(210, 24, 'S01 E02', '55 min', 'https://aspb19.cdn.asset.aparat.com/aparat-video/e7c4139eccb42ed80e1cb298574ce1a528398789-240p.mp4'),
(211, 24, 'S01 E03', '54 min', 'https://hw5.cdn.asset.aparat.com/aparat-video/45a4d6d532ad65efc2cf36669f4275af33232870-240p.mp4'),
(212, 24, 'S01 E04', '50 min', 'https://aspb26.cdn.asset.aparat.com/aparat-video/e9f2f2c575f6112fe4c91220d1192b4c28898857-240p.mp4'),
(213, 24, 'S01 E05', '53 min', 'https://aspb21.cdn.asset.aparat.com/aparat-video/debefe74c4580585c1c78d6c88981d5831747023-240p.mp4'),
(214, 24, 'S01 E06', '49 min', 'https://aspb23.cdn.asset.aparat.com/aparat-video/85c6367e117a4ae2153e769c3d9afe9a29356694-240p.mp4'),
(215, 24, 'S01 E07', '50 min', 'https://aspb26.cdn.asset.aparat.com/aparat-video/3e76c7efc91ff085555157fcd383bbde31651804-240p.mp4'),
(216, 24, 'S01 E08', '46 min', 'https://aspb22.cdn.asset.aparat.com/aparat-video/1b7dbbcaeeb71d12743be0e0998e08f129920384-240p.mp4'),
(217, 24, 'S01 E09', '46 min', 'https://aspb23.cdn.asset.aparat.com/aparat-video/f0f557e753a012fedb664ac30dd0716f30201746-240p.mp4'),
(218, 24, 'S01 E10', '41 min', 'https://aspb27.cdn.asset.aparat.com/aparat-video/bd4e22aa4f8e6812ea9bf0388019326230391936-240p.mp4'),
(219, 24, 'S01 E11', '44 min', 'https://as11.cdn.asset.aparat.com/aparat-video/6210244b687cde063e9c3c2aebe9c58d32900907-240p.mp4'),
(220, 24, 'S01 E12', '55 min', 'https://aspb20.cdn.asset.aparat.com/aparat-video/4b45dbd65dd83bf3312b7566a886491e31653076-240p.mp4'),
(221, 24, 'S01 E13', '53 min', 'https://aspb22.cdn.asset.aparat.com/aparat-video/8a2da3268340e7cd33fb138d997c087531592074-240p.mp4'),
(222, 24, 'S01 E14', '44 min', 'https://aspb23.cdn.asset.aparat.com/aparat-video/89b86d6db2b36327afb3d50d91693cc931678449-240p.mp4'),
(223, 24, 'S01 E15', '51 min', 'https://aspb24.cdn.asset.aparat.com/aparat-video/7c1b1053d3dcfbeeff4dd77ebc97846e31678043-240p.mp4'),
(224, 25, 'S01 E01', '55 min', 'https://hw4.cdn.asset.aparat.com/aparat-video/a3084f8fd2f06167fcaee5b535acd6e918022037-240p.mp4'),
(225, 25, 'S01 E02', '55 min', 'https://dl6.mp4.ir/video/2017/2/17-855604638/17-855604638-200.mp4'),
(226, 25, 'S01 E03', '58 min', 'https://dl6.mp4.ir/video/2017/3/6207-823924829/6207-823924829-200.mp4'),
(227, 25, 'S01 E04', '1h 4min', 'https://dl6.mp4.ir/video/2017/3/6207-80057114/6207-80057114-200.mp4'),
(228, 25, 'S01 E05', '1h 3min', 'https://dl6.mp4.ir/video/2017/4/6207-504938736/6207-504938736-200.mp4'),
(229, 25, 'S01 E06', '54 min', 'https://dl6.mp4.ir/video/2017/5/17-948297882/17-948297882-360.mp4'),
(230, 25, 'S01 E07', '49 min', 'https://dl12.mp4.ir/video/2020/10/17-653073235/17-653073235-360.mp4'),
(231, 25, 'S01 E08', '59 min', 'https://dl12.mp4.ir/video/2020/10/17-929968744/17-929968744-360.mp4'),
(232, 25, 'S01 E09', '59 min', 'https://dl12.mp4.ir/video/2020/10/17-45221531/17-45221531-360.mp4'),
(233, 25, 'S01 E10', '54 min', 'https://dl12.mp4.ir/video/2020/10/17-223138837/17-223138837-360.mp4'),
(234, 25, 'S01 E11', '57 min', 'https://dl12.mp4.ir/video/2020/10/17-236810050/17-236810050-360.mp4'),
(235, 25, 'S01 E12', '58 min', 'https://dl12.mp4.ir/video/2020/10/17-346287246/17-346287246-360.mp4'),
(236, 25, 'S01 E13', '58 min', 'https://dl12.mp4.ir/video/2020/11/17-998761178/17-998761178-200.mp4'),
(237, 25, 'S01 E14', '58 min', 'https://dl12.mp4.ir/video/2020/11/17-749068302/17-749068302-200.mp4'),
(238, 25, 'S01 E15', '56 min', 'https://oldcdn.jabeh.com/old/be/be0ecb63-a9e2-48d8-84d6-0708d1b97e37/2017_07_12_a7b1f855f49abbfaa1c6888d559bd7ec.mp4'),
(239, 25, 'S01 E16', '57 min', 'https://dl12.mp4.ir/video/2020/11/17-417160797/17-417160797-200.mp4'),
(240, 25, 'S01 E17', '1h 7min', 'https://dl12.mp4.ir/video/2020/12/17-249913349/17-249913349-200.mp4'),
(241, 26, 'S02 E01', '47 min', 'https://vod8.enama.ir/download/1041200/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-69-5A-46-68-6D-62-58-4B-70-79-35-64-61-50-79-64-31-55-75-78-66-6E-68-78-47-61-32-30-6D-30-58-79-77-3D-3D/1245467_144.mp4'),
(242, 26, 'S02 E02', '39 min', 'https://vod3.enama.ir/download/1041200/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-68-42-53-62-70-74-52-68-4A-68-6D-54-2F-6E-69-77-6A-47-64-79-6F-67-7A-34-50-79-55-79-35-76-37-70-67-3D-3D/1245491_240.mp4'),
(243, 26, 'S02 E03', '48 min', 'https://vod6.enama.ir/download/1031488/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-69-5A-46-68-6D-62-58-4B-70-79-35-4E-43-51-68-72-42-55-49-79-6D-36-51-34-50-52-47-31-4D-49-6F-7A-67-3D-3D/1428662_240.mp4'),
(244, 26, 'S02 E04', '46 min', 'https://vod3.enama.ir/download/1041200/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-6A-76-46-74-70-57-65-72-58-69-70-37-43-5A-70-45-4C-66-7A-2B-49-71-58-75-41-41-37-58-57-4B-46-6C-41-3D-3D/1245530_240.mp4'),
(245, 26, 'S02 E05', '41 min', 'https://vod1.enama.ir/download/1041200/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-6E-67-45-61-43-4D-32-4E-51-32-6E-62-4D-31-30-58-39-66-4C-35-43-2F-55-71-6C-4B-32-61-41-2F-6F-6E-77-3D-3D/1253246_144.mp4'),
(246, 26, 'S02 E06', '43 min', 'https://vod6.enama.ir/download/1041200/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-75-57-72-57-53-66-4E-47-39-38-4A-63-61-78-73-67-2F-39-4F-36-4B-64-67-6A-7A-77-64-70-6C-54-74-57-41-3D-3D/1253258_144.mp4'),
(247, 26, 'S02 E07', '51 min', 'https://vod12.enama.ir/download/1041200/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-75-57-72-57-53-66-4E-47-39-38-4A-6E-33-4B-2B-31-77-41-5A-6C-35-68-35-50-45-44-77-66-51-4F-68-79-51-3D-3D/1253276_144.mp4'),
(248, 26, 'S02 E08', '48 min', 'https://vod12.enama.ir/download/1000507/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-69-48-76-62-45-55-58-44-56-64-77-4F-6D-48-6E-72-64-2F-6B-61-33-39-7A-41-59-35-53-2F-66-62-66-38-51-3D-3D/1245113_240.mp4'),
(249, 26, 'S02 E09', '49 min', 'https://vod5.enama.ir/download/1041200/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-69-48-76-62-45-55-58-44-56-64-77-43-55-48-76-35-6C-53-6B-7A-61-71-6F-4D-74-43-57-75-6B-34-49-49-51-3D-3D/1260590_144.mp4'),
(250, 26, 'S02 E10', '51 min', 'https://vod6.enama.ir/download/1000507/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-6F-66-63-6F-79-76-36-64-56-4B-71-48-36-30-74-50-61-4B-79-63-62-6F-4F-7A-73-44-4B-58-68-4B-34-39-77-3D-3D/1245227_240.mp4'),
(251, 26, 'S02 E11', '48 min', 'https://vod1.enama.ir/download/1000507/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-6F-66-63-6F-79-76-36-64-56-4B-71-6C-2B-49-61-52-6D-67-55-37-5A-37-72-37-62-38-48-31-45-70-52-41-41-3D-3D/1364027_240.mp4'),
(252, 26, 'S02 E12', '47 min', 'https://aspb30.cdn.asset.aparat.com/aparat-video/3c9c5185df401d037c5c70144e45785233790046-240p.mp4'),
(253, 26, 'S02 E13', '48 min', 'https://vod6.enama.ir/download/1014372/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-70-36-61-6A-45-34-63-6C-47-47-4A-39-46-49-52-69-54-42-31-66-59-33-34-70-63-55-75-79-6E-72-49-67-77-3D-3D/1268498_240.mp4'),
(254, 26, 'S02 E14', '48 min', 'https://vod5.enama.ir/download/1014372/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-70-36-61-6A-45-34-63-6C-47-47-4A-4E-78-73-57-58-6D-4B-64-66-49-62-4E-4E-42-69-75-65-68-48-6C-74-67-3D-3D/1354889_240.mp4'),
(255, 26, 'S02 E15', '48 min', 'https://vod10.enama.ir/download/1000507/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-68-33-4A-49-39-36-77-67-51-45-6F-38-2F-57-4E-7A-73-69-76-4B-4A-67-4A-69-41-59-78-5A-4B-52-4C-75-51-3D-3D/1469723_144.mp4'),
(256, 26, 'S01 E16', '49 min', 'https://vod12.enama.ir/download/1000507/4C-41-72-30-59-59-67-63-69-49-4D-4B-62-6A-7A-4D-45-61-76-78-73-68-33-4A-49-39-36-77-67-51-45-6F-4B-71-4A-55-59-79-70-37-58-55-4B-51-32-72-79-42-55-77-4E-59-50-77-3D-3D/1490405_240.mp4'),
(257, 26, 'S02 E17', '49 min', 'https://sweet.ifilo.net/d2/video/TVRRd01DOHdOQzh3TkE9PQ==/YVZWSFdGbEpjZz09/R6Cx-240.mp4'),
(258, 26, 'S02 E18', '52 min', 'https://aspb28.cdn.asset.aparat.com/aparat-video/d58ad9a028c896dee8b0b835b4ec4a4834980567-240p.mp4'),
(259, 26, 'S02 E19', '48 min', 'https://www.namavid.com/play/975441.mp4'),
(260, 26, 'S02 E20', '51 min', 'https://storage3.namayesh.com/videos/153000/153140/video_240p.mp4'),
(261, 26, 'S02 E21', '51 min', 'https://www.namavid.com/play/996447.mp4'),
(262, 26, 'S02 E22', '59 min', 'https://dl12.mp4.ir/video/2021/7/71399-158286293/71399-158286293-200.mp4'),
(263, 27, 'S01 E01', '1h 4min', 'https://s-v1.tamasha.com/statics/videos_file/13/c9/akGgj_13c967e35a4cf26e8fe0c72c5dde4240b2a38759_n_360.mp4'),
(264, 27, 'S01 E02', '1h 6min', 'https://dl6.mp4.ir/video/2016/2/930-875977242/930-875977242-200.mp4'),
(265, 27, 'S01 E03', '56 min', 'https://dl6.mp4.ir/video/2016/2/930-118936103/930-118936103-200.mp4'),
(266, 27, 'S01 E04', '58 min', 'https://dl6.mp4.ir/video/2016/2/930-352191656/930-352191656-200.mp4'),
(267, 27, 'S01 E05', '53 min', 'https://dl6.mp4.ir/video/2016/2/930-607307105/930-607307105-200.mp4'),
(268, 27, 'S01 E06', '1h 6min', 'https://dl6.mp4.ir/video/2016/2/930-936549318/930-936549318-200.mp4'),
(269, 27, 'S01 E07', '59 min', 'https://dl6.mp4.ir/video/2016/2/930-206837048/930-206837048-200.mp4'),
(270, 27, 'S01 E08', '59 min', 'https://dl6.mp4.ir/video/2016/2/930-530813465/930-530813465-200.mp4'),
(271, 27, 'S01 E09', '59 min', 'https://dl6.mp4.ir/video/2016/2/930-796351063/930-796351063-200.mp4'),
(272, 27, 'S01 E10', '58 min', 'https://dl6.mp4.ir/video/2016/2/930-61997983/930-61997983-200.mp4'),
(273, 27, 'S01 E11', '1h 2min', 'https://dl6.mp4.ir/video/2016/2/930-174860045/930-174860045-200.mp4'),
(274, 27, 'S01 E12', '54 min', 'https://dl6.mp4.ir/video/2016/2/930-520618327/930-520618327-200.mp4'),
(275, 27, 'S01 E13', '59 min', 'https://dl6.mp4.ir/video/2016/2/930-710341593/930-710341593-200.mp4'),
(276, 27, 'S01 E14', '56 min', 'https://dl6.mp4.ir/video/2016/2/930-369747867/930-369747867-200.mp4'),
(277, 27, 'S01 E15', '1h 2min', 'https://dl6.mp4.ir/video/2016/2/930-658208094/930-658208094-200.mp4'),
(278, 27, 'S01 E16', '1h 2min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T0E9PQ==/ZDBsQlFWbHpjdz09/m3Bn-240.mp4'),
(279, 27, 'S01 E17', '58 min', 'https://dl6.mp4.ir/video/2016/5/6207-753617455/6207-753617455-200.mp4'),
(280, 27, 'S01 E18', '59 min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4Tnc9PQ==/VUd4T01IWmxPQT09/1FOS-240.mp4'),
(281, 27, 'S01 E19', '59 min', 'https://dl6.mp4.ir/video/2016/5/6207-16226782/6207-16226782-200.mp4'),
(282, 27, 'S01 E20', '59 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/Y0cxa2VGVkZkZz09/G3N4-240.mp4'),
(283, 27, 'S01 E21', '1h 6min', 'https://dl6.mp4.ir/video/2016/5/6207-425955287/6207-425955287-200.mp4'),
(284, 27, 'S01 E22', '1h 4min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T1E9PQ==/VTNOTWNFUk9jUT09/Hpau-240.mp4'),
(285, 27, 'S01 E23', '1h 3min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T1E9PQ==/TjNKUk9WZHdadz09/ijFG-240.mp4'),
(286, 27, 'S01 E24', '1h 2min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T1E9PQ==/WW5jM1YzZFlTZz09/NArQ-240.mp4'),
(287, 27, 'S01 E25', '60 min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T1E9PQ==/YVV4amVHYzFUUT09/CBsz-240.mp4'),
(288, 27, 'S01 E26', '1h 6min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T1E9PQ==/ZEhSSVVHVkVRZz09/bxwD-240.mp4'),
(289, 27, 'S01 E27', '59 min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T1E9PQ==/UjBRNGVEWlBNdz09/SRP9-240.mp4'),
(290, 27, 'S01 E28', '1h 6min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHhNQzh4T1E9PQ==/UlVOdFZHMVhZdz09/F0B6-240.mp4'),
(291, 28, 'S02 E01', '1h 3min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/YUhKamRqTjFSUT09/TCes-240.mp4'),
(292, 28, 'S02 E02', '1h 8min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/Y1ZWTVYwOURjZz09/ZXpv-240.mp4'),
(293, 28, 'S02 E03', '1h 4min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UVZwTVlXTlNRUT09/h32n-240.mp4'),
(294, 28, 'S02 E04', '1h 8min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UmxJMWFuZFZVZz09/I0VD-240.mp4'),
(295, 28, 'S02 E05', '1h 1min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UldFemEyZEpWZz09/uSOR-240.mp4'),
(296, 28, 'S02 E06', '57 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UzIwNWNraEJiUT09/TJlv-240.mp4'),
(297, 28, 'S02 E07', '1h 3min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UlhkNVNUWkJOdz09/ia4e-240.mp4'),
(298, 28, 'S02 E08', '60 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/VEd4aFFUUnZOZz09/Czkv-240.mp4'),
(299, 28, 'S02 E09', '55 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UzJnM2MycHlhZz09/ff3m-240.mp4'),
(300, 28, 'S02 E10', '55 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/V2xKblZHMUxOZz09/5GWr-240.mp4'),
(301, 28, 'S02 E11', '1h 8min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/ZEU1R1p6QnhVUT09/UquI-240.mp4'),
(302, 28, 'S02 E12', '1h 4min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/VjBOdFZXazVUZz09/yiXH-240.mp4'),
(303, 28, 'S02 E13', '1h 6min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/ZWpCUlV6RlFhdz09/OVvf-240.mp4'),
(304, 28, 'S02 E14', '1h 5min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/YVZOemFVdDRWUT09/El9x-240.mp4'),
(305, 28, 'S02 E15', '1h 27min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/VldvNFNUUldXQT09/lC6v-240.mp4'),
(306, 29, 'S03 E01', '1h 7min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/V0c5b1RVaHNaUT09/Y6Pw-240.mp4'),
(307, 29, 'S03 E02', '1h 4min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UlZWTmJHVjBRZz09/ZDfE-240.mp4'),
(308, 29, 'S03 E03', '1h 2min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UjBsRGJUVTNTdz09/ZRMH-240.mp4'),
(309, 29, 'S03 E04', '1h 7min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/WlVGeWNubExZZz09/3PsQ-240.mp4'),
(310, 29, 'S03 E05', '60 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UTI1TlprdHNXZz09/VVp1-240.mp4'),
(311, 29, 'S03 E06', '1h 8min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/WkZaNmFrMXRjUT09/eJFB-240.mp4'),
(312, 29, 'S03 E07', '1h 3min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/V1ZkWVoxUkRXQT09/1KTa-240.mp4'),
(313, 29, 'S03 E08', '1h 7min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/T1d4amJYWTJSdz09/x9fj-240.mp4'),
(314, 29, 'S03 E09', '60 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/T1hWS2JtOURWQT09/uPGl-240.mp4'),
(315, 29, 'S03 E10', '60 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/Y25aQ1IxWllWUT09/9ZeC-240.mp4'),
(316, 29, 'S03 E11', '60 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/ZVVsQ2RWQTBVZz09/PGsK-240.mp4'),
(317, 29, 'S03 E12', '59 min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/YVhOUVdUVkVhdz09/myZb-240.mp4'),
(318, 29, 'S03 E13', '1h 4min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/T0daSVVraDJOdz09/YWGV-240.mp4'),
(319, 29, 'S03 E14', '1h 4min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/UmpCUk1VOXNUUT09/6auP-240.mp4'),
(320, 29, 'S03 E15', '1h 10min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/VEd0a2JHOUthdz09/qcK3-240.mp4'),
(321, 29, 'S03 E16', '1h 3min', 'https://www.ifilo.net/filo/video/TVRNNU9TOHdNaTh3TXc9PQ==/WW14U1lYVkxhdz09/ToK6-240.mp4'),
(322, 30, 'S01 E01', '49 min', 'https://sweet.ifilo.net/d2/video/TVRRd01DOHdOQzh3TWc9PQ==/ZDJadU5IVnJhQT09/f6qJ-240.mp4'),
(323, 30, 'S01 E02', '55 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/YkZCV1VISjNWQT09/0FTD-240.mp4'),
(324, 30, 'S01 E03', '55 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/YzNoRVZGZFRadz09/wY7C-240.mp4'),
(325, 30, 'S01 E04', '54 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/U3pGck1YQk1Zdz09/qGYb-240.mp4'),
(326, 30, 'S01 E05', '53 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/UlZjd1RXOVljdz09/4Q5S-240.mp4'),
(327, 30, 'S01 E06', '53 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/WTNVNVJWTnRNdz09/cgT3-240.mp4'),
(328, 30, 'S01 E07', '52 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/YTFKSWRsTndkUT09/I6U2-240.mp4'),
(329, 30, 'S01 E08', '50 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/TWtwa1kxWlFTQT09/RLIo-240.mp4'),
(330, 30, 'S01 E09', '50 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/Vm1oclQyOUNidz09/uxFQ-240.mp4'),
(331, 30, 'S01 E10', '52 min', 'https://sweet.ifilo.net/d2/video/TVRRd01DOHdOQzh3TWc9PQ==/U1ZkM1pEUnpadz09/bzdr-240.mp4'),
(332, 30, 'S01 E11', '51 min', 'https://sweet.ifilo.net/d2/video/TVRRd01DOHdOQzh3TWc9PQ==/YVZORFdrcGFXQT09/lLei-240.mp4'),
(333, 30, 'S01 E12', '51 min', 'https://sweet.ifilo.net/d2/video/TVRRd01DOHdOQzh3TWc9PQ==/UTJscGRsQjVkQT09/VYbn-240.mp4'),
(334, 30, 'S01 E13', '53 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/ZEZOd01tVjZjUT09/CvYM-240.mp4'),
(335, 30, 'S01 E14', '50 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/ZEU5eFRUQmFjdz09/A5Lc-240.mp4'),
(336, 30, 'S01 E15', '50 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/TUdwNWNYcENiQT09/G6G2-240.mp4'),
(337, 30, 'S01 E16', '50 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/V2poUk1VdEpWdz09/TVk5-240.mp4'),
(338, 30, 'S01 E17', '50 min', 'https://www.ifilo.net/filo/video/TVRNNU9DOHdPUzh5TlE9PQ==/YWs1RFRtbGtTUT09/rTAs-240.mp4'),
(339, 30, 'S01 E18', '50 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/YjNWS1NHVlFlZz09/nxbG-240.mp4'),
(340, 30, 'E01 E19', '56 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/Y1V4d04zUlFVdz09/kAw7-240.mp4'),
(341, 30, 'S01 E20', '56 min', 'https://sweet.ifilo.net/d2/video/TVRRd01DOHdOQzh3TWc9PQ==/V0dKVE1GWnhPQT09/D4Ah-240.mp4'),
(342, 30, 'S01 E21', '56 min', 'https://sweet.ifilo.net/d2/video/TVRRd01DOHdOQzh3TWc9PQ==/WTNGcFp6VkNNUT09/7AIa-240.mp4'),
(343, 30, 'S01 E22', '55 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/YVZCMloyYzBRUT09/xQ2f-240.mp4'),
(344, 30, 'S01 E23', '53 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/ZEZrMFoxaE5aUT09/WCaC-240.mp4'),
(345, 30, 'S01 E24', '54 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/ZG0xUk9WUlRSQT09/QZqn-240.mp4'),
(346, 30, 'S01 E25', '53 min', 'https://www.ifilo.net/filo/video/TVRRd01DOHdOQzh3TWc9PQ==/U1hrMlZGaFVVUT09/FxCG-240.mp4'),
(347, 30, 'S01 E26', '52 min', 'https://www.namavid.com/play/861657.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `series_season`
--

CREATE TABLE `series_season` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `season_number` int(11) NOT NULL,
  `episode_count` int(11) NOT NULL,
  `image_url` text COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `series_season`
--

INSERT INTO `series_season` (`id`, `item_id`, `season_number`, `episode_count`, `image_url`) VALUES
(1, 31, 1, 6, 'https://images.store.sky.com/api/img/asset/en/66D8BB8A-E4E8-4422-9242-603110084545_BDAF913E-0563-467C-8A92-6E18C46FFDD7_2021-1-20-T11-39-55.jpg?s=260x371'),
(2, 31, 2, 6, 'https://m.media-amazon.com/images/I/81oKdHKR+eL._SX342_.jpg'),
(3, 31, 3, 6, 'https://m.media-amazon.com/images/I/71vq0ErhbtL._SY445_.jpg'),
(4, 31, 4, 6, 'https://m.media-amazon.com/images/I/81Uqc4Zr7IL._SY445_.jpg'),
(5, 31, 5, 6, 'https://images.store.sky.com/api/img/asset/en/66D8BB8A-E4E8-4422-9242-603110084545_C5A4668F-4C6B-4E26-86C2-FF124D34B254_2021-1-20-T11-22-48.jpg?s=260x371'),
(6, 32, 1, 7, 'https://i.pinimg.com/originals/98/3e/e9/983ee9f6d3deb4898d8ae01575ba6219.png'),
(7, 32, 2, 13, 'https://m.media-amazon.com/images/I/91LMVhYWDDL._SY445_.jpg'),
(8, 32, 3, 13, 'https://d32qys9a6wm9no.cloudfront.net/images/tvs/poster/15/ecac18e3c2330315c225fc738dab104e_300x442.jpg'),
(9, 32, 4, 13, 'https://m.media-amazon.com/images/I/515DS-K3heL._AC_SY445_.jpg'),
(10, 32, 5, 16, 'https://m.media-amazon.com/images/I/912J6DbSEqL._SY445_.jpg'),
(11, 33, 1, 10, 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e8/Game_of_Thrones_Season_1.jpg/220px-Game_of_Thrones_Season_1.jpg'),
(12, 33, 2, 10, 'https://s3.amazonaws.com/bdimg/1000821-1424681763.jpg'),
(13, 33, 3, 10, 'https://images-na.ssl-images-amazon.com/images/I/41uK1SOGtqL.jpg'),
(14, 33, 4, 10, 'https://i.pinimg.com/236x/3c/c3/7d/3cc37dd2d1a3cf0abea743045c1a9637.jpg'),
(15, 33, 5, 10, 'https://789moviehd.com/images/movie/7ehrNhQuIdqci3PxE8asXLfopi7Od6tGame_of_Thrones_Season_5.jpg'),
(16, 33, 6, 10, 'https://i.ebayimg.com/images/g/6nAAAOSwgotcOqtV/s-l300.jpg'),
(17, 33, 7, 7, 'https://assets.cinepolisklic.com/cmsklicia/movieimages/game-of-thrones-temporada-07-hbo/poster_original_size_250X375.jpg'),
(18, 33, 8, 6, 'https://upload.wikimedia.org/wikipedia/en/e/e0/Game_of_Thrones_Season_8.png'),
(19, 34, 1, 13, 'https://i.pinimg.com/474x/71/70/86/717086c536c286ecbcc875a94c5d831d.jpg'),
(20, 34, 2, 9, 'https://i.ebayimg.com/images/g/uXIAAOSwZDlfjZ49/s-l300.jpg'),
(21, 34, 3, 8, 'https://zardfilm.in/wp-content/uploads/2020/12/money-heist-1-400x600.jpg'),
(22, 34, 4, 8, 'https://cdn.sargarme.com/uploads/2020/04/money-heist-cover-300x450.jpg'),
(23, 35, 1, 5, 'https://tvshows.one/wp-content/uploads/Chernobyl-season-1-poster.jpg'),
(24, 36, 1, 15, 'http://behmelody.in/wp-content/uploads/2020/12/Frog-337x500.jpg'),
(25, 37, 1, 17, 'https://static.cdn.asset.filimo.com/flmt/mov_4916_1-m.jpg'),
(26, 37, 2, 22, 'https://static1.ilna.news/thumbnail/SpZYmPVUIzqB/XWHCw76VBsxV-gjMD_1vCetw5eCq7S04hX6xsI6ISfTD_yl-j66fW7VVozzx0Z7LMLpQ4cAxIUQ,/%D8%B5%D8%AB%D9%82%D8%A8%D9%81%D8%B5%D8%AB.jpg'),
(27, 38, 1, 28, 'https://download.ir/wp-content/uploads/2017/04/shahrzad.cover_.www_.download.ir_.jpg'),
(28, 38, 2, 15, 'https://mer30download.com/wp-content/uploads/2017/10/sh15.jpg'),
(29, 38, 3, 16, 'https://poptaraneh.com/wp-content/uploads/2018/05/photo-2018-01-21-01-47-53.jpg'),
(30, 39, 1, 26, 'https://i.pinimg.com/236x/47/70/c4/4770c4a114c7947087dead58d0a94d78.jpg'),
(31, 40, 1, 30, 'https://www.doostihaa.com/img/uploads/2019/02/Nahange-Abi-S01E02-Sharike-Jorm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `image_url` text COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `movie_name`, `image_url`) VALUES
(1, 'Avengers: Endgame', 'https://i.redd.it/r7vlp3j3sld31.jpg'),
(2, 'Peaky Blinders', 'https://static2.abc.es/media/play/2019/09/03/peaky-blinders-kC7D--1200x630@abc.jpg'),
(3, 'Once Upon a Time in Hollywood', 'https://see.news/wp-content/uploads/2020/01/once-upon-a-time-in-hollywood.jpg'),
(4, 'Game of Thrones', 'https://media.wnyc.org/i/1280/720/c/80/1/GameofThrones.jpg'),
(5, 'The Conjuring', 'https://www.monitor.bg/web/files/articles/261463/gallery/thumb_1200x630_cover.jpg'),
(6, 'Joker', 'https://www.teahub.io/photos/full/91-911251_joker-2019-elevator-scene.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL,
  `email_address` varchar(100) COLLATE utf8mb4_persian_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_persian_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_persian_ci;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`id`, `user_name`, `email_address`, `phone_number`, `password`) VALUES
(36, 'jansari', 'jansari.it@gmail.com', '09363211109', '09363211109');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buy_account`
--
ALTER TABLE `buy_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `get_detail`
--
ALTER TABLE `get_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `home_information`
--
ALTER TABLE `home_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_star`
--
ALTER TABLE `movie_star`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `series_episode`
--
ALTER TABLE `series_episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `season_id` (`season_id`);

--
-- Indexes for table `series_season`
--
ALTER TABLE `series_season`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buy_account`
--
ALTER TABLE `buy_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `get_detail`
--
ALTER TABLE `get_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `home_information`
--
ALTER TABLE `home_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `movie_star`
--
ALTER TABLE `movie_star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `series_episode`
--
ALTER TABLE `series_episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `series_season`
--
ALTER TABLE `series_season`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `get_detail`
--
ALTER TABLE `get_detail`
  ADD CONSTRAINT `get_detail_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `home_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_star`
--
ALTER TABLE `movie_star`
  ADD CONSTRAINT `movie_star_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `home_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `series_episode`
--
ALTER TABLE `series_episode`
  ADD CONSTRAINT `series_episode_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `series_season` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `series_season`
--
ALTER TABLE `series_season`
  ADD CONSTRAINT `series_season_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `home_information` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
