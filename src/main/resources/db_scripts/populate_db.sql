delete from equipment;
delete from character;
delete from server;
delete from character_class;
delete from weapon;
delete from legs;
delete from chest;
delete from boots;
delete from gloves;
delete from helmet;
delete from shield;
delete from ring;
delete from necklace;
delete from earring;
alter sequence global_seq restart with 100;

insert into server (name)
values ('Anakim'),
       ('Shillien'),
       ('Einhasad'),
       ('Paagrio'),
       ('Gran Kain'),
       ('Lilit');

insert into character_class (name, description, image_url)
values ('Paladin', 'The Paladin is a tank that sustains great damage by healing itself through white magic and holy blessings, and maintains a hate aura to protect itself and fellow party members.', 'assets/images/class/paladin.png'),
       ('Dark Avenger', 'Unlike the Paladin who uses mostly white magic, the Dark Avenger is a tank that uses black magic to vex his opponents. He absorbs the physical strength from corpses using Life Scavenge and emanates attack points with Reflect Damage.', 'assets/images/class/dark-avenger.png'),
       ('Temple Knight', 'The Temple Knight, who has risen to the height of swordsmanship, borrows the power of the gods of light and water for both magic and sword. It engages in battle by summoning cubics to assist in attacks through Summon Storm Cubic, or by summoning cubics that can recover his own physical strength through Summon Life Cubic.', 'assets/images/class/temple-knight.png'),
       ('Shillien Knight', 'Unlike the Elven Temple Knight, who uses the magic of light and water, the Shillien Knight uses the magic of darkness and water, in addition to his skills with the sword. He drains the physical power of opponents with Summon Vampiric Cubic or Summon Viper Cubic, or he can summon poisonous cubics. The Shillien Knight can also rain lightning down upon his opponents using Lightning Strike.', 'assets/images/class/shillien-knight.png'),
       ('Sorcerer', 'The Sorcerer is a very perplexing being who borrows the power of the elements to cast extreme elemental magic. He supports his allies by pouring fire down upon enemies from a distance using Blazing Circle. Enemies within the Sorcerer''s range are knocked unconscious with Sleeping Cloud.', 'assets/images/class/sorcerer.png'),
       ('Necromancer', 'The Necromancer makes use of the power of darkness by reviving the black magic of the titans. He summons zombies from corpses with Summon Zombie and causes great harm to his enemies through Corpse Burst.', 'assets/images/class/necromancer.png'),
       ('Spellsinger', 'The Spellsinger has become intimately familiar with elemental magic and deals in magic that primarily uses water. He uses a shield called Freezing Skin that reflects damage directed towards him and uses the Ice Dagger to throw ice blades at his opponents.', 'assets/images/class/spellsinger.png'),
       ('Spellhowler', 'The Spellhowler uses the highest degree of elemental magic. A mix of Sorcerer and Necromancer, he casts magic by borrowing the power of the wind. The Spellhowler causes strong damage with the Tempest, which creates a tornado around his target, or he can use the Hurricane to shoot blades of wind from a distance.', 'assets/images/class/spellhowler.png'),
       ('Warlord', 'The Warlord is more capable in one-on-many battles than in one-on-one combat and prefers long-range weapons, such as poles. He casts gusts of thunderstorms that cause enemies to faint in their tracks. The Warlord demonstrates his power most effectively in groups, such as during siege battles.', 'assets/images/class/warlord.png'),
       ('Gladiator', 'None is better at one-on-one close combat than the Gladiator. Enemies attempt to avoid his powerful attacks in vain. The Gladiator displays his superior swordsmanship using the Sonic Storm or with two-bladed swords he implements the Triple Slash.', 'assets/images/class/gladiator.png'),
       ('Destroyer', 'Developed from the Orc Raider, the Destroyer is an expert fighter who stands ever vigilant on the front lines of the battlefield. He uses Whirlwind to batter his enemies about and tirelessly fights without fear until his enemies have all been vanquished. The Destroyer''s very aura causes his opponents to retreat in fear and consternation.', 'assets/images/class/destroyer.png'),
       ('Tyrant', 'The Tyrant are Monks that have improved their study of Tangsu and are top students at the temple of power and fire. The Tyrant is famous for using such techniques as Force Buster, which explodes energy and attacks multiple enemies whose way is blocked; Burning Fist, which throws strong fists of fire; and Punch of Doom, which causes extreme damage to an opponent while consuming a lot of physical strength.', 'assets/images/class/tyrant.png'),
       ('Bounty Hunter', 'It is said that the Bounty Hunter is a veteran who has the greatest known collecting abilities. He is even said to have gathered a dragon''s scales. The Bounty Hunter is adept at using the Whirlwind in battle, allowing greater prowess at taking on multiple enemies. He also possesses many skills related to commercial activities.', 'assets/images/class/bounty-hunter.png'),
       ('Warsmith', 'The Warsmith is able to make things with such high level of expertise that not even Artisans could ever hope to achieve. He is welcomed widely by lords of other territories, thanks to his unique ability to make siege weapons. The Warsmith is also adept at using the Whirlwind in battle, while possessing many skills related to manufacturing.', 'assets/images/class/warsmith.png'),
       ('Warlock', 'The Warlock considers the power of magic to be a living entity. They can create something from nothing by using the highest level of summon magic. Like other summoner mages, they engage in battle vicariously by raising the defensive power and magic defensive power of their servitors through Servitor Physical Shield and Servitor Magic Shield, respectively. The Warlock can also raise attack speed through Servitor Haste.', 'assets/images/class/warlock.png'),
       ('Elemental Summoner', 'The Elemental Summoner engages in battle using servitors and is skilled in a variety of summon magic. Like other summoner mages, they engage in battle vicariously and raise their servitors'' physical and magical defensive powers shielding spells. The Elemental Summoner also raises attack speed through Servitor Haste.', 'assets/images/class/elemental-summoner.png'),
       ('Phantom Summoner', 'The Phantom Summoner is renowned for summoning wicked spirits. They engage in battle vicariously by raising the defensive power of servitors through Servitor Physical Shield and by raising magic defensive power of servitors through Servitor Magic Shield. The Phantom Summoner can also raise servitors'' attack speed through Servitor Haste.', 'assets/images/class/phantom-summoner.png'),
       ('Treasure Hunter', 'Treasure Hunters, known as the danger that lurks in the darkness, act according to their own private goals. They move without fear or noise and backstab their enemies to eliminate them from behind.', 'assets/images/class/treasure-hunter.png'),
       ('Plains Walker', 'The Plains Walker, who is more accustomed to outdoor life than indoor living, is an adventurer skilled in all areas of battle and exploration. He attacks opponents from behind using Backstab and can entice one unique monster to benefit his party by using Lure.', 'assets/images/class/plains-walker.png'),
       ('Abyss Walker', 'The Abyss Walker is skilled in combat and exploration, specializing in assassinations. He implements the same basic techniques as the Human Mercenary with Silent Move and Backstab, but he has higher attack power. However, due to his relatively low physical strength, the Abyss Walker is at somewhat of a disadvantage in frontal battle.', 'assets/images/class/abyss-walker.png'),
       ('Bishop', 'The Bishop is a holy person who brings about miracles of healing and recovery using the highest level of recovery magic. If necessary, Bishops can engage in melee combat to protect themselves. The Bishop recovers physical power through Vitalize, can heal addiction and bleeding, and uses specialized magic to combat the undead.', 'assets/images/class/bishop.png'),
       ('Elven Elder', 'Of Eva''s priests who spread her teachings, Elven Elders who have reached the pinnacle of their faith and power are called Eva''s Saints. Eva''s Saints are devoted to peace, treat the sick, and spread love, but they are also resolute priests who are undeterred from participating in battle in order to protect their allies and uphold peace.', 'assets/images/class/elven-elder.png'),
       ('Shillien Elder', 'Shillien Elders are adept at the highest levels of support magic, so much so that their intimidating reputation instills fear in opponents. Shillien Elders can cast various spells of support, including Purify, which treats the poisoning, bleeding, and paralysis of allies. In addition, the attack power of other party members is greatly increased by the mere presence of the Shillien Elder.', 'assets/images/class/shillien-elder.png'),
       ('Hawkeye', 'Rather than using daggers, the Hawkeye threatens opponents from afar using a longbow. Hawkeyes become even more powerful as part of a party. The Hawkeye''s aim is accurate against single opponents, and a Hawkeye can also attack groups of enemies effectively with skills such as Burst Shot.', 'assets/images/class/hawkeye.png'),
       ('Silver Ranger', 'The Silver Ranger is the ideal Elven fighter in terms of skill with the bow. A Silver Ranger''s key skills are Double Shot, which shoots two arrows consecutively, and Burst Shot, which hits multiple enemies within range.', 'assets/images/class/silver-ranger.png'),
       ('Phantom Ranger', 'The Phantom Ranger handles a bow skillfully and uses techniques similar to those of other Archers, but Phantom Rangers also have excellent attack strength. By weakening the defensive strength of an opponent through Hex, the Phantom Ranger can harass adversaries at long distances using Double Shot, which shoots two arrows consecutively.', 'assets/images/class/phantom-ranger.png'),
       ('Prophet', 'The Prophet makes allies strong and enemies weak using the highest level of protection magic. With the blessing of the gods, the Prophet increases the maximum value of physical strength for another party member through Bless the Body. They also increase their own MP through Bless the Soul, and can use a spell to return to town instead of a scroll.', 'assets/images/class/prophet.png'),
       ('Warcryer', 'The Warcryer is a Shaman who has received special training in the battle song, which is at the very top of the Orc sorcery system. They support fellow party members through songs of magical power. The Warcryer is an advantage to a group in battle, thanks to his adept Chant of Fury, which increases the attack speed of his party members, as well as the Chant of Evasion, which increase evasiveness.', 'assets/images/class/warcryer.png'),
       ('Overlord', 'Overlords specialize in weakening the enemy with amazing debuffs, and providing buffs for their entire clan, although they cannot buff a party of non-clan members. The Overlord leads the Orc race through the use of Seal of Winter, which reduces the attack speed of nearby enemies and Sight of Paagrio, which increases the accuracy of other members of his clan.', 'assets/images/class/overlord.png'),
       ('Swordsinger', 'The Sword Singer has a beautiful voice that is used to raise the morale of party members and assist them in battle. The Sword Singer helps to recover the physical strength of party members through Song of Life and raises the defensive power of party members using Song of Earth. The sound of the Sword Singer''s voice is welcome in any party.', 'assets/images/class/swordsinger.png'),
       ('Bladedancer', 'The Bladedancer primarily uses dual swords and raises the abilities of party members by dancing. They assist in the hunt by increasing the attack power of party members through the Dance of Warrior. The Bladedancer also raises the critical damage of party members through Dance of Fire.', 'assets/images/class/bladedancer.png');

