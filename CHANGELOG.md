# Changelog

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
