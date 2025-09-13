# Changelog

## Version 0.10.0

### Compatibility

* Adapted to CK3 1.17.0.
* Adapted to latest Unofficial Patch changes.

## Version 0.9.3

### Compatibility

* Adapted to CK3 1.16.2.1

## Version 0.9.2

### Compatibility

* Adapted to CK3 1.16.2

## Version 0.9.1

### Compatibility

* Added more triggers to be overridden by compatibility submods.

### Bug Fixes

* Fixed minor issues with candidate eligibility for court positions.

## Version 0.9.0

### Compatibility

* Adapted to CK3 1.16.0.1
* Added support for the Kurultai council position introduced in CK3 1.16.
* Added support for all new court positions (9 in total) introduced in CK3 1.15 and CK3 1.16.

## Version 0.8.0

### Compatibility

* Adapted to CK3 1.15.0

## Version 0.7.1

### Compatibility

* Improved compatibility with submods.

### Bug Fixes

* Fixed unintended event frequency penalty for unlanded rulers.

## Version 0.7.0

### Compatibility

* Adapted to CK3 1.14.0.1

## Version 0.6.2

### Bug Fixes

* Fixed marriage events not firing for landless adventurers.

## Version 0.6.1

### Compatibility

* Adapted to CK3 1.13.1

### Performance

* Improved performance by avoiding expensive logic for landless adventurers.

## Version 0.6.0

### Compatibility

* Adapted to CK3 1.13.0.3
* Added support for 3 new court positions: Charioteer, Bookmaker, Akolouthos

### Performance

* Landless AI characters now have less frequent events and and use smaller search range.

## Version 0.5.2

### Bug Fixes

* Courtiers may no longer marry themselves if same-sex marriage is enabled.

## Version 0.5.1

### Compatibility

* Adapted to CK3 1.12.5

## Version 0.5.0

### Interactions

* Added *Find Guardian* interaction to initiate the guardianship event chain for (`accou_find_guardian_interaction`).

### Events

* Added guardianship event chain (*Courtier Suggests a Guardian*, etc.) (`accou_guardian.0001` to `accou_guardian.0004`).

### Game Rules

* Make marriage events and invite to court events use independent schedules and add game rules for the frequency of invite to court events (*Invitation Event Frequency for Players* and *Invitation Event Frequency for AI Rulers*).
* Add game rules to enable / disable guardianship and courtier events (*Guardianship Events*, *Courtier Jostling Events*).
* Add new *Every quarter* setting to frequency game rules.

## Version 0.4.0

### Interactions

* Added *Find Someone to Invite to Court* interaction to initiate the invite to court event chain for (`accou_invite_someone_interaction`).

### Events

* Added invite to court event chain (*Courtier Recommends an Acquaintance*, etc.) (`accou_invite.0001` to `accou_invite.0004`).

### Game Rules

* Rename game rule *Marriage Acceptance by AI* to *Interaction Acceptance by AI* since it now controls also invite to court acceptance.

### Miscellaneous

* Increased chances of courtiers with lovers to request marriages.

## Version 0.3.0

### Compatibility

* Adapted to CK3 1.12.2.1

## Version 0.2.2

### Compatibility

* Added changes needed for AGOT compatch.
* Improved compatibility with total conversion mods.

### Bug Fixes

* Fixed a minor issue with evaluating candidates as better councillors.

## Version 0.2.1

### Compatibility

* Added checks for compatibility with AGOT.

## Version 0.2.0

### Events

* Added courtiers jostling for positions event chain (*Courtier Jostles for Position*, etc.) for candidates that have been previously evaluated as better than other available options for a councillor or court position (`accou_courtier.0001` to `accou_courtier.0003`).
* Insider marriage candidates are now also evaluated for council positions, court positions, knights, and commanders by AI.
* Added candidate evaluation for the remaining 5 court positions.

### Game Rules

* Reworked game rules for AI event frequency and character search ranges. Both are now dynamic and depend on rank.
* Added a new setting *Never* for player and AI event frequencies.

### Localization

* Added Russian translation.

### Miscellaneous

* Added logging of AI statistics every year.

## Version 0.1.0

### Interactions

* Added *Ask to Find Spouse* interaction to initiate the marriage event chain for a particular courtier (`accou_marry_someone_interaction`).

### Events

* Added courtier marriage event chain (*Courtier Requests to Marry*, etc.) (`accou_marriage.0001` to `accou_marriage.0004`).
* Added candidate evaluation for council positions, court positions (24 out of 28), knights, and commanders.

### Game Rules

* Added game rules for event frequency, character search ranges, etc.

### Performance

* Optimized candidate search and marriage acceptance check performance.

### Miscellaneous

* Added extensive debug logging.