insert into character (name, level, race, sex, class_id, server_id)
values ('Furer', 80, 'HUMAN', 'MALE', 129, 102),
       ('DrCanabys', 79, 'ORC', 'MALE', 133, 102),
       ('PrivatePP', 77, 'HUMAN', 'MALE', 132, 102),
       ('BlackBD', 78, 'DARK_ELF', 'FEMALE', 136, 102),
       ('SwSiha', 78, 'ELF', 'FEMALE', 135, 102),
       ('SuperEE', 79, 'ELF', 'FEMALE', 127, 102),
       ('MrCat', 77, 'HUMAN', 'MALE', 120, 102),
       ('CyberPunk', 78, 'DARK_ELF', 'MALE', 125, 102),
       ('Hyper', 78, 'HUMAN', 'MALE', 129, 102),
       ('MegaHawk', 72, 'HUMAN', 'MALE', 129, 102),
       ('BlackHawk', 60, 'HUMAN', 'MALE', 129, 102),
       ('Nagibator777', 41, 'HUMAN', 'MALE', 129, 102),
       ('xxxHawKxxx', 71, 'HUMAN', 'MALE', 129, 102),
       ('zKing', 80, 'HUMAN', 'MALE', 129, 102),
       ('imbaHawk', 80, 'HUMAN', 'MALE', 129, 102),
       ('Best', 69, 'HUMAN', 'MALE', 129, 102),
       ('MegaLord', 34, 'HUMAN', 'MALE', 129, 102),
       ('Killer', 15, 'HUMAN', 'MALE', 129, 102);

