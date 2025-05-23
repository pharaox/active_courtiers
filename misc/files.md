# Files

## Vanilla Files and Objects

### Implicit

* `common/character_interactions/00_courtier_and_guest_interactions.txt`
  * `invite_to_court_interaction`, `ai_accept` section
    * => `common/script_values/accou_invite_values.txt`
      * `accou_quick_invite_ai_accept_modifier_value`
    * => `common/scripted_triggers/accou_invite_triggers.txt`
      * `accou_could_accept_invite_trigger`
  * `invite_to_court_interaction`, `on_accept` section
    * => `common/scripted_effects/accou_invite_effects.txt`
      * `accou_invite_to_court_on_accept_vanilla_effect`
  * `invite_to_court_interaction`, `is_shown` / `is_valid_showing_failures_only` sections
    * => `common/scripted_triggers/accou_invite_triggers.txt`
      * `accou_is_valid_invite_recipient_vanilla_trigger`
* `common/character_interactions/00_education_interactions.txt`
  * `educate_child_interaction`, `on_accept` section
    * => `common/scripted_effects/accou_guardian_effects.txt`
      * `accou_educate_child_on_accept_effect`
  * `educate_child_interaction`, `is_shown` / `is_valid_showing_failures_only` / `can_be_picked` sections
    * => `common/scripted_triggers/accou_guardian_triggers.txt`
      * `accou_is_valid_guardian_recipient_vanilla_trigger`
      * `accou_is_valid_child_recipient_vanilla_trigger`
* `common/character_interactions/00_marriage_interactions.txt`
  * `arrange_marriage_interaction`, `on_accept` section
    * => `common/scripted_effects/accou_marriage_effects.txt`
      * `accou_arrange_marriage_on_accept_effect`
  * `arrange_marriage_interaction`,`is_shown` / `is_valid_showing_failures_only` / `has_valid_target_showing_failures_only` sections
    * => `common/scripted_triggers/accou_marriage_triggers.txt`
      * `accou_is_valid_marriage_target_vanilla_trigger`
      * `accou_is_valid_marriage_recipient_vanilla_trigger`
* `common/council_positions/00_council_positions.txt`
  * Entire file, council positions themselves
    * => `common/script_values/accou_courtier_values.txt`
    * => `common/scripted_effects/accou_courtier_effects.txt`
    * => `common/scripted_modifiers/accou_courtier_modifiers.txt`
    * => `common/scripted_triggers/accou_courtier_triggers.txt`
  * Entire file, `can_reassign` sections
    * => `common/scripted_triggers/accou_councillor_triggers.txt`
* `common/court_positions/types/00_court_positions.txt`, `common/court_positions/types/00_mpo_court_positions.txt`
  * Entire file, court positions themselves
    * => `common/script_values/accou_courtier_values.txt`
    * => `common/scripted_effects/accou_courtier_effects.txt`
    * => `common/scripted_modifiers/accou_courtier_modifiers.txt`
    * => `common/scripted_triggers/accou_courtier_triggers.txt`
  * Entire file, `candidate_score` sections
    * => `common/script_values/accou_court_position_values.txt`
  * Entire file, `aptitude` sections
    * => `common/script_values/accou_invite_values.txt`
      * `accou_vanilla_court_position_traits_character_value`
  * Entire file, `is_shown_character` / `valid_character` sections
    * => `common/scripted_triggers/accou_court_position_triggers.txt`
* `common/scripted_modifiers/00_marriage_scripted_modifiers.txt`
  * `marriage_ai_accept_modifier`
    * => `common/script_values/accou_marriage_values.txt`
      * `accou_quick_marriage_ai_accept_modifier_value`
* `common/scripted_triggers/00_court_position_triggers.txt`
  * Court position validity triggers
    * => `common/scripted_triggers/accou_court_position_triggers.txt`
