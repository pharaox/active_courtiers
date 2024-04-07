# Changelog

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

* Adapted to CK3 1.12

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