insert into weapon (name, weight, price, image_url, grade, p_atk, m_atk, attack_speed, soulshots_consume, spiritshots_consume, type)
values ('Bow of Peril', 1700, 13100000, 'assets/images/weapon/bows/bow-of-peril.png', 'B', 400, 99, 'LOW', 3, 2, 'BOW'),
       ('Eminence Bow', 1720, 6130000, 'assets/images/weapon/bows/eminence-bow.png', 'C', 323, 83, 'LOW', 2, 1, 'BOW'),
       ('Akat Longbow', 1740, 4300000, 'assets/images/weapon/bows/akat-longbow.png', 'C', 316, 84, 'VERY_LOW', 2, 1, 'BOW'),
       ('Shyeed''s Bow', 1640, 26968400, 'assets/images/weapon/bows/shyeed-bow.png', 'A', 570, 133, 'VERY_LOW', 3, 2, 'BOW'),
       ('Light Bow', 1810, 1800000, 'assets/images/weapon/bows/light-bow.png', 'D', 191, 54, 'LOW', 2, 1, 'BOW'),
       ('Art of Battle Axe', 1570, 13100000, 'assets/images/weapon/blunts/art-of-battle-axe.png', 'B', 194, 99, 'HIGH', 2, 2, 'BLUNT'),
       ('Spirit Sword', 1420, 2870000, 'assets/images/weapon/swords/spirit-sword.png', 'C', 122, 68, 'HIGH', 1, 1, 'SWORD'),
       ('Saber*Saber', 2530, 877000, 'assets/images/weapon/dual_swords/saber-saber.png', 'D', 73, 37, 'NORMAL', 1, 1, 'DUAL_SWORDS'),
       ('Damascus', 1350, 13100000, 'assets/images/weapon/swords/damascus.png', 'B', 194, 99, 'HIGH', 2, 2, 'SWORD'),
       ('Dark Screamer', 1010, 4300000, 'assets/images/weapon/daggers/dark-screamer.png', 'C', 122, 76, 'VERY_HIGH', 1, 1, 'DAGGER'),
       ('Kris', 980, 8680000, 'assets/images/weapon/daggers/kris.png', 'B', 153, 91, 'VERY_HIGH', 2, 2, 'DAGGER');

