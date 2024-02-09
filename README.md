# Travelers

[Subscribe on Steam](?)

## Overview

Do you find yourself spending a lot of time finding spouses for your courtiers, or deciding on characters to invite to your court, who could be better councillors, court position holders, knights, or commanders? While both **Find Spouse** and **Invite to Court** interactions are great since they enable the player to attract better talent than by recruiting guests, and furthermore do it for free, they suffer from a few major drawbacks:

* They require a lot of micromanagement on the player's part since the options could be either too numerous or (in some cases) hard to find.
* The AI never uses them, ending up with a much worse talent pool as a result. On the other hand, the player can get the best courtiers via marriages at their leisure, since they are usually not married and therefore always available. This applies also to court invitations, and to an ever greater extent.

I personally find the above aspects to be tedious, unrealistic, and underwhelming. Why should it take so much effort to find good spouses for courtiers? Why would capable characters depend so much on their liege for getting married? And why should players enjoy such overwhelming advantages over the AI to attract valuable courtiers?

This mod attempts to address these drawbacks by enabling courtiers to actively search for spouses (and in the future also acquaintances to invite) by themselves and only ask their liege for approval, thereby reducing the effort for the player, improving the quality of AI talent pools and therefore the overall AI competitiveness, and also contributing to better roleplaying and immersion.

### Event Chains

This mod introduces a new **Courtier Requests to Marry** event chain for courtier marriages. It is triggered for playable (count or higher) rulers, every year for players and every 3 years for AI by default, if they are "available for events" (not traveling or involved in an activity). These event frequencies can be changed via game rules.

When the event fires, first a random eligible *courtier* is selected who will search for a spouse for themselves. To be eligible, a courtier must satisfy a number of conditions, such as being an available adult, not already married or betrothed, younger than 60 years and not having a serious health condition, not an heir or close family to their liege (since these are already married by AI for alliances), and not "wrong gender in faith", e.g. a female in a faith with the male-dominated doctrine (the eligibility of such characters can be configured via a game rule).

After the *courtier* has been selected, a marriage *candidate* is also selected among all eligible non-ruler characters (courtiers, guests, and wandering characters) in this and neighboring realms and located within a certain range of the original ruler's capital. This range is larger for players than for AI by default and can also be configured via game rules. The candidate selection proceeds in several stages:

* First, all *eligible candidates* are determined. To be eligible, a candidate must satisfy many of the same conditions that apply when selecting a *courtier*, and in addition they must be someone whom the *courtier* can actually marry according to their gender and faith, and either someone to whose gender the *courtier* is attracted, or someone of the opposite gender if both characters are fertile.
* Next, the *quality* of the eligible candidates from the perspective of the *courtier* is evaluated, based on various criteria such as opinion, attraction, fertility, health, age and age difference, dynasty prestige difference, faith hostility, cultural acceptance, genetic traits, skills, and prowess.
* Next, all *shortlisted candidates* with quality above a certain threshold are checked if their *matchmaker* (their liege for courtiers, or themselves for guests and wandering characters) would accept the marriage proposal.
* Finally, the highest quality candidate whose matchmaker would accept the marriage proposal is selected as the actual *candidate*.

After both a *courtier* and a *candidate* have been successfully selected as described above, the event enables the *courtier*'s liege (either the player or an AI ruler) to approve or reject the marriage. If the *candidate* is an outsider, the event description lists some potential reasons to accept them as a courtier. If they are better than any other available options for any councillor positions (based on skill), court positions (based on aptitude), knight (based on prowess), or commander (based on martial skill and commander traits), this is explicitly mentioned in the description.

Note that since the *candidate* has been selected based on their quality from the *courtier*'s perspective, they are not automatically a good choice for their liege. However, often this is actually the case, since many of the criteria used to determine the quality (skills, genetic traits, age, fertility, etc.) would be relevant to the liege as well. So while courtiers would in most cases not make better choices than you as a player might make, they would usually make reasonable choices that are also of good roleplaying value.

When the event fires for AI rulers, they evaluate the *candidate* carefully before approving or rejecting. AI rulers are in general more eager to approve outsiders rather than characters who are already their courtiers, since marriages to outsiders are a great way to attract talent to their court. They also take the into account various other criteria, such as their opinion of both *courtier* and *candidate*, family and other relations, and the *candidate* quality. For outsiders, there are also additional considerations such as is the *candidate* a better choice than any other available options for any councillor positions, court positions, knight, or commander, and does the *candidate* have any useful claims.

### Interactions

To make it more convenient for players to trigger the event chain for particular courtiers, this mod adds the new **Ask to Find Spouse** interaction. Only courtiers who are eligible according to the criteria mentioned above can be targeted by this interaction. Sending the interaction effectively triggers the event chain with the targeted courtier pre-selected as the *courtier*.

