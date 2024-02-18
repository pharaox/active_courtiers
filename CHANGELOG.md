# Changelog

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