insert into legs (name, weight, price, image_url, grade, p_def, m_def, mp_bonus, type)
values ('Blue Wolf Gaiters', 3370, 154710, 'assets/images/armor/legs/blue-wolf-gaiters.png', 'B', 104, 0, 0, 'HEAVY'),
       ('Dark Crystal Gaiters', 3320, 1113000, 'assets/images/armor/legs/dark-crystal-gaiters.png', 'A', 107, 0, 0, 'HEAVY'),
       ('Brigandine Gaiters', 3820, 14360, 'assets/images/armor/legs/brigandine-gainters.png', 'D', 64, 0, 0, 'HEAVY'),
       ('Bronze Gaiters', 3960, 2360, 'assets/images/armor/legs/bronze-gaiters.png', 'NG', 43, 0, 0, 'HEAVY'),
       ('Plated Leather Gaiters', 1560, 21450, 'assets/images/armor/legs/plated-leather-gaiters.png', 'C', 59, 0, 0, 'LIGHT'),
       ('Theca Leather Gaiters', 1530, 39670, 'assets/images/armor/legs/theca-leather-gaiters.png', 'C', 66, 0, 0, 'LIGHT'),
       ('Tallum Stockings', 920, 835000, 'assets/images/armor/legs/tallum-stockings.png', 'A', 53, 0, 256, 'MAGIC'),
       ('Blue Wolf Stockings', 920, 116030, 'assets/images/armor/legs/blue-wolf-stockings.png', 'B', 52, 0, 236, 'MAGIC');

