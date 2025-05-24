--- STEAMODDED HEADER
--- MOD_NAME: Campfire Challenge
--- MOD_ID: campchal
--- MOD_AUTHOR: [mothfox]
--- MOD_DESCRIPTION: Simple challenge where you start with a negative campfire and riff raff and go from there, with no jokers appearing in the shop
--- 
----------------------------------------------
------------MOD CODE -------------------------

-- G is the global game table
-- local challenges = G.CHALLENGES
-- G.localization.misc.challenge_names["c_campchal"] = "Fuel the Fire"

SMODS.Challenge({
    key = "campchal",
    rules = {
        modifiers = {
            { id = "dollars", value = 10 },
        },
        custom = {
            {id = 'no_reward'},
            {id = 'no_extra_hand_money'},
            {id = 'no_interest'},
            {id = 'no_shop_jokers'},
        }
    },
    jokers = {

        {id = "j_campfire", edition = "negative", eternal = true},
        {id = "j_riff_raff", edition = "negative", eternal = true}
    },
    deck = {
        type = "Challenge Deck",
    },
    restrictions = {
        banned_cards = {
            {id = 'c_judgement'},
            {id = 'c_wraith'},
            {id = 'c_soul'},
            {id = 'p_buffoon_normal_1', ids = {
                'p_buffoon_normal_1','p_buffoon_normal_2','p_buffoon_jumbo_1','p_buffoon_mega_1',
            }},
            {id = "c_ankh"}
        },
        banned_tags = {
            {id = 'tag_rare'},
            {id = 'tag_uncommon'},
            {id = 'tag_holo'},
            {id = 'tag_polychrome'},
            {id = 'tag_negative'},
            {id = 'tag_foil'},
            {id = 'tag_buffoon'},
            {id = 'tag_top_up'},

        },
        banned_other = {
        }
    },
    unlocked = function(self)
        return true
    end
})

























----------------------------------------------
------------MOD CODE END----------------------