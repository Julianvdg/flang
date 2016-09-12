# Flang: Language learning app with flash cards

A language learning app that features:
* Texts can be pasted in and unknown words can be highlighted
* After unknown words are stored, the other words are stored as known words
* Unknown words are stored with their translation
* I can learn my unknown words by viewing flash cards of them
* Once I know a word, they move from unknown to known words


### Database design:

#### Words (has_one language, has_many translations)
* word_id: integer
* value: string
* known: boolean
* language_id: integer (foreign key)

#### Languages(has_many words, translations)
* language_id: integer
* name: string

#### Translations (has_one language, has_one word)
* translation_id: integer
* value: string
* language_id: integer (foreign key)
* word_id: integer (foreign key)