insert into chest (name, weight, price, image_url, grade, p_def, m_def, mp_bonus, type)
values ('Blue Wolf Breastplate', 7820, 247500, 'assets/images/armor/chest/blue-wolf-breastplate.png', 'B', 166, 0, 0, 'HEAVY'),
       ('Dark Crystal Breastplate', 7700, 1781000, 'assets/images/armor/chest/dark-crystal-breastplate.png', 'A', 171, 0, 0, 'HEAVY'),
       ('Brigandine', 8320, 22970, 'assets/images/armor/chest/brigandine.png', 'D', 103, 0, 0, 'HEAVY'),
       ('Bronze Breastplate', 8920, 3782, 'assets/images/armor/chest/bronze-breastplate.png', 'NG', 68, 0, 0, 'HEAVY'),
       ('Plated Leather Armor', 4450, 34300, 'assets/images/armor/chest/plated-leather-armor.png', 'C', 94, 0, 0, 'LIGHT'),
       ('Theca Leather Armor', 4370, 63500, 'assets/images/armor/chest/theca-leather-armor.png', 'C', 106, 0, 0, 'LIGHT'),
       ('Tallum Tunic', 1860, 1335500, 'assets/images/armor/chest/tallum-tunic.png', 'A', 86, 0, 409, 'MAGIC'),
       ('Blue Wolf Tunic', 1920, 185700, 'assets/images/armor/chest/blue-wolf-tunic.png', 'B', 83, 0, 377, 'MAGIC');

insert into boots (name, weight, price, image_url, grade, p_def, m_def, mp_bonus)
values ('Blue Wolf Boots (heavy)', 1130, 61880, 'assets/images/armor/boots/blue-wolf-boots-(heavy).png', 'B', 44, 0, 0),
       ('Dark Crystal Boots (heavy)', 1110, 445000, 'assets/images/armor/boots/dark-crystal-boots-(heavy).png', 'A', 46, 0, 0),
       ('Brigandine Boots', 1250, 5740, 'assets/images/armor/boots/brigandine-boots.png', 'D', 27, 0, 0),
       ('Leather Shoes', 1320, 950, 'assets/images/armor/boots/leather-shoes.png', 'NG', 13, 0, 0),
       ('Plated Leather Boots', 1220, 9710, 'assets/images/armor/boots/plated-leather-boots.png', 'C', 32, 0, 0),
       ('Theca Leather Boots', 1210, 21160, 'assets/images/armor/boots/theca-leather-boots.png', 'C', 37, 0, 0),
       ('Tallum Boots (robe)', 1130, 445000, 'assets/images/armor/boots/tallum-boots-(robe).png', 'A', 46, 0, 0),
       ('Blue Wolf Boots (robe)', 1130, 61880, 'assets/images/armor/boots/blue-wolf-boots-(robe).png', 'B', 44, 0, 0);

insert into gloves (name, weight, price, image_url, grade, p_def, m_def, mp_bonus)
values ('Blue Wolf Gloves (heavy)', 590, 61880, 'assets/images/armor/gloves/blue-wolf-gloves-(heavy).png', 'B', 44, 0, 0),
       ('Dark Crystal Gloves (heavy)', 580, 445000, 'assets/images/armor/gloves/dark-crystal-gloves-(heavy).png', 'A', 46, 0, 0),
       ('Brigandine Gauntlets', 630, 5740, 'assets/images/armor/gloves/brigandine-gauntlets.png', 'D', 27, 0, 0),
       ('Leather Gloves', 650, 521, 'assets/images/armor/gloves/leather-gloves.png', 'NG', 15, 0, 0),
       ('Plated Leather Gloves', 610, 11440, 'assets/images/armor/gloves/plated-leather-gloves.png', 'C', 33, 0, 0),
       ('Theca Leather Gloves', 600, 21160, 'assets/images/armor/gloves/theca-leather-gloves.png', 'C', 37, 0, 0),
       ('Tallum Gloves (robe)', 580, 445000, 'assets/images/armor/gloves/tallum-gloves-(robe).png', 'A', 46, 0, 0),
       ('Blue Wolf Gloves (robe)', 509, 61880, 'assets/images/armor/gloves/blue-wolf-gloves-(robe).png', 'B', 44, 0, 0);