If the candidate search does not yield any eligible candidates above the quality threshold whose matchmaker would accept the marriage proposal, the **Courtier Failed to Find a Spouse** event fires, giving the player the option to marry the courtier off anyway via the **Find Spouse** interaction.

## Compatibility

The current version is compatible with CK3 1.11.

This mod does not modify any vanilla files and should be compatible with most other mods. Note that some total conversion mods remove parts of vanilla that may be referred to by this mod, so compatibility with such mods is not guaranteed. If you use such mods, set the game rule **Marriage Acceptance by AI** to **Original** to let the changes to marriage acceptance by the conversion mod take effect.

This mod also supports changing its game rules mid-game with the [Gamerule Gadget](https://steamcommunity.com/sharedfiles/filedetails/?id=2826829936) mod.

I strongly recommend using also the [Unofficial Patch](https://steamcommunity.com/sharedfiles/filedetails/?id=2871648329) mod as it fixes many vanilla issues. Put this mod after Unofficial Patch in the load order.

This mod is also savegame compatible, you can enable or disable it at any time without adverse effects.

## Localization

This mod is currently available in English. For other languages, it uses the original English text as a placeholder.

## Features

### Courtier Marriages

This mod introduces a new **Courtier Requests to Marry** event chain for courtier marriages. This event chain is triggered for playable (count or higher) rulers, every year for players and every 3 years for AI by default, if they are "available for events" (not traveling or involved in an activity). These event frequencies can be changed via the **Event Frequency for Players** and **Event Frequency for AI Rulers** game rules. The player can also initiate the event chain for a particular courtier via the [Ask to Find Spouse Interaction](#ask-to-find-spouse-interaction).

#### Preparation

When the event fires, first a random eligible *courtier* is selected who will search for a spouse for themselves. To be eligible, a courtier must be:

* adult and available for events (not traveling or involved in an activity, etc.)
* not married, betrothed, a concubine, or a hostage
* younger than 60 years, not infirm or suffering from a serious disease
* not an heir or close family to their liege (these are already married by AI for alliances)
* not "wrong gender" in faith, e.g. a female in a faith with the male-dominated doctrine, or vice versa, unless highborn; the eligibility of such characters can be configured via the **Marriage Requests by Non-dominant Gender** game rule

Courtiers who are of minor interest to their liege (extended family members, councillors, court position holders, or knights), as well as highborn and younger characters are more likely to be selected as *courtier* for this event.

After the *courtier* has been selected, a marriage *candidate* is also selected among all eligible non-ruler characters (courtiers, guests, and wandering characters) in this and neighboring realms and located within a certain range of the original ruler's capital. This range is "massive" (approx 1.5 HRE away) for players and "large" (approx one France away) for AI by default. These ranges can be configured via the **Character Search Range for Players** and **Character Search Range for AI Rulers** game rules.

The candidate selection proceeds in several stages. First, all *eligible candidates* are determined. To be eligible, a candidate must be:

* adult and available for events (not traveling or involved in an activity, etc.)
* not married, betrothed, a concubine, or a hostage
* younger than 60 years, not infirm or suffering from a serious disease
* not an heir or close family to their liege (these are already married by AI for alliances)
* someone whom the *courtier* can actually marry according to their gender and faith
* either someone to whose gender the *courtier* is attracted, or someone of the opposite gender if both characters are fertile

Next, the *quality* of the eligible candidates from the perspective of the *courtier* is evaluated, based on the following criteria:

* *courter* opinion of candidate
* attraction, if the *courtier* is attracted to their gender (more important if the *courtier* is lustful, less if they are chaste)
* fertility, if the *courtier* is of the opposite gender and fertile
* health
* age (younger is better) and age difference (smaller difference is better)
* dynasty prestige difference (more important if the *courtier* is ambitious, less if they are content)
* faith hostility (more important if the *courtier* is zealous, less if they are cynical)
* cultural acceptance (more important if the *courtier* is gregarious, less if they are shy)
* genetic traits, if the *courtier* is of the opposite gender and both characters are fertile
* sum of all skills
* prowess

Next, all *shortlisted candidates* with quality above a certain threshold are checked if their *matchmaker* (their liege for courtiers, or themselves for guests and wandering characters) would accept the marriage proposal. For performance reasons, this check by default skips some of the impossible or unlikely conditions that are evaluated by the original AI acceptance modifier; this can be configured via the **Marriage Acceptance by AI** game rule. Note that this quicker method is still very accurate, it has an accuracy of at least 99.9% compared to the vanilla modifier.

Finally, the highest quality candidate whose matchmaker would accept the marriage proposal is selected as the actual *candidate*.

#### Main Event

The main **Courtier Requests to Marry** event fires after both a *courtier* and a *candidate* have been successfully selected as described above. This event enables the *courtier*'s liege (either the player or an AI ruler) to approve or reject the marriage, and in the player's case also to arrange the marriage via the **Arrange Marriage** interaction. If the *candidate* is an outsider, the event description lists some potential reasons to accept them as a courtier. If they are better than any other available options for any councillor positions (based on skill), court positions (based on aptitude), knight (based on prowess), or commander (based on martial skill and commander traits), this is explicitly mentioned in the description. Other possible reasons are based on vanilla guest descriptions and include useful claims and various competencies based on skills and traits.

Note that since the *candidate* has been selected based on their quality from the *courtier*'s perspective, they are not automatically a good choice for their liege. However, often this is actually the case, since many of the criteria used to determine the quality (skills, genetic traits, age, fertility, etc.) would be relevant to the liege as well. So while courtiers would in most cases not make better choices than you as a player might make, they would usually make reasonable choices that are also of good roleplaying value.

When the event fires for AI rulers, they evaluate the *candidate* carefully before approving or rejecting. AI rulers are in general more eager to approve outsiders rather than characters who are already their courtiers, since marriages to outsiders are a great way to attract talent to their court. They also take the into account the following criteria:

* their opinion of both *courtier* and *candidate*
* family and other relations (friends, rivals, lovers), with positive relations increasing the chance for approval except for lovers
* the *candidate* quality scaled by AI compassion, the more compassionate the AI ruler the more they care if their courtiers marry candidates whom they themselves consider a good match
* the *candidate* dynasty prestige (only for outsiders)
* is the *candidate* a better choice than any other available options for any councillor positions, court positions, knight, or commander (only for outsiders)
* does the *candidate* have any useful claims (only for outsiders)

Based on actual statistics collected in observer mode over a period of 50 years, AI rulers currently approve about 92% of all requests involving an outsider *candidate*, but only about 11% of all requests involving an insider one.

Note that in some cases a courtier or a candidate matching the criteria mentioned above may not exist. In such cases, nothing happens, except if the event chain has been initiated by the player via the [Ask to Find Spouse Interaction](#ask-to-find-spouse-interaction).

#### Ask to Find Spouse Interaction

To make it more convenient for players to trigger the event chain for particular courtiers, this mod adds the **Ask to Find Spouse** interaction. Only courtiers who are eligible according to the criteria described in [Preparation](#preparation) can be targeted by this interaction, and only if the player character is "available for events". Sending the interaction effectively triggers the event chain with the targeted courtier pre-selected as the *courtier*.

If the candidate search does not yield any eligible candidates above the quality threshold whose matchmaker would accept the marriage proposal, the **Courtier Failed to Find a Spouse** event fires, giving the player the option to marry the courtier off anyway via the **Find Spouse** interaction.

## Performance

Since the additional events introduced by this mod fire on a regular basis for a few hundred AI rulers and involve sophisticated character searches, they may negatively affect the overall game performance. Therefore, this mod introduces game rules to control the different factors that influence the performance and lets players find the best balance between a better AI and a smooth gameplay experience for their hardware and selection of other mods. With the default settings, this mod is about 10% slower than vanilla, a difference that is usually not noticeable except on the highest game speed.

The performance-influencing factors that can be configured via game rules are:

* **Event Frequency for AI Rulers**: More frequent events allow the AI to attract useful characters more often and therefore build a better AI talent pool. The default frequency is 3 years. It can be reduced to 1 year or increased to 5 years, making the game respectively an additional 20% slower or 5% faster.
* **Character Search Range for AI Rulers**: Wider range searches increase the average candidate quality and therefore also contribute to a better AI talent pool. The default range is "large" (approx one France away). It can be reduced or increased for incremental performance gains / losses of up to 5%.
* **Marriage Acceptance by AI**: The default **Quick** method skips some of the impossible or unlikely conditions that are evaluated by the **Original** method and therefore contributes to up to 5% better performance. However, this method is slightly less accurate and more likely to cause incompatibilities with total conversion mods.

The **Event Frequency for Players** and **Character Search Range for Players** game rules don't have any influence on the performance since there is only a single (or very few) player. They allow configuring more frequent events and wider search ranges for players than for AI rulers for a more rewarding gameplay experience.

As a recommendation, if you don't notice any performance issues, just leave the default settings. Otherwise, you may try increasing the event frequency or reducing the character search range for AI rulers via the corresponding game rules.

## Links

* [Steam Workshop](?)
* [GitHub Repository](https://github.com/pharaox/active_courtiers)
