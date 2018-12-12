# encoding: utf-8

environment_seed_file = File.join(Rails.root, 'db', 'seeds', "#{Rails.env}.rb")

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}"))
end


user_list = [
    ["Admin", "admin@gmail.com", "123456", "123456", 1],
    ["Binh", "Binh@gmail.com", "123456", "123456", 0]
]

user_list.each do |name, mail, password, password_confirmation, role|
  User.create(nickname: name, email: mail, password: password, password_confirmation: password_confirmation,
              role: role)
end

category_list = [
    "News",
    "Guides",
    "Discussion",
    "Trivia",
    "Market",
]

category_list.each do |name|
  Category.create(category_name: name)
end

guide1 = "
<p><span style=\"font-weight: 400;\">There is so much to say about Artifact &ndash; the gameplay, the graphics, the lore, the market, we could go on forever. But there&rsquo;s a catch: one cannot really discuss a game before one knows how to play it.</span></p>
<p><span style=\"font-weight: 400;\">And indeed, it is a major problem many newcomers to Artifacts are facing right now. Even if you have played other card games in your life, Artifact&rsquo;s appearance can already be off-putting at first. There are THREE boards, not one! So many cards to read! So many decisions to make! How do you even win the game!?</span></p>
<p><span style=\"font-weight: 400;\">The Artificer&rsquo;s Apprentice series aims to tackle exactly that. We want players to be able to understand the very fundamental rules of the game before they can venture into anything deeper. With this series, we will introduce you to the cards, rules and interactions of Artifact, to make sure you can play Artifact the proper way. Without further ado, welcome to part one of our beginner&rsquo;s guide!</span></p>
<ol>
<li><strong> OVERVIEW</strong></li>
</ol>
<p><span style=\"font-weight: 400;\">Artifact is not like any other card game out there &ndash; it is a MOBA-based card game, which has a few implications. First, each player brings to the battlefield 5 heroes that will be the main spotlights of the entire game. Second, instead of a single universal battlefield, the game takes place in three parallel boards called &ldquo;lanes&rdquo;, similar to the three lanes in a DotA map.</span></p>
<p><span style=\"font-weight: 400;\">Otherwise, a few things are more familiar &ndash; on an individual lane, each player has a 40-health tower which they must try to defend, and along with each tower a pool of mana that starts at 3 mana and builds up by one mana each round, allowing players to play cards from their hand.</span></p>
<p><span style=\"font-weight: 400;\">The game takes place over several rounds. In each round, players will take turns to act from one lane to the next. They will deploy their heroes and creeps onto the board, cast powerful spells, utilize a variety of character abilities, and try to hold back enemy assaults &ndash; all with the ultimate purpose of destroying the enemy towers.</span></p>
<p><span style=\"font-weight: 400;\">When a 40-health tower dies, a bigger &ldquo;tower&rdquo; &ndash; an Ancient with 80 health &ndash; will spawn in its place. The game ends when a player has successfully destroyed </span><strong>two enemy towers</strong><span style=\"font-weight: 400;\"> &ndash; either two small 40-health towers in different lanes, or a 40-health tower and then an 80-health Ancient on the same lane &ndash; effectively winning the game. Do note though, that there are cases when both players may have their second tower destroyed at the same time, leading to a draw!</span></p>
<p><span style=\"font-weight: 400;\">Your heroes, of course, are crucial in helping you achieve this purpose, but they are not enough &ndash; you will need to build a deck with various types of cards to maximize the heroes&rsquo; potential. There are currently five card types in Artifact, and they have various interactions with one another, so sit tight as we introduce you to each of them!</span></p>
<ol>
<li><strong> THE CARDS</strong></li>
</ol>
<p><span style=\"font-weight: 400;\">* </span><strong>Heroes</strong> <span style=\"font-weight: 400;\"> are the key part of any Artifact deck. You start the game with 5 of them, and they are put separate from the rest of your deck.</span></p>
<p>&nbsp;</p>
<p><em><span style=\"font-weight: 400;\">Left: Axe as shown in the collection. Right: Axe in the game, with two items equipped.</span></em></p>
<p><span style=\"font-weight: 400;\">- A Hero directly enters the battlefield and engages in most of the combat. How well the hero performs in combat is determined by some key statistics:</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ </span><strong>Attack</strong><span style=\"font-weight: 400;\"> (shown at the bottom left): How much damage the hero deals for each combat.</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ </span><strong>Health</strong><span style=\"font-weight: 400;\"> (bottom right): How much damage the hero can take while on the board. If a hero is damaged to 0 or negative health, it is killed.</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ </span><strong>Armor</strong><span style=\"font-weight: 400;\"> (middle right): A statistic that alters the amounts of damage dealt to the hero, and a potentially confusing one. To clarify:</span><span style=\"font-weight: 400;\"><br /></span><strong>If a hero has X armor, each time a source would deal damage to the hero, prevent X damage from that source. (If X is greater than the incoming damage, the damage becomes 0.) </strong><span style=\"font-weight: 400;\"><br /></span><strong>If a hero has &ndash;X (negative) armor, each time a source would deal damage to the hero, that source deals X more damage.</strong></p>
<p><span style=\"font-weight: 400;\">Every hero has a base statline of attack and health, but only some have base armor. Attack, health and armor can all be altered throughout the course of the game in many ways.</span></p>
<p><span style=\"font-weight: 400;\">- While a hero is in the game, you will see three small frames at the top of its card frame. These are </span><strong>item slots</strong><span style=\"font-weight: 400;\"> &ndash; you can equip item cards to heroes to make them stronger and improve your game state. Each slot represents a different type of item (weapon, armor, accessory) and can only hold one item at a time. (</span><em><span style=\"font-weight: 400;\">We&rsquo;ll discuss item cards later in this article.</span></em><span style=\"font-weight: 400;\">)</span></p>
<p><span style=\"font-weight: 400;\">- Each hero usually comes with one special ability that can be used while it is on the board. This ability is shown as a small icon within the card frame. Some heroes have highly impactful abilities, while other heroes may not have an ability at all to make up for their comparatively higher combat statlines.</span></p>
<p><span style=\"font-weight: 400;\">- By default, heroes come with a </span><strong>5-gold bounty</strong><span style=\"font-weight: 400;\"> on them &ndash; when a hero is killed, the opposing player gains 5 gold. Gold is a valuable in-game resource that can be used to buy items (</span><em><span style=\"font-weight: 400;\">again, more on item cards later</span></em><span style=\"font-weight: 400;\">). Then, that killed hero goes to a special zone called </span><strong>the Fountain</strong><span style=\"font-weight: 400;\">, and must spend one entire round &ldquo;resting&rdquo; there until it can return to the battlefield. The exception is if the hero has the keyword ability </span><strong>Rapid Deployment</strong><span style=\"font-weight: 400;\">, allowing them to be deployed back immediately without having to wait out a round.</span></p>
<p><span style=\"font-weight: 400;\">- Another very important trait of a hero is its color. Cards in Artifact are divided into four colors &ndash; blue, red, green and black &ndash; and each hero reflects very clearly the identity of its color. Besides the flavor, heroes are also crucial to determining the color identity of your deck, because </span><strong>you cannot play a card from your hand unless you control a hero of the same color,</strong> <strong>in the active lane (the lane you&rsquo;re currently working with)</strong><span style=\"font-weight: 400;\">. This means that if your hero formation includes only red heroes, there is no point in running blue cards &ndash; you&rsquo;d only want red cards for your deck instead.</span></p>
<p><span style=\"font-weight: 400;\">- Not only does a hero&rsquo;s color matter for your deck, each hero can directly alter the content of your deck, with what is called a </span><strong>signature card</strong><span style=\"font-weight: 400;\">.</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\"><br /></span><em><span style=\"font-weight: 400;\">The Hero Zeus and his signature card, the spell Thundergod&rsquo;s Wrath. Notice the Zeus icon at the bottom right of Thundergod&rsquo;s Wrath&rsquo;s artwork, signaling that the spell belongs to Zeus.</span></em></p>
<p><span style=\"font-weight: 400;\">A signature card can be one of your Main Deck card types &ndash; a creep, a spell, or an improvement. </span><strong>If you choose to play a hero for your deck, you must run exactly three copies of that hero&rsquo;s signature card in your deck, and vice versa</strong><span style=\"font-weight: 400;\">. This means you cannot play Thundergod&rsquo;s Wrath in your deck if your hero formation does not include Zeus, and you cannot choose to play only one or two copies of it. (If you do play Zeus, you would love to have three copies of Thundergod&rsquo;s Wrath anyway &ndash; it is a powerful spell!)</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">Signature cards can be extremely powerful or quite lackluster, depending on each hero. Generally, a hero may have a stronger signature card to compensate for its weak stats, and beefier heroes may have signature cards that actually lower the quality of your deck!</span></p>
<p><span style=\"font-weight: 400;\">* </span><strong>Creeps</strong> <span style=\"font-weight: 400;\">are the next card type, the equivalent to &ldquo;creatures&rdquo; or &ldquo;monsters&rdquo; in other card games. </span></p>
<p>&nbsp;</p>
<p><span style=\"font-weight: 400;\">- Like heroes, they also engage in combat, and they have combat statistics similar to heroes: attack, health, and armor. While on the battlefield, </span><strong>heroes and creeps</strong><span style=\"font-weight: 400;\"> are universally referred to as </span><strong>units</strong><span style=\"font-weight: 400;\">. Note that some cards can affect any unit on the board, while some can only affect creeps, and so on.</span></p>
<p><span style=\"font-weight: 400;\">- Creeps start from your Main Deck, and by default you summon a creep to the field by playing it from your hand and paying its mana cost (shown at the top left corner). Each creep also has a color, and as aforementioned, the color(s) of your active heroes determines whether you can play a creep in a certain lane.</span></p>
<p><span style=\"font-weight: 400;\">- Most creeps come with a special ability. It could be a Play Effect (triggers when the creep enters the field), a Death Effect (triggers when the creep dies), or an effect that can be used while the creep is on the field.</span></p>
<p><span style=\"font-weight: 400;\">- Besides creeps that you include in your deck, you can also get creeps for free in the game! </span><strong>Melee Creeps</strong><span style=\"font-weight: 400;\"> are colorless 2/4 (2 attack/4 health) creep tokens without effect that are generated into the field for both players at the start of each round. These tokens may be weak on their own, but they provide the most basic combat power on the board for you, and the creeps can pile up in power as the game progresses, so don&rsquo;t overlook the potential of these little fighters! </span></p>
<p><span style=\"font-weight: 400;\">- Unlike heroes, when creeps die, they do not go to the Fountain or any form of &ldquo;graveyard&rdquo;. They simply vanish from the game, and so far there has been no way to bring back killed creeps. In addition, each creep offers a bounty of </span><strong>1 gold</strong><span style=\"font-weight: 400;\"> for the enemy player who kills it.</span></p>
<p><span style=\"font-weight: 400;\">* </span><strong>Spells</strong> <span style=\"font-weight: 400;\"> are cards with a single-use effect that impacts the battlefield. They can alter the positioning of units, deal damage, draw cards, summon creep tokens, and do a variety of other things!</span></p>
<p>&nbsp;</p>
<p><span style=\"font-weight: 400;\">- To cast a spell from your hand, you need to pay its mana cost, and of course a color-matching hero in the currently active lane. After applying its effect, you discard the spell, and so far used spells cannot be recycled either.</span></p>
<p><span style=\"font-weight: 400;\">- Most spells only impact units in the lane it is played (the currently active lane), but some spells can bypass lane restrictions! If you see arrow icons at the top left corner of the card (next to the mana cost), then it is a &ldquo;global&rdquo; or &ldquo;cross-lane&rdquo; spell &ndash; you can play the spell in lane one, but choose a target in lane two or three!</span></p>
<p><span style=\"font-weight: 400;\">* </span><strong>Improvements</strong><span style=\"font-weight: 400;\"> are another type of non-units, but unlike spells, they are </span><strong>permanent</strong><span style=\"font-weight: 400;\">.</span></p>
<p>&nbsp;</p>
<p><span style=\"font-weight: 400;\">- </span><strong>All improvements are playable across lanes</strong><span style=\"font-weight: 400;\"> (the arrows next to the mana cost confirms this). This means the improvement can be played into an inactive lane, but you still need the required mana and a color-matching hero in the active lane to play it from your hand.</span></p>
<p><span style=\"font-weight: 400;\">- Once an improvement is played onto a lane, it remains there and contribute its effect to that lane for the rest of the game (or until it is removed by a card ability). You cannot apply or activate the effect of an improvement unless you control it in the currently active lane.</span></p>
<p><span style=\"font-weight: 400;\">* </span><strong>Items</strong><span style=\"font-weight: 400;\"> are the last card type. They are inspired by items in DotA, and have some very unique traits in comparison to other card types.</span></p>
<p>&nbsp;</p>
<p><span style=\"font-weight: 400;\">- There are two main item types: </span><strong>equipments</strong><span style=\"font-weight: 400;\"> and </span><strong>consumables</strong><span style=\"font-weight: 400;\">.</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ </span><strong>Equipments</strong><span style=\"font-weight: 400;\"> include </span><strong>weapons, armors, and accessories</strong><span style=\"font-weight: 400;\">. They are equipped onto heroes to make them stronger (in terms of </span><strong>attack, armor and health</strong><span style=\"font-weight: 400;\">, respectively), and give them effects that can swing the game in your favor. </span><strong>Once equipped, items remain attached to the hero even after they leave the field</strong><span style=\"font-weight: 400;\">.</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ </span><strong>Consumables</strong><span style=\"font-weight: 400;\"> are single-use items, similar to spells. They have some worthwhile utilities like healing units, moving heroes across lanes, and so on.</span></p>
<p><span style=\"font-weight: 400;\">- As mentioned above, a hero can be equipped with </span><strong>up to three items, but no more than one item for each type</strong><span style=\"font-weight: 400;\">. If you wish to equip a new item onto an occupied slot, you can do so &ndash; but at the cost of removing the old item in that slot.</span></p>
<p><span style=\"font-weight: 400;\">- </span><strong>Items are not included in your Main Deck, and you do not draw them to your hand every round</strong><span style=\"font-weight: 400;\">. Instead, you prepare an Item Deck separate from your Main Deck before entering a game.</span></p>
<p><span style=\"font-weight: 400;\">- During the game, there are </span><strong>shopping phases</strong><span style=\"font-weight: 400;\"> that allow you to &ldquo;buy&rdquo; items into your hand by paying their </span><strong>gold cost</strong><span style=\"font-weight: 400;\">. Gold is naturally acquired by killing units on the board &ndash; each killed hero gives 5 gold, and each creep gives 1 gold. Some card abilities also give you extra gold, so that you can buy items even more easily.</span></p>
<p><span style=\"font-weight: 400;\">- </span><strong>All item cards are color-neutral</strong><span style=\"font-weight: 400;\">. They have yellow card frames that don&rsquo;t fall into the regular four-color spectrum of Artifact, and you can always play them regardless of which hero colors you have in your active lane.</span></p>
<p><span style=\"font-weight: 400;\">- </span><strong>All items cost 0 mana</strong><span style=\"font-weight: 400;\">. Combined with their color-neutrality, this makes items even more flexible to cast from your hand, making stronger items especially game-changing. However, the gold cost does reflect the power level of items still &ndash; more powerful items may cost up to 25 gold, which is equivalent to the bounty for killing five heroes!</span></p>
<p><span style=\"font-weight: 400;\">- In the game, items can be easily distinguished from other cards with a </span><strong>golden card back</strong><span style=\"font-weight: 400;\">. This way, you can see how many cards in your opponent&rsquo;s hand are items &ndash; and they can do the same with your hand!</span></p>
<p><strong>III. BUILDING YOUR ARTIFACT DECK</strong></p>
<p><span style=\"font-weight: 400;\">Now that you&rsquo;ve had an understanding of the various card types in Artifact, let&rsquo;s take a look at the structure of a typical Artifact deck!</span></p>
<p><strong><em>Note</em></strong><em><span style=\"font-weight: 400;\">: The following deckbuilding rules apply for the Constructed format, in which you use cards from your collection to build decks. The rules for Limited formats (namely Draft in Artifact) is somewhat different, but we will introduce those in a future article.</span></em></p>
<p><span style=\"font-weight: 400;\">Let&rsquo;s take a look at the decklist for one of Artifact&rsquo;s two starter decks, the </span><strong>Red-Green Brawler</strong><span style=\"font-weight: 400;\"> deck. Notice that cards are sorted by their mana cost/gold cost (you can toggle other sorting options in the deckbuilder).</span></p>
<p>&nbsp;</p>
<p><span style=\"font-weight: 400;\">As you can see, a complete Artifact deck must include three components: </span><strong>the Hero lineup, the Main Deck, and the Item Deck.</strong></p>
<p><span style=\"font-weight: 400;\">* </span><strong>The Hero lineup</strong><span style=\"font-weight: 400;\"> includes five Heroes of your choice. </span></p>
<p><span style=\"font-weight: 400;\">- By default, in Constructed format, </span><strong>you cannot include more than one copy of any hero in a deck</strong><span style=\"font-weight: 400;\"> &ndash; all 5 heroes must have different names from one another. </span></p>
<p><span style=\"font-weight: 400;\">- Besides the naming, the </span><strong>order</strong><span style=\"font-weight: 400;\"> in which you arrange your Heroes also matter a lot. In your deckbuilder, your Heroes must be placed in specific slots for &ldquo;round 1&rdquo;, &ldquo;round 2&rdquo; and &ldquo;round 3&rdquo;. These slots are unofficially referred to respectively as &ldquo;the flop&rdquo;, &ldquo;the turn&rdquo;, &ldquo;the river&rdquo; (based on the order of revealing common cards in poker).</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ The first three Heroes (</span><strong>the &ldquo;flop&rdquo; Heroes</strong><span style=\"font-weight: 400;\">) will immediately enter the field when the game starts. Each flop Hero will enter a different lane, but you don&rsquo;t get to choose exactly where they go &ndash; </span><strong>the positioning will be random</strong><span style=\"font-weight: 400;\">. Putting Axe in the leftmost slot of your deckbuilder does not mean he will spawn in the left lane &ndash; he can start in the middle or right lane depending on each game.</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ The fourth Hero (</span><strong>the &ldquo;turn&rdquo; Hero</strong><span style=\"font-weight: 400;\">) enters the game at the start of round 2, one round later than the flop Heroes, but you do get to select which lane this Hero will jump into. (</span><em><span style=\"font-weight: 400;\">More details in a future article, as we discuss the game flow.</span></em><span style=\"font-weight: 400;\">)</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">+ The fifth Hero (</span><strong>the &ldquo;river&rdquo; Hero</strong><span style=\"font-weight: 400;\">) enters the board in round 3. You can also select the deployment lane for this Hero, just like the turn Hero.</span></p>
<p><span style=\"font-weight: 400;\">* </span><strong>The Main Deck</strong><span style=\"font-weight: 400;\"> includes your creeps, spells, and improvements.</span></p>
<p><span style=\"font-weight: 400;\">- Your Main Deck must have </span><strong>at least 40 cards</strong><span style=\"font-weight: 400;\">. You can run 41 cards or higher, but generally it&rsquo;s better to stick to the minimum of 40 so you can draw your strong cards more consistently.</span></p>
<p><span style=\"font-weight: 400;\">- </span><strong>Each Hero in your lineup automatically includes three copies of its signature card into your deck</strong><span style=\"font-weight: 400;\">. So by selecting your 5 Heroes, you have already determined the first </span><strong>15 cards</strong><span style=\"font-weight: 400;\"> of your Main Deck! This puts you at a minimum of 25 more card slots to work with.</span></p>
<p><span style=\"font-weight: 400;\">- </span><strong>You cannot have more than three copies of any card in your Main Deck</strong><span style=\"font-weight: 400;\">. Signature cards, of course, are included at a maximum of 3 copies anyway.</span></p>
<p><span style=\"font-weight: 400;\">- Because your Heroes contribute their colors for casting cards from your hand, </span><strong>the content of your deck should always be on-color with your Heroes</strong><span style=\"font-weight: 400;\">. If your Heroes are blue and black, then all your creeps, spells and improvements should be either blue or black, and vice versa. In your deckbuilder, pay close attention to your </span><em><span style=\"font-weight: 400;\">color distribution graph</span></em><span style=\"font-weight: 400;\"> and </span><em><span style=\"font-weight: 400;\">mana curve</span></em><span style=\"font-weight: 400;\"> to make sure your cards can be consistently played when you want them!</span></p>
<p><span style=\"font-weight: 400;\">* </span><strong>The Item Deck</strong><span style=\"font-weight: 400;\"> stores the items you wish to buy during the game.</span></p>
<p><span style=\"font-weight: 400;\">- Your Item Deck must have </span><strong>at least 9 cards</strong><span style=\"font-weight: 400;\">. You won&rsquo;t have access to all your items at once, so again it&rsquo;s better to stay close to the 9-card minimum to ensure the best items appear when you need them.</span></p>
<p><span style=\"font-weight: 400;\">- </span><strong>You cannot have more than three copies of any item</strong><span style=\"font-weight: 400;\">.</span></p>
<p><span style=\"font-weight: 400;\">- It is normally recommended to include a healthy balance of weapons, armors and accessories in your Item Deck (if you run too many weapons, for example, they may have to overwrite one another in the game). So far, consumable items are not the most necessary part of deckbuilding &ndash; there will be some basic consumables offered to players during the game anyway. (</span><em><span style=\"font-weight: 400;\">More details in part 2 of this series.</span></em><span style=\"font-weight: 400;\">)</span></p>
<p><span style=\"font-weight: 400;\">---</span></p>
<p><span style=\"font-weight: 400;\">If you have read all the way down here, thank you for your precious effort! In part 2 of The Artificer&rsquo;s Apprentice, we will show you how to put your deck of cards into action throughout various stages of the game. Follow us on twitter (@HowToArtifact) to keep yourself posted with our latest content!</span></p>
"

guide2 = "
<p>After introducing you to the cards and deck structure of Artifact in part 1, we will walk you through a game of Artifact, explaining the phases and interactions that happen in the process.</p>
<p>You can find part 1 of our beginner&rsquo;s guide <u>here</u>.</p>
<ol>
<li><strong> BOARD POSITIONING</strong></li>
</ol>
<p>The main focus of an Artifact board is the units &ndash; Heroes and creeps &ndash; that engage in combat. There is no limit to the number of units on each lane &ndash; if the board becomes too wide, you&rsquo;ll need to scroll your mouse wheel up and down to see all the units!</p>
<p>What often confuses players about the board though, is how units are positioned in every lane. Unit placement in Artifact can seem really random and confusing, but they are actually based on some fundamental principles that are not found in other card games. As long as you keep in mind the following principles of positioning, you should be able to maneuver your way around any board position you face.</p>
<p>- <strong>There cannot be empty columns in the middle of the board</strong>. If a column of one or two opposing units leaves the field, other units to the sides will automatically collapse into the center.<br /> - Each unit on the field can have up to <strong>two allied neighbors</strong> and up to <strong>three enemy neighbors</strong>. Allied neighbors must be close to the unit (either left or right), with no space in between. An enemy neighbor can be <em>directly facing</em> your unit, or it could be to the <em>upper-left or upper-right</em> of your unit.<br /> - <strong>Units can attack into one of the three enemy neighbor zones: straight upward, upper-left, or upper-right</strong>. A unit can only attack the enemy tower if it points <strong>straight upward, with no enemy unit facing it </strong>&ndash; otherwise that unit is <strong>blocked</strong>. (This happens, of course, if all its three enemy neighbor spaces are empty.)<br /> - If there is an <strong>empty position(s)</strong> <strong>between units</strong> on your board when you play a new unit, <strong>that unit must go to one of the empty spaces.</strong> Because there can be no empty columns in the middle, this means the new unit must <strong>directly face an enemy unit</strong>. Then, <strong>those two units are forced to attack each other</strong>, regardless of any previous combat directions.<br /> - If there are <strong>no empty combat positions between units</strong> on your side (when you have as many or more units than your opponent), your new units must go to either the <strong>leftmost or rightmost side</strong>, with no units opposite it (<em>you cannot insert that card in-between your other units</em>). Then, the unit is <strong>randomly</strong> given a <strong>combat direction</strong>. There is <strong>50% chance to directly face the enemy tower, 25% to go left and 25% to go right</strong>. Effectively, this means your new unit has a <strong>25% chance to hit an enemy neighbor (if any)</strong>; <strong>otherwise it will hit the tower unblocked</strong>.</p>
<p>&nbsp;</p>
<ol>
<li><br /> <br /> <strong> FLOW OF THE GAME</strong></li>
<li><strong> The phases</strong></li>
</ol>
<p>As we introduced in part 1, a game of Artifact is conducted through various rounds. In each round, action takes place from one lane to another, in a fixed order &ndash; left, then middle, then right. This means players cannot simply make changes to any lane whenever they want &ndash; there can only be up to one <strong>active lane</strong> at a time.</p>
<p>Here is a rough outline of the phases in their intended order:</p>
<p><strong>Deployment phase</strong><br /> &agrave; <strong>Lane 1</strong> (pre-action &agrave; action &agrave; combat &agrave; post-combat)<br /> &agrave; <strong>Lane 2</strong> (pre-action &agrave; action &agrave; combat &agrave; post-combat)<br /> &agrave; <strong>Lane 3</strong> (pre-action &agrave; action &agrave; combat &agrave; post-combat)<br /> &agrave; <strong>Shopping phase</strong><br /> &agrave; <strong>Deployment phase (next round)</strong></p>
<table>
<tbody>
<tr>
<td width=\"0\">&nbsp;</td>
<td width=\"590\">&nbsp;</td>
<td width=\"11\">&nbsp;</td>
<td width=\"434\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan=\"2\">&nbsp;</td>
<td rowspan=\"2\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td rowspan=\"2\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
<p><br /> * <strong>Deployment phase</strong> is the first phase of a round, when Heroes and Melee Creeps enter the battlefield.</p>
<table>
<tbody>
<tr>
<td width=\"0\">&nbsp;</td>
<td width=\"741\">&nbsp;</td>
<td width=\"6\">&nbsp;</td>
<td width=\"296\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan=\"2\">&nbsp;</td>
<td rowspan=\"2\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td rowspan=\"2\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
<p><br /> - At the start of round 1, three out of five Heroes on each side enter the battlefield (these are the &ldquo;flop&rdquo; Heroes that you determine when building your deck). Each Hero will enter a separate, but <strong>the order (which Hero goes into which lane) is randomly assigned for every game.</strong><br /> In round 1&rsquo;s deployment, each player will also be given <strong>three 2/4 Melee Creeps distributed randomly across the battlefield</strong>. You can have one creep in any lane, or have the middle lane flooded with three creeps &ndash; each game yields a different result.<br /> Also when the game starts, <strong>the relative positioning of Heroes and Creeps in each lane is also random</strong>. In fact, the entire deployment phase of round 1 has been automatically arranged by the game server, and players can jump right into lane one to begin the game. This removes the need for players to manually set up the board, while also adding a lot of variety to the Artifact experience &ndash; every game is a new experience, a new situation for both sides to deal with.<br /> - Starting from round 2, each player will only gain an extra <strong>two Melee Creeps</strong> per round, <strong>distributed randomly</strong> across all three lanes. On the other hand, players will now have the option to deploy Heroes into whichever lane they want. Note that <strong>the positioning and combat directions for your new Heroes and creeps will still be random, </strong>so long as it fits with the positioning principles we mentioned above.</p>
<p>&nbsp;</p>
<p>* <strong>Action phase</strong> is the &ldquo;main phase&rdquo; of the game, where most of the players&rsquo; decisions are made.</p>
<p>- Each action phase uses the mana base of only one lane and mostly deals with units on that lane &ndash; this is called the <strong>active lane</strong>. Action phases will go in order, from the left lane, to middle and then right. (Do note that cards with arrows next to their mana cost can also affect inactive lanes!)</p>
<p>- At the start of the first action phase in lane 1, each player draws two cards from their deck. However, in round 1, players are already given a 5-card starting hand, and does not draw any more cards. (Note that your hand size has no limit &ndash; if your hand becomes too stacked, scroll your mouse wheel to see all the cards!)</p>
<p>- Players start round 1 with 3 mana on each tower. From round 2, each tower&rsquo;s mana base will automatically refill and gain one more mana when the round starts.</p>
<p>- Then any ability in the lane that specifically reads &ldquo;<strong>before the action phase</strong>&rdquo; will resolve, before the players&rsquo; actions can begin. (This short pre-action phase is sometimes called the <strong>upkeep</strong>, based on Magic&rsquo;s equivalent concept.)</p>
<p>- All the interactions of this phase revolve around the very important concept of <strong>initiative</strong> (also referred to as <strong>priority</strong>). Unlike in most card games, where players have an entire turn to make a series of plays with little to no interruption, Artifact&rsquo;s action phase plays out in a move-by-move fashion, similar to chess.<br /> + <strong>At any moment in the action phase, only one player can take action</strong> &ndash; that player is said to have the <strong>initiative</strong>. Whoever has the <strong>golden coin</strong> on their bottom-right corner of the board is the player with initiative at that point. <strong>At the start of the game, one player will be randomly assigned the coin</strong> and can move first (by default, that player is also given the Radiant instead of Dire towers &ndash; think &ldquo;White goes first&rdquo; in chess).<br /> + <strong>Playing a card or using an active ability</strong> <strong>counts as one action</strong>.<br /> + <strong>After a player takes one action or passes, they transfer initiative to their opponent.</strong> To pass, simply click on your initiative coin (or press the Spacebar, by default settings), and the coin will reappear on the opposite side of the board.<br /> + <strong>When both players pass in succession, the action phase ends and the combat phase begins.<br /> </strong>+ <strong>Passing does not transfer the initiative in the upcoming lane</strong>. In other words, <strong>whoever passes first in a lane will move first in the next</strong>. To see who has initiative (who can go first) in the next lane, you can look at the Lane Summary in the top-left corner.<br /> Pay close attention to this rule &ndash; sometimes you want to move first in a lane to gain an advantage and prevent your opponent&rsquo;s counter-plays, so it would be better to pass in the current lane to save your initiative than to make another move!<br /> + <strong>Some cards can earn you back initiative after you play them</strong>. Those cards have the key phrase &ldquo;<strong>Get initiative</strong>&rdquo; in the text, and also has a lightning symbol on the top-left corner. After you play a &ldquo;lightning&rdquo; card, you can take another action right afterwards, or you can pass while saving initiative for your next lane.</p>
<p>* <strong>Combat phase</strong> is the &ldquo;result&rdquo; of the action phase, when both players have finished taking action and units enter battle with one another.</p>
<p>- In combat, <strong>all units deal damage at the same time</strong> to their respective targets (another unit or the enemy tower). Any other damage sources (Cleave, Siege, Retaliate, etc.) are also taken into account. This entire process is <strong>automatic</strong>, done in one huge crash, but players can see the results beforehand using the combat preview.</p>
<p>- After the damage is dealt, any effect that reads &ldquo;<strong>after the combat phase</strong>&rdquo; will then resolve, and then players move on to the next lane to take action.</p>
<p>* <strong>Shopping phase</strong> wraps up a round, when people use the gold they earned to buy items. As the shop opens, you will see three item slots to choose from:</p>
<table>
<tbody>
<tr>
<td width=\"0\">&nbsp;</td>
<td width=\"563\">&nbsp;</td>
<td width=\"13\">&nbsp;</td>
<td width=\"446\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td colspan=\"2\">&nbsp;</td>
<td rowspan=\"2\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
<td rowspan=\"2\">&nbsp;</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</tbody>
</table>
<p><br /> - The <strong>Item Deck slot (at the middle)</strong> shows one of the cards you chose for your Item Deck. After you buy an item from that slot, another random item from your Item Deck will appear, and you can keep buying from your Item Deck as many times as possible in each phase.<br /> - The <strong>Secret Shop slot (at the left)</strong> shows a random item from the entire game of Artifact. Each shopping phase this slot will offer you something different, <strong>but</strong> if you really want an item that you cannot buy right away, <strong>you can pay 1 gold to hold that item</strong> in the Secret Shop slot for one more round. If you do buy a Secret Shop item, you cannot buy another from that same slot until the next shopping phase.<br /> - The <strong>consumables slot (at the right)</strong> shows one of the four basic consumable items: <strong>Town Portal Scroll </strong>(3G: return your Hero to the Fountain, then redeploy it the next round)<strong>, Potion of Knowledge </strong>(5G: draw a card)<strong>, Healing Salve </strong>(3G: heal a unit for 6 health)<strong>, and Fountain Flask</strong> (4G: heal a unit to full health). <em>These items are not collectible for your Item Deck and cannot be found in the secret shop</em>. Similar to the secret shop, you are limited to buying one basic consumable per round.</p>
<p>&nbsp;</p>
<p>Note that at any time, <strong>each player can see their opponent&rsquo;s remaining gold total</strong>. You can also tell <em>how many items</em> are in your opponent&rsquo;s hand, as items have unique <em>golden card backs</em>! Keep this in mind so that you can have an idea of which items your opponent may have bought each round, to play around them accordingly.</p>
<p>When both players are done shopping, the game moves to the next deployment phase, and a new round begins. The game continues until someone wins the game, or if a draw is reached (both players lose their second tower at the same time).</p>
<p>If anyone runs out of cards in their deck, the game goes on as normal, and that player simply doesn&rsquo;t draw any further. Decking is not a losing condition like in Magic or Hearthstone &ndash; the battlefield is what truly matters.</p>
<ol start=\"2\">
<li><strong> Time controls</strong></li>
</ol>
<p>The time controls of Artifact is one point that makes it unique &ndash; arguably more competitive in nature &ndash; compared to other games.<br /> Each player has a time bank that they get to use for the whole game (the timer can be seen at the bottom right for you, and the top right for your opponent). This starts at <strong>5 minutes</strong> for each player, and if a player runs out of time, they lose.</p>
<p>But worry not, because you gain an <strong>extra 2 minutes</strong> at the end of each round, so if you make moves quickly enough you should never time out! You are also limited to <strong>45 seconds</strong> for every action in the game (playing a card, using an ability, buying in the shopping phase, or deploying your heroes), and an in-game voice will remind you when there are 15 seconds, and then 5 seconds left. (Your little imp will even point at the clock telling you to hurry up if you&rsquo;re taking too long!)</p>
<p>It is advised that you save your time in the early game, especially if you have to pass anyway, so that you can spend more time in the late game, when your decisions become harder and more numerous!<br /> On a side note, if you&rsquo;re learning the game by playing with a bot, you can turn off the timer so that you have all the time you want to explore the board and make decisions!</p>
<p>----</p>
<p>That&rsquo;s it for part 2 of our beginner&rsquo;s guide! We hope after this article, you will have a clear understanding of how the game plays out, especially with concepts like positioning and initiative!<br /> Remember to tune in to part 3 of the Artificer&rsquo;s Apprentice series, as we delve into the elements that give flavor to Artifact gameplay &ndash; card colors and abilities! Follow us on Twitter (@HowToArtifact) for the latest updates!</p>
"

post_list = [
    [2,
     'THE ARTIFICER\'APPRENTICE: PART 1 (OVERVIEW, CARD TYPES AND COLORS, DECKBUILDING)',
     'Welcome to the Artificer\'s Apprentice series!',
     guide1,
     true
    ],
    [2,
     'THE ARTIFICER\'S APPRENTICE: PART 2 (BOARD POSITIONING, GAME FLOW)',
      'Welcome to part 2 of our Artificer\'s Apprentice guides!',
     guide2,
     true
    ],
]

post_list.each do |category_id, title, snippet, article, featured|
  Post.create(category_id: category_id, user_id: 1, title: title, snippet: snippet, content: article, featured: featured)
end

post_image_list = [
    [
        '1.jpg',
        1
    ],
    [
        '2.jpg',
        2
    ],
]

post_image_list.each do |image_url, post_id|
  PostImage.create(image: seed_image(image_url), post_id: post_id)
end