insert into helmet (name, weight, price, image_url, grade, p_def, m_def, mp_bonus)
values ('Blue Wolf Helmet (heavy)', 580, 92830, 'assets/images/armor/helmet/blue-wolf-helmet.png', 'B', 66, 0, 0),
       ('Dark Crystal Helmet (heavy)', 570, 668000, 'assets/images/armor/helmet/dark-crystal-helmet.png', 'A', 69, 0, 0),
       ('Brigandine Helmet', 630, 8610, 'assets/images/armor/helmet/brigandine-helmet.png', 'D', 41, 0, 0),
       ('Leather Cap', 660, 70, 'assets/images/armor/helmet/leather-cap.png', 'NG', 16, 0, 0),
       ('Full Plate Helmet', 660, 41260, 'assets/images/armor/helmet/full-plate-helmet.png', 'C', 58, 0, 0),
       ('Tallum Helmet (robe)', 570, 668000, 'assets/images/armor/helmet/tallum-helmet.png', 'A', 69, 0, 0),
       ('Blue Wolf Helmet (robe)', 580, 92830, 'assets/images/armor/helmet/blue-wolf-helmet.png', 'B', 66, 0, 0);

insert into shield (name, weight, price, image_url, grade, p_def, m_def, mp_bonus, chance_to_parry)
values ('Doom Shield', 1200, 64980, 'assets/images/armor/shield/doom-shield.png', 'B', 230, 0, 0, 20),
       ('Full Plate Shield', 1220, 28880, 'assets/images/armor/shield/full-plate-shield.png', 'C', 203, 0, 0, 20);

insert into ring (name, weight, price, image_url, grade, p_def, m_def, mp_bonus, bonus)
values ('Magic Ring', 150, 2, 'assets/images/armor/ring/magic-ring.png', 'NG', 0, 7, 0, null),
       ('Ring of Seal', 150, 21720, 'assets/images/armor/ring/ring-of-seal.png', 'C', 0, 32, 0, null),
       ('Black Ore Ring', 150, 47400, 'assets/images/armor/ring/black-ore-ring.png', 'B', 0, 40, 0, null),
       ('Majestic Ring', 150, 499500, 'assets/images/armor/ring/majestic-ring.png', 'A', 0, 47, 17, null),
       ('Baium''s Ring Lv. 3', 150, 8000000000, 'assets/images/armor/ring/baium-ring-lv.-3.png', 'NG', 0, 56, 27, 'MP +27, Stun Resistance/ Atk. Rate +20%, Bleed Resistance/ Atk. Rate +15%, P./ M. Accuracy +4, Atk. Spd./ Casting Spd. +5%, P./ M. Skill Power +10%, P. Critical Damage +15%, M. Critical Damage +10%. The effect does not stack if two identical rings are equipped. Cannot be enchanted. If you take 2 these rings to Baggins in Town of Giran, you can change them for Essence of Baium.'),
       ('Ring of Core Lv. 3', 150, 700000000, 'assets/images/armor/ring/ring-of-core-lv.-3.png', 'NG', 0, 48, 21, 'MP +21, Mental Resistance and Atk. Rate +20%, P./ M. Evasion +3, Received Damage -6%. Enables to use a special ability to remove debuffs. The effect doesn''t stack if two identical rings are worn. Cannot be enchanted. If you take 2 these rings to Baggins in Town of Giran, you can change them for Essence of Core.'),
       ('Queen Ant''s Ring Lv. 3', 150, 2000000000, 'assets/images/armor/ring/queen-ant-ring-lv.-3.png', 'NG', 0, 48, 21, 'MP +21, Poison Resistance and Atk. Rate +20%, P./ M. Accuracy +3, P./ M. Atk. +7%, P. Critical Damage +10%, M. Critical Damage +5%. The effect doesn''t stack if two identical rings are worn. Cannot be enchanted. If you take 2 these rings to Baggins in Town of Giran, you can change them for Essence of Queen Ant.');

insert into necklace (name, weight, price, image_url, grade, p_def, m_def, mp_bonus, bonus)
values ('Necklace of Knowledge', 150, 83, 'assets/images/armor/necklace/necklace-of-knowledge.png', 'NG', 0, 18, 0, null),
       ('Dark Necklace', 150, 12440, 'assets/images/armor/necklace/dark-necklace.png', 'D', 0, 48, 0, null),
       ('Necklace of Mermaid', 150, 30210, 'assets/images/armor/necklace/necklace-of-mermaid.png', 'C', 0, 60, 0, null),
       ('Majestic Necklace', 150, 999000, 'assets/images/armor/necklace/majestic-necklace.png', 'A', 0, 85, 33, null),
       ('Frintezza''s Necklace Lv. 1', 150, 1500000000, 'assets/images/armor/necklace/frintezza-necklace-lv.-1.png', 'NG', 0, 83, 29, 'MP +29, Sleep Resistance/ Atk. Rate +10%, Paralysis Resistance/ Atk. Rate +5%, Skill Cooldown -2%, Damage Reflection Resistance +2%, P./ M. Skill Power +5%. Cannot be enchanted.');

insert into earring (name, weight, price, image_url, grade, p_def, m_def, mp_bonus, bonus)
values ('Coral Earring', 150, 1230, 'assets/images/armor/earring/coral-earring.png', 'NG', 0, 21, 0, null),
       ('Earring of Protection', 150, 15050, 'assets/images/armor/earring/earring-of-protection.png', 'C', 0, 42, 0, null),
       ('Black Ore Earring', 150, 71100, 'assets/images/armor/earring/black-ore-earring.png', 'B', 0, 54, 0, null),
       ('Orfen''s Earring Lv. 3', 150, 2030000000, 'assets/images/armor/earring/orfen-earring-lv.-3.png', 'NG', 0, 71, 31, 'MP +31, Mental Resistance/ Atk. Rate +15%, Hold Resistance/ Atk. Rate +20%, Received Healing +6%, Skill MP Consumption -5%. Has a chance of absorbing 3% of the inflicted damage as MP. The effect doesn''t stack if two identical earrings are equipped. Cannot be enchanted. If you take 2 of these rings to Blacksmith Baggins in Giran, you can exchange them for the Essence of Orfen.');

insert into equipment (character_id, weapon_id, chest_id, legs_id, boots_id, gloves_id, helmet_id, shield_id, ring1_id, ring2_id, necklace_id, earring1_id, earring2_id)
values (137, 158, 174, 166, 182, 190, 198, null, 211, 213, 218, 221, 222),
       (138, 160, 181, 173, 189, 197, 198, 205, 209, 209, 217, 221, 221),
       (139, 161, 180, 172, 188, 196, 203, 205, 209, 209, 217, 221, 221),
       (140, 162, 175, 167, 183, 191, 199, null, 210, 210, 217, 221, 221),
       (141, 163, 175, 167, 183, 191, 199, 205, 210, 210, 217, 221, 221),
       (142, 161, 181, 173, 189, 197, 204, 205, 208, 210, 217, 221, 221),
       (143, 164, 176, 168, 184, 192, 202, 206, 208, 210, 217, 220, 220),
       (144, 165, 178, 170, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (145, 156, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (146, 157, 179, 171, 184, 192, 202, null, 209, 210, 215, 220, 220),
       (147, 155, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (148, 155, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (149, 155, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (150, 155, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (151, 155, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (152, 155, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (153, 155, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220),
       (154, 159, 179, 171, 186, 194, 198, null, 208, 210, 217, 221, 220);
