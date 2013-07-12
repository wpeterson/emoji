class Emoji
  def self.create type
    case type
    when :iphone
			# The iPhone implements the Softbank Unicode private space
      Softbank.new
    when :softbank
      Softbank.new
		when :docomo
			DoCoMo.new
		when :kddi
			KDDI.new
		when :au
			# Known as "Au by KDDI"
			KDDI.new
		when :google
			Google.new
    else
      raise "Not supported."
    end
  end
  
  def convert_unicode_to_hex(unicode)
    return [unicode.to_i(16)].pack("U")
  end

	def warning(character)
		STDERR.puts "WARNING: Emoji character \"#{character}\" not supported."
	end
	
	def get_this_method
	   return caller[0][/`([^']*)'/, 1]
	end
end

class DoCoMo < Emoji
	def black_sun_with_rays;                                       return convert_unicode_to_hex("E488"); end
	def cloud;                                                     return convert_unicode_to_hex("E48D"); end
	def umbrella_with_rain_drops;                                  return convert_unicode_to_hex("E48C"); end
	def snowman_without_snow;                                      return convert_unicode_to_hex("E485"); end
	def high_voltage_sign;                                         return convert_unicode_to_hex("E487"); end
	def cyclone;                                                   return convert_unicode_to_hex("E469"); end
	def foggy;                                                     return convert_unicode_to_hex("E598"); end
	def closed_umbrella;                                           return convert_unicode_to_hex("EAE8"); end
	def night_with_stars;                                          return convert_unicode_to_hex("EAF1"); end
	def sunrise_over_mountains;                                    return convert_unicode_to_hex("EAF4"); end
	def sunrise;                                                   return convert_unicode_to_hex("EAF4"); end
	def cityscape_at_dusk;                                         return convert_unicode_to_hex("E5DA"); end
	def sunset_over_buildings;                                     return convert_unicode_to_hex("E5DA"); end
	def rainbow;                                                   return convert_unicode_to_hex("EAF2"); end
	def snowflake;                                                 return convert_unicode_to_hex("E48A"); end
	def sun_behind_cloud;                                          return convert_unicode_to_hex("E48E"); end
	def bridge_at_night;                                           return convert_unicode_to_hex("E4BF"); end

	def new_moon_symbol;                                           return convert_unicode_to_hex("E5A8"); end
	def waxing_gibbous_moon_symbol;                                return convert_unicode_to_hex("E5A9"); end
	def first_quarter_moon_symbol;                                 return convert_unicode_to_hex("E5AA"); end
	def crescent_moon;                                             return convert_unicode_to_hex("E486"); end
	def full_moon_symbol;                                          warning(get_this_method); return nil; end
	def first_quarter_moon_with_face;                              return convert_unicode_to_hex("E489"); end

	def soon_with_right_arrow_above;                               warning(get_this_method); return nil; end
	def on_with_double_pointing_arrow_above;                       warning(get_this_method); return nil; end
	def end_with_left_arrow_above;                                 warning(get_this_method); return nil; end
	def hourglass_with_flowing_sand;                               return convert_unicode_to_hex("E47C"); end
	def hourglass;                                                 return convert_unicode_to_hex("E57B"); end
	def watch;                                                     return convert_unicode_to_hex("E57A"); end
	def clock_face_one_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_two_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_three_oclock;                                   return convert_unicode_to_hex("E594"); end
	def clock_face_four_oclock;                                    return convert_unicode_to_hex("E594"); end
	def clock_face_five_oclock;                                    return convert_unicode_to_hex("E594"); end
	def clock_face_six_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_seven_oclock;                                   return convert_unicode_to_hex("E594"); end
	def clock_face_eight_oclock;                                   return convert_unicode_to_hex("E594"); end
	def clock_face_nine_oclock;                                    return convert_unicode_to_hex("E594"); end
	def clock_face_ten_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_eleven_oclock;                                  return convert_unicode_to_hex("E594"); end
	def clock_face_twelve_oclock;                                  return convert_unicode_to_hex("E594"); end

	def alarm_clock;                                               return convert_unicode_to_hex("E594"); end

	def aries;                                                     return convert_unicode_to_hex("E48F"); end
	def taurus;                                                    return convert_unicode_to_hex("E490"); end
	def gemini;                                                    return convert_unicode_to_hex("E491"); end
	def cancer;                                                    return convert_unicode_to_hex("E492"); end
	def leo;                                                       return convert_unicode_to_hex("E493"); end
	def virgo;                                                     return convert_unicode_to_hex("E494"); end
	def libra;                                                     return convert_unicode_to_hex("E495"); end
	def scorpius;                                                  return convert_unicode_to_hex("E496"); end
	def sagittarius;                                               return convert_unicode_to_hex("E497"); end
	def capricorn;                                                 return convert_unicode_to_hex("E498"); end
	def aquarius;                                                  return convert_unicode_to_hex("E499"); end
	def pisces;                                                    return convert_unicode_to_hex("E49A"); end
	def ophiuchus;                                                 return convert_unicode_to_hex("E49B"); end

	def water_wave;                                                return convert_unicode_to_hex("EB7C"); end
	def earth_globe_asia_australia;                                return convert_unicode_to_hex("E5B3"); end
	def volcano;                                                   return convert_unicode_to_hex("EB53"); end
	def milky_way;                                                 return convert_unicode_to_hex("EB5F"); end

	def four_leaf_clover;                                          return convert_unicode_to_hex("E513"); end
	def tulip;                                                     return convert_unicode_to_hex("E4E4"); end
	def seedling;                                                  return convert_unicode_to_hex("EB7D"); end
	def maple_leaf;                                                return convert_unicode_to_hex("E4CE"); end
	def cherry_blossom;                                            return convert_unicode_to_hex("E4CA"); end
	def rose;                                                      return convert_unicode_to_hex("E5BA"); end
	def fallen_leaf;                                               return convert_unicode_to_hex("E5CD"); end
	def leaf_fluttering_in_wind;                                   return convert_unicode_to_hex("E5CD"); end
	def hibiscus;                                                  return convert_unicode_to_hex("EA94"); end
	def sunflower;                                                 return convert_unicode_to_hex("E4E3"); end
	def palm_tree;                                                 return convert_unicode_to_hex("E4E2"); end
	def cactus;                                                    return convert_unicode_to_hex("EA96"); end
	def ear_of_rice;                                               warning(get_this_method); return nil; end
	def ear_of_maize;                                              return convert_unicode_to_hex("EB36"); end
	def mushroom;                                                  return convert_unicode_to_hex("EB37"); end
	def chestnut;                                                  return convert_unicode_to_hex("EB38"); end
	def blossom;                                                   return convert_unicode_to_hex("EB49"); end
	def herb;                                                      return convert_unicode_to_hex("EB82"); end

	def cherries;                                                  return convert_unicode_to_hex("E4D2"); end
	def banana;                                                    return convert_unicode_to_hex("EB35"); end
	def apple_1;                                                   return convert_unicode_to_hex("EAB9"); end
	def tangerine;                                                 return convert_unicode_to_hex("EABA"); end
	def strawberry;                                                return convert_unicode_to_hex("E4D4"); end
	def watermelon;                                                return convert_unicode_to_hex("E4CD"); end
	def tomato;                                                    return convert_unicode_to_hex("EABB"); end
	def aubergine;                                                 return convert_unicode_to_hex("EABC"); end
	def melon;                                                     return convert_unicode_to_hex("EB32"); end
	def pineapple;                                                 return convert_unicode_to_hex("EB33"); end
	def grapes;                                                    return convert_unicode_to_hex("EB34"); end
	def peach;                                                     return convert_unicode_to_hex("EB39"); end
	def apple_2;                                                   return convert_unicode_to_hex("EB5A"); end


	def eyes;                                                      return convert_unicode_to_hex("E5A4"); end
	def ear;                                                       return convert_unicode_to_hex("E5A5"); end
	def nose;                                                      return convert_unicode_to_hex("EAD0"); end
	def mouth;                                                     return convert_unicode_to_hex("EAD1"); end
	def tongue;                                                    return convert_unicode_to_hex("EB47"); end

	def lipstick;                                                  return convert_unicode_to_hex("E509"); end
	def nail_care;                                                 return convert_unicode_to_hex("EAA0"); end
	def face_massage;                                              return convert_unicode_to_hex("E50B"); end
	def haircut;                                                   return convert_unicode_to_hex("EAA1"); end
	def barber_pole;                                               return convert_unicode_to_hex("EAA2"); end

	def bust_in_silhouette;                                        warning(get_this_method); return nil; end

	def boys_head;                                                 return convert_unicode_to_hex("E4FC"); end
	def girls_head;                                                return convert_unicode_to_hex("E4FA"); end
	def mans_head;                                                 return convert_unicode_to_hex("E4FC"); end
	def womans_head;                                               return convert_unicode_to_hex("E4FA"); end
	def family;                                                    return convert_unicode_to_hex("E501"); end
	def couple;                                                    warning(get_this_method); return nil; end
	def police_officer;                                            return convert_unicode_to_hex("E5DD"); end
	def woman_with_bunny_ears;                                     return convert_unicode_to_hex("EADB"); end
	def bride_with_veil;                                           return convert_unicode_to_hex("EAE9"); end
	def western_person;                                            return convert_unicode_to_hex("EB13"); end
	def man_with_gua_pi_mao;                                       return convert_unicode_to_hex("EB14"); end
	def man_with_turban;                                           return convert_unicode_to_hex("EB15"); end
	def older_man;                                                 return convert_unicode_to_hex("EB16"); end
	def older_woman;                                               return convert_unicode_to_hex("EB17"); end
	def baby;                                                      return convert_unicode_to_hex("EB18"); end
	def construction_worker;                                       return convert_unicode_to_hex("EB19"); end

	def princess;                                                  return convert_unicode_to_hex("EB1A"); end
	def ogre;                                                      return convert_unicode_to_hex("EB44"); end
	def goblin;                                                    return convert_unicode_to_hex("EB45"); end
	def ghost;                                                     return convert_unicode_to_hex("E4CB"); end
	def cherub;                                                    return convert_unicode_to_hex("E5BF"); end
	def extraterrestrial_alien;                                    return convert_unicode_to_hex("E50E"); end
	def alien_monster;                                             return convert_unicode_to_hex("E4EC"); end
	def imp;                                                       return convert_unicode_to_hex("E4EF"); end
	def skull;                                                     return convert_unicode_to_hex("E4F8"); end

	def information_desk_person;                                   warning(get_this_method); return nil; end
	def guardsman;                                                 warning(get_this_method); return nil; end
	def dancer;                                                    return convert_unicode_to_hex("EB1C"); end

	def dog_face;                                                  return convert_unicode_to_hex("E4E1"); end
	def cat_face;                                                  return convert_unicode_to_hex("E4DB"); end
	def snail;                                                     return convert_unicode_to_hex("EB7E"); end
	def baby_chick;                                                return convert_unicode_to_hex("E4E0"); end
	def front_facing_baby_chick;                                   return convert_unicode_to_hex("EB76"); end
	def hatching_chick;                                            return convert_unicode_to_hex("E5DB"); end
	def penguin;                                                   return convert_unicode_to_hex("E4DC"); end
	def fish;                                                      return convert_unicode_to_hex("E49A"); end
	def horse_face;                                                return convert_unicode_to_hex("E4D8"); end
	def pig_face;                                                  return convert_unicode_to_hex("E4DE"); end
	def tiger_face;                                                return convert_unicode_to_hex("E5C0"); end
	def bear_face;                                                 return convert_unicode_to_hex("E5C1"); end
	def mouse_face;                                                return convert_unicode_to_hex("E5C2"); end
	def spouting_whale;                                            return convert_unicode_to_hex("E470"); end
	def monkey_face;                                               return convert_unicode_to_hex("E4D9"); end
	def octopus;                                                   return convert_unicode_to_hex("E5C7"); end
	def spiral_shell;                                              return convert_unicode_to_hex("EAEC"); end
	def dolphin;                                                   return convert_unicode_to_hex("EB1B"); end
	def bird;                                                      return convert_unicode_to_hex("E4E0"); end
	def tropical_fish;                                             return convert_unicode_to_hex("EB1D"); end
	def hamster_face;                                              warning(get_this_method); return nil; end
	def bug;                                                       return convert_unicode_to_hex("EB1E"); end
	def elephant;                                                  return convert_unicode_to_hex("EB1F"); end
	def koala;                                                     return convert_unicode_to_hex("EB20"); end
	def monkey;                                                    return convert_unicode_to_hex("E4D9"); end
	def sheep;                                                     return convert_unicode_to_hex("E48F"); end
	def wolf_face;                                                 return convert_unicode_to_hex("E4E1"); end
	def cow_face;                                                  return convert_unicode_to_hex("EB21"); end
	def rabbit_face;                                               return convert_unicode_to_hex("E4D7"); end
	def snake;                                                     return convert_unicode_to_hex("EB22"); end
	def chicken;                                                   return convert_unicode_to_hex("EB23"); end
	def boar;                                                      return convert_unicode_to_hex("EB24"); end
	def camel;                                                     return convert_unicode_to_hex("EB25"); end
	def frog_face;                                                 return convert_unicode_to_hex("E4DA"); end
	def poodle;                                                    return convert_unicode_to_hex("E4DF"); end
	def blowfish;                                                  return convert_unicode_to_hex("E4D3"); end
	def ant;                                                       return convert_unicode_to_hex("E4DD"); end
	def paw_prints;                                                return convert_unicode_to_hex("E4EE"); end
	def turtle;                                                    return convert_unicode_to_hex("E5D4"); end
	def dragon_face;                                               return convert_unicode_to_hex("EB3F"); end
	def panda_face;                                                return convert_unicode_to_hex("EB46"); end
	def pig_nose;                                                  return convert_unicode_to_hex("EB48"); end
	def honeybee;                                                  return convert_unicode_to_hex("EB57"); end
	def ladybug;                                                   return convert_unicode_to_hex("EB58"); end


	def angry_face;                                                return convert_unicode_to_hex("E472"); end
	def anguished_face;                                            return convert_unicode_to_hex("EB67"); end
	def astonished_face;                                           return convert_unicode_to_hex("EACA"); end
	def disappointed_face;                                         return convert_unicode_to_hex("EAC0"); end
	def dizzy_face;                                                return convert_unicode_to_hex("E5AE"); end
	def exasperated_face;                                          return convert_unicode_to_hex("EACB"); end
	def expressionless_face;                                       return convert_unicode_to_hex("EAC9"); end
	def face_with_heart_shaped_eyes;                               return convert_unicode_to_hex("E5C4"); end
	def face_with_look_of_triumph;                                 return convert_unicode_to_hex("EAC1"); end
	def winking_face_with_stuck_out_tongue;                        return convert_unicode_to_hex("E4E7"); end
	def face_with_stuck_out_tongue;                                return convert_unicode_to_hex("E4E7"); end
	def face_savoring_delicious_food;                              return convert_unicode_to_hex("EACD"); end
	def face_throwing_a_kiss;                                      return convert_unicode_to_hex("EACF"); end
	def face_kissing;                                              return convert_unicode_to_hex("EACE"); end
	def face_with_mask;                                            return convert_unicode_to_hex("EAC7"); end
	def flushed_face;                                              return convert_unicode_to_hex("EAC8"); end
	def happy_face_with_open_mouth;                                return convert_unicode_to_hex("E471"); end
	def happy_face_with_open_mouth_and_cold_sweat;                 return convert_unicode_to_hex("E471"); end
	def happy_face_with_open_mouth_and_closed_eyes;                return convert_unicode_to_hex("EAC5"); end
	def happy_face_with_grin;                                      return convert_unicode_to_hex("EB80"); end
	def happy_and_crying_face;                                     return convert_unicode_to_hex("EB64"); end
	def happy_face_with_wide_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("EACD"); end
	def white_smiling_face;                                        return convert_unicode_to_hex("E4FB"); end
	def happy_face_with_open_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("E471"); end
	def crying_face;                                               return convert_unicode_to_hex("EB69"); end
	def loudly_crying_face;                                        return convert_unicode_to_hex("E473"); end
	def fearful_face;                                              return convert_unicode_to_hex("EAC6"); end
	def persevering_face;                                          return convert_unicode_to_hex("EAC2"); end
	def pouting_face;                                              return convert_unicode_to_hex("EB5D"); end
	def relieved_face;                                             return convert_unicode_to_hex("EAC5"); end
	def confounded_face;                                           return convert_unicode_to_hex("EAC3"); end
	def pensive_face;                                              return convert_unicode_to_hex("EAC0"); end
	def face_screaming_in_fear;                                    return convert_unicode_to_hex("E5C5"); end
	def sleepy_face;                                               return convert_unicode_to_hex("EAC4"); end
	def smirking_face;                                             return convert_unicode_to_hex("EABF"); end
	def face_with_cold_sweat;                                      return convert_unicode_to_hex("E5C6"); end
	def disappointed_but_relieved_face;                            return convert_unicode_to_hex("E5C6"); end
	def tired_face;                                                return convert_unicode_to_hex("E474"); end
	def winking_face;                                              return convert_unicode_to_hex("E5C3"); end

	def cat_face_with_open_mouth;                                  return convert_unicode_to_hex("EB61"); end
	def happy_cat_face_with_grin;                                  return convert_unicode_to_hex("EB7F"); end
	def happy_and_crying_cat_face;                                 return convert_unicode_to_hex("EB63"); end
	def cat_face_kissing;                                          return convert_unicode_to_hex("EB60"); end
	def cat_face_with_heart_shaped_eyes;                           return convert_unicode_to_hex("EB65"); end
	def crying_cat_face;                                           return convert_unicode_to_hex("EB68"); end
	def pouting_cat_face;                                          return convert_unicode_to_hex("EB5E"); end
	def cat_face_with_tightly_closed_lips;                         return convert_unicode_to_hex("EB6A"); end
	def anguished_cat_face;                                        return convert_unicode_to_hex("EB66"); end

	def face_with_no_good_gesture;                                 return convert_unicode_to_hex("EAD7"); end
	def face_with_ok_gesture;                                      return convert_unicode_to_hex("EAD8"); end
	def person_bowing_deeply;                                      return convert_unicode_to_hex("EAD9"); end
	def see_no_evil_monkey;                                        return convert_unicode_to_hex("EB50"); end
	def speak_no_evil_monkey;                                      return convert_unicode_to_hex("EB51"); end
	def hear_no_evil_monkey;                                       return convert_unicode_to_hex("EB52"); end
	def person_raising_one_hand;                                   return convert_unicode_to_hex("EB85"); end
	def person_raising_both_hands_in_cheers;                       return convert_unicode_to_hex("EB86"); end
	def person_frowning;                                           return convert_unicode_to_hex("EB87"); end
	def person_with_pouting_face;                                  return convert_unicode_to_hex("EB88"); end
	def person_with_folded_hands;                                  return convert_unicode_to_hex("EAD2"); end


	def house_building;                                            return convert_unicode_to_hex("E4AB"); end
	def house_with_yard;                                           return convert_unicode_to_hex("EB09"); end
	def office_building;                                           return convert_unicode_to_hex("E4AD"); end
	def japanese_post_office;                                      return convert_unicode_to_hex("E5DE"); end
	def hospital;                                                  return convert_unicode_to_hex("E5DF"); end
	def bank;                                                      return convert_unicode_to_hex("E4AA"); end
	def atm;                                                       return convert_unicode_to_hex("E4A3"); end
	def hotel;                                                     return convert_unicode_to_hex("EA81"); end
	def love_hotel;                                                return convert_unicode_to_hex("EAF3"); end
	def convenience_store;                                         return convert_unicode_to_hex("E4A4"); end
	def school;                                                    return convert_unicode_to_hex("EA80"); end
	def church;                                                    return convert_unicode_to_hex("E5BB"); end
	def fountain;                                                  return convert_unicode_to_hex("E5CF"); end
	def department_store;                                          return convert_unicode_to_hex("EAF6"); end
	def japanese_castle;                                           return convert_unicode_to_hex("EAF7"); end
	def western_castle;                                            return convert_unicode_to_hex("EAF8"); end
	def factory;                                                   return convert_unicode_to_hex("EAF9"); end
	def anchor;                                                    return convert_unicode_to_hex("E4A9"); end
	def izakaya_lantern;                                           return convert_unicode_to_hex("E4BD"); end

	def emoji_compatibility_symbol_1;                              return convert_unicode_to_hex("E5BD"); end
	def emoji_compatibility_symbol_2;                              return convert_unicode_to_hex("E4C0"); end
	def emoji_compatibility_symbol_3;                              warning(get_this_method); return nil; end
	def emoji_compatibility_symbol_4;                              return convert_unicode_to_hex("E572"); end
	def emoji_compatibility_symbol_5;                              return convert_unicode_to_hex("EB6C"); end

	def wrench;                                                    return convert_unicode_to_hex("E587"); end
	def hammer;                                                    return convert_unicode_to_hex("E5CB"); end
	def nut_and_bolt;                                              return convert_unicode_to_hex("E581"); end

	def mans_shoe;                                                 return convert_unicode_to_hex("E5B7"); end
	def sneaker;                                                   return convert_unicode_to_hex("EB2B"); end
	def high_heeled_shoe;                                          return convert_unicode_to_hex("E51A"); end
	def womans_sandal;                                             return convert_unicode_to_hex("E51A"); end
	def womans_boots;                                              return convert_unicode_to_hex("EA9F"); end
	def eyeglasses;                                                return convert_unicode_to_hex("E4FE"); end
	def t_shirt;                                                   return convert_unicode_to_hex("E5B6"); end
	def jeans;                                                     return convert_unicode_to_hex("EB77"); end
	def crown;                                                     return convert_unicode_to_hex("E5C9"); end
	def necktie;                                                   return convert_unicode_to_hex("EA93"); end
	def womans_hat;                                                return convert_unicode_to_hex("EA9E"); end
	def dress;                                                     return convert_unicode_to_hex("EB6B"); end
	def kimono;                                                    return convert_unicode_to_hex("EAA3"); end
	def bikini;                                                    return convert_unicode_to_hex("EAA4"); end
	def womans_clothes;                                            return convert_unicode_to_hex("E50D"); end
	def purse;                                                     return convert_unicode_to_hex("E504"); end

	def money_bag;                                                 return convert_unicode_to_hex("E4C7"); end
	def currency_exchange;                                         warning(get_this_method); return nil; end
	def chart_with_upwards_trend_and_yen_symbol;                   return convert_unicode_to_hex("E5DC"); end
	def heavy_dollar_sign;                                         return convert_unicode_to_hex("E579"); end
	def credit_card;                                               return convert_unicode_to_hex("E57C"); end
	def banknote_with_yen_sign;                                    return convert_unicode_to_hex("E57D"); end
	def banknote_with_dollar_sign;                                 return convert_unicode_to_hex("E585"); end
	def money_with_wings;                                          return convert_unicode_to_hex("EB5B"); end

	def emoji_compatibility_symbol_6;                              return convert_unicode_to_hex("EB11"); end
	def emoji_compatibility_symbol_7;                              return convert_unicode_to_hex("EB0E"); end
	def emoji_compatibility_symbol_8;                              return convert_unicode_to_hex("E5D5"); end
	def emoji_compatibility_symbol_9;                              return convert_unicode_to_hex("EAFA"); end
	def emoji_compatibility_symbol_10;                             return convert_unicode_to_hex("EB10"); end
	def emoji_compatibility_symbol_11;                             return convert_unicode_to_hex("EB0F"); end
	def emoji_compatibility_symbol_12;                             return convert_unicode_to_hex("E4CC"); end
	def emoji_compatibility_symbol_13;                             return convert_unicode_to_hex("EB12"); end
	def emoji_compatibility_symbol_14;                             return convert_unicode_to_hex("E5D6"); end
	def emoji_compatibility_symbol_15;                             return convert_unicode_to_hex("E573"); end

	def camera;                                                    return convert_unicode_to_hex("E515"); end
	def handbag;                                                   return convert_unicode_to_hex("E49C"); end
	def pouch;                                                     warning(get_this_method); return nil; end
	def bell;                                                      return convert_unicode_to_hex("E512"); end
	def door;                                                      warning(get_this_method); return nil; end
	def dung;                                                      return convert_unicode_to_hex("E4F5"); end
	def pistol;                                                    return convert_unicode_to_hex("E50A"); end
	def fire;                                                      return convert_unicode_to_hex("E47B"); end
	def crystal_ball;                                              return convert_unicode_to_hex("EA8F"); end
	def six_pointed_star_with_middle_dot;                          return convert_unicode_to_hex("EA8F"); end
	def video_camera;                                              return convert_unicode_to_hex("E57E"); end
	def knife;                                                     return convert_unicode_to_hex("E57F"); end
	def flashlight;                                                return convert_unicode_to_hex("E583"); end
	def battery;                                                   return convert_unicode_to_hex("E584"); end
	def scroll;                                                    return convert_unicode_to_hex("E55F"); end
	def electric_plug;                                             return convert_unicode_to_hex("E589"); end
	def book_1;                                                    return convert_unicode_to_hex("E565"); end
	def book_2;                                                    return convert_unicode_to_hex("E566"); end
	def book_3;                                                    return convert_unicode_to_hex("E567"); end
	def vertical_closed_book;                                      return convert_unicode_to_hex("E568"); end
	def books;                                                     return convert_unicode_to_hex("E56F"); end
	def name_badge;                                                return convert_unicode_to_hex("E51D"); end

	def bath;                                                      return convert_unicode_to_hex("E5D8"); end
	def restroom;                                                  return convert_unicode_to_hex("E4A5"); end
	def toilet;                                                    return convert_unicode_to_hex("E4A5"); end
	def water_closet;                                              return convert_unicode_to_hex("E4A5"); end

	def syringe;                                                   return convert_unicode_to_hex("E510"); end
	def pill;                                                      return convert_unicode_to_hex("EA9A"); end

	def negative_squared_latin_capital_letter_a;                   return convert_unicode_to_hex("EB26"); end
	def negative_squared_latin_capital_letter_b;                   return convert_unicode_to_hex("EB27"); end
	def negative_squared_ab;                                       return convert_unicode_to_hex("EB29"); end
	def negative_squared_latin_capital_letter_o;                   return convert_unicode_to_hex("EB28"); end

	def ribbon;                                                    return convert_unicode_to_hex("E59F"); end
	def wrapped_present;                                           return convert_unicode_to_hex("E4CF"); end
	def birthday_cake;                                             return convert_unicode_to_hex("E5A0"); end
	def christmas_tree;                                            return convert_unicode_to_hex("E4C9"); end
	def santa_claus;                                               return convert_unicode_to_hex("EAF0"); end
	def crossed_flags;                                             return convert_unicode_to_hex("E5D9"); end
	def fireworks;                                                 return convert_unicode_to_hex("E5CC"); end
	def balloon;                                                   return convert_unicode_to_hex("EA9B"); end
	def party_popper;                                              return convert_unicode_to_hex("EA9C"); end
	def pine_decoration;                                           return convert_unicode_to_hex("EAE3"); end
	def girls_doll_festival;                                       return convert_unicode_to_hex("EAE4"); end
	def graduation_cap;                                            return convert_unicode_to_hex("EAE5"); end
	def school_satchel;                                            return convert_unicode_to_hex("EAE6"); end
	def carp_streamer;                                             return convert_unicode_to_hex("EAE7"); end
	def firework_sparkler;                                         return convert_unicode_to_hex("EAEB"); end
	def wind_chime;                                                return convert_unicode_to_hex("EAED"); end
	def jack_o_lantern;                                            return convert_unicode_to_hex("EAEE"); end
	def confetti_ball;                                             return convert_unicode_to_hex("E46F"); end
	def tanabata_tree;                                             return convert_unicode_to_hex("EB3D"); end
	def moon_viewing_ceremony;                                     return convert_unicode_to_hex("EAEF"); end

	def pager;                                                     return convert_unicode_to_hex("E59B"); end
	def black_telephone;                                           return convert_unicode_to_hex("E596"); end
	def telephone_receiver;                                        return convert_unicode_to_hex("E51E"); end
	def mobile_phone;                                              return convert_unicode_to_hex("E588"); end
	def phone_with_arrow;                                          return convert_unicode_to_hex("EB08"); end
	def memo;                                                      return convert_unicode_to_hex("EA92"); end
	def fax;                                                       return convert_unicode_to_hex("E520"); end
	def envelope;                                                  return convert_unicode_to_hex("E521"); end
	def incoming_envelope;                                         return convert_unicode_to_hex("E591"); end
	def envelope_with_arrow;                                       return convert_unicode_to_hex("EB62"); end
	def mailbox;                                                   return convert_unicode_to_hex("E51B"); end
	def mailbox_with_raised_flag;                                  return convert_unicode_to_hex("EB0A"); end
	def postbox;                                                   return convert_unicode_to_hex("E51B"); end
	def public_address_loudspeaker;                                return convert_unicode_to_hex("E511"); end
	def cheering_megaphone;                                        return convert_unicode_to_hex("E511"); end
	def satellite_antenna;                                         return convert_unicode_to_hex("E4A8"); end
	def speech_balloon;                                            return convert_unicode_to_hex("E4FD"); end
	def outbox_tray;                                               return convert_unicode_to_hex("E592"); end
	def inbox_tray;                                                return convert_unicode_to_hex("E593"); end
	def package;                                                   return convert_unicode_to_hex("E51F"); end

	def latin_capital_letters_input_symbol;                        return convert_unicode_to_hex("EAFD"); end
	def latin_small_letters_input_symbol;                          return convert_unicode_to_hex("EAFE"); end
	def numbers_input_symbol;                                      return convert_unicode_to_hex("EAFF"); end
	def symbols_input_symbol;                                      return convert_unicode_to_hex("EB00"); end
	def latin_letters_input_symbol;                                return convert_unicode_to_hex("EB55"); end

	def black_nib;                                                 return convert_unicode_to_hex("EB03"); end
	def seat;                                                      warning(get_this_method); return nil; end
	def computer;                                                  return convert_unicode_to_hex("E5B8"); end
	def pencil;                                                    return convert_unicode_to_hex("E4A1"); end
	def paperclip;                                                 return convert_unicode_to_hex("E4A0"); end
	def briefcase;                                                 return convert_unicode_to_hex("E5CE"); end
	def mini_disc;                                                 return convert_unicode_to_hex("E582"); end
	def floppy_disk;                                               return convert_unicode_to_hex("E562"); end
	def black_scissors;                                            return convert_unicode_to_hex("E516"); end
	def round_pushpin;                                             return convert_unicode_to_hex("E560"); end
	def page_with_curl;                                            return convert_unicode_to_hex("E561"); end
	def page_facing_up;                                            return convert_unicode_to_hex("E569"); end
	def calendar;                                                  return convert_unicode_to_hex("E563"); end
	def file_folder;                                               return convert_unicode_to_hex("E58F"); end
	def open_file_folder;                                          return convert_unicode_to_hex("E590"); end
	def notebook;                                                  return convert_unicode_to_hex("E56B"); end
	def open_book;                                                 return convert_unicode_to_hex("E49F"); end
	def notebook_with_decorative_cover;                            return convert_unicode_to_hex("E49D"); end
	def clipboard;                                                 return convert_unicode_to_hex("E564"); end
	def tear_off_calendar;                                         return convert_unicode_to_hex("E56A"); end
	def bar_chart;                                                 return convert_unicode_to_hex("E574"); end
	def chart_with_upwards_trend;                                  return convert_unicode_to_hex("E575"); end
	def chart_with_downwards_trend;                                return convert_unicode_to_hex("E576"); end
	def card_index;                                                return convert_unicode_to_hex("E56C"); end
	def pushpin;                                                   return convert_unicode_to_hex("E56D"); end
	def ledger;                                                    return convert_unicode_to_hex("E56E"); end
	def straight_ruler;                                            return convert_unicode_to_hex("E570"); end
	def triangular_ruler;                                          return convert_unicode_to_hex("E4A2"); end
	def bookmark_tabs;                                             return convert_unicode_to_hex("EB0B"); end

	def footprints;                                                return convert_unicode_to_hex("EB2A"); end


	def running_shirt_with_sash;                                   warning(get_this_method); return nil; end
	def baseball;                                                  return convert_unicode_to_hex("E4BA"); end
	def flag_in_hole;                                              return convert_unicode_to_hex("E599"); end
	def tennis;                                                    return convert_unicode_to_hex("E4B7"); end
	def soccer_ball;                                               return convert_unicode_to_hex("E4B6"); end
	def skiing;                                                    return convert_unicode_to_hex("EAAC"); end
	def basketball;                                                return convert_unicode_to_hex("E59A"); end
	def checkered_flag;                                            return convert_unicode_to_hex("E4B9"); end
	def snowboarder;                                               return convert_unicode_to_hex("E4B8"); end
	def runner;                                                    return convert_unicode_to_hex("E46B"); end
	def surfer;                                                    return convert_unicode_to_hex("EB41"); end
	def trophy;                                                    return convert_unicode_to_hex("E5D3"); end
	def horse_racing;                                              return convert_unicode_to_hex("E4D8"); end
	def american_football;                                         return convert_unicode_to_hex("E4BB"); end
	def swimmer;                                                   return convert_unicode_to_hex("EADE"); end

	def train;                                                     return convert_unicode_to_hex("E4B5"); end
	def subway;                                                    return convert_unicode_to_hex("E5BC"); end
	def circled_latin_capital_letter_m;                            return convert_unicode_to_hex("E5BC"); end
	def high_speed_train;                                          return convert_unicode_to_hex("E4B0"); end
	def high_speed_train_with_bullet_nose;                         return convert_unicode_to_hex("E4B0"); end
	def automobile_1;                                              return convert_unicode_to_hex("E4B1"); end
	def recreational_vehicle;                                      return convert_unicode_to_hex("E4B1"); end
	def bus_2;                                                     return convert_unicode_to_hex("E4AF"); end
	def bus_stop;                                                  return convert_unicode_to_hex("E4A7"); end
	def ship;                                                      return convert_unicode_to_hex("EA82"); end
	def airplane;                                                  return convert_unicode_to_hex("E4B3"); end
	def sailboat;                                                  return convert_unicode_to_hex("E4B4"); end
	def bicycle;                                                   return convert_unicode_to_hex("E4AE"); end
	def station;                                                   return convert_unicode_to_hex("EB6D"); end
	def rocket;                                                    return convert_unicode_to_hex("E5C8"); end
	def speedboat;                                                 return convert_unicode_to_hex("E4B4"); end
	def taxi_1;                                                    return convert_unicode_to_hex("E4B1"); end
	def pedestrian;                                                return convert_unicode_to_hex("EB72"); end
	def truck;                                                     return convert_unicode_to_hex("E4B2"); end
	def fire_engine;                                               return convert_unicode_to_hex("EADF"); end
	def ambulance;                                                 return convert_unicode_to_hex("EAE0"); end
	def police_car_1;                                              return convert_unicode_to_hex("EAE1"); end

	def fuel_pump;                                                 return convert_unicode_to_hex("E571"); end
	def negative_squared_latin_capital_letter_p;                   return convert_unicode_to_hex("E4A6"); end

	def horizontal_traffic_light;                                  return convert_unicode_to_hex("E46A"); end
	def construction_sign;                                         return convert_unicode_to_hex("E5D7"); end
	def police_cars_revolving_light;                               return convert_unicode_to_hex("EB73"); end

	def hot_springs;                                               return convert_unicode_to_hex("E4BC"); end
	def tent;                                                      return convert_unicode_to_hex("E5D0"); end
	def carousel_horse;                                            warning(get_this_method); return nil; end
	def ferris_wheel;                                              return convert_unicode_to_hex("E46D"); end
	def roller_coaster;                                            return convert_unicode_to_hex("EAE2"); end
	def fishing;                                                   return convert_unicode_to_hex("EB42"); end
	def microphone;                                                return convert_unicode_to_hex("E503"); end
	def movies;                                                    return convert_unicode_to_hex("E517"); end
	def cinema;                                                    return convert_unicode_to_hex("E517"); end
	def headphone;                                                 return convert_unicode_to_hex("E508"); end
	def art;                                                       return convert_unicode_to_hex("E59C"); end
	def top_hat;                                                   return convert_unicode_to_hex("EAF5"); end
	def event;                                                     return convert_unicode_to_hex("E59E"); end
	def ticket;                                                    return convert_unicode_to_hex("E49E"); end
	def movie_shooting_clapboard;                                  return convert_unicode_to_hex("E4BE"); end
	def performing_arts;                                           return convert_unicode_to_hex("E59D"); end

	def video_game;                                                return convert_unicode_to_hex("E4C6"); end
	def mahjong_tile_red_dragon;                                   return convert_unicode_to_hex("E5D1"); end
	def direct_hit;                                                return convert_unicode_to_hex("E4C5"); end
	def slot_machine;                                              return convert_unicode_to_hex("E46E"); end
	def billiards;                                                 return convert_unicode_to_hex("EADD"); end
	def game_die;                                                  return convert_unicode_to_hex("E4C8"); end
	def bowling;                                                   return convert_unicode_to_hex("EB43"); end
	def flower_playing_cards;                                      return convert_unicode_to_hex("EB6E"); end
	def playing_card_black_joker;                                  return convert_unicode_to_hex("EB6F"); end

	def musical_note;                                              return convert_unicode_to_hex("E5BE"); end
	def multiple_musical_notes;                                    return convert_unicode_to_hex("E505"); end
	def saxophone;                                                 warning(get_this_method); return nil; end
	def guitar;                                                    return convert_unicode_to_hex("E506"); end
	def musical_keyboard;                                          return convert_unicode_to_hex("EB40"); end
	def trumpet;                                                   return convert_unicode_to_hex("EADC"); end
	def violin;                                                    return convert_unicode_to_hex("E507"); end
	def musical_score;                                             return convert_unicode_to_hex("EACC"); end
	def part_alternation_mark;                                     warning(get_this_method); return nil; end

	def television;                                                return convert_unicode_to_hex("E502"); end
	def optical_disk;                                              return convert_unicode_to_hex("E50C"); end
	def dvd;                                                       return convert_unicode_to_hex("E50C"); end
	def radio;                                                     return convert_unicode_to_hex("E5B9"); end
	def video_cassette_tape;                                       return convert_unicode_to_hex("E580"); end
	def speaker_with_three_sound_waves;                            return convert_unicode_to_hex("E511"); end
	def newspaper;                                                 return convert_unicode_to_hex("E58B"); end

	def kiss_mark;                                                 return convert_unicode_to_hex("E4EB"); end
	def love_letter;                                               return convert_unicode_to_hex("EB78"); end
	def ring;                                                      return convert_unicode_to_hex("E514"); end
	def gem_stone;                                                 return convert_unicode_to_hex("E514"); end
	def kiss;                                                      return convert_unicode_to_hex("E5CA"); end
	def bouquet;                                                   return convert_unicode_to_hex("EA95"); end
	def couple_with_heart;                                         return convert_unicode_to_hex("EADA"); end
	def wedding;                                                   return convert_unicode_to_hex("E5BB"); end

	def hash_key;                                                  return convert_unicode_to_hex("EB84"); end
	def keycap_1;                                                  return convert_unicode_to_hex("E522"); end
	def keycap_2;                                                  return convert_unicode_to_hex("E523"); end
	def keycap_3;                                                  return convert_unicode_to_hex("E524"); end
	def keycap_4;                                                  return convert_unicode_to_hex("E525"); end
	def keycap_5;                                                  return convert_unicode_to_hex("E526"); end
	def keycap_6;                                                  return convert_unicode_to_hex("E527"); end
	def keycap_7;                                                  return convert_unicode_to_hex("E528"); end
	def keycap_8;                                                  return convert_unicode_to_hex("E529"); end
	def keycap_9;                                                  return convert_unicode_to_hex("E52A"); end
	def keycap_0;                                                  return convert_unicode_to_hex("E5AC"); end
	def keycap_ten;                                                return convert_unicode_to_hex("E52B"); end
	def antenna_with_bars;                                         return convert_unicode_to_hex("EA84"); end
	def vibration_mode;                                            return convert_unicode_to_hex("EA90"); end
	def mobile_phone_off;                                          return convert_unicode_to_hex("EA91"); end


	def hamburger;                                                 return convert_unicode_to_hex("E4D6"); end
	def rice_ball;                                                 return convert_unicode_to_hex("E4D5"); end
	def shortcake;                                                 return convert_unicode_to_hex("E4D0"); end
	def steaming_bowl;                                             return convert_unicode_to_hex("E5B4"); end
	def bread;                                                     return convert_unicode_to_hex("EAAF"); end
	def cooking;                                                   return convert_unicode_to_hex("E4D1"); end
	def soft_ice_cream;                                            return convert_unicode_to_hex("EAB0"); end
	def french_fries;                                              return convert_unicode_to_hex("EAB1"); end
	def dumpling;                                                  return convert_unicode_to_hex("EAB2"); end
	def rice_cracker;                                              return convert_unicode_to_hex("EAB3"); end
	def cooked_rice;                                               return convert_unicode_to_hex("EAB4"); end
	def spaghetti;                                                 return convert_unicode_to_hex("EAB5"); end
	def curry_and_rice;                                            return convert_unicode_to_hex("EAB6"); end
	def seafood_casserole;                                         return convert_unicode_to_hex("EAB7"); end
	def sushi;                                                     return convert_unicode_to_hex("EAB8"); end
	def lunchbox;                                                  return convert_unicode_to_hex("EABD"); end
	def pot_of_food;                                               return convert_unicode_to_hex("EABE"); end
	def shaved_ice;                                                return convert_unicode_to_hex("EAEA"); end
	def meat_on_bone;                                              return convert_unicode_to_hex("E4C4"); end
	def fish_cake_with_swirl_design;                               return convert_unicode_to_hex("E4ED"); end
	def roasted_sweet_potato;                                      return convert_unicode_to_hex("EB3A"); end
	def slice_of_pizza;                                            return convert_unicode_to_hex("EB3B"); end
	def poultry_leg;                                               return convert_unicode_to_hex("EB3C"); end
	def ice_cream;                                                 return convert_unicode_to_hex("EB4A"); end
	def doughnut;                                                  return convert_unicode_to_hex("EB4B"); end
	def cookie;                                                    return convert_unicode_to_hex("EB4C"); end
	def chocolate_bar;                                             return convert_unicode_to_hex("EB4D"); end
	def candy;                                                     return convert_unicode_to_hex("EB4E"); end
	def lollipop;                                                  return convert_unicode_to_hex("EB4F"); end
	def custard;                                                   return convert_unicode_to_hex("EB56"); end
	def honey_pot;                                                 return convert_unicode_to_hex("EB59"); end
	def fried_shrimp;                                              return convert_unicode_to_hex("EB70"); end
	def fork_and_knife;                                            return convert_unicode_to_hex("E4AC"); end

	def hot_beverage;                                              return convert_unicode_to_hex("E597"); end
	def cocktail_glass;                                            return convert_unicode_to_hex("E4C2"); end
	def beer_mug;                                                  return convert_unicode_to_hex("E4C3"); end
	def teacup_without_handle;                                     return convert_unicode_to_hex("EAAE"); end
	def sake_bottle_and_cup;                                       return convert_unicode_to_hex("EA97"); end
	def wine_glass;                                                return convert_unicode_to_hex("E4C1"); end
	def clinking_beer_mugs;                                        return convert_unicode_to_hex("EA98"); end
	def tropical_drink;                                            return convert_unicode_to_hex("EB3E"); end


	def north_east_arrow;                                          return convert_unicode_to_hex("E555"); end
	def south_east_arrow;                                          return convert_unicode_to_hex("E54D"); end
	def north_west_arrow;                                          return convert_unicode_to_hex("E54C"); end
	def south_west_arrow;                                          return convert_unicode_to_hex("E556"); end
	def arrow_pointing_rightwards_then_curving_upwards;            return convert_unicode_to_hex("EB2D"); end
	def arrow_pointing_rightwards_then_curving_downwards;          return convert_unicode_to_hex("EB2E"); end
	def left_right_arrow;                                          return convert_unicode_to_hex("EB7A"); end
	def up_down_arrow;                                             return convert_unicode_to_hex("EB7B"); end
	def upwards_black_arrow;                                       return convert_unicode_to_hex("E53F"); end
	def downwards_black_arrow;                                     return convert_unicode_to_hex("E540"); end
	def black_rightwards_arrow;                                    return convert_unicode_to_hex("E552"); end
	def leftwards_black_arrow;                                     return convert_unicode_to_hex("E553"); end

	def black_right_pointing_triangle;                             return convert_unicode_to_hex("E52E"); end
	def black_left_pointing_triangle;                              return convert_unicode_to_hex("E52D"); end
	def black_right_pointing_double_triangle;                      return convert_unicode_to_hex("E530"); end
	def black_left_pointing_double_triangle;                       return convert_unicode_to_hex("E52F"); end
	def black_up_pointing_double_triangle;                         return convert_unicode_to_hex("E545"); end
	def black_down_pointing_double_triangle;                       return convert_unicode_to_hex("E544"); end
	def up_pointing_triangle_1;                                    return convert_unicode_to_hex("E55A"); end
	def down_pointing_triangle_1;                                  return convert_unicode_to_hex("E55B"); end
	def up_pointing_small_triangle_1;                              return convert_unicode_to_hex("E543"); end
	def down_pointing_small_triangle_1;                            return convert_unicode_to_hex("E542"); end

	def heavy_exclamation_mark_ornament;                           return convert_unicode_to_hex("E482"); end
	def exclamation_question_mark;                                 return convert_unicode_to_hex("EB2F"); end
	def double_exclamation_mark;                                   return convert_unicode_to_hex("EB30"); end
	def black_question_mark_ornament;                              return convert_unicode_to_hex("E483"); end
	def white_question_mark_ornament;                              return convert_unicode_to_hex("E483"); end
	def white_exclamation_mark_ornament;                           return convert_unicode_to_hex("E482"); end

	def wavy_dash;                                                 warning(get_this_method); return nil; end
	def looped_length_mark;                                        return convert_unicode_to_hex("EB31"); end

	def heavy_black_heart;                                         return convert_unicode_to_hex("E595"); end
	def beating_heart;                                             return convert_unicode_to_hex("EB75"); end
	def broken_heart;                                              return convert_unicode_to_hex("E477"); end
	def two_hearts;                                                return convert_unicode_to_hex("E478"); end
	def sparkling_heart;                                           return convert_unicode_to_hex("EAA6"); end
	def growing_heart;                                             return convert_unicode_to_hex("EB75"); end
	def heart_with_arrow;                                          return convert_unicode_to_hex("E4EA"); end
	def heart_1;                                                   return convert_unicode_to_hex("EAA7"); end
	def heart_2;                                                   return convert_unicode_to_hex("EAA8"); end
	def heart_3;                                                   return convert_unicode_to_hex("EAA9"); end
	def heart_4;                                                   return convert_unicode_to_hex("EAAA"); end
	def heart_with_ribbon;                                         return convert_unicode_to_hex("EB54"); end
	def revolving_hearts;                                          return convert_unicode_to_hex("E5AF"); end
	def heart_decoration;                                          return convert_unicode_to_hex("E595"); end

	def black_heart_suit;                                          return convert_unicode_to_hex("EAA5"); end
	def black_spade_suit;                                          return convert_unicode_to_hex("E5A1"); end
	def black_diamond_suit;                                        return convert_unicode_to_hex("E5A2"); end
	def black_club_suit;                                           return convert_unicode_to_hex("E5A3"); end

	def smoking_symbol;                                            return convert_unicode_to_hex("E47D"); end
	def no_smoking_symbol;                                         return convert_unicode_to_hex("E47E"); end
	def wheelchair_symbol;                                         return convert_unicode_to_hex("E47F"); end
	def japanese_symbol_for_beginner;                              return convert_unicode_to_hex("E480"); end
	def trident_emblem;                                            return convert_unicode_to_hex("E5C9"); end
	def triangular_flag_on_post;                                   return convert_unicode_to_hex("EB2C"); end
	def warning_sign;                                              return convert_unicode_to_hex("E481"); end
	def no_entry;                                                  return convert_unicode_to_hex("E484"); end
	def black_universal_recycling_symbol;                          return convert_unicode_to_hex("EB79"); end
	def mens_symbol;                                               warning(get_this_method); return nil; end
	def womens_symbol;                                             warning(get_this_method); return nil; end
	def baby_symbol;                                               return convert_unicode_to_hex("EB18"); end
	def heavy_large_circle;                                        return convert_unicode_to_hex("EAAD"); end
	def cross_mark;                                                return convert_unicode_to_hex("E550"); end
	def negative_squared_cross_mark;                               return convert_unicode_to_hex("E551"); end
	def no_entry_sign;                                             return convert_unicode_to_hex("E541"); end
	def heavy_check_mark;                                          return convert_unicode_to_hex("E557"); end
	def white_heavy_check_mark;                                    return convert_unicode_to_hex("E55E"); end
	def link_symbol;                                               return convert_unicode_to_hex("E58A"); end
	def em_space;                                                  return convert_unicode_to_hex("E58C"); end
	def en_space;                                                  return convert_unicode_to_hex("E58D"); end
	def four_per_em_space;                                         return convert_unicode_to_hex("E58E"); end

	def free_sign;                                                 return convert_unicode_to_hex("E578"); end
	def no_one_under_eighteen_sign;                                return convert_unicode_to_hex("EA83"); end
	def ok_sign;                                                   return convert_unicode_to_hex("E5AD"); end
	def no_good_sign;                                              warning(get_this_method); return nil; end
	def copyright_sign;                                            return convert_unicode_to_hex("E558"); end
	def registered_sign;                                           return convert_unicode_to_hex("E559"); end
	def trade_mark_sign;                                           return convert_unicode_to_hex("E54E"); end
	def vs_sign;                                                   return convert_unicode_to_hex("E5D2"); end
	def new_sign;                                                  return convert_unicode_to_hex("E5B5"); end
	def up_sign;                                                   return convert_unicode_to_hex("E50F"); end
	def cool_sign;                                                 return convert_unicode_to_hex("EA85"); end
	def top_with_up_pointing_triangle_sign;                        warning(get_this_method); return nil; end
	def information_source;                                        return convert_unicode_to_hex("E533"); end
	def sos_sign;                                                  return convert_unicode_to_hex("E4E8"); end

	def squared_katakana_koko;                                     warning(get_this_method); return nil; end
	def squared_katakana_sa;                                       return convert_unicode_to_hex("EA87"); end

	def squared_cjk_unified_ideograph_7981;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_7a7a;                        return convert_unicode_to_hex("EA8A"); end
	def squared_cjk_unified_ideograph_5408;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_6e80;                        return convert_unicode_to_hex("EA89"); end
	def squared_cjk_unified_ideograph_6709;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_7121;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_6708;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_7533;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_5272;                        return convert_unicode_to_hex("EA86"); end
	def squared_cjk_unified_ideograph_6307;                        return convert_unicode_to_hex("EA8B"); end
	def squared_cjk_unified_ideograph_55b6;                        return convert_unicode_to_hex("EA8C"); end

	def circled_ideograph_secret;                                  return convert_unicode_to_hex("E4F1"); end
	def circled_ideograph_congratulation;                          return convert_unicode_to_hex("EA99"); end
	def circled_ideograph_advantage;                               return convert_unicode_to_hex("E4F7"); end
	def circled_ideograph_accept;                                  return convert_unicode_to_hex("EB01"); end

	def heavy_plus_sign;                                           return convert_unicode_to_hex("E53C"); end
	def heavy_minus_sign;                                          return convert_unicode_to_hex("E53D"); end
	def heavy_multiplication_x;                                    return convert_unicode_to_hex("E54F"); end
	def heavy_division_sign;                                       return convert_unicode_to_hex("E554"); end

	def diamond_shape_with_a_dot_inside;                           warning(get_this_method); return nil; end
	def electric_light_bulb;                                       return convert_unicode_to_hex("E476"); end
	def anger_sign;                                                return convert_unicode_to_hex("E4E5"); end
	def bomb;                                                      return convert_unicode_to_hex("E47A"); end
	def sleeping_sign;                                             return convert_unicode_to_hex("E475"); end
	def collision_symbol;                                          return convert_unicode_to_hex("E5B0"); end
	def splashing_sweat;                                           return convert_unicode_to_hex("E5B1"); end
	def drip;                                                      return convert_unicode_to_hex("E4E6"); end
	def dash_symbol;                                               return convert_unicode_to_hex("E4F4"); end
	def flexed_bicep;                                              return convert_unicode_to_hex("E4E9"); end
	def dizzy_symbol;                                              return convert_unicode_to_hex("EB5C"); end

	def sparkles;                                                  return convert_unicode_to_hex("EAAB"); end
	def eight_pointed_black_star;                                  return convert_unicode_to_hex("E479"); end
	def eight_spoked_asterisk;                                     return convert_unicode_to_hex("E53E"); end
	def medium_white_circle;                                       return convert_unicode_to_hex("E53A"); end
	def medium_black_circle;                                       return convert_unicode_to_hex("E53B"); end
	def large_circle_1;                                            return convert_unicode_to_hex("E54A"); end
	def large_circle_2;                                            return convert_unicode_to_hex("E54B"); end
	def black_rounded_square;                                      return convert_unicode_to_hex("E54B"); end
	def white_rounded_square;                                      return convert_unicode_to_hex("E54B"); end
	def white_medium_star;                                         return convert_unicode_to_hex("E48B"); end
	def glowing_star;                                              return convert_unicode_to_hex("E48B"); end
	def shooting_star;                                             return convert_unicode_to_hex("E468"); end
	def white_large_square;                                        return convert_unicode_to_hex("E548"); end
	def black_large_square;                                        return convert_unicode_to_hex("E549"); end
	def white_small_square;                                        return convert_unicode_to_hex("E531"); end
	def black_small_square;                                        return convert_unicode_to_hex("E532"); end
	def white_medium_small_square;                                 return convert_unicode_to_hex("E534"); end
	def black_medium_small_square;                                 return convert_unicode_to_hex("E535"); end
	def white_medium_square;                                       return convert_unicode_to_hex("E538"); end
	def black_medium_square;                                       return convert_unicode_to_hex("E539"); end
	def large_diamond_1;                                           return convert_unicode_to_hex("E546"); end
	def large_diamond_2;                                           return convert_unicode_to_hex("E547"); end
	def small_diamond_1;                                           return convert_unicode_to_hex("E536"); end
	def small_diamond_2;                                           return convert_unicode_to_hex("E537"); end
	def sparkle;                                                   return convert_unicode_to_hex("E46C"); end

	def white_flower;                                              return convert_unicode_to_hex("E4F0"); end
	def hundred_points_symbol;                                     return convert_unicode_to_hex("E4F2"); end

	def identification_sign;                                       return convert_unicode_to_hex("EA88"); end
	def clear_sign;                                                return convert_unicode_to_hex("E5AB"); end
	def leftwards_arrow_with_hook;                                 return convert_unicode_to_hex("E55D"); end
	def rightwards_arrow_with_hook;                                return convert_unicode_to_hex("E55C"); end
	def left_pointing_magnifying_glass;                            return convert_unicode_to_hex("E518"); end
	def right_pointing_magnifying_glass;                           return convert_unicode_to_hex("EB05"); end
	def lock;                                                      return convert_unicode_to_hex("E51C"); end
	def open_lock;                                                 return convert_unicode_to_hex("E51C"); end
	def lock_with_ink_pen;                                         return convert_unicode_to_hex("EB0C"); end
	def closed_lock_with_key;                                      return convert_unicode_to_hex("EAFC"); end
	def key;                                                       return convert_unicode_to_hex("E519"); end
	def ballot_box_with_check;                                     return convert_unicode_to_hex("EB02"); end
	def radio_button;                                              return convert_unicode_to_hex("EB04"); end
	def back_with_left_arrow_above;                                return convert_unicode_to_hex("EB06"); end
	def bookmark;                                                  return convert_unicode_to_hex("EB07"); end
	def double_clockwise_open_circle_arrows;                       return convert_unicode_to_hex("EB0D"); end
	def e_mail_symbol;                                             return convert_unicode_to_hex("EB71"); end

	def raised_fist;                                               return convert_unicode_to_hex("EB83"); end
	def raised_hand;                                               return convert_unicode_to_hex("E5A7"); end
	def victory_hand;                                              return convert_unicode_to_hex("E5A6"); end

	def fisted_hand;                                               return convert_unicode_to_hex("E4F3"); end
	def thumbs_up_sign;                                            return convert_unicode_to_hex("E4F9"); end
	def white_up_pointing_index;                                   return convert_unicode_to_hex("E4F6"); end
	def white_up_pointing_backhand_index;                          return convert_unicode_to_hex("EA8D"); end
	def white_down_pointing_backhand_index;                        return convert_unicode_to_hex("EA8E"); end
	def white_left_pointing_backhand_index;                        return convert_unicode_to_hex("E4FF"); end
	def white_right_pointing_backhand_index;                       return convert_unicode_to_hex("E500"); end
	def waving_hand;                                               return convert_unicode_to_hex("EAD6"); end
	def clapping_hands;                                            return convert_unicode_to_hex("EAD3"); end
	def ok_hand_sign;                                              return convert_unicode_to_hex("EAD4"); end
	def thumbs_down_sign;                                          return convert_unicode_to_hex("EAD5"); end
	def open_hands;                                                return convert_unicode_to_hex("EAD6"); end
end

class Softbank < Emoji
	def black_sun_with_rays;                                       return convert_unicode_to_hex("E04A"); end
	def cloud;                                                     return convert_unicode_to_hex("E049"); end
	def umbrella_with_rain_drops;                                  return convert_unicode_to_hex("E04B"); end
	def snowman_without_snow;                                      return convert_unicode_to_hex("E048"); end
	def high_voltage_sign;                                         return convert_unicode_to_hex("E13D"); end
	def cyclone;                                                   return convert_unicode_to_hex("E443"); end
	def foggy;                                                     warning(get_this_method); return nil; end
	def closed_umbrella;                                           return convert_unicode_to_hex("E43C"); end
	def night_with_stars;                                          return convert_unicode_to_hex("E44B"); end
	def sunrise_over_mountains;                                    return convert_unicode_to_hex("E04D"); end
	def sunrise;                                                   return convert_unicode_to_hex("E449"); end
	def cityscape_at_dusk;                                         return convert_unicode_to_hex("E146"); end
	def sunset_over_buildings;                                     return convert_unicode_to_hex("E44A"); end
	def rainbow;                                                   return convert_unicode_to_hex("E44C"); end
	def snowflake;                                                 warning(get_this_method); return nil; end
	def sun_behind_cloud;                                          return convert_unicode_to_hex("E04A"); end
	def bridge_at_night;                                           return convert_unicode_to_hex("E44B"); end

	def new_moon_symbol;                                           warning(get_this_method); return nil; end
	def waxing_gibbous_moon_symbol;                                return convert_unicode_to_hex("E04C"); end
	def first_quarter_moon_symbol;                                 return convert_unicode_to_hex("E04C"); end
	def crescent_moon;                                             return convert_unicode_to_hex("E04C"); end
	def full_moon_symbol;                                          warning(get_this_method); return nil; end
	def first_quarter_moon_with_face;                              return convert_unicode_to_hex("E04C"); end

	def soon_with_right_arrow_above;                               warning(get_this_method); return nil; end
	def on_with_double_pointing_arrow_above;                       warning(get_this_method); return nil; end
	def end_with_left_arrow_above;                                 warning(get_this_method); return nil; end
	def hourglass_with_flowing_sand;                               warning(get_this_method); return nil; end
	def hourglass;                                                 warning(get_this_method); return nil; end
	def watch;                                                     warning(get_this_method); return nil; end
	def clock_face_one_oclock;                                     return convert_unicode_to_hex("E024"); end
	def clock_face_two_oclock;                                     return convert_unicode_to_hex("E025"); end
	def clock_face_three_oclock;                                   return convert_unicode_to_hex("E026"); end
	def clock_face_four_oclock;                                    return convert_unicode_to_hex("E027"); end
	def clock_face_five_oclock;                                    return convert_unicode_to_hex("E028"); end
	def clock_face_six_oclock;                                     return convert_unicode_to_hex("E029"); end
	def clock_face_seven_oclock;                                   return convert_unicode_to_hex("E02A"); end
	def clock_face_eight_oclock;                                   return convert_unicode_to_hex("E02B"); end
	def clock_face_nine_oclock;                                    return convert_unicode_to_hex("E02C"); end
	def clock_face_ten_oclock;                                     return convert_unicode_to_hex("E02D"); end
	def clock_face_eleven_oclock;                                  return convert_unicode_to_hex("E02E"); end
	def clock_face_twelve_oclock;                                  return convert_unicode_to_hex("E02F"); end

	def alarm_clock;                                               return convert_unicode_to_hex("E02D"); end

	def aries;                                                     return convert_unicode_to_hex("E23F"); end
	def taurus;                                                    return convert_unicode_to_hex("E240"); end
	def gemini;                                                    return convert_unicode_to_hex("E241"); end
	def cancer;                                                    return convert_unicode_to_hex("E242"); end
	def leo;                                                       return convert_unicode_to_hex("E243"); end
	def virgo;                                                     return convert_unicode_to_hex("E244"); end
	def libra;                                                     return convert_unicode_to_hex("E245"); end
	def scorpius;                                                  return convert_unicode_to_hex("E246"); end
	def sagittarius;                                               return convert_unicode_to_hex("E247"); end
	def capricorn;                                                 return convert_unicode_to_hex("E248"); end
	def aquarius;                                                  return convert_unicode_to_hex("E249"); end
	def pisces;                                                    return convert_unicode_to_hex("E24A"); end
	def ophiuchus;                                                 return convert_unicode_to_hex("E24B"); end

	def water_wave;                                                return convert_unicode_to_hex("E43E"); end
	def earth_globe_asia_australia;                                warning(get_this_method); return nil; end
	def volcano;                                                   warning(get_this_method); return nil; end
	def milky_way;                                                 return convert_unicode_to_hex("E44B"); end

	def four_leaf_clover;                                          return convert_unicode_to_hex("E110"); end
	def tulip;                                                     return convert_unicode_to_hex("E304"); end
	def seedling;                                                  return convert_unicode_to_hex("E110"); end
	def maple_leaf;                                                return convert_unicode_to_hex("E118"); end
	def cherry_blossom;                                            return convert_unicode_to_hex("E030"); end
	def rose;                                                      return convert_unicode_to_hex("E032"); end
	def fallen_leaf;                                               return convert_unicode_to_hex("E119"); end
	def leaf_fluttering_in_wind;                                   return convert_unicode_to_hex("E447"); end
	def hibiscus;                                                  return convert_unicode_to_hex("E303"); end
	def sunflower;                                                 return convert_unicode_to_hex("E305"); end
	def palm_tree;                                                 return convert_unicode_to_hex("E307"); end
	def cactus;                                                    return convert_unicode_to_hex("E308"); end
	def ear_of_rice;                                               return convert_unicode_to_hex("E444"); end
	def ear_of_maize;                                              warning(get_this_method); return nil; end
	def mushroom;                                                  warning(get_this_method); return nil; end
	def chestnut;                                                  warning(get_this_method); return nil; end
	def blossom;                                                   return convert_unicode_to_hex("E305"); end
	def herb;                                                      return convert_unicode_to_hex("E110"); end

	def cherries;                                                  warning(get_this_method); return nil; end
	def banana;                                                    warning(get_this_method); return nil; end
	def apple_1;                                                   return convert_unicode_to_hex("E345"); end
	def tangerine;                                                 return convert_unicode_to_hex("E346"); end
	def strawberry;                                                return convert_unicode_to_hex("E347"); end
	def watermelon;                                                return convert_unicode_to_hex("E348"); end
	def tomato;                                                    return convert_unicode_to_hex("E349"); end
	def aubergine;                                                 return convert_unicode_to_hex("E34A"); end
	def melon;                                                     warning(get_this_method); return nil; end
	def pineapple;                                                 warning(get_this_method); return nil; end
	def grapes;                                                    warning(get_this_method); return nil; end
	def peach;                                                     warning(get_this_method); return nil; end
	def apple_2;                                                   return convert_unicode_to_hex("E345"); end


	def eyes;                                                      return convert_unicode_to_hex("E419"); end
	def ear;                                                       return convert_unicode_to_hex("E41B"); end
	def nose;                                                      return convert_unicode_to_hex("E41A"); end
	def mouth;                                                     return convert_unicode_to_hex("E41C"); end
	def tongue;                                                    return convert_unicode_to_hex("E409"); end

	def lipstick;                                                  return convert_unicode_to_hex("E31C"); end
	def nail_care;                                                 return convert_unicode_to_hex("E31D"); end
	def face_massage;                                              return convert_unicode_to_hex("E31E"); end
	def haircut;                                                   return convert_unicode_to_hex("E31F"); end
	def barber_pole;                                               return convert_unicode_to_hex("E320"); end

	def bust_in_silhouette;                                        warning(get_this_method); return nil; end

	def boys_head;                                                 return convert_unicode_to_hex("E001"); end
	def girls_head;                                                return convert_unicode_to_hex("E002"); end
	def mans_head;                                                 return convert_unicode_to_hex("E004"); end
	def womans_head;                                               return convert_unicode_to_hex("E005"); end
	def family;                                                    warning(get_this_method); return nil; end
	def couple;                                                    return convert_unicode_to_hex("E428"); end
	def police_officer;                                            return convert_unicode_to_hex("E152"); end
	def woman_with_bunny_ears;                                     return convert_unicode_to_hex("E429"); end
	def bride_with_veil;                                           warning(get_this_method); return nil; end
	def western_person;                                            return convert_unicode_to_hex("E515"); end
	def man_with_gua_pi_mao;                                       return convert_unicode_to_hex("E516"); end
	def man_with_turban;                                           return convert_unicode_to_hex("E517"); end
	def older_man;                                                 return convert_unicode_to_hex("E518"); end
	def older_woman;                                               return convert_unicode_to_hex("E519"); end
	def baby;                                                      return convert_unicode_to_hex("E51A"); end
	def construction_worker;                                       return convert_unicode_to_hex("E51B"); end

	def princess;                                                  return convert_unicode_to_hex("E51C"); end
	def ogre;                                                      warning(get_this_method); return nil; end
	def goblin;                                                    warning(get_this_method); return nil; end
	def ghost;                                                     return convert_unicode_to_hex("E11B"); end
	def cherub;                                                    return convert_unicode_to_hex("E04E"); end
	def extraterrestrial_alien;                                    return convert_unicode_to_hex("E10C"); end
	def alien_monster;                                             return convert_unicode_to_hex("E12B"); end
	def imp;                                                       return convert_unicode_to_hex("E11A"); end
	def skull;                                                     return convert_unicode_to_hex("E11C"); end

	def information_desk_person;                                   return convert_unicode_to_hex("E253"); end
	def guardsman;                                                 return convert_unicode_to_hex("E51E"); end
	def dancer;                                                    return convert_unicode_to_hex("E51F"); end

	def dog_face;                                                  return convert_unicode_to_hex("E052"); end
	def cat_face;                                                  return convert_unicode_to_hex("E04F"); end
	def snail;                                                     warning(get_this_method); return nil; end
	def baby_chick;                                                return convert_unicode_to_hex("E523"); end
	def front_facing_baby_chick;                                   return convert_unicode_to_hex("E523"); end
	def hatching_chick;                                            return convert_unicode_to_hex("E523"); end
	def penguin;                                                   return convert_unicode_to_hex("E055"); end
	def fish;                                                      return convert_unicode_to_hex("E019"); end
	def horse_face;                                                return convert_unicode_to_hex("E01A"); end
	def pig_face;                                                  return convert_unicode_to_hex("E10B"); end
	def tiger_face;                                                return convert_unicode_to_hex("E050"); end
	def bear_face;                                                 return convert_unicode_to_hex("E051"); end
	def mouse_face;                                                return convert_unicode_to_hex("E053"); end
	def spouting_whale;                                            return convert_unicode_to_hex("E054"); end
	def monkey_face;                                               return convert_unicode_to_hex("E109"); end
	def octopus;                                                   return convert_unicode_to_hex("E10A"); end
	def spiral_shell;                                              return convert_unicode_to_hex("E441"); end
	def dolphin;                                                   return convert_unicode_to_hex("E520"); end
	def bird;                                                      return convert_unicode_to_hex("E521"); end
	def tropical_fish;                                             return convert_unicode_to_hex("E522"); end
	def hamster_face;                                              return convert_unicode_to_hex("E524"); end
	def bug;                                                       return convert_unicode_to_hex("E525"); end
	def elephant;                                                  return convert_unicode_to_hex("E526"); end
	def koala;                                                     return convert_unicode_to_hex("E527"); end
	def monkey;                                                    return convert_unicode_to_hex("E528"); end
	def sheep;                                                     return convert_unicode_to_hex("E529"); end
	def wolf_face;                                                 return convert_unicode_to_hex("E52A"); end
	def cow_face;                                                  return convert_unicode_to_hex("E52B"); end
	def rabbit_face;                                               return convert_unicode_to_hex("E52C"); end
	def snake;                                                     return convert_unicode_to_hex("E52D"); end
	def chicken;                                                   return convert_unicode_to_hex("E52E"); end
	def boar;                                                      return convert_unicode_to_hex("E52F"); end
	def camel;                                                     return convert_unicode_to_hex("E530"); end
	def frog_face;                                                 return convert_unicode_to_hex("E531"); end
	def poodle;                                                    return convert_unicode_to_hex("E052"); end
	def blowfish;                                                  return convert_unicode_to_hex("E019"); end
	def ant;                                                       warning(get_this_method); return nil; end
	def paw_prints;                                                return convert_unicode_to_hex("E536"); end
	def turtle;                                                    warning(get_this_method); return nil; end
	def dragon_face;                                               warning(get_this_method); return nil; end
	def panda_face;                                                warning(get_this_method); return nil; end
	def pig_nose;                                                  return convert_unicode_to_hex("E10B"); end
	def honeybee;                                                  warning(get_this_method); return nil; end
	def ladybug;                                                   warning(get_this_method); return nil; end


	def angry_face;                                                return convert_unicode_to_hex("E059"); end
	def anguished_face;                                            return convert_unicode_to_hex("E403"); end
	def astonished_face;                                           return convert_unicode_to_hex("E410"); end
	def disappointed_face;                                         return convert_unicode_to_hex("E058"); end
	def dizzy_face;                                                return convert_unicode_to_hex("E406"); end
	def exasperated_face;                                          return convert_unicode_to_hex("E40F"); end
	def expressionless_face;                                       return convert_unicode_to_hex("E40E"); end
	def face_with_heart_shaped_eyes;                               return convert_unicode_to_hex("E106"); end
	def face_with_look_of_triumph;                                 return convert_unicode_to_hex("E404"); end
	def winking_face_with_stuck_out_tongue;                        return convert_unicode_to_hex("E105"); end
	def face_with_stuck_out_tongue;                                return convert_unicode_to_hex("E409"); end
	def face_savoring_delicious_food;                              return convert_unicode_to_hex("E056"); end
	def face_throwing_a_kiss;                                      return convert_unicode_to_hex("E418"); end
	def face_kissing;                                              return convert_unicode_to_hex("E417"); end
	def face_with_mask;                                            return convert_unicode_to_hex("E40C"); end
	def flushed_face;                                              return convert_unicode_to_hex("E40D"); end
	def happy_face_with_open_mouth;                                return convert_unicode_to_hex("E057"); end
	def happy_face_with_open_mouth_and_cold_sweat;                 return convert_unicode_to_hex("E415"); end
	def happy_face_with_open_mouth_and_closed_eyes;                return convert_unicode_to_hex("E40A"); end
	def happy_face_with_grin;                                      return convert_unicode_to_hex("E404"); end
	def happy_and_crying_face;                                     return convert_unicode_to_hex("E412"); end
	def happy_face_with_wide_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("E056"); end
	def white_smiling_face;                                        return convert_unicode_to_hex("E414"); end
	def happy_face_with_open_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("E415"); end
	def crying_face;                                               return convert_unicode_to_hex("E413"); end
	def loudly_crying_face;                                        return convert_unicode_to_hex("E411"); end
	def fearful_face;                                              return convert_unicode_to_hex("E40B"); end
	def persevering_face;                                          return convert_unicode_to_hex("E406"); end
	def pouting_face;                                              return convert_unicode_to_hex("E416"); end
	def relieved_face;                                             return convert_unicode_to_hex("E40A"); end
	def confounded_face;                                           return convert_unicode_to_hex("E407"); end
	def pensive_face;                                              return convert_unicode_to_hex("E403"); end
	def face_screaming_in_fear;                                    return convert_unicode_to_hex("E107"); end
	def sleepy_face;                                               return convert_unicode_to_hex("E408"); end
	def smirking_face;                                             return convert_unicode_to_hex("E402"); end
	def face_with_cold_sweat;                                      return convert_unicode_to_hex("E108"); end
	def disappointed_but_relieved_face;                            return convert_unicode_to_hex("E401"); end
	def tired_face;                                                return convert_unicode_to_hex("E406"); end
	def winking_face;                                              return convert_unicode_to_hex("E405"); end

	def cat_face_with_open_mouth;                                  return convert_unicode_to_hex("E057"); end
	def happy_cat_face_with_grin;                                  return convert_unicode_to_hex("E404"); end
	def happy_and_crying_cat_face;                                 return convert_unicode_to_hex("E412"); end
	def cat_face_kissing;                                          return convert_unicode_to_hex("E418"); end
	def cat_face_with_heart_shaped_eyes;                           return convert_unicode_to_hex("E106"); end
	def crying_cat_face;                                           return convert_unicode_to_hex("E413"); end
	def pouting_cat_face;                                          return convert_unicode_to_hex("E416"); end
	def cat_face_with_tightly_closed_lips;                         return convert_unicode_to_hex("E404"); end
	def anguished_cat_face;                                        return convert_unicode_to_hex("E403"); end

	def face_with_no_good_gesture;                                 return convert_unicode_to_hex("E423"); end
	def face_with_ok_gesture;                                      return convert_unicode_to_hex("E424"); end
	def person_bowing_deeply;                                      return convert_unicode_to_hex("E426"); end
	def see_no_evil_monkey;                                        warning(get_this_method); return nil; end
	def speak_no_evil_monkey;                                      warning(get_this_method); return nil; end
	def hear_no_evil_monkey;                                       warning(get_this_method); return nil; end
	def person_raising_one_hand;                                   return convert_unicode_to_hex("E012"); end
	def person_raising_both_hands_in_cheers;                       return convert_unicode_to_hex("E427"); end
	def person_frowning;                                           return convert_unicode_to_hex("E403"); end
	def person_with_pouting_face;                                  return convert_unicode_to_hex("E416"); end
	def person_with_folded_hands;                                  return convert_unicode_to_hex("E41D"); end


	def house_building;                                            return convert_unicode_to_hex("E036"); end
	def house_with_yard;                                           return convert_unicode_to_hex("E036"); end
	def office_building;                                           return convert_unicode_to_hex("E038"); end
	def japanese_post_office;                                      return convert_unicode_to_hex("E153"); end
	def hospital;                                                  return convert_unicode_to_hex("E155"); end
	def bank;                                                      return convert_unicode_to_hex("E14D"); end
	def atm;                                                       return convert_unicode_to_hex("E154"); end
	def hotel;                                                     return convert_unicode_to_hex("E158"); end
	def love_hotel;                                                return convert_unicode_to_hex("E501"); end
	def convenience_store;                                         return convert_unicode_to_hex("E156"); end
	def school;                                                    return convert_unicode_to_hex("E157"); end
	def church;                                                    return convert_unicode_to_hex("E037"); end
	def fountain;                                                  return convert_unicode_to_hex("E121"); end
	def department_store;                                          return convert_unicode_to_hex("E504"); end
	def japanese_castle;                                           return convert_unicode_to_hex("E505"); end
	def western_castle;                                            return convert_unicode_to_hex("E506"); end
	def factory;                                                   return convert_unicode_to_hex("E508"); end
	def anchor;                                                    return convert_unicode_to_hex("E202"); end
	def izakaya_lantern;                                           return convert_unicode_to_hex("E30B"); end

	def emoji_compatibility_symbol_1;                              return convert_unicode_to_hex("E03B"); end
	def emoji_compatibility_symbol_2;                              return convert_unicode_to_hex("E509"); end
	def emoji_compatibility_symbol_3;                              return convert_unicode_to_hex("E51D"); end
	def emoji_compatibility_symbol_4;                              warning(get_this_method); return nil; end
	def emoji_compatibility_symbol_5;                              warning(get_this_method); return nil; end

	def wrench;                                                    warning(get_this_method); return nil; end
	def hammer;                                                    return convert_unicode_to_hex("E116"); end
	def nut_and_bolt;                                              warning(get_this_method); return nil; end

	def mans_shoe;                                                 return convert_unicode_to_hex("E007"); end
	def sneaker;                                                   return convert_unicode_to_hex("E007"); end
	def high_heeled_shoe;                                          return convert_unicode_to_hex("E13E"); end
	def womans_sandal;                                             return convert_unicode_to_hex("E31A"); end
	def womans_boots;                                              return convert_unicode_to_hex("E31B"); end
	def eyeglasses;                                                warning(get_this_method); return nil; end
	def t_shirt;                                                   return convert_unicode_to_hex("E006"); end
	def jeans;                                                     warning(get_this_method); return nil; end
	def crown;                                                     return convert_unicode_to_hex("E10E"); end
	def necktie;                                                   return convert_unicode_to_hex("E302"); end
	def womans_hat;                                                return convert_unicode_to_hex("E318"); end
	def dress;                                                     return convert_unicode_to_hex("E319"); end
	def kimono;                                                    return convert_unicode_to_hex("E321"); end
	def bikini;                                                    return convert_unicode_to_hex("E322"); end
	def womans_clothes;                                            return convert_unicode_to_hex("E006"); end
	def purse;                                                     warning(get_this_method); return nil; end

	def money_bag;                                                 return convert_unicode_to_hex("E12F"); end
	def currency_exchange;                                         return convert_unicode_to_hex("E149"); end
	def chart_with_upwards_trend_and_yen_symbol;                   return convert_unicode_to_hex("E14A"); end
	def heavy_dollar_sign;                                         return convert_unicode_to_hex("E12F"); end
	def credit_card;                                               warning(get_this_method); return nil; end
	def banknote_with_yen_sign;                                    warning(get_this_method); return nil; end
	def banknote_with_dollar_sign;                                 return convert_unicode_to_hex("E12F"); end
	def money_with_wings;                                          warning(get_this_method); return nil; end

	def emoji_compatibility_symbol_6;                              return convert_unicode_to_hex("E513"); end
	def emoji_compatibility_symbol_7;                              return convert_unicode_to_hex("E50E"); end
	def emoji_compatibility_symbol_8;                              return convert_unicode_to_hex("E511"); end
	def emoji_compatibility_symbol_9;                              return convert_unicode_to_hex("E50D"); end
	def emoji_compatibility_symbol_10;                             return convert_unicode_to_hex("E510"); end
	def emoji_compatibility_symbol_11;                             return convert_unicode_to_hex("E50F"); end
	def emoji_compatibility_symbol_12;                             return convert_unicode_to_hex("E50B"); end
	def emoji_compatibility_symbol_13;                             return convert_unicode_to_hex("E514"); end
	def emoji_compatibility_symbol_14;                             return convert_unicode_to_hex("E512"); end
	def emoji_compatibility_symbol_15;                             return convert_unicode_to_hex("E50C"); end

	def camera;                                                    return convert_unicode_to_hex("E008"); end
	def handbag;                                                   return convert_unicode_to_hex("E323"); end
	def pouch;                                                     warning(get_this_method); return nil; end
	def bell;                                                      return convert_unicode_to_hex("E325"); end
	def door;                                                      warning(get_this_method); return nil; end
	def dung;                                                      return convert_unicode_to_hex("E05A"); end
	def pistol;                                                    return convert_unicode_to_hex("E113"); end
	def fire;                                                      return convert_unicode_to_hex("E11D"); end
	def crystal_ball;                                              return convert_unicode_to_hex("E23E"); end
	def six_pointed_star_with_middle_dot;                          return convert_unicode_to_hex("E23E"); end
	def video_camera;                                              return convert_unicode_to_hex("E03D"); end
	def knife;                                                     warning(get_this_method); return nil; end
	def flashlight;                                                warning(get_this_method); return nil; end
	def battery;                                                   warning(get_this_method); return nil; end
	def scroll;                                                    warning(get_this_method); return nil; end
	def electric_plug;                                             warning(get_this_method); return nil; end
	def book_1;                                                    return convert_unicode_to_hex("E148"); end
	def book_2;                                                    return convert_unicode_to_hex("E148"); end
	def book_3;                                                    return convert_unicode_to_hex("E148"); end
	def vertical_closed_book;                                      return convert_unicode_to_hex("E148"); end
	def books;                                                     return convert_unicode_to_hex("E148"); end
	def name_badge;                                                warning(get_this_method); return nil; end

	def bath;                                                      return convert_unicode_to_hex("E13F"); end
	def restroom;                                                  return convert_unicode_to_hex("E151"); end
	def toilet;                                                    return convert_unicode_to_hex("E140"); end
	def water_closet;                                              return convert_unicode_to_hex("E309"); end

	def syringe;                                                   return convert_unicode_to_hex("E13B"); end
	def pill;                                                      return convert_unicode_to_hex("E30F"); end

	def negative_squared_latin_capital_letter_a;                   return convert_unicode_to_hex("E532"); end
	def negative_squared_latin_capital_letter_b;                   return convert_unicode_to_hex("E533"); end
	def negative_squared_ab;                                       return convert_unicode_to_hex("E534"); end
	def negative_squared_latin_capital_letter_o;                   return convert_unicode_to_hex("E535"); end

	def ribbon;                                                    return convert_unicode_to_hex("E314"); end
	def wrapped_present;                                           return convert_unicode_to_hex("E112"); end
	def birthday_cake;                                             return convert_unicode_to_hex("E34B"); end
	def christmas_tree;                                            return convert_unicode_to_hex("E033"); end
	def santa_claus;                                               return convert_unicode_to_hex("E448"); end
	def crossed_flags;                                             return convert_unicode_to_hex("E143"); end
	def fireworks;                                                 return convert_unicode_to_hex("E117"); end
	def balloon;                                                   return convert_unicode_to_hex("E310"); end
	def party_popper;                                              return convert_unicode_to_hex("E312"); end
	def pine_decoration;                                           return convert_unicode_to_hex("E436"); end
	def girls_doll_festival;                                       return convert_unicode_to_hex("E438"); end
	def graduation_cap;                                            return convert_unicode_to_hex("E439"); end
	def school_satchel;                                            return convert_unicode_to_hex("E43A"); end
	def carp_streamer;                                             return convert_unicode_to_hex("E43B"); end
	def firework_sparkler;                                         return convert_unicode_to_hex("E440"); end
	def wind_chime;                                                return convert_unicode_to_hex("E442"); end
	def jack_o_lantern;                                            return convert_unicode_to_hex("E445"); end
	def confetti_ball;                                             warning(get_this_method); return nil; end
	def tanabata_tree;                                             warning(get_this_method); return nil; end
	def moon_viewing_ceremony;                                     return convert_unicode_to_hex("E446"); end

	def pager;                                                     warning(get_this_method); return nil; end
	def black_telephone;                                           return convert_unicode_to_hex("E009"); end
	def telephone_receiver;                                        return convert_unicode_to_hex("E009"); end
	def mobile_phone;                                              return convert_unicode_to_hex("E00A"); end
	def phone_with_arrow;                                          return convert_unicode_to_hex("E104"); end
	def memo;                                                      return convert_unicode_to_hex("E301"); end
	def fax;                                                       return convert_unicode_to_hex("E00B"); end
	def envelope;                                                  return convert_unicode_to_hex("E103"); end
	def incoming_envelope;                                         return convert_unicode_to_hex("E103"); end
	def envelope_with_arrow;                                       return convert_unicode_to_hex("E103"); end
	def mailbox;                                                   return convert_unicode_to_hex("E101"); end
	def mailbox_with_raised_flag;                                  return convert_unicode_to_hex("E101"); end
	def postbox;                                                   return convert_unicode_to_hex("E102"); end
	def public_address_loudspeaker;                                return convert_unicode_to_hex("E142"); end
	def cheering_megaphone;                                        return convert_unicode_to_hex("E317"); end
	def satellite_antenna;                                         return convert_unicode_to_hex("E14B"); end
	def speech_balloon;                                            warning(get_this_method); return nil; end
	def outbox_tray;                                               warning(get_this_method); return nil; end
	def inbox_tray;                                                warning(get_this_method); return nil; end
	def package;                                                   return convert_unicode_to_hex("E112"); end

	def latin_capital_letters_input_symbol;                        warning(get_this_method); return nil; end
	def latin_small_letters_input_symbol;                          warning(get_this_method); return nil; end
	def numbers_input_symbol;                                      warning(get_this_method); return nil; end
	def symbols_input_symbol;                                      warning(get_this_method); return nil; end
	def latin_letters_input_symbol;                                warning(get_this_method); return nil; end

	def black_nib;                                                 warning(get_this_method); return nil; end
	def seat;                                                      return convert_unicode_to_hex("E11F"); end
	def computer;                                                  return convert_unicode_to_hex("E00C"); end
	def pencil;                                                    return convert_unicode_to_hex("E301"); end
	def paperclip;                                                 warning(get_this_method); return nil; end
	def briefcase;                                                 return convert_unicode_to_hex("E11E"); end
	def mini_disc;                                                 return convert_unicode_to_hex("E316"); end
	def floppy_disk;                                               return convert_unicode_to_hex("E316"); end
	def black_scissors;                                            return convert_unicode_to_hex("E313"); end
	def round_pushpin;                                             warning(get_this_method); return nil; end
	def page_with_curl;                                            return convert_unicode_to_hex("E301"); end
	def page_facing_up;                                            return convert_unicode_to_hex("E301"); end
	def calendar;                                                  warning(get_this_method); return nil; end
	def file_folder;                                               warning(get_this_method); return nil; end
	def open_file_folder;                                          warning(get_this_method); return nil; end
	def notebook;                                                  return convert_unicode_to_hex("E148"); end
	def open_book;                                                 return convert_unicode_to_hex("E148"); end
	def notebook_with_decorative_cover;                            return convert_unicode_to_hex("E148"); end
	def clipboard;                                                 return convert_unicode_to_hex("E301"); end
	def tear_off_calendar;                                         warning(get_this_method); return nil; end
	def bar_chart;                                                 return convert_unicode_to_hex("E14A"); end
	def chart_with_upwards_trend;                                  return convert_unicode_to_hex("E14A"); end
	def chart_with_downwards_trend;                                warning(get_this_method); return nil; end
	def card_index;                                                return convert_unicode_to_hex("E148"); end
	def pushpin;                                                   warning(get_this_method); return nil; end
	def ledger;                                                    return convert_unicode_to_hex("E148"); end
	def straight_ruler;                                            warning(get_this_method); return nil; end
	def triangular_ruler;                                          warning(get_this_method); return nil; end
	def bookmark_tabs;                                             return convert_unicode_to_hex("E301"); end

	def footprints;                                                return convert_unicode_to_hex("E536"); end


	def running_shirt_with_sash;                                   warning(get_this_method); return nil; end
	def baseball;                                                  return convert_unicode_to_hex("E016"); end
	def flag_in_hole;                                              return convert_unicode_to_hex("E014"); end
	def tennis;                                                    return convert_unicode_to_hex("E015"); end
	def soccer_ball;                                               return convert_unicode_to_hex("E018"); end
	def skiing;                                                    return convert_unicode_to_hex("E013"); end
	def basketball;                                                return convert_unicode_to_hex("E42A"); end
	def checkered_flag;                                            return convert_unicode_to_hex("E132"); end
	def snowboarder;                                               warning(get_this_method); return nil; end
	def runner;                                                    return convert_unicode_to_hex("E115"); end
	def surfer;                                                    return convert_unicode_to_hex("E017"); end
	def trophy;                                                    return convert_unicode_to_hex("E131"); end
	def horse_racing;                                              return convert_unicode_to_hex("E134"); end
	def american_football;                                         return convert_unicode_to_hex("E42B"); end
	def swimmer;                                                   return convert_unicode_to_hex("E42D"); end

	def train;                                                     return convert_unicode_to_hex("E01E"); end
	def subway;                                                    return convert_unicode_to_hex("E434"); end
	def circled_latin_capital_letter_m;                            return convert_unicode_to_hex("E434"); end
	def high_speed_train;                                          return convert_unicode_to_hex("E435"); end
	def high_speed_train_with_bullet_nose;                         return convert_unicode_to_hex("E01F"); end
	def automobile_1;                                              return convert_unicode_to_hex("E01B"); end
	def recreational_vehicle;                                      return convert_unicode_to_hex("E42E"); end
	def bus_2;                                                     return convert_unicode_to_hex("E159"); end
	def bus_stop;                                                  return convert_unicode_to_hex("E150"); end
	def ship;                                                      return convert_unicode_to_hex("E202"); end
	def airplane;                                                  return convert_unicode_to_hex("E01D"); end
	def sailboat;                                                  return convert_unicode_to_hex("E01C"); end
	def bicycle;                                                   return convert_unicode_to_hex("E136"); end
	def station;                                                   return convert_unicode_to_hex("E039"); end
	def rocket;                                                    return convert_unicode_to_hex("E10D"); end
	def speedboat;                                                 return convert_unicode_to_hex("E135"); end
	def taxi_1;                                                    return convert_unicode_to_hex("E15A"); end
	def pedestrian;                                                return convert_unicode_to_hex("E201"); end
	def truck;                                                     return convert_unicode_to_hex("E42F"); end
	def fire_engine;                                               return convert_unicode_to_hex("E430"); end
	def ambulance;                                                 return convert_unicode_to_hex("E431"); end
	def police_car_1;                                              return convert_unicode_to_hex("E432"); end

	def fuel_pump;                                                 return convert_unicode_to_hex("E03A"); end
	def negative_squared_latin_capital_letter_p;                   return convert_unicode_to_hex("E14F"); end

	def horizontal_traffic_light;                                  return convert_unicode_to_hex("E14E"); end
	def construction_sign;                                         return convert_unicode_to_hex("E137"); end
	def police_cars_revolving_light;                               return convert_unicode_to_hex("E432"); end

	def hot_springs;                                               return convert_unicode_to_hex("E123"); end
	def tent;                                                      return convert_unicode_to_hex("E122"); end
	def carousel_horse;                                            warning(get_this_method); return nil; end
	def ferris_wheel;                                              return convert_unicode_to_hex("E124"); end
	def roller_coaster;                                            return convert_unicode_to_hex("E433"); end
	def fishing;                                                   return convert_unicode_to_hex("E019"); end
	def microphone;                                                return convert_unicode_to_hex("E03C"); end
	def movies;                                                    return convert_unicode_to_hex("E03D"); end
	def cinema;                                                    return convert_unicode_to_hex("E507"); end
	def headphone;                                                 return convert_unicode_to_hex("E30A"); end
	def art;                                                       return convert_unicode_to_hex("E502"); end
	def top_hat;                                                   return convert_unicode_to_hex("E503"); end
	def event;                                                     warning(get_this_method); return nil; end
	def ticket;                                                    return convert_unicode_to_hex("E125"); end
	def movie_shooting_clapboard;                                  return convert_unicode_to_hex("E324"); end
	def performing_arts;                                           return convert_unicode_to_hex("E503"); end

	def video_game;                                                warning(get_this_method); return nil; end
	def mahjong_tile_red_dragon;                                   return convert_unicode_to_hex("E12D"); end
	def direct_hit;                                                return convert_unicode_to_hex("E130"); end
	def slot_machine;                                              return convert_unicode_to_hex("E133"); end
	def billiards;                                                 return convert_unicode_to_hex("E42C"); end
	def game_die;                                                  warning(get_this_method); return nil; end
	def bowling;                                                   warning(get_this_method); return nil; end
	def flower_playing_cards;                                      warning(get_this_method); return nil; end
	def playing_card_black_joker;                                  warning(get_this_method); return nil; end

	def musical_note;                                              return convert_unicode_to_hex("E03E"); end
	def multiple_musical_notes;                                    return convert_unicode_to_hex("E326"); end
	def saxophone;                                                 return convert_unicode_to_hex("E040"); end
	def guitar;                                                    return convert_unicode_to_hex("E041"); end
	def musical_keyboard;                                          warning(get_this_method); return nil; end
	def trumpet;                                                   return convert_unicode_to_hex("E042"); end
	def violin;                                                    warning(get_this_method); return nil; end
	def musical_score;                                             return convert_unicode_to_hex("E326"); end
	def part_alternation_mark;                                     return convert_unicode_to_hex("E12C"); end

	def television;                                                return convert_unicode_to_hex("E12A"); end
	def optical_disk;                                              return convert_unicode_to_hex("E126"); end
	def dvd;                                                       return convert_unicode_to_hex("E127"); end
	def radio;                                                     return convert_unicode_to_hex("E128"); end
	def video_cassette_tape;                                       return convert_unicode_to_hex("E129"); end
	def speaker_with_three_sound_waves;                            return convert_unicode_to_hex("E141"); end
	def newspaper;                                                 warning(get_this_method); return nil; end

	def kiss_mark;                                                 return convert_unicode_to_hex("E003"); end
	def love_letter;                                               return convert_unicode_to_hex("E103"); end
	def ring;                                                      return convert_unicode_to_hex("E034"); end
	def gem_stone;                                                 return convert_unicode_to_hex("E035"); end
	def kiss;                                                      return convert_unicode_to_hex("E111"); end
	def bouquet;                                                   return convert_unicode_to_hex("E306"); end
	def couple_with_heart;                                         return convert_unicode_to_hex("E425"); end
	def wedding;                                                   return convert_unicode_to_hex("E43D"); end

	def hash_key;                                                  return convert_unicode_to_hex("E210"); end
	def keycap_1;                                                  return convert_unicode_to_hex("E21C"); end
	def keycap_2;                                                  return convert_unicode_to_hex("E21D"); end
	def keycap_3;                                                  return convert_unicode_to_hex("E21E"); end
	def keycap_4;                                                  return convert_unicode_to_hex("E21F"); end
	def keycap_5;                                                  return convert_unicode_to_hex("E220"); end
	def keycap_6;                                                  return convert_unicode_to_hex("E221"); end
	def keycap_7;                                                  return convert_unicode_to_hex("E222"); end
	def keycap_8;                                                  return convert_unicode_to_hex("E223"); end
	def keycap_9;                                                  return convert_unicode_to_hex("E224"); end
	def keycap_0;                                                  return convert_unicode_to_hex("E225"); end
	def keycap_ten;                                                warning(get_this_method); return nil; end
	def antenna_with_bars;                                         return convert_unicode_to_hex("E20B"); end
	def vibration_mode;                                            return convert_unicode_to_hex("E250"); end
	def mobile_phone_off;                                          return convert_unicode_to_hex("E251"); end


	def hamburger;                                                 return convert_unicode_to_hex("E120"); end
	def rice_ball;                                                 return convert_unicode_to_hex("E342"); end
	def shortcake;                                                 return convert_unicode_to_hex("E046"); end
	def steaming_bowl;                                             return convert_unicode_to_hex("E340"); end
	def bread;                                                     return convert_unicode_to_hex("E339"); end
	def cooking;                                                   return convert_unicode_to_hex("E147"); end
	def soft_ice_cream;                                            return convert_unicode_to_hex("E33A"); end
	def french_fries;                                              return convert_unicode_to_hex("E33B"); end
	def dumpling;                                                  return convert_unicode_to_hex("E33C"); end
	def rice_cracker;                                              return convert_unicode_to_hex("E33D"); end
	def cooked_rice;                                               return convert_unicode_to_hex("E33E"); end
	def spaghetti;                                                 return convert_unicode_to_hex("E33F"); end
	def curry_and_rice;                                            return convert_unicode_to_hex("E341"); end
	def seafood_casserole;                                         return convert_unicode_to_hex("E343"); end
	def sushi;                                                     return convert_unicode_to_hex("E344"); end
	def lunchbox;                                                  return convert_unicode_to_hex("E34C"); end
	def pot_of_food;                                               return convert_unicode_to_hex("E34D"); end
	def shaved_ice;                                                return convert_unicode_to_hex("E43F"); end
	def meat_on_bone;                                              warning(get_this_method); return nil; end
	def fish_cake_with_swirl_design;                               warning(get_this_method); return nil; end
	def roasted_sweet_potato;                                      warning(get_this_method); return nil; end
	def slice_of_pizza;                                            warning(get_this_method); return nil; end
	def poultry_leg;                                               warning(get_this_method); return nil; end
	def ice_cream;                                                 warning(get_this_method); return nil; end
	def doughnut;                                                  warning(get_this_method); return nil; end
	def cookie;                                                    warning(get_this_method); return nil; end
	def chocolate_bar;                                             warning(get_this_method); return nil; end
	def candy;                                                     warning(get_this_method); return nil; end
	def lollipop;                                                  warning(get_this_method); return nil; end
	def custard;                                                   warning(get_this_method); return nil; end
	def honey_pot;                                                 warning(get_this_method); return nil; end
	def fried_shrimp;                                              warning(get_this_method); return nil; end
	def fork_and_knife;                                            return convert_unicode_to_hex("E043"); end

	def hot_beverage;                                              return convert_unicode_to_hex("E045"); end
	def cocktail_glass;                                            return convert_unicode_to_hex("E044"); end
	def beer_mug;                                                  return convert_unicode_to_hex("E047"); end
	def teacup_without_handle;                                     return convert_unicode_to_hex("E338"); end
	def sake_bottle_and_cup;                                       return convert_unicode_to_hex("E30B"); end
	def wine_glass;                                                return convert_unicode_to_hex("E044"); end
	def clinking_beer_mugs;                                        return convert_unicode_to_hex("E30C"); end
	def tropical_drink;                                            return convert_unicode_to_hex("E044"); end


	def north_east_arrow;                                          return convert_unicode_to_hex("E236"); end
	def south_east_arrow;                                          return convert_unicode_to_hex("E238"); end
	def north_west_arrow;                                          return convert_unicode_to_hex("E237"); end
	def south_west_arrow;                                          return convert_unicode_to_hex("E239"); end
	def arrow_pointing_rightwards_then_curving_upwards;            return convert_unicode_to_hex("E236"); end
	def arrow_pointing_rightwards_then_curving_downwards;          return convert_unicode_to_hex("E238"); end
	def left_right_arrow;                                          warning(get_this_method); return nil; end
	def up_down_arrow;                                             warning(get_this_method); return nil; end
	def upwards_black_arrow;                                       return convert_unicode_to_hex("E232"); end
	def downwards_black_arrow;                                     return convert_unicode_to_hex("E233"); end
	def black_rightwards_arrow;                                    return convert_unicode_to_hex("E234"); end
	def leftwards_black_arrow;                                     return convert_unicode_to_hex("E235"); end

	def black_right_pointing_triangle;                             return convert_unicode_to_hex("E23A"); end
	def black_left_pointing_triangle;                              return convert_unicode_to_hex("E23B"); end
	def black_right_pointing_double_triangle;                      return convert_unicode_to_hex("E23C"); end
	def black_left_pointing_double_triangle;                       return convert_unicode_to_hex("E23D"); end
	def black_up_pointing_double_triangle;                         warning(get_this_method); return nil; end
	def black_down_pointing_double_triangle;                       warning(get_this_method); return nil; end
	def up_pointing_triangle_1;                                    warning(get_this_method); return nil; end
	def down_pointing_triangle_1;                                  warning(get_this_method); return nil; end
	def up_pointing_small_triangle_1;                              warning(get_this_method); return nil; end
	def down_pointing_small_triangle_1;                            warning(get_this_method); return nil; end

	def heavy_exclamation_mark_ornament;                           return convert_unicode_to_hex("E021"); end
	def exclamation_question_mark;                                 warning(get_this_method); return nil; end
	def double_exclamation_mark;                                   warning(get_this_method); return nil; end
	def black_question_mark_ornament;                              return convert_unicode_to_hex("E020"); end
	def white_question_mark_ornament;                              return convert_unicode_to_hex("E336"); end
	def white_exclamation_mark_ornament;                           return convert_unicode_to_hex("E337"); end

	def wavy_dash;                                                 warning(get_this_method); return nil; end
	def looped_length_mark;                                        warning(get_this_method); return nil; end

	def heavy_black_heart;                                         return convert_unicode_to_hex("E022"); end
	def beating_heart;                                             return convert_unicode_to_hex("E327"); end
	def broken_heart;                                              return convert_unicode_to_hex("E023"); end
	def two_hearts;                                                return convert_unicode_to_hex("E327"); end
	def sparkling_heart;                                           return convert_unicode_to_hex("E327"); end
	def growing_heart;                                             return convert_unicode_to_hex("E328"); end
	def heart_with_arrow;                                          return convert_unicode_to_hex("E329"); end
	def heart_1;                                                   return convert_unicode_to_hex("E32A"); end
	def heart_2;                                                   return convert_unicode_to_hex("E32B"); end
	def heart_3;                                                   return convert_unicode_to_hex("E32C"); end
	def heart_4;                                                   return convert_unicode_to_hex("E32D"); end
	def heart_with_ribbon;                                         return convert_unicode_to_hex("E437"); end
	def revolving_hearts;                                          return convert_unicode_to_hex("E327"); end
	def heart_decoration;                                          return convert_unicode_to_hex("E204"); end

	def black_heart_suit;                                          return convert_unicode_to_hex("E20C"); end
	def black_spade_suit;                                          return convert_unicode_to_hex("E20E"); end
	def black_diamond_suit;                                        return convert_unicode_to_hex("E20D"); end
	def black_club_suit;                                           return convert_unicode_to_hex("E20F"); end

	def smoking_symbol;                                            return convert_unicode_to_hex("E30E"); end
	def no_smoking_symbol;                                         return convert_unicode_to_hex("E208"); end
	def wheelchair_symbol;                                         return convert_unicode_to_hex("E20A"); end
	def japanese_symbol_for_beginner;                              return convert_unicode_to_hex("E209"); end
	def trident_emblem;                                            return convert_unicode_to_hex("E031"); end
	def triangular_flag_on_post;                                   warning(get_this_method); return nil; end
	def warning_sign;                                              return convert_unicode_to_hex("E252"); end
	def no_entry;                                                  return convert_unicode_to_hex("E137"); end
	def black_universal_recycling_symbol;                          warning(get_this_method); return nil; end
	def mens_symbol;                                               return convert_unicode_to_hex("E138"); end
	def womens_symbol;                                             return convert_unicode_to_hex("E139"); end
	def baby_symbol;                                               return convert_unicode_to_hex("E13A"); end
	def heavy_large_circle;                                        return convert_unicode_to_hex("E332"); end
	def cross_mark;                                                return convert_unicode_to_hex("E333"); end
	def negative_squared_cross_mark;                               return convert_unicode_to_hex("E333"); end
	def no_entry_sign;                                             warning(get_this_method); return nil; end
	def heavy_check_mark;                                          warning(get_this_method); return nil; end
	def white_heavy_check_mark;                                    warning(get_this_method); return nil; end
	def link_symbol;                                               warning(get_this_method); return nil; end
	def em_space;                                                  warning(get_this_method); return nil; end
	def en_space;                                                  warning(get_this_method); return nil; end
	def four_per_em_space;                                         warning(get_this_method); return nil; end

	def free_sign;                                                 warning(get_this_method); return nil; end
	def no_one_under_eighteen_sign;                                return convert_unicode_to_hex("E207"); end
	def ok_sign;                                                   return convert_unicode_to_hex("E24D"); end
	def no_good_sign;                                              warning(get_this_method); return nil; end
	def copyright_sign;                                            return convert_unicode_to_hex("E24E"); end
	def registered_sign;                                           return convert_unicode_to_hex("E24F"); end
	def trade_mark_sign;                                           return convert_unicode_to_hex("E537"); end
	def vs_sign;                                                   return convert_unicode_to_hex("E12E"); end
	def new_sign;                                                  return convert_unicode_to_hex("E212"); end
	def up_sign;                                                   return convert_unicode_to_hex("E213"); end
	def cool_sign;                                                 return convert_unicode_to_hex("E214"); end
	def top_with_up_pointing_triangle_sign;                        return convert_unicode_to_hex("E24C"); end
	def information_source;                                        warning(get_this_method); return nil; end
	def sos_sign;                                                  warning(get_this_method); return nil; end

	def squared_katakana_koko;                                     return convert_unicode_to_hex("E203"); end
	def squared_katakana_sa;                                       return convert_unicode_to_hex("E228"); end

	def squared_cjk_unified_ideograph_7981;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_7a7a;                        return convert_unicode_to_hex("E22B"); end
	def squared_cjk_unified_ideograph_5408;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_6e80;                        return convert_unicode_to_hex("E22A"); end
	def squared_cjk_unified_ideograph_6709;                        return convert_unicode_to_hex("E215"); end
	def squared_cjk_unified_ideograph_7121;                        return convert_unicode_to_hex("E216"); end
	def squared_cjk_unified_ideograph_6708;                        return convert_unicode_to_hex("E217"); end
	def squared_cjk_unified_ideograph_7533;                        return convert_unicode_to_hex("E218"); end
	def squared_cjk_unified_ideograph_5272;                        return convert_unicode_to_hex("E227"); end
	def squared_cjk_unified_ideograph_6307;                        return convert_unicode_to_hex("E22C"); end
	def squared_cjk_unified_ideograph_55b6;                        return convert_unicode_to_hex("E22D"); end

	def circled_ideograph_secret;                                  return convert_unicode_to_hex("E315"); end
	def circled_ideograph_congratulation;                          return convert_unicode_to_hex("E30D"); end
	def circled_ideograph_advantage;                               return convert_unicode_to_hex("E226"); end
	def circled_ideograph_accept;                                  warning(get_this_method); return nil; end

	def heavy_plus_sign;                                           warning(get_this_method); return nil; end
	def heavy_minus_sign;                                          warning(get_this_method); return nil; end
	def heavy_multiplication_x;                                    return convert_unicode_to_hex("E333"); end
	def heavy_division_sign;                                       warning(get_this_method); return nil; end

	def diamond_shape_with_a_dot_inside;                           warning(get_this_method); return nil; end
	def electric_light_bulb;                                       return convert_unicode_to_hex("E10F"); end
	def anger_sign;                                                return convert_unicode_to_hex("E334"); end
	def bomb;                                                      return convert_unicode_to_hex("E311"); end
	def sleeping_sign;                                             return convert_unicode_to_hex("E13C"); end
	def collision_symbol;                                          warning(get_this_method); return nil; end
	def splashing_sweat;                                           return convert_unicode_to_hex("E331"); end
	def drip;                                                      return convert_unicode_to_hex("E331"); end
	def dash_symbol;                                               return convert_unicode_to_hex("E330"); end
	def flexed_bicep;                                              return convert_unicode_to_hex("E14C"); end
	def dizzy_symbol;                                              return convert_unicode_to_hex("E407"); end

	def sparkles;                                                  return convert_unicode_to_hex("E32E"); end
	def eight_pointed_black_star;                                  return convert_unicode_to_hex("E205"); end
	def eight_spoked_asterisk;                                     return convert_unicode_to_hex("E206"); end
	def medium_white_circle;                                       return convert_unicode_to_hex("E219"); end
	def medium_black_circle;                                       return convert_unicode_to_hex("E219"); end
	def large_circle_1;                                            return convert_unicode_to_hex("E219"); end
	def large_circle_2;                                            return convert_unicode_to_hex("E21A"); end
	def black_rounded_square;                                      return convert_unicode_to_hex("E21A"); end
	def white_rounded_square;                                      return convert_unicode_to_hex("E21B"); end
	def white_medium_star;                                         return convert_unicode_to_hex("E32F"); end
	def glowing_star;                                              return convert_unicode_to_hex("E335"); end
	def shooting_star;                                             warning(get_this_method); return nil; end
	def white_large_square;                                        return convert_unicode_to_hex("E21B"); end
	def black_large_square;                                        return convert_unicode_to_hex("E21A"); end
	def white_small_square;                                        return convert_unicode_to_hex("E21B"); end
	def black_small_square;                                        return convert_unicode_to_hex("E21A"); end
	def white_medium_small_square;                                 return convert_unicode_to_hex("E21B"); end
	def black_medium_small_square;                                 return convert_unicode_to_hex("E21A"); end
	def white_medium_square;                                       return convert_unicode_to_hex("E21B"); end
	def black_medium_square;                                       return convert_unicode_to_hex("E21A"); end
	def large_diamond_1;                                           return convert_unicode_to_hex("E21B"); end
	def large_diamond_2;                                           return convert_unicode_to_hex("E21B"); end
	def small_diamond_1;                                           return convert_unicode_to_hex("E21B"); end
	def small_diamond_2;                                           return convert_unicode_to_hex("E21B"); end
	def sparkle;                                                   return convert_unicode_to_hex("E32E"); end

	def white_flower;                                              warning(get_this_method); return nil; end
	def hundred_points_symbol;                                     warning(get_this_method); return nil; end

	def identification_sign;                                       return convert_unicode_to_hex("E229"); end
	def clear_sign;                                                warning(get_this_method); return nil; end
	def leftwards_arrow_with_hook;                                 warning(get_this_method); return nil; end
	def rightwards_arrow_with_hook;                                warning(get_this_method); return nil; end
	def left_pointing_magnifying_glass;                            return convert_unicode_to_hex("E114"); end
	def right_pointing_magnifying_glass;                           return convert_unicode_to_hex("E114"); end
	def lock;                                                      return convert_unicode_to_hex("E144"); end
	def open_lock;                                                 return convert_unicode_to_hex("E145"); end
	def lock_with_ink_pen;                                         return convert_unicode_to_hex("E144"); end
	def closed_lock_with_key;                                      return convert_unicode_to_hex("E144"); end
	def key;                                                       return convert_unicode_to_hex("E03F"); end
	def ballot_box_with_check;                                     warning(get_this_method); return nil; end
	def radio_button;                                              warning(get_this_method); return nil; end
	def back_with_left_arrow_above;                                return convert_unicode_to_hex("E235"); end
	def bookmark;                                                  warning(get_this_method); return nil; end
	def double_clockwise_open_circle_arrows;                       warning(get_this_method); return nil; end
	def e_mail_symbol;                                             return convert_unicode_to_hex("E103"); end

	def raised_fist;                                               return convert_unicode_to_hex("E010"); end
	def raised_hand;                                               return convert_unicode_to_hex("E012"); end
	def victory_hand;                                              return convert_unicode_to_hex("E011"); end

	def fisted_hand;                                               return convert_unicode_to_hex("E00D"); end
	def thumbs_up_sign;                                            return convert_unicode_to_hex("E00E"); end
	def white_up_pointing_index;                                   return convert_unicode_to_hex("E00F"); end
	def white_up_pointing_backhand_index;                          return convert_unicode_to_hex("E22E"); end
	def white_down_pointing_backhand_index;                        return convert_unicode_to_hex("E22F"); end
	def white_left_pointing_backhand_index;                        return convert_unicode_to_hex("E230"); end
	def white_right_pointing_backhand_index;                       return convert_unicode_to_hex("E231"); end
	def waving_hand;                                               return convert_unicode_to_hex("E41E"); end
	def clapping_hands;                                            return convert_unicode_to_hex("E41F"); end
	def ok_hand_sign;                                              return convert_unicode_to_hex("E420"); end
	def thumbs_down_sign;                                          return convert_unicode_to_hex("E421"); end
	def open_hands;                                                return convert_unicode_to_hex("E422"); end  
end

class KDDI < Emoji
	def black_sun_with_rays;                                       return convert_unicode_to_hex("E488"); end
	def cloud;                                                     return convert_unicode_to_hex("E48D"); end
	def umbrella_with_rain_drops;                                  return convert_unicode_to_hex("E48C"); end
	def snowman_without_snow;                                      return convert_unicode_to_hex("E485"); end
	def high_voltage_sign;                                         return convert_unicode_to_hex("E487"); end
	def cyclone;                                                   return convert_unicode_to_hex("E469"); end
	def foggy;                                                     return convert_unicode_to_hex("E598"); end
	def closed_umbrella;                                           return convert_unicode_to_hex("EAE8"); end
	def night_with_stars;                                          return convert_unicode_to_hex("EAF1"); end
	def sunrise_over_mountains;                                    return convert_unicode_to_hex("EAF4"); end
	def sunrise;                                                   return convert_unicode_to_hex("EAF4"); end
	def cityscape_at_dusk;                                         return convert_unicode_to_hex("E5DA"); end
	def sunset_over_buildings;                                     return convert_unicode_to_hex("E5DA"); end
	def rainbow;                                                   return convert_unicode_to_hex("EAF2"); end
	def snowflake;                                                 return convert_unicode_to_hex("E48A"); end
	def sun_behind_cloud;                                          return convert_unicode_to_hex("E48E"); end
	def bridge_at_night;                                           return convert_unicode_to_hex("E4BF"); end

	def new_moon_symbol;                                           return convert_unicode_to_hex("E5A8"); end
	def waxing_gibbous_moon_symbol;                                return convert_unicode_to_hex("E5A9"); end
	def first_quarter_moon_symbol;                                 return convert_unicode_to_hex("E5AA"); end
	def crescent_moon;                                             return convert_unicode_to_hex("E486"); end
	def full_moon_symbol;                                          warning(get_this_method); return nil; end
	def first_quarter_moon_with_face;                              return convert_unicode_to_hex("E489"); end

	def soon_with_right_arrow_above;                               warning(get_this_method); return nil; end
	def on_with_double_pointing_arrow_above;                       warning(get_this_method); return nil; end
	def end_with_left_arrow_above;                                 warning(get_this_method); return nil; end
	def hourglass_with_flowing_sand;                               return convert_unicode_to_hex("E47C"); end
	def hourglass;                                                 return convert_unicode_to_hex("E57B"); end
	def watch;                                                     return convert_unicode_to_hex("E57A"); end
	def clock_face_one_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_two_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_three_oclock;                                   return convert_unicode_to_hex("E594"); end
	def clock_face_four_oclock;                                    return convert_unicode_to_hex("E594"); end
	def clock_face_five_oclock;                                    return convert_unicode_to_hex("E594"); end
	def clock_face_six_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_seven_oclock;                                   return convert_unicode_to_hex("E594"); end
	def clock_face_eight_oclock;                                   return convert_unicode_to_hex("E594"); end
	def clock_face_nine_oclock;                                    return convert_unicode_to_hex("E594"); end
	def clock_face_ten_oclock;                                     return convert_unicode_to_hex("E594"); end
	def clock_face_eleven_oclock;                                  return convert_unicode_to_hex("E594"); end
	def clock_face_twelve_oclock;                                  return convert_unicode_to_hex("E594"); end

	def alarm_clock;                                               return convert_unicode_to_hex("E594"); end

	def aries;                                                     return convert_unicode_to_hex("E48F"); end
	def taurus;                                                    return convert_unicode_to_hex("E490"); end
	def gemini;                                                    return convert_unicode_to_hex("E491"); end
	def cancer;                                                    return convert_unicode_to_hex("E492"); end
	def leo;                                                       return convert_unicode_to_hex("E493"); end
	def virgo;                                                     return convert_unicode_to_hex("E494"); end
	def libra;                                                     return convert_unicode_to_hex("E495"); end
	def scorpius;                                                  return convert_unicode_to_hex("E496"); end
	def sagittarius;                                               return convert_unicode_to_hex("E497"); end
	def capricorn;                                                 return convert_unicode_to_hex("E498"); end
	def aquarius;                                                  return convert_unicode_to_hex("E499"); end
	def pisces;                                                    return convert_unicode_to_hex("E49A"); end
	def ophiuchus;                                                 return convert_unicode_to_hex("E49B"); end

	def water_wave;                                                return convert_unicode_to_hex("EB7C"); end
	def earth_globe_asia_australia;                                return convert_unicode_to_hex("E5B3"); end
	def volcano;                                                   return convert_unicode_to_hex("EB53"); end
	def milky_way;                                                 return convert_unicode_to_hex("EB5F"); end

	def four_leaf_clover;                                          return convert_unicode_to_hex("E513"); end
	def tulip;                                                     return convert_unicode_to_hex("E4E4"); end
	def seedling;                                                  return convert_unicode_to_hex("EB7D"); end
	def maple_leaf;                                                return convert_unicode_to_hex("E4CE"); end
	def cherry_blossom;                                            return convert_unicode_to_hex("E4CA"); end
	def rose;                                                      return convert_unicode_to_hex("E5BA"); end
	def fallen_leaf;                                               return convert_unicode_to_hex("E5CD"); end
	def leaf_fluttering_in_wind;                                   return convert_unicode_to_hex("E5CD"); end
	def hibiscus;                                                  return convert_unicode_to_hex("EA94"); end
	def sunflower;                                                 return convert_unicode_to_hex("E4E3"); end
	def palm_tree;                                                 return convert_unicode_to_hex("E4E2"); end
	def cactus;                                                    return convert_unicode_to_hex("EA96"); end
	def ear_of_rice;                                               warning(get_this_method); return nil; end
	def ear_of_maize;                                              return convert_unicode_to_hex("EB36"); end
	def mushroom;                                                  return convert_unicode_to_hex("EB37"); end
	def chestnut;                                                  return convert_unicode_to_hex("EB38"); end
	def blossom;                                                   return convert_unicode_to_hex("EB49"); end
	def herb;                                                      return convert_unicode_to_hex("EB82"); end

	def cherries;                                                  return convert_unicode_to_hex("E4D2"); end
	def banana;                                                    return convert_unicode_to_hex("EB35"); end
	def apple_1;                                                   return convert_unicode_to_hex("EAB9"); end
	def tangerine;                                                 return convert_unicode_to_hex("EABA"); end
	def strawberry;                                                return convert_unicode_to_hex("E4D4"); end
	def watermelon;                                                return convert_unicode_to_hex("E4CD"); end
	def tomato;                                                    return convert_unicode_to_hex("EABB"); end
	def aubergine;                                                 return convert_unicode_to_hex("EABC"); end
	def melon;                                                     return convert_unicode_to_hex("EB32"); end
	def pineapple;                                                 return convert_unicode_to_hex("EB33"); end
	def grapes;                                                    return convert_unicode_to_hex("EB34"); end
	def peach;                                                     return convert_unicode_to_hex("EB39"); end
	def apple_2;                                                   return convert_unicode_to_hex("EB5A"); end


	def eyes;                                                      return convert_unicode_to_hex("E5A4"); end
	def ear;                                                       return convert_unicode_to_hex("E5A5"); end
	def nose;                                                      return convert_unicode_to_hex("EAD0"); end
	def mouth;                                                     return convert_unicode_to_hex("EAD1"); end
	def tongue;                                                    return convert_unicode_to_hex("EB47"); end

	def lipstick;                                                  return convert_unicode_to_hex("E509"); end
	def nail_care;                                                 return convert_unicode_to_hex("EAA0"); end
	def face_massage;                                              return convert_unicode_to_hex("E50B"); end
	def haircut;                                                   return convert_unicode_to_hex("EAA1"); end
	def barber_pole;                                               return convert_unicode_to_hex("EAA2"); end

	def bust_in_silhouette;                                        warning(get_this_method); return nil; end

	def boys_head;                                                 return convert_unicode_to_hex("E4FC"); end
	def girls_head;                                                return convert_unicode_to_hex("E4FA"); end
	def mans_head;                                                 return convert_unicode_to_hex("E4FC"); end
	def womans_head;                                               return convert_unicode_to_hex("E4FA"); end
	def family;                                                    return convert_unicode_to_hex("E501"); end
	def couple;                                                    warning(get_this_method); return nil; end
	def police_officer;                                            return convert_unicode_to_hex("E5DD"); end
	def woman_with_bunny_ears;                                     return convert_unicode_to_hex("EADB"); end
	def bride_with_veil;                                           return convert_unicode_to_hex("EAE9"); end
	def western_person;                                            return convert_unicode_to_hex("EB13"); end
	def man_with_gua_pi_mao;                                       return convert_unicode_to_hex("EB14"); end
	def man_with_turban;                                           return convert_unicode_to_hex("EB15"); end
	def older_man;                                                 return convert_unicode_to_hex("EB16"); end
	def older_woman;                                               return convert_unicode_to_hex("EB17"); end
	def baby;                                                      return convert_unicode_to_hex("EB18"); end
	def construction_worker;                                       return convert_unicode_to_hex("EB19"); end

	def princess;                                                  return convert_unicode_to_hex("EB1A"); end
	def ogre;                                                      return convert_unicode_to_hex("EB44"); end
	def goblin;                                                    return convert_unicode_to_hex("EB45"); end
	def ghost;                                                     return convert_unicode_to_hex("E4CB"); end
	def cherub;                                                    return convert_unicode_to_hex("E5BF"); end
	def extraterrestrial_alien;                                    return convert_unicode_to_hex("E50E"); end
	def alien_monster;                                             return convert_unicode_to_hex("E4EC"); end
	def imp;                                                       return convert_unicode_to_hex("E4EF"); end
	def skull;                                                     return convert_unicode_to_hex("E4F8"); end

	def information_desk_person;                                   warning(get_this_method); return nil; end
	def guardsman;                                                 warning(get_this_method); return nil; end
	def dancer;                                                    return convert_unicode_to_hex("EB1C"); end

	def dog_face;                                                  return convert_unicode_to_hex("E4E1"); end
	def cat_face;                                                  return convert_unicode_to_hex("E4DB"); end
	def snail;                                                     return convert_unicode_to_hex("EB7E"); end
	def baby_chick;                                                return convert_unicode_to_hex("E4E0"); end
	def front_facing_baby_chick;                                   return convert_unicode_to_hex("EB76"); end
	def hatching_chick;                                            return convert_unicode_to_hex("E5DB"); end
	def penguin;                                                   return convert_unicode_to_hex("E4DC"); end
	def fish;                                                      return convert_unicode_to_hex("E49A"); end
	def horse_face;                                                return convert_unicode_to_hex("E4D8"); end
	def pig_face;                                                  return convert_unicode_to_hex("E4DE"); end
	def tiger_face;                                                return convert_unicode_to_hex("E5C0"); end
	def bear_face;                                                 return convert_unicode_to_hex("E5C1"); end
	def mouse_face;                                                return convert_unicode_to_hex("E5C2"); end
	def spouting_whale;                                            return convert_unicode_to_hex("E470"); end
	def monkey_face;                                               return convert_unicode_to_hex("E4D9"); end
	def octopus;                                                   return convert_unicode_to_hex("E5C7"); end
	def spiral_shell;                                              return convert_unicode_to_hex("EAEC"); end
	def dolphin;                                                   return convert_unicode_to_hex("EB1B"); end
	def bird;                                                      return convert_unicode_to_hex("E4E0"); end
	def tropical_fish;                                             return convert_unicode_to_hex("EB1D"); end
	def hamster_face;                                              warning(get_this_method); return nil; end
	def bug;                                                       return convert_unicode_to_hex("EB1E"); end
	def elephant;                                                  return convert_unicode_to_hex("EB1F"); end
	def koala;                                                     return convert_unicode_to_hex("EB20"); end
	def monkey;                                                    return convert_unicode_to_hex("E4D9"); end
	def sheep;                                                     return convert_unicode_to_hex("E48F"); end
	def wolf_face;                                                 return convert_unicode_to_hex("E4E1"); end
	def cow_face;                                                  return convert_unicode_to_hex("EB21"); end
	def rabbit_face;                                               return convert_unicode_to_hex("E4D7"); end
	def snake;                                                     return convert_unicode_to_hex("EB22"); end
	def chicken;                                                   return convert_unicode_to_hex("EB23"); end
	def boar;                                                      return convert_unicode_to_hex("EB24"); end
	def camel;                                                     return convert_unicode_to_hex("EB25"); end
	def frog_face;                                                 return convert_unicode_to_hex("E4DA"); end
	def poodle;                                                    return convert_unicode_to_hex("E4DF"); end
	def blowfish;                                                  return convert_unicode_to_hex("E4D3"); end
	def ant;                                                       return convert_unicode_to_hex("E4DD"); end
	def paw_prints;                                                return convert_unicode_to_hex("E4EE"); end
	def turtle;                                                    return convert_unicode_to_hex("E5D4"); end
	def dragon_face;                                               return convert_unicode_to_hex("EB3F"); end
	def panda_face;                                                return convert_unicode_to_hex("EB46"); end
	def pig_nose;                                                  return convert_unicode_to_hex("EB48"); end
	def honeybee;                                                  return convert_unicode_to_hex("EB57"); end
	def ladybug;                                                   return convert_unicode_to_hex("EB58"); end


	def angry_face;                                                return convert_unicode_to_hex("E472"); end
	def anguished_face;                                            return convert_unicode_to_hex("EB67"); end
	def astonished_face;                                           return convert_unicode_to_hex("EACA"); end
	def disappointed_face;                                         return convert_unicode_to_hex("EAC0"); end
	def dizzy_face;                                                return convert_unicode_to_hex("E5AE"); end
	def exasperated_face;                                          return convert_unicode_to_hex("EACB"); end
	def expressionless_face;                                       return convert_unicode_to_hex("EAC9"); end
	def face_with_heart_shaped_eyes;                               return convert_unicode_to_hex("E5C4"); end
	def face_with_look_of_triumph;                                 return convert_unicode_to_hex("EAC1"); end
	def winking_face_with_stuck_out_tongue;                        return convert_unicode_to_hex("E4E7"); end
	def face_with_stuck_out_tongue;                                return convert_unicode_to_hex("E4E7"); end
	def face_savoring_delicious_food;                              return convert_unicode_to_hex("EACD"); end
	def face_throwing_a_kiss;                                      return convert_unicode_to_hex("EACF"); end
	def face_kissing;                                              return convert_unicode_to_hex("EACE"); end
	def face_with_mask;                                            return convert_unicode_to_hex("EAC7"); end
	def flushed_face;                                              return convert_unicode_to_hex("EAC8"); end
	def happy_face_with_open_mouth;                                return convert_unicode_to_hex("E471"); end
	def happy_face_with_open_mouth_and_cold_sweat;                 return convert_unicode_to_hex("E471"); end
	def happy_face_with_open_mouth_and_closed_eyes;                return convert_unicode_to_hex("EAC5"); end
	def happy_face_with_grin;                                      return convert_unicode_to_hex("EB80"); end
	def happy_and_crying_face;                                     return convert_unicode_to_hex("EB64"); end
	def happy_face_with_wide_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("EACD"); end
	def white_smiling_face;                                        return convert_unicode_to_hex("E4FB"); end
	def happy_face_with_open_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("E471"); end
	def crying_face;                                               return convert_unicode_to_hex("EB69"); end
	def loudly_crying_face;                                        return convert_unicode_to_hex("E473"); end
	def fearful_face;                                              return convert_unicode_to_hex("EAC6"); end
	def persevering_face;                                          return convert_unicode_to_hex("EAC2"); end
	def pouting_face;                                              return convert_unicode_to_hex("EB5D"); end
	def relieved_face;                                             return convert_unicode_to_hex("EAC5"); end
	def confounded_face;                                           return convert_unicode_to_hex("EAC3"); end
	def pensive_face;                                              return convert_unicode_to_hex("EAC0"); end
	def face_screaming_in_fear;                                    return convert_unicode_to_hex("E5C5"); end
	def sleepy_face;                                               return convert_unicode_to_hex("EAC4"); end
	def smirking_face;                                             return convert_unicode_to_hex("EABF"); end
	def face_with_cold_sweat;                                      return convert_unicode_to_hex("E5C6"); end
	def disappointed_but_relieved_face;                            return convert_unicode_to_hex("E5C6"); end
	def tired_face;                                                return convert_unicode_to_hex("E474"); end
	def winking_face;                                              return convert_unicode_to_hex("E5C3"); end

	def cat_face_with_open_mouth;                                  return convert_unicode_to_hex("EB61"); end
	def happy_cat_face_with_grin;                                  return convert_unicode_to_hex("EB7F"); end
	def happy_and_crying_cat_face;                                 return convert_unicode_to_hex("EB63"); end
	def cat_face_kissing;                                          return convert_unicode_to_hex("EB60"); end
	def cat_face_with_heart_shaped_eyes;                           return convert_unicode_to_hex("EB65"); end
	def crying_cat_face;                                           return convert_unicode_to_hex("EB68"); end
	def pouting_cat_face;                                          return convert_unicode_to_hex("EB5E"); end
	def cat_face_with_tightly_closed_lips;                         return convert_unicode_to_hex("EB6A"); end
	def anguished_cat_face;                                        return convert_unicode_to_hex("EB66"); end

	def face_with_no_good_gesture;                                 return convert_unicode_to_hex("EAD7"); end
	def face_with_ok_gesture;                                      return convert_unicode_to_hex("EAD8"); end
	def person_bowing_deeply;                                      return convert_unicode_to_hex("EAD9"); end
	def see_no_evil_monkey;                                        return convert_unicode_to_hex("EB50"); end
	def speak_no_evil_monkey;                                      return convert_unicode_to_hex("EB51"); end
	def hear_no_evil_monkey;                                       return convert_unicode_to_hex("EB52"); end
	def person_raising_one_hand;                                   return convert_unicode_to_hex("EB85"); end
	def person_raising_both_hands_in_cheers;                       return convert_unicode_to_hex("EB86"); end
	def person_frowning;                                           return convert_unicode_to_hex("EB87"); end
	def person_with_pouting_face;                                  return convert_unicode_to_hex("EB88"); end
	def person_with_folded_hands;                                  return convert_unicode_to_hex("EAD2"); end


	def house_building;                                            return convert_unicode_to_hex("E4AB"); end
	def house_with_yard;                                           return convert_unicode_to_hex("EB09"); end
	def office_building;                                           return convert_unicode_to_hex("E4AD"); end
	def japanese_post_office;                                      return convert_unicode_to_hex("E5DE"); end
	def hospital;                                                  return convert_unicode_to_hex("E5DF"); end
	def bank;                                                      return convert_unicode_to_hex("E4AA"); end
	def atm;                                                       return convert_unicode_to_hex("E4A3"); end
	def hotel;                                                     return convert_unicode_to_hex("EA81"); end
	def love_hotel;                                                return convert_unicode_to_hex("EAF3"); end
	def convenience_store;                                         return convert_unicode_to_hex("E4A4"); end
	def school;                                                    return convert_unicode_to_hex("EA80"); end
	def church;                                                    return convert_unicode_to_hex("E5BB"); end
	def fountain;                                                  return convert_unicode_to_hex("E5CF"); end
	def department_store;                                          return convert_unicode_to_hex("EAF6"); end
	def japanese_castle;                                           return convert_unicode_to_hex("EAF7"); end
	def western_castle;                                            return convert_unicode_to_hex("EAF8"); end
	def factory;                                                   return convert_unicode_to_hex("EAF9"); end
	def anchor;                                                    return convert_unicode_to_hex("E4A9"); end
	def izakaya_lantern;                                           return convert_unicode_to_hex("E4BD"); end

	def emoji_compatibility_symbol_1;                              return convert_unicode_to_hex("E5BD"); end
	def emoji_compatibility_symbol_2;                              return convert_unicode_to_hex("E4C0"); end
	def emoji_compatibility_symbol_3;                              warning(get_this_method); return nil; end
	def emoji_compatibility_symbol_4;                              return convert_unicode_to_hex("E572"); end
	def emoji_compatibility_symbol_5;                              return convert_unicode_to_hex("EB6C"); end

	def wrench;                                                    return convert_unicode_to_hex("E587"); end
	def hammer;                                                    return convert_unicode_to_hex("E5CB"); end
	def nut_and_bolt;                                              return convert_unicode_to_hex("E581"); end

	def mans_shoe;                                                 return convert_unicode_to_hex("E5B7"); end
	def sneaker;                                                   return convert_unicode_to_hex("EB2B"); end
	def high_heeled_shoe;                                          return convert_unicode_to_hex("E51A"); end
	def womans_sandal;                                             return convert_unicode_to_hex("E51A"); end
	def womans_boots;                                              return convert_unicode_to_hex("EA9F"); end
	def eyeglasses;                                                return convert_unicode_to_hex("E4FE"); end
	def t_shirt;                                                   return convert_unicode_to_hex("E5B6"); end
	def jeans;                                                     return convert_unicode_to_hex("EB77"); end
	def crown;                                                     return convert_unicode_to_hex("E5C9"); end
	def necktie;                                                   return convert_unicode_to_hex("EA93"); end
	def womans_hat;                                                return convert_unicode_to_hex("EA9E"); end
	def dress;                                                     return convert_unicode_to_hex("EB6B"); end
	def kimono;                                                    return convert_unicode_to_hex("EAA3"); end
	def bikini;                                                    return convert_unicode_to_hex("EAA4"); end
	def womans_clothes;                                            return convert_unicode_to_hex("E50D"); end
	def purse;                                                     return convert_unicode_to_hex("E504"); end

	def money_bag;                                                 return convert_unicode_to_hex("E4C7"); end
	def currency_exchange;                                         warning(get_this_method); return nil; end
	def chart_with_upwards_trend_and_yen_symbol;                   return convert_unicode_to_hex("E5DC"); end
	def heavy_dollar_sign;                                         return convert_unicode_to_hex("E579"); end
	def credit_card;                                               return convert_unicode_to_hex("E57C"); end
	def banknote_with_yen_sign;                                    return convert_unicode_to_hex("E57D"); end
	def banknote_with_dollar_sign;                                 return convert_unicode_to_hex("E585"); end
	def money_with_wings;                                          return convert_unicode_to_hex("EB5B"); end

	def emoji_compatibility_symbol_6;                              return convert_unicode_to_hex("EB11"); end
	def emoji_compatibility_symbol_7;                              return convert_unicode_to_hex("EB0E"); end
	def emoji_compatibility_symbol_8;                              return convert_unicode_to_hex("E5D5"); end
	def emoji_compatibility_symbol_9;                              return convert_unicode_to_hex("EAFA"); end
	def emoji_compatibility_symbol_10;                             return convert_unicode_to_hex("EB10"); end
	def emoji_compatibility_symbol_11;                             return convert_unicode_to_hex("EB0F"); end
	def emoji_compatibility_symbol_12;                             return convert_unicode_to_hex("E4CC"); end
	def emoji_compatibility_symbol_13;                             return convert_unicode_to_hex("EB12"); end
	def emoji_compatibility_symbol_14;                             return convert_unicode_to_hex("E5D6"); end
	def emoji_compatibility_symbol_15;                             return convert_unicode_to_hex("E573"); end

	def camera;                                                    return convert_unicode_to_hex("E515"); end
	def handbag;                                                   return convert_unicode_to_hex("E49C"); end
	def pouch;                                                     warning(get_this_method); return nil; end
	def bell;                                                      return convert_unicode_to_hex("E512"); end
	def door;                                                      warning(get_this_method); return nil; end
	def dung;                                                      return convert_unicode_to_hex("E4F5"); end
	def pistol;                                                    return convert_unicode_to_hex("E50A"); end
	def fire;                                                      return convert_unicode_to_hex("E47B"); end
	def crystal_ball;                                              return convert_unicode_to_hex("EA8F"); end
	def six_pointed_star_with_middle_dot;                          return convert_unicode_to_hex("EA8F"); end
	def video_camera;                                              return convert_unicode_to_hex("E57E"); end
	def knife;                                                     return convert_unicode_to_hex("E57F"); end
	def flashlight;                                                return convert_unicode_to_hex("E583"); end
	def battery;                                                   return convert_unicode_to_hex("E584"); end
	def scroll;                                                    return convert_unicode_to_hex("E55F"); end
	def electric_plug;                                             return convert_unicode_to_hex("E589"); end
	def book_1;                                                    return convert_unicode_to_hex("E565"); end
	def book_2;                                                    return convert_unicode_to_hex("E566"); end
	def book_3;                                                    return convert_unicode_to_hex("E567"); end
	def vertical_closed_book;                                      return convert_unicode_to_hex("E568"); end
	def books;                                                     return convert_unicode_to_hex("E56F"); end
	def name_badge;                                                return convert_unicode_to_hex("E51D"); end

	def bath;                                                      return convert_unicode_to_hex("E5D8"); end
	def restroom;                                                  return convert_unicode_to_hex("E4A5"); end
	def toilet;                                                    return convert_unicode_to_hex("E4A5"); end
	def water_closet;                                              return convert_unicode_to_hex("E4A5"); end

	def syringe;                                                   return convert_unicode_to_hex("E510"); end
	def pill;                                                      return convert_unicode_to_hex("EA9A"); end

	def negative_squared_latin_capital_letter_a;                   return convert_unicode_to_hex("EB26"); end
	def negative_squared_latin_capital_letter_b;                   return convert_unicode_to_hex("EB27"); end
	def negative_squared_ab;                                       return convert_unicode_to_hex("EB29"); end
	def negative_squared_latin_capital_letter_o;                   return convert_unicode_to_hex("EB28"); end

	def ribbon;                                                    return convert_unicode_to_hex("E59F"); end
	def wrapped_present;                                           return convert_unicode_to_hex("E4CF"); end
	def birthday_cake;                                             return convert_unicode_to_hex("E5A0"); end
	def christmas_tree;                                            return convert_unicode_to_hex("E4C9"); end
	def santa_claus;                                               return convert_unicode_to_hex("EAF0"); end
	def crossed_flags;                                             return convert_unicode_to_hex("E5D9"); end
	def fireworks;                                                 return convert_unicode_to_hex("E5CC"); end
	def balloon;                                                   return convert_unicode_to_hex("EA9B"); end
	def party_popper;                                              return convert_unicode_to_hex("EA9C"); end
	def pine_decoration;                                           return convert_unicode_to_hex("EAE3"); end
	def girls_doll_festival;                                       return convert_unicode_to_hex("EAE4"); end
	def graduation_cap;                                            return convert_unicode_to_hex("EAE5"); end
	def school_satchel;                                            return convert_unicode_to_hex("EAE6"); end
	def carp_streamer;                                             return convert_unicode_to_hex("EAE7"); end
	def firework_sparkler;                                         return convert_unicode_to_hex("EAEB"); end
	def wind_chime;                                                return convert_unicode_to_hex("EAED"); end
	def jack_o_lantern;                                            return convert_unicode_to_hex("EAEE"); end
	def confetti_ball;                                             return convert_unicode_to_hex("E46F"); end
	def tanabata_tree;                                             return convert_unicode_to_hex("EB3D"); end
	def moon_viewing_ceremony;                                     return convert_unicode_to_hex("EAEF"); end

	def pager;                                                     return convert_unicode_to_hex("E59B"); end
	def black_telephone;                                           return convert_unicode_to_hex("E596"); end
	def telephone_receiver;                                        return convert_unicode_to_hex("E51E"); end
	def mobile_phone;                                              return convert_unicode_to_hex("E588"); end
	def phone_with_arrow;                                          return convert_unicode_to_hex("EB08"); end
	def memo;                                                      return convert_unicode_to_hex("EA92"); end
	def fax;                                                       return convert_unicode_to_hex("E520"); end
	def envelope;                                                  return convert_unicode_to_hex("E521"); end
	def incoming_envelope;                                         return convert_unicode_to_hex("E591"); end
	def envelope_with_arrow;                                       return convert_unicode_to_hex("EB62"); end
	def mailbox;                                                   return convert_unicode_to_hex("E51B"); end
	def mailbox_with_raised_flag;                                  return convert_unicode_to_hex("EB0A"); end
	def postbox;                                                   return convert_unicode_to_hex("E51B"); end
	def public_address_loudspeaker;                                return convert_unicode_to_hex("E511"); end
	def cheering_megaphone;                                        return convert_unicode_to_hex("E511"); end
	def satellite_antenna;                                         return convert_unicode_to_hex("E4A8"); end
	def speech_balloon;                                            return convert_unicode_to_hex("E4FD"); end
	def outbox_tray;                                               return convert_unicode_to_hex("E592"); end
	def inbox_tray;                                                return convert_unicode_to_hex("E593"); end
	def package;                                                   return convert_unicode_to_hex("E51F"); end

	def latin_capital_letters_input_symbol;                        return convert_unicode_to_hex("EAFD"); end
	def latin_small_letters_input_symbol;                          return convert_unicode_to_hex("EAFE"); end
	def numbers_input_symbol;                                      return convert_unicode_to_hex("EAFF"); end
	def symbols_input_symbol;                                      return convert_unicode_to_hex("EB00"); end
	def latin_letters_input_symbol;                                return convert_unicode_to_hex("EB55"); end

	def black_nib;                                                 return convert_unicode_to_hex("EB03"); end
	def seat;                                                      warning(get_this_method); return nil; end
	def computer;                                                  return convert_unicode_to_hex("E5B8"); end
	def pencil;                                                    return convert_unicode_to_hex("E4A1"); end
	def paperclip;                                                 return convert_unicode_to_hex("E4A0"); end
	def briefcase;                                                 return convert_unicode_to_hex("E5CE"); end
	def mini_disc;                                                 return convert_unicode_to_hex("E582"); end
	def floppy_disk;                                               return convert_unicode_to_hex("E562"); end
	def black_scissors;                                            return convert_unicode_to_hex("E516"); end
	def round_pushpin;                                             return convert_unicode_to_hex("E560"); end
	def page_with_curl;                                            return convert_unicode_to_hex("E561"); end
	def page_facing_up;                                            return convert_unicode_to_hex("E569"); end
	def calendar;                                                  return convert_unicode_to_hex("E563"); end
	def file_folder;                                               return convert_unicode_to_hex("E58F"); end
	def open_file_folder;                                          return convert_unicode_to_hex("E590"); end
	def notebook;                                                  return convert_unicode_to_hex("E56B"); end
	def open_book;                                                 return convert_unicode_to_hex("E49F"); end
	def notebook_with_decorative_cover;                            return convert_unicode_to_hex("E49D"); end
	def clipboard;                                                 return convert_unicode_to_hex("E564"); end
	def tear_off_calendar;                                         return convert_unicode_to_hex("E56A"); end
	def bar_chart;                                                 return convert_unicode_to_hex("E574"); end
	def chart_with_upwards_trend;                                  return convert_unicode_to_hex("E575"); end
	def chart_with_downwards_trend;                                return convert_unicode_to_hex("E576"); end
	def card_index;                                                return convert_unicode_to_hex("E56C"); end
	def pushpin;                                                   return convert_unicode_to_hex("E56D"); end
	def ledger;                                                    return convert_unicode_to_hex("E56E"); end
	def straight_ruler;                                            return convert_unicode_to_hex("E570"); end
	def triangular_ruler;                                          return convert_unicode_to_hex("E4A2"); end
	def bookmark_tabs;                                             return convert_unicode_to_hex("EB0B"); end

	def footprints;                                                return convert_unicode_to_hex("EB2A"); end


	def running_shirt_with_sash;                                   warning(get_this_method); return nil; end
	def baseball;                                                  return convert_unicode_to_hex("E4BA"); end
	def flag_in_hole;                                              return convert_unicode_to_hex("E599"); end
	def tennis;                                                    return convert_unicode_to_hex("E4B7"); end
	def soccer_ball;                                               return convert_unicode_to_hex("E4B6"); end
	def skiing;                                                    return convert_unicode_to_hex("EAAC"); end
	def basketball;                                                return convert_unicode_to_hex("E59A"); end
	def checkered_flag;                                            return convert_unicode_to_hex("E4B9"); end
	def snowboarder;                                               return convert_unicode_to_hex("E4B8"); end
	def runner;                                                    return convert_unicode_to_hex("E46B"); end
	def surfer;                                                    return convert_unicode_to_hex("EB41"); end
	def trophy;                                                    return convert_unicode_to_hex("E5D3"); end
	def horse_racing;                                              return convert_unicode_to_hex("E4D8"); end
	def american_football;                                         return convert_unicode_to_hex("E4BB"); end
	def swimmer;                                                   return convert_unicode_to_hex("EADE"); end

	def train;                                                     return convert_unicode_to_hex("E4B5"); end
	def subway;                                                    return convert_unicode_to_hex("E5BC"); end
	def circled_latin_capital_letter_m;                            return convert_unicode_to_hex("E5BC"); end
	def high_speed_train;                                          return convert_unicode_to_hex("E4B0"); end
	def high_speed_train_with_bullet_nose;                         return convert_unicode_to_hex("E4B0"); end
	def automobile_1;                                              return convert_unicode_to_hex("E4B1"); end
	def recreational_vehicle;                                      return convert_unicode_to_hex("E4B1"); end
	def bus_2;                                                     return convert_unicode_to_hex("E4AF"); end
	def bus_stop;                                                  return convert_unicode_to_hex("E4A7"); end
	def ship;                                                      return convert_unicode_to_hex("EA82"); end
	def airplane;                                                  return convert_unicode_to_hex("E4B3"); end
	def sailboat;                                                  return convert_unicode_to_hex("E4B4"); end
	def bicycle;                                                   return convert_unicode_to_hex("E4AE"); end
	def station;                                                   return convert_unicode_to_hex("EB6D"); end
	def rocket;                                                    return convert_unicode_to_hex("E5C8"); end
	def speedboat;                                                 return convert_unicode_to_hex("E4B4"); end
	def taxi_1;                                                    return convert_unicode_to_hex("E4B1"); end
	def pedestrian;                                                return convert_unicode_to_hex("EB72"); end
	def truck;                                                     return convert_unicode_to_hex("E4B2"); end
	def fire_engine;                                               return convert_unicode_to_hex("EADF"); end
	def ambulance;                                                 return convert_unicode_to_hex("EAE0"); end
	def police_car_1;                                              return convert_unicode_to_hex("EAE1"); end

	def fuel_pump;                                                 return convert_unicode_to_hex("E571"); end
	def negative_squared_latin_capital_letter_p;                   return convert_unicode_to_hex("E4A6"); end

	def horizontal_traffic_light;                                  return convert_unicode_to_hex("E46A"); end
	def construction_sign;                                         return convert_unicode_to_hex("E5D7"); end
	def police_cars_revolving_light;                               return convert_unicode_to_hex("EB73"); end

	def hot_springs;                                               return convert_unicode_to_hex("E4BC"); end
	def tent;                                                      return convert_unicode_to_hex("E5D0"); end
	def carousel_horse;                                            warning(get_this_method); return nil; end
	def ferris_wheel;                                              return convert_unicode_to_hex("E46D"); end
	def roller_coaster;                                            return convert_unicode_to_hex("EAE2"); end
	def fishing;                                                   return convert_unicode_to_hex("EB42"); end
	def microphone;                                                return convert_unicode_to_hex("E503"); end
	def movies;                                                    return convert_unicode_to_hex("E517"); end
	def cinema;                                                    return convert_unicode_to_hex("E517"); end
	def headphone;                                                 return convert_unicode_to_hex("E508"); end
	def art;                                                       return convert_unicode_to_hex("E59C"); end
	def top_hat;                                                   return convert_unicode_to_hex("EAF5"); end
	def event;                                                     return convert_unicode_to_hex("E59E"); end
	def ticket;                                                    return convert_unicode_to_hex("E49E"); end
	def movie_shooting_clapboard;                                  return convert_unicode_to_hex("E4BE"); end
	def performing_arts;                                           return convert_unicode_to_hex("E59D"); end

	def video_game;                                                return convert_unicode_to_hex("E4C6"); end
	def mahjong_tile_red_dragon;                                   return convert_unicode_to_hex("E5D1"); end
	def direct_hit;                                                return convert_unicode_to_hex("E4C5"); end
	def slot_machine;                                              return convert_unicode_to_hex("E46E"); end
	def billiards;                                                 return convert_unicode_to_hex("EADD"); end
	def game_die;                                                  return convert_unicode_to_hex("E4C8"); end
	def bowling;                                                   return convert_unicode_to_hex("EB43"); end
	def flower_playing_cards;                                      return convert_unicode_to_hex("EB6E"); end
	def playing_card_black_joker;                                  return convert_unicode_to_hex("EB6F"); end

	def musical_note;                                              return convert_unicode_to_hex("E5BE"); end
	def multiple_musical_notes;                                    return convert_unicode_to_hex("E505"); end
	def saxophone;                                                 warning(get_this_method); return nil; end
	def guitar;                                                    return convert_unicode_to_hex("E506"); end
	def musical_keyboard;                                          return convert_unicode_to_hex("EB40"); end
	def trumpet;                                                   return convert_unicode_to_hex("EADC"); end
	def violin;                                                    return convert_unicode_to_hex("E507"); end
	def musical_score;                                             return convert_unicode_to_hex("EACC"); end
	def part_alternation_mark;                                     warning(get_this_method); return nil; end

	def television;                                                return convert_unicode_to_hex("E502"); end
	def optical_disk;                                              return convert_unicode_to_hex("E50C"); end
	def dvd;                                                       return convert_unicode_to_hex("E50C"); end
	def radio;                                                     return convert_unicode_to_hex("E5B9"); end
	def video_cassette_tape;                                       return convert_unicode_to_hex("E580"); end
	def speaker_with_three_sound_waves;                            return convert_unicode_to_hex("E511"); end
	def newspaper;                                                 return convert_unicode_to_hex("E58B"); end

	def kiss_mark;                                                 return convert_unicode_to_hex("E4EB"); end
	def love_letter;                                               return convert_unicode_to_hex("EB78"); end
	def ring;                                                      return convert_unicode_to_hex("E514"); end
	def gem_stone;                                                 return convert_unicode_to_hex("E514"); end
	def kiss;                                                      return convert_unicode_to_hex("E5CA"); end
	def bouquet;                                                   return convert_unicode_to_hex("EA95"); end
	def couple_with_heart;                                         return convert_unicode_to_hex("EADA"); end
	def wedding;                                                   return convert_unicode_to_hex("E5BB"); end

	def hash_key;                                                  return convert_unicode_to_hex("EB84"); end
	def keycap_1;                                                  return convert_unicode_to_hex("E522"); end
	def keycap_2;                                                  return convert_unicode_to_hex("E523"); end
	def keycap_3;                                                  return convert_unicode_to_hex("E524"); end
	def keycap_4;                                                  return convert_unicode_to_hex("E525"); end
	def keycap_5;                                                  return convert_unicode_to_hex("E526"); end
	def keycap_6;                                                  return convert_unicode_to_hex("E527"); end
	def keycap_7;                                                  return convert_unicode_to_hex("E528"); end
	def keycap_8;                                                  return convert_unicode_to_hex("E529"); end
	def keycap_9;                                                  return convert_unicode_to_hex("E52A"); end
	def keycap_0;                                                  return convert_unicode_to_hex("E5AC"); end
	def keycap_ten;                                                return convert_unicode_to_hex("E52B"); end
	def antenna_with_bars;                                         return convert_unicode_to_hex("EA84"); end
	def vibration_mode;                                            return convert_unicode_to_hex("EA90"); end
	def mobile_phone_off;                                          return convert_unicode_to_hex("EA91"); end


	def hamburger;                                                 return convert_unicode_to_hex("E4D6"); end
	def rice_ball;                                                 return convert_unicode_to_hex("E4D5"); end
	def shortcake;                                                 return convert_unicode_to_hex("E4D0"); end
	def steaming_bowl;                                             return convert_unicode_to_hex("E5B4"); end
	def bread;                                                     return convert_unicode_to_hex("EAAF"); end
	def cooking;                                                   return convert_unicode_to_hex("E4D1"); end
	def soft_ice_cream;                                            return convert_unicode_to_hex("EAB0"); end
	def french_fries;                                              return convert_unicode_to_hex("EAB1"); end
	def dumpling;                                                  return convert_unicode_to_hex("EAB2"); end
	def rice_cracker;                                              return convert_unicode_to_hex("EAB3"); end
	def cooked_rice;                                               return convert_unicode_to_hex("EAB4"); end
	def spaghetti;                                                 return convert_unicode_to_hex("EAB5"); end
	def curry_and_rice;                                            return convert_unicode_to_hex("EAB6"); end
	def seafood_casserole;                                         return convert_unicode_to_hex("EAB7"); end
	def sushi;                                                     return convert_unicode_to_hex("EAB8"); end
	def lunchbox;                                                  return convert_unicode_to_hex("EABD"); end
	def pot_of_food;                                               return convert_unicode_to_hex("EABE"); end
	def shaved_ice;                                                return convert_unicode_to_hex("EAEA"); end
	def meat_on_bone;                                              return convert_unicode_to_hex("E4C4"); end
	def fish_cake_with_swirl_design;                               return convert_unicode_to_hex("E4ED"); end
	def roasted_sweet_potato;                                      return convert_unicode_to_hex("EB3A"); end
	def slice_of_pizza;                                            return convert_unicode_to_hex("EB3B"); end
	def poultry_leg;                                               return convert_unicode_to_hex("EB3C"); end
	def ice_cream;                                                 return convert_unicode_to_hex("EB4A"); end
	def doughnut;                                                  return convert_unicode_to_hex("EB4B"); end
	def cookie;                                                    return convert_unicode_to_hex("EB4C"); end
	def chocolate_bar;                                             return convert_unicode_to_hex("EB4D"); end
	def candy;                                                     return convert_unicode_to_hex("EB4E"); end
	def lollipop;                                                  return convert_unicode_to_hex("EB4F"); end
	def custard;                                                   return convert_unicode_to_hex("EB56"); end
	def honey_pot;                                                 return convert_unicode_to_hex("EB59"); end
	def fried_shrimp;                                              return convert_unicode_to_hex("EB70"); end
	def fork_and_knife;                                            return convert_unicode_to_hex("E4AC"); end

	def hot_beverage;                                              return convert_unicode_to_hex("E597"); end
	def cocktail_glass;                                            return convert_unicode_to_hex("E4C2"); end
	def beer_mug;                                                  return convert_unicode_to_hex("E4C3"); end
	def teacup_without_handle;                                     return convert_unicode_to_hex("EAAE"); end
	def sake_bottle_and_cup;                                       return convert_unicode_to_hex("EA97"); end
	def wine_glass;                                                return convert_unicode_to_hex("E4C1"); end
	def clinking_beer_mugs;                                        return convert_unicode_to_hex("EA98"); end
	def tropical_drink;                                            return convert_unicode_to_hex("EB3E"); end


	def north_east_arrow;                                          return convert_unicode_to_hex("E555"); end
	def south_east_arrow;                                          return convert_unicode_to_hex("E54D"); end
	def north_west_arrow;                                          return convert_unicode_to_hex("E54C"); end
	def south_west_arrow;                                          return convert_unicode_to_hex("E556"); end
	def arrow_pointing_rightwards_then_curving_upwards;            return convert_unicode_to_hex("EB2D"); end
	def arrow_pointing_rightwards_then_curving_downwards;          return convert_unicode_to_hex("EB2E"); end
	def left_right_arrow;                                          return convert_unicode_to_hex("EB7A"); end
	def up_down_arrow;                                             return convert_unicode_to_hex("EB7B"); end
	def upwards_black_arrow;                                       return convert_unicode_to_hex("E53F"); end
	def downwards_black_arrow;                                     return convert_unicode_to_hex("E540"); end
	def black_rightwards_arrow;                                    return convert_unicode_to_hex("E552"); end
	def leftwards_black_arrow;                                     return convert_unicode_to_hex("E553"); end

	def black_right_pointing_triangle;                             return convert_unicode_to_hex("E52E"); end
	def black_left_pointing_triangle;                              return convert_unicode_to_hex("E52D"); end
	def black_right_pointing_double_triangle;                      return convert_unicode_to_hex("E530"); end
	def black_left_pointing_double_triangle;                       return convert_unicode_to_hex("E52F"); end
	def black_up_pointing_double_triangle;                         return convert_unicode_to_hex("E545"); end
	def black_down_pointing_double_triangle;                       return convert_unicode_to_hex("E544"); end
	def up_pointing_triangle_1;                                    return convert_unicode_to_hex("E55A"); end
	def down_pointing_triangle_1;                                  return convert_unicode_to_hex("E55B"); end
	def up_pointing_small_triangle_1;                              return convert_unicode_to_hex("E543"); end
	def down_pointing_small_triangle_1;                            return convert_unicode_to_hex("E542"); end

	def heavy_exclamation_mark_ornament;                           return convert_unicode_to_hex("E482"); end
	def exclamation_question_mark;                                 return convert_unicode_to_hex("EB2F"); end
	def double_exclamation_mark;                                   return convert_unicode_to_hex("EB30"); end
	def black_question_mark_ornament;                              return convert_unicode_to_hex("E483"); end
	def white_question_mark_ornament;                              return convert_unicode_to_hex("E483"); end
	def white_exclamation_mark_ornament;                           return convert_unicode_to_hex("E482"); end

	def wavy_dash;                                                 warning(get_this_method); return nil; end
	def looped_length_mark;                                        return convert_unicode_to_hex("EB31"); end

	def heavy_black_heart;                                         return convert_unicode_to_hex("E595"); end
	def beating_heart;                                             return convert_unicode_to_hex("EB75"); end
	def broken_heart;                                              return convert_unicode_to_hex("E477"); end
	def two_hearts;                                                return convert_unicode_to_hex("E478"); end
	def sparkling_heart;                                           return convert_unicode_to_hex("EAA6"); end
	def growing_heart;                                             return convert_unicode_to_hex("EB75"); end
	def heart_with_arrow;                                          return convert_unicode_to_hex("E4EA"); end
	def heart_1;                                                   return convert_unicode_to_hex("EAA7"); end
	def heart_2;                                                   return convert_unicode_to_hex("EAA8"); end
	def heart_3;                                                   return convert_unicode_to_hex("EAA9"); end
	def heart_4;                                                   return convert_unicode_to_hex("EAAA"); end
	def heart_with_ribbon;                                         return convert_unicode_to_hex("EB54"); end
	def revolving_hearts;                                          return convert_unicode_to_hex("E5AF"); end
	def heart_decoration;                                          return convert_unicode_to_hex("E595"); end

	def black_heart_suit;                                          return convert_unicode_to_hex("EAA5"); end
	def black_spade_suit;                                          return convert_unicode_to_hex("E5A1"); end
	def black_diamond_suit;                                        return convert_unicode_to_hex("E5A2"); end
	def black_club_suit;                                           return convert_unicode_to_hex("E5A3"); end

	def smoking_symbol;                                            return convert_unicode_to_hex("E47D"); end
	def no_smoking_symbol;                                         return convert_unicode_to_hex("E47E"); end
	def wheelchair_symbol;                                         return convert_unicode_to_hex("E47F"); end
	def japanese_symbol_for_beginner;                              return convert_unicode_to_hex("E480"); end
	def trident_emblem;                                            return convert_unicode_to_hex("E5C9"); end
	def triangular_flag_on_post;                                   return convert_unicode_to_hex("EB2C"); end
	def warning_sign;                                              return convert_unicode_to_hex("E481"); end
	def no_entry;                                                  return convert_unicode_to_hex("E484"); end
	def black_universal_recycling_symbol;                          return convert_unicode_to_hex("EB79"); end
	def mens_symbol;                                               warning(get_this_method); return nil; end
	def womens_symbol;                                             warning(get_this_method); return nil; end
	def baby_symbol;                                               return convert_unicode_to_hex("EB18"); end
	def heavy_large_circle;                                        return convert_unicode_to_hex("EAAD"); end
	def cross_mark;                                                return convert_unicode_to_hex("E550"); end
	def negative_squared_cross_mark;                               return convert_unicode_to_hex("E551"); end
	def no_entry_sign;                                             return convert_unicode_to_hex("E541"); end
	def heavy_check_mark;                                          return convert_unicode_to_hex("E557"); end
	def white_heavy_check_mark;                                    return convert_unicode_to_hex("E55E"); end
	def link_symbol;                                               return convert_unicode_to_hex("E58A"); end
	def em_space;                                                  return convert_unicode_to_hex("E58C"); end
	def en_space;                                                  return convert_unicode_to_hex("E58D"); end
	def four_per_em_space;                                         return convert_unicode_to_hex("E58E"); end

	def free_sign;                                                 return convert_unicode_to_hex("E578"); end
	def no_one_under_eighteen_sign;                                return convert_unicode_to_hex("EA83"); end
	def ok_sign;                                                   return convert_unicode_to_hex("E5AD"); end
	def no_good_sign;                                              warning(get_this_method); return nil; end
	def copyright_sign;                                            return convert_unicode_to_hex("E558"); end
	def registered_sign;                                           return convert_unicode_to_hex("E559"); end
	def trade_mark_sign;                                           return convert_unicode_to_hex("E54E"); end
	def vs_sign;                                                   return convert_unicode_to_hex("E5D2"); end
	def new_sign;                                                  return convert_unicode_to_hex("E5B5"); end
	def up_sign;                                                   return convert_unicode_to_hex("E50F"); end
	def cool_sign;                                                 return convert_unicode_to_hex("EA85"); end
	def top_with_up_pointing_triangle_sign;                        warning(get_this_method); return nil; end
	def information_source;                                        return convert_unicode_to_hex("E533"); end
	def sos_sign;                                                  return convert_unicode_to_hex("E4E8"); end

	def squared_katakana_koko;                                     warning(get_this_method); return nil; end
	def squared_katakana_sa;                                       return convert_unicode_to_hex("EA87"); end

	def squared_cjk_unified_ideograph_7981;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_7a7a;                        return convert_unicode_to_hex("EA8A"); end
	def squared_cjk_unified_ideograph_5408;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_6e80;                        return convert_unicode_to_hex("EA89"); end
	def squared_cjk_unified_ideograph_6709;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_7121;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_6708;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_7533;                        warning(get_this_method); return nil; end
	def squared_cjk_unified_ideograph_5272;                        return convert_unicode_to_hex("EA86"); end
	def squared_cjk_unified_ideograph_6307;                        return convert_unicode_to_hex("EA8B"); end
	def squared_cjk_unified_ideograph_55b6;                        return convert_unicode_to_hex("EA8C"); end

	def circled_ideograph_secret;                                  return convert_unicode_to_hex("E4F1"); end
	def circled_ideograph_congratulation;                          return convert_unicode_to_hex("EA99"); end
	def circled_ideograph_advantage;                               return convert_unicode_to_hex("E4F7"); end
	def circled_ideograph_accept;                                  return convert_unicode_to_hex("EB01"); end

	def heavy_plus_sign;                                           return convert_unicode_to_hex("E53C"); end
	def heavy_minus_sign;                                          return convert_unicode_to_hex("E53D"); end
	def heavy_multiplication_x;                                    return convert_unicode_to_hex("E54F"); end
	def heavy_division_sign;                                       return convert_unicode_to_hex("E554"); end

	def diamond_shape_with_a_dot_inside;                           warning(get_this_method); return nil; end
	def electric_light_bulb;                                       return convert_unicode_to_hex("E476"); end
	def anger_sign;                                                return convert_unicode_to_hex("E4E5"); end
	def bomb;                                                      return convert_unicode_to_hex("E47A"); end
	def sleeping_sign;                                             return convert_unicode_to_hex("E475"); end
	def collision_symbol;                                          return convert_unicode_to_hex("E5B0"); end
	def splashing_sweat;                                           return convert_unicode_to_hex("E5B1"); end
	def drip;                                                      return convert_unicode_to_hex("E4E6"); end
	def dash_symbol;                                               return convert_unicode_to_hex("E4F4"); end
	def flexed_bicep;                                              return convert_unicode_to_hex("E4E9"); end
	def dizzy_symbol;                                              return convert_unicode_to_hex("EB5C"); end

	def sparkles;                                                  return convert_unicode_to_hex("EAAB"); end
	def eight_pointed_black_star;                                  return convert_unicode_to_hex("E479"); end
	def eight_spoked_asterisk;                                     return convert_unicode_to_hex("E53E"); end
	def medium_white_circle;                                       return convert_unicode_to_hex("E53A"); end
	def medium_black_circle;                                       return convert_unicode_to_hex("E53B"); end
	def large_circle_1;                                            return convert_unicode_to_hex("E54A"); end
	def large_circle_2;                                            return convert_unicode_to_hex("E54B"); end
	def black_rounded_square;                                      return convert_unicode_to_hex("E54B"); end
	def white_rounded_square;                                      return convert_unicode_to_hex("E54B"); end
	def white_medium_star;                                         return convert_unicode_to_hex("E48B"); end
	def glowing_star;                                              return convert_unicode_to_hex("E48B"); end
	def shooting_star;                                             return convert_unicode_to_hex("E468"); end
	def white_large_square;                                        return convert_unicode_to_hex("E548"); end
	def black_large_square;                                        return convert_unicode_to_hex("E549"); end
	def white_small_square;                                        return convert_unicode_to_hex("E531"); end
	def black_small_square;                                        return convert_unicode_to_hex("E532"); end
	def white_medium_small_square;                                 return convert_unicode_to_hex("E534"); end
	def black_medium_small_square;                                 return convert_unicode_to_hex("E535"); end
	def white_medium_square;                                       return convert_unicode_to_hex("E538"); end
	def black_medium_square;                                       return convert_unicode_to_hex("E539"); end
	def large_diamond_1;                                           return convert_unicode_to_hex("E546"); end
	def large_diamond_2;                                           return convert_unicode_to_hex("E547"); end
	def small_diamond_1;                                           return convert_unicode_to_hex("E536"); end
	def small_diamond_2;                                           return convert_unicode_to_hex("E537"); end
	def sparkle;                                                   return convert_unicode_to_hex("E46C"); end

	def white_flower;                                              return convert_unicode_to_hex("E4F0"); end
	def hundred_points_symbol;                                     return convert_unicode_to_hex("E4F2"); end

	def identification_sign;                                       return convert_unicode_to_hex("EA88"); end
	def clear_sign;                                                return convert_unicode_to_hex("E5AB"); end
	def leftwards_arrow_with_hook;                                 return convert_unicode_to_hex("E55D"); end
	def rightwards_arrow_with_hook;                                return convert_unicode_to_hex("E55C"); end
	def left_pointing_magnifying_glass;                            return convert_unicode_to_hex("E518"); end
	def right_pointing_magnifying_glass;                           return convert_unicode_to_hex("EB05"); end
	def lock;                                                      return convert_unicode_to_hex("E51C"); end
	def open_lock;                                                 return convert_unicode_to_hex("E51C"); end
	def lock_with_ink_pen;                                         return convert_unicode_to_hex("EB0C"); end
	def closed_lock_with_key;                                      return convert_unicode_to_hex("EAFC"); end
	def key;                                                       return convert_unicode_to_hex("E519"); end
	def ballot_box_with_check;                                     return convert_unicode_to_hex("EB02"); end
	def radio_button;                                              return convert_unicode_to_hex("EB04"); end
	def back_with_left_arrow_above;                                return convert_unicode_to_hex("EB06"); end
	def bookmark;                                                  return convert_unicode_to_hex("EB07"); end
	def double_clockwise_open_circle_arrows;                       return convert_unicode_to_hex("EB0D"); end
	def e_mail_symbol;                                             return convert_unicode_to_hex("EB71"); end

	def raised_fist;                                               return convert_unicode_to_hex("EB83"); end
	def raised_hand;                                               return convert_unicode_to_hex("E5A7"); end
	def victory_hand;                                              return convert_unicode_to_hex("E5A6"); end

	def fisted_hand;                                               return convert_unicode_to_hex("E4F3"); end
	def thumbs_up_sign;                                            return convert_unicode_to_hex("E4F9"); end
	def white_up_pointing_index;                                   return convert_unicode_to_hex("E4F6"); end
	def white_up_pointing_backhand_index;                          return convert_unicode_to_hex("EA8D"); end
	def white_down_pointing_backhand_index;                        return convert_unicode_to_hex("EA8E"); end
	def white_left_pointing_backhand_index;                        return convert_unicode_to_hex("E4FF"); end
	def white_right_pointing_backhand_index;                       return convert_unicode_to_hex("E500"); end
	def waving_hand;                                               return convert_unicode_to_hex("EAD6"); end
	def clapping_hands;                                            return convert_unicode_to_hex("EAD3"); end
	def ok_hand_sign;                                              return convert_unicode_to_hex("EAD4"); end
	def thumbs_down_sign;                                          return convert_unicode_to_hex("EAD5"); end
	def open_hands;                                                return convert_unicode_to_hex("EAD6"); end
end

class Google < Emoji
	def black_sun_with_rays;                                       return convert_unicode_to_hex("FE000"); end
	def cloud;                                                     return convert_unicode_to_hex("FE001"); end
	def umbrella_with_rain_drops;                                  return convert_unicode_to_hex("FE002"); end
	def snowman_without_snow;                                      return convert_unicode_to_hex("FE003"); end
	def high_voltage_sign;                                         return convert_unicode_to_hex("FE004"); end
	def cyclone;                                                   return convert_unicode_to_hex("FE005"); end
	def foggy;                                                     return convert_unicode_to_hex("FE006"); end
	def closed_umbrella;                                           return convert_unicode_to_hex("FE007"); end
	def night_with_stars;                                          return convert_unicode_to_hex("FE008"); end
	def sunrise_over_mountains;                                    return convert_unicode_to_hex("FE009"); end
	def sunrise;                                                   return convert_unicode_to_hex("FE00A"); end
	def cityscape_at_dusk;                                         return convert_unicode_to_hex("FE00B"); end
	def sunset_over_buildings;                                     return convert_unicode_to_hex("FE00C"); end
	def rainbow;                                                   return convert_unicode_to_hex("FE00D"); end
	def snowflake;                                                 return convert_unicode_to_hex("FE00E"); end
	def sun_behind_cloud;                                          return convert_unicode_to_hex("FE00F"); end
	def bridge_at_night;                                           return convert_unicode_to_hex("FE010"); end

	def new_moon_symbol;                                           return convert_unicode_to_hex("FE011"); end
	def waxing_gibbous_moon_symbol;                                return convert_unicode_to_hex("FE012"); end
	def first_quarter_moon_symbol;                                 return convert_unicode_to_hex("FE013"); end
	def crescent_moon;                                             return convert_unicode_to_hex("FE014"); end
	def full_moon_symbol;                                          return convert_unicode_to_hex("FE015"); end
	def first_quarter_moon_with_face;                              return convert_unicode_to_hex("FE016"); end

	def soon_with_right_arrow_above;                               return convert_unicode_to_hex("FE018"); end
	def on_with_double_pointing_arrow_above;                       return convert_unicode_to_hex("FE019"); end
	def end_with_left_arrow_above;                                 return convert_unicode_to_hex("FE01A"); end
	def hourglass_with_flowing_sand;                               return convert_unicode_to_hex("FE01B"); end
	def hourglass;                                                 return convert_unicode_to_hex("FE01C"); end
	def watch;                                                     return convert_unicode_to_hex("FE01D"); end
	def clock_face_one_oclock;                                     return convert_unicode_to_hex("FE01E"); end
	def clock_face_two_oclock;                                     return convert_unicode_to_hex("FE01F"); end
	def clock_face_three_oclock;                                   return convert_unicode_to_hex("FE020"); end
	def clock_face_four_oclock;                                    return convert_unicode_to_hex("FE021"); end
	def clock_face_five_oclock;                                    return convert_unicode_to_hex("FE022"); end
	def clock_face_six_oclock;                                     return convert_unicode_to_hex("FE023"); end
	def clock_face_seven_oclock;                                   return convert_unicode_to_hex("FE024"); end
	def clock_face_eight_oclock;                                   return convert_unicode_to_hex("FE025"); end
	def clock_face_nine_oclock;                                    return convert_unicode_to_hex("FE026"); end
	def clock_face_ten_oclock;                                     return convert_unicode_to_hex("FE027"); end
	def clock_face_eleven_oclock;                                  return convert_unicode_to_hex("FE028"); end
	def clock_face_twelve_oclock;                                  return convert_unicode_to_hex("FE029"); end

	def alarm_clock;                                               return convert_unicode_to_hex("FE02A"); end

	def aries;                                                     return convert_unicode_to_hex("FE02B"); end
	def taurus;                                                    return convert_unicode_to_hex("FE02C"); end
	def gemini;                                                    return convert_unicode_to_hex("FE02D"); end
	def cancer;                                                    return convert_unicode_to_hex("FE02E"); end
	def leo;                                                       return convert_unicode_to_hex("FE02F"); end
	def virgo;                                                     return convert_unicode_to_hex("FE030"); end
	def libra;                                                     return convert_unicode_to_hex("FE031"); end
	def scorpius;                                                  return convert_unicode_to_hex("FE032"); end
	def sagittarius;                                               return convert_unicode_to_hex("FE033"); end
	def capricorn;                                                 return convert_unicode_to_hex("FE034"); end
	def aquarius;                                                  return convert_unicode_to_hex("FE035"); end
	def pisces;                                                    return convert_unicode_to_hex("FE036"); end
	def ophiuchus;                                                 return convert_unicode_to_hex("FE037"); end

	def water_wave;                                                return convert_unicode_to_hex("FE038"); end
	def earth_globe_asia_australia;                                return convert_unicode_to_hex("FE039"); end
	def volcano;                                                   return convert_unicode_to_hex("FE03A"); end
	def milky_way;                                                 return convert_unicode_to_hex("FE03B"); end

	def four_leaf_clover;                                          return convert_unicode_to_hex("FE03C"); end
	def tulip;                                                     return convert_unicode_to_hex("FE03D"); end
	def seedling;                                                  return convert_unicode_to_hex("FE03E"); end
	def maple_leaf;                                                return convert_unicode_to_hex("FE03F"); end
	def cherry_blossom;                                            return convert_unicode_to_hex("FE040"); end
	def rose;                                                      return convert_unicode_to_hex("FE041"); end
	def fallen_leaf;                                               return convert_unicode_to_hex("FE042"); end
	def leaf_fluttering_in_wind;                                   return convert_unicode_to_hex("FE043"); end
	def hibiscus;                                                  return convert_unicode_to_hex("FE045"); end
	def sunflower;                                                 return convert_unicode_to_hex("FE046"); end
	def palm_tree;                                                 return convert_unicode_to_hex("FE047"); end
	def cactus;                                                    return convert_unicode_to_hex("FE048"); end
	def ear_of_rice;                                               return convert_unicode_to_hex("FE049"); end
	def ear_of_maize;                                              return convert_unicode_to_hex("FE04A"); end
	def mushroom;                                                  return convert_unicode_to_hex("FE04B"); end
	def chestnut;                                                  return convert_unicode_to_hex("FE04C"); end
	def blossom;                                                   return convert_unicode_to_hex("FE04D"); end
	def herb;                                                      return convert_unicode_to_hex("FE04E"); end

	def cherries;                                                  return convert_unicode_to_hex("FE04F"); end
	def banana;                                                    return convert_unicode_to_hex("FE050"); end
	def apple_1;                                                   return convert_unicode_to_hex("FE051"); end
	def tangerine;                                                 return convert_unicode_to_hex("FE052"); end
	def strawberry;                                                return convert_unicode_to_hex("FE053"); end
	def watermelon;                                                return convert_unicode_to_hex("FE054"); end
	def tomato;                                                    return convert_unicode_to_hex("FE055"); end
	def aubergine;                                                 return convert_unicode_to_hex("FE056"); end
	def melon;                                                     return convert_unicode_to_hex("FE057"); end
	def pineapple;                                                 return convert_unicode_to_hex("FE058"); end
	def grapes;                                                    return convert_unicode_to_hex("FE059"); end
	def peach;                                                     return convert_unicode_to_hex("FE05A"); end
	def apple_2;                                                   return convert_unicode_to_hex("FE05B"); end


	def eyes;                                                      return convert_unicode_to_hex("FE190"); end
	def ear;                                                       return convert_unicode_to_hex("FE191"); end
	def nose;                                                      return convert_unicode_to_hex("FE192"); end
	def mouth;                                                     return convert_unicode_to_hex("FE193"); end
	def tongue;                                                    return convert_unicode_to_hex("FE194"); end

	def lipstick;                                                  return convert_unicode_to_hex("FE195"); end
	def nail_care;                                                 return convert_unicode_to_hex("FE196"); end
	def face_massage;                                              return convert_unicode_to_hex("FE197"); end
	def haircut;                                                   return convert_unicode_to_hex("FE198"); end
	def barber_pole;                                               return convert_unicode_to_hex("FE199"); end

	def bust_in_silhouette;                                        return convert_unicode_to_hex("FE19A"); end

	def boys_head;                                                 return convert_unicode_to_hex("FE19B"); end
	def girls_head;                                                return convert_unicode_to_hex("FE19C"); end
	def mans_head;                                                 return convert_unicode_to_hex("FE19D"); end
	def womans_head;                                               return convert_unicode_to_hex("FE19E"); end
	def family;                                                    return convert_unicode_to_hex("FE19F"); end
	def couple;                                                    return convert_unicode_to_hex("FE1A0"); end
	def police_officer;                                            return convert_unicode_to_hex("FE1A1"); end
	def woman_with_bunny_ears;                                     return convert_unicode_to_hex("FE1A2"); end
	def bride_with_veil;                                           return convert_unicode_to_hex("FE1A3"); end
	def western_person;                                            return convert_unicode_to_hex("FE1A4"); end
	def man_with_gua_pi_mao;                                       return convert_unicode_to_hex("FE1A5"); end
	def man_with_turban;                                           return convert_unicode_to_hex("FE1A6"); end
	def older_man;                                                 return convert_unicode_to_hex("FE1A7"); end
	def older_woman;                                               return convert_unicode_to_hex("FE1A8"); end
	def baby;                                                      return convert_unicode_to_hex("FE1A9"); end
	def construction_worker;                                       return convert_unicode_to_hex("FE1AA"); end

	def princess;                                                  return convert_unicode_to_hex("FE1AB"); end
	def ogre;                                                      return convert_unicode_to_hex("FE1AC"); end
	def goblin;                                                    return convert_unicode_to_hex("FE1AD"); end
	def ghost;                                                     return convert_unicode_to_hex("FE1AE"); end
	def cherub;                                                    return convert_unicode_to_hex("FE1AF"); end
	def extraterrestrial_alien;                                    return convert_unicode_to_hex("FE1B0"); end
	def alien_monster;                                             return convert_unicode_to_hex("FE1B1"); end
	def imp;                                                       return convert_unicode_to_hex("FE1B2"); end
	def skull;                                                     return convert_unicode_to_hex("FE1B3"); end

	def information_desk_person;                                   return convert_unicode_to_hex("FE1B4"); end
	def guardsman;                                                 return convert_unicode_to_hex("FE1B5"); end
	def dancer;                                                    return convert_unicode_to_hex("FE1B6"); end

	def dog_face;                                                  return convert_unicode_to_hex("FE1B7"); end
	def cat_face;                                                  return convert_unicode_to_hex("FE1B8"); end
	def snail;                                                     return convert_unicode_to_hex("FE1B9"); end
	def baby_chick;                                                return convert_unicode_to_hex("FE1BA"); end
	def front_facing_baby_chick;                                   return convert_unicode_to_hex("FE1BB"); end
	def hatching_chick;                                            return convert_unicode_to_hex("FE1DD"); end
	def penguin;                                                   return convert_unicode_to_hex("FE1BC"); end
	def fish;                                                      return convert_unicode_to_hex("FE1BD"); end
	def horse_face;                                                return convert_unicode_to_hex("FE1BE"); end
	def pig_face;                                                  return convert_unicode_to_hex("FE1BF"); end
	def tiger_face;                                                return convert_unicode_to_hex("FE1C0"); end
	def bear_face;                                                 return convert_unicode_to_hex("FE1C1"); end
	def mouse_face;                                                return convert_unicode_to_hex("FE1C2"); end
	def spouting_whale;                                            return convert_unicode_to_hex("FE1C3"); end
	def monkey_face;                                               return convert_unicode_to_hex("FE1C4"); end
	def octopus;                                                   return convert_unicode_to_hex("FE1C5"); end
	def spiral_shell;                                              return convert_unicode_to_hex("FE1C6"); end
	def dolphin;                                                   return convert_unicode_to_hex("FE1C7"); end
	def bird;                                                      return convert_unicode_to_hex("FE1C8"); end
	def tropical_fish;                                             return convert_unicode_to_hex("FE1C9"); end
	def hamster_face;                                              return convert_unicode_to_hex("FE1CA"); end
	def bug;                                                       return convert_unicode_to_hex("FE1CB"); end
	def elephant;                                                  return convert_unicode_to_hex("FE1CC"); end
	def koala;                                                     return convert_unicode_to_hex("FE1CD"); end
	def monkey;                                                    return convert_unicode_to_hex("FE1CE"); end
	def sheep;                                                     return convert_unicode_to_hex("FE1CF"); end
	def wolf_face;                                                 return convert_unicode_to_hex("FE1D0"); end
	def cow_face;                                                  return convert_unicode_to_hex("FE1D1"); end
	def rabbit_face;                                               return convert_unicode_to_hex("FE1D2"); end
	def snake;                                                     return convert_unicode_to_hex("FE1D3"); end
	def chicken;                                                   return convert_unicode_to_hex("FE1D4"); end
	def boar;                                                      return convert_unicode_to_hex("FE1D5"); end
	def camel;                                                     return convert_unicode_to_hex("FE1D6"); end
	def frog_face;                                                 return convert_unicode_to_hex("FE1D7"); end
	def poodle;                                                    return convert_unicode_to_hex("FE1D8"); end
	def blowfish;                                                  return convert_unicode_to_hex("FE1D9"); end
	def ant;                                                       return convert_unicode_to_hex("FE1DA"); end
	def paw_prints;                                                return convert_unicode_to_hex("FE1DB"); end
	def turtle;                                                    return convert_unicode_to_hex("FE1DC"); end
	def dragon_face;                                               return convert_unicode_to_hex("FE1DE"); end
	def panda_face;                                                return convert_unicode_to_hex("FE1DF"); end
	def pig_nose;                                                  return convert_unicode_to_hex("FE1E0"); end
	def honeybee;                                                  return convert_unicode_to_hex("FE1E1"); end
	def ladybug;                                                   return convert_unicode_to_hex("FE1E2"); end


	def angry_face;                                                return convert_unicode_to_hex("FE320"); end
	def anguished_face;                                            return convert_unicode_to_hex("FE321"); end
	def astonished_face;                                           return convert_unicode_to_hex("FE322"); end
	def disappointed_face;                                         return convert_unicode_to_hex("FE323"); end
	def dizzy_face;                                                return convert_unicode_to_hex("FE324"); end
	def exasperated_face;                                          return convert_unicode_to_hex("FE325"); end
	def expressionless_face;                                       return convert_unicode_to_hex("FE326"); end
	def face_with_heart_shaped_eyes;                               return convert_unicode_to_hex("FE327"); end
	def face_with_look_of_triumph;                                 return convert_unicode_to_hex("FE328"); end
	def winking_face_with_stuck_out_tongue;                        return convert_unicode_to_hex("FE329"); end
	def face_with_stuck_out_tongue;                                return convert_unicode_to_hex("FE32A"); end
	def face_savoring_delicious_food;                              return convert_unicode_to_hex("FE32B"); end
	def face_throwing_a_kiss;                                      return convert_unicode_to_hex("FE32C"); end
	def face_kissing;                                              return convert_unicode_to_hex("FE32D"); end
	def face_with_mask;                                            return convert_unicode_to_hex("FE32E"); end
	def flushed_face;                                              return convert_unicode_to_hex("FE32F"); end
	def happy_face_with_open_mouth;                                return convert_unicode_to_hex("FE330"); end
	def happy_face_with_open_mouth_and_cold_sweat;                 return convert_unicode_to_hex("FE331"); end
	def happy_face_with_open_mouth_and_closed_eyes;                return convert_unicode_to_hex("FE332"); end
	def happy_face_with_grin;                                      return convert_unicode_to_hex("FE333"); end
	def happy_and_crying_face;                                     return convert_unicode_to_hex("FE334"); end
	def happy_face_with_wide_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("FE335"); end
	def white_smiling_face;                                        return convert_unicode_to_hex("FE336"); end
	def happy_face_with_open_mouth_and_raised_eyebrows;            return convert_unicode_to_hex("FE338"); end
	def crying_face;                                               return convert_unicode_to_hex("FE339"); end
	def loudly_crying_face;                                        return convert_unicode_to_hex("FE33A"); end
	def fearful_face;                                              return convert_unicode_to_hex("FE33B"); end
	def persevering_face;                                          return convert_unicode_to_hex("FE33C"); end
	def pouting_face;                                              return convert_unicode_to_hex("FE33D"); end
	def relieved_face;                                             return convert_unicode_to_hex("FE33E"); end
	def confounded_face;                                           return convert_unicode_to_hex("FE33F"); end
	def pensive_face;                                              return convert_unicode_to_hex("FE340"); end
	def face_screaming_in_fear;                                    return convert_unicode_to_hex("FE341"); end
	def sleepy_face;                                               return convert_unicode_to_hex("FE342"); end
	def smirking_face;                                             return convert_unicode_to_hex("FE343"); end
	def face_with_cold_sweat;                                      return convert_unicode_to_hex("FE344"); end
	def disappointed_but_relieved_face;                            return convert_unicode_to_hex("FE345"); end
	def tired_face;                                                return convert_unicode_to_hex("FE346"); end
	def winking_face;                                              return convert_unicode_to_hex("FE347"); end

	def cat_face_with_open_mouth;                                  return convert_unicode_to_hex("FE348"); end
	def happy_cat_face_with_grin;                                  return convert_unicode_to_hex("FE349"); end
	def happy_and_crying_cat_face;                                 return convert_unicode_to_hex("FE34A"); end
	def cat_face_kissing;                                          return convert_unicode_to_hex("FE34B"); end
	def cat_face_with_heart_shaped_eyes;                           return convert_unicode_to_hex("FE34C"); end
	def crying_cat_face;                                           return convert_unicode_to_hex("FE34D"); end
	def pouting_cat_face;                                          return convert_unicode_to_hex("FE34E"); end
	def cat_face_with_tightly_closed_lips;                         return convert_unicode_to_hex("FE34F"); end
	def anguished_cat_face;                                        return convert_unicode_to_hex("FE350"); end

	def face_with_no_good_gesture;                                 return convert_unicode_to_hex("FE351"); end
	def face_with_ok_gesture;                                      return convert_unicode_to_hex("FE352"); end
	def person_bowing_deeply;                                      return convert_unicode_to_hex("FE353"); end
	def see_no_evil_monkey;                                        return convert_unicode_to_hex("FE354"); end
	def speak_no_evil_monkey;                                      return convert_unicode_to_hex("FE355"); end
	def hear_no_evil_monkey;                                       return convert_unicode_to_hex("FE356"); end
	def person_raising_one_hand;                                   return convert_unicode_to_hex("FE357"); end
	def person_raising_both_hands_in_cheers;                       return convert_unicode_to_hex("FE358"); end
	def person_frowning;                                           return convert_unicode_to_hex("FE359"); end
	def person_with_pouting_face;                                  return convert_unicode_to_hex("FE35A"); end
	def person_with_folded_hands;                                  return convert_unicode_to_hex("FE35B"); end


	def house_building;                                            return convert_unicode_to_hex("FE4B0"); end
	def house_with_yard;                                           return convert_unicode_to_hex("FE4B1"); end
	def office_building;                                           return convert_unicode_to_hex("FE4B2"); end
	def japanese_post_office;                                      return convert_unicode_to_hex("FE4B3"); end
	def hospital;                                                  return convert_unicode_to_hex("FE4B4"); end
	def bank;                                                      return convert_unicode_to_hex("FE4B5"); end
	def atm;                                                       return convert_unicode_to_hex("FE4B6"); end
	def hotel;                                                     return convert_unicode_to_hex("FE4B7"); end
	def love_hotel;                                                return convert_unicode_to_hex("FE4B8"); end
	def convenience_store;                                         return convert_unicode_to_hex("FE4B9"); end
	def school;                                                    return convert_unicode_to_hex("FE4BA"); end
	def church;                                                    return convert_unicode_to_hex("FE4BB"); end
	def fountain;                                                  return convert_unicode_to_hex("FE4BC"); end
	def department_store;                                          return convert_unicode_to_hex("FE4BD"); end
	def japanese_castle;                                           return convert_unicode_to_hex("FE4BE"); end
	def western_castle;                                            return convert_unicode_to_hex("FE4BF"); end
	def factory;                                                   return convert_unicode_to_hex("FE4C0"); end
	def anchor;                                                    return convert_unicode_to_hex("FE4C1"); end
	def izakaya_lantern;                                           return convert_unicode_to_hex("FE4C2"); end

	def emoji_compatibility_symbol_1;                              return convert_unicode_to_hex("FE4C3"); end
	def emoji_compatibility_symbol_2;                              return convert_unicode_to_hex("FE4C4"); end
	def emoji_compatibility_symbol_3;                              return convert_unicode_to_hex("FE4C6"); end
	def emoji_compatibility_symbol_4;                              return convert_unicode_to_hex("FE4C7"); end
	def emoji_compatibility_symbol_5;                              return convert_unicode_to_hex("FE4C8"); end

	def wrench;                                                    return convert_unicode_to_hex("FE4C9"); end
	def hammer;                                                    return convert_unicode_to_hex("FE4CA"); end
	def nut_and_bolt;                                              return convert_unicode_to_hex("FE4CB"); end

	def mans_shoe;                                                 return convert_unicode_to_hex("FE4CC"); end
	def sneaker;                                                   return convert_unicode_to_hex("FE4CD"); end
	def high_heeled_shoe;                                          return convert_unicode_to_hex("FE4D6"); end
	def womans_sandal;                                             return convert_unicode_to_hex("FE4D7"); end
	def womans_boots;                                              return convert_unicode_to_hex("FE4D8"); end
	def eyeglasses;                                                return convert_unicode_to_hex("FE4CE"); end
	def t_shirt;                                                   return convert_unicode_to_hex("FE4CF"); end
	def jeans;                                                     return convert_unicode_to_hex("FE4D0"); end
	def crown;                                                     return convert_unicode_to_hex("FE4D1"); end
	def necktie;                                                   return convert_unicode_to_hex("FE4D3"); end
	def womans_hat;                                                return convert_unicode_to_hex("FE4D4"); end
	def dress;                                                     return convert_unicode_to_hex("FE4D5"); end
	def kimono;                                                    return convert_unicode_to_hex("FE4D9"); end
	def bikini;                                                    return convert_unicode_to_hex("FE4DA"); end
	def womans_clothes;                                            return convert_unicode_to_hex("FE4DB"); end
	def purse;                                                     return convert_unicode_to_hex("FE4DC"); end

	def money_bag;                                                 return convert_unicode_to_hex("FE4DD"); end
	def currency_exchange;                                         return convert_unicode_to_hex("FE4DE"); end
	def chart_with_upwards_trend_and_yen_symbol;                   return convert_unicode_to_hex("FE4DF"); end
	def heavy_dollar_sign;                                         return convert_unicode_to_hex("FE4E0"); end
	def credit_card;                                               return convert_unicode_to_hex("FE4E1"); end
	def banknote_with_yen_sign;                                    return convert_unicode_to_hex("FE4E2"); end
	def banknote_with_dollar_sign;                                 return convert_unicode_to_hex("FE4E3"); end
	def money_with_wings;                                          return convert_unicode_to_hex("FE4E4"); end

	def emoji_compatibility_symbol_6;                              return convert_unicode_to_hex("FE4ED"); end
	def emoji_compatibility_symbol_7;                              return convert_unicode_to_hex("FE4E8"); end
	def emoji_compatibility_symbol_8;                              return convert_unicode_to_hex("FE4EB"); end
	def emoji_compatibility_symbol_9;                              return convert_unicode_to_hex("FE4E7"); end
	def emoji_compatibility_symbol_10;                             return convert_unicode_to_hex("FE4EA"); end
	def emoji_compatibility_symbol_11;                             return convert_unicode_to_hex("FE4E9"); end
	def emoji_compatibility_symbol_12;                             return convert_unicode_to_hex("FE4E5"); end
	def emoji_compatibility_symbol_13;                             return convert_unicode_to_hex("FE4EE"); end
	def emoji_compatibility_symbol_14;                             return convert_unicode_to_hex("FE4EC"); end
	def emoji_compatibility_symbol_15;                             return convert_unicode_to_hex("FE4E6"); end

	def camera;                                                    return convert_unicode_to_hex("FE4EF"); end
	def handbag;                                                   return convert_unicode_to_hex("FE4F0"); end
	def pouch;                                                     return convert_unicode_to_hex("FE4F1"); end
	def bell;                                                      return convert_unicode_to_hex("FE4F2"); end
	def door;                                                      return convert_unicode_to_hex("FE4F3"); end
	def dung;                                                      return convert_unicode_to_hex("FE4F4"); end
	def pistol;                                                    return convert_unicode_to_hex("FE4F5"); end
	def fire;                                                      return convert_unicode_to_hex("FE4F6"); end
	def crystal_ball;                                              return convert_unicode_to_hex("FE4F7"); end
	def six_pointed_star_with_middle_dot;                          return convert_unicode_to_hex("FE4F8"); end
	def video_camera;                                              return convert_unicode_to_hex("FE4F9"); end
	def knife;                                                     return convert_unicode_to_hex("FE4FA"); end
	def flashlight;                                                return convert_unicode_to_hex("FE4FB"); end
	def battery;                                                   return convert_unicode_to_hex("FE4FC"); end
	def scroll;                                                    return convert_unicode_to_hex("FE4FD"); end
	def electric_plug;                                             return convert_unicode_to_hex("FE4FE"); end
	def book_1;                                                    return convert_unicode_to_hex("FE4FF"); end
	def book_2;                                                    return convert_unicode_to_hex("FE500"); end
	def book_3;                                                    return convert_unicode_to_hex("FE501"); end
	def vertical_closed_book;                                      return convert_unicode_to_hex("FE502"); end
	def books;                                                     return convert_unicode_to_hex("FE503"); end
	def name_badge;                                                return convert_unicode_to_hex("FE504"); end

	def bath;                                                      return convert_unicode_to_hex("FE505"); end
	def restroom;                                                  return convert_unicode_to_hex("FE506"); end
	def toilet;                                                    return convert_unicode_to_hex("FE507"); end
	def water_closet;                                              return convert_unicode_to_hex("FE508"); end

	def syringe;                                                   return convert_unicode_to_hex("FE509"); end
	def pill;                                                      return convert_unicode_to_hex("FE50A"); end

	def negative_squared_latin_capital_letter_a;                   return convert_unicode_to_hex("FE50B"); end
	def negative_squared_latin_capital_letter_b;                   return convert_unicode_to_hex("FE50C"); end
	def negative_squared_ab;                                       return convert_unicode_to_hex("FE50D"); end
	def negative_squared_latin_capital_letter_o;                   return convert_unicode_to_hex("FE50E"); end

	def ribbon;                                                    return convert_unicode_to_hex("FE50F"); end
	def wrapped_present;                                           return convert_unicode_to_hex("FE510"); end
	def birthday_cake;                                             return convert_unicode_to_hex("FE511"); end
	def christmas_tree;                                            return convert_unicode_to_hex("FE512"); end
	def santa_claus;                                               return convert_unicode_to_hex("FE513"); end
	def crossed_flags;                                             return convert_unicode_to_hex("FE514"); end
	def fireworks;                                                 return convert_unicode_to_hex("FE515"); end
	def balloon;                                                   return convert_unicode_to_hex("FE516"); end
	def party_popper;                                              return convert_unicode_to_hex("FE517"); end
	def pine_decoration;                                           return convert_unicode_to_hex("FE518"); end
	def girls_doll_festival;                                       return convert_unicode_to_hex("FE519"); end
	def graduation_cap;                                            return convert_unicode_to_hex("FE51A"); end
	def school_satchel;                                            return convert_unicode_to_hex("FE51B"); end
	def carp_streamer;                                             return convert_unicode_to_hex("FE51C"); end
	def firework_sparkler;                                         return convert_unicode_to_hex("FE51D"); end
	def wind_chime;                                                return convert_unicode_to_hex("FE51E"); end
	def jack_o_lantern;                                            return convert_unicode_to_hex("FE51F"); end
	def confetti_ball;                                             return convert_unicode_to_hex("FE520"); end
	def tanabata_tree;                                             return convert_unicode_to_hex("FE521"); end
	def moon_viewing_ceremony;                                     return convert_unicode_to_hex("FE017"); end

	def pager;                                                     return convert_unicode_to_hex("FE522"); end
	def black_telephone;                                           return convert_unicode_to_hex("FE523"); end
	def telephone_receiver;                                        return convert_unicode_to_hex("FE524"); end
	def mobile_phone;                                              return convert_unicode_to_hex("FE525"); end
	def phone_with_arrow;                                          return convert_unicode_to_hex("FE526"); end
	def memo;                                                      return convert_unicode_to_hex("FE527"); end
	def fax;                                                       return convert_unicode_to_hex("FE528"); end
	def envelope;                                                  return convert_unicode_to_hex("FE529"); end
	def incoming_envelope;                                         return convert_unicode_to_hex("FE52A"); end
	def envelope_with_arrow;                                       return convert_unicode_to_hex("FE52B"); end
	def mailbox;                                                   return convert_unicode_to_hex("FE52C"); end
	def mailbox_with_raised_flag;                                  return convert_unicode_to_hex("FE52D"); end
	def postbox;                                                   return convert_unicode_to_hex("FE52E"); end
	def public_address_loudspeaker;                                return convert_unicode_to_hex("FE52F"); end
	def cheering_megaphone;                                        return convert_unicode_to_hex("FE530"); end
	def satellite_antenna;                                         return convert_unicode_to_hex("FE531"); end
	def speech_balloon;                                            return convert_unicode_to_hex("FE532"); end
	def outbox_tray;                                               return convert_unicode_to_hex("FE533"); end
	def inbox_tray;                                                return convert_unicode_to_hex("FE534"); end
	def package;                                                   return convert_unicode_to_hex("FE535"); end

	def latin_capital_letters_input_symbol;                        return convert_unicode_to_hex("FEB7C"); end
	def latin_small_letters_input_symbol;                          return convert_unicode_to_hex("FEB7D"); end
	def numbers_input_symbol;                                      return convert_unicode_to_hex("FEB7E"); end
	def symbols_input_symbol;                                      return convert_unicode_to_hex("FEB7F"); end
	def latin_letters_input_symbol;                                return convert_unicode_to_hex("FEB80"); end

	def black_nib;                                                 return convert_unicode_to_hex("FE536"); end
	def seat;                                                      return convert_unicode_to_hex("FE537"); end
	def computer;                                                  return convert_unicode_to_hex("FE538"); end
	def pencil;                                                    return convert_unicode_to_hex("FE539"); end
	def paperclip;                                                 return convert_unicode_to_hex("FE53A"); end
	def briefcase;                                                 return convert_unicode_to_hex("FE53B"); end
	def mini_disc;                                                 return convert_unicode_to_hex("FE53C"); end
	def floppy_disk;                                               return convert_unicode_to_hex("FE53D"); end
	def black_scissors;                                            return convert_unicode_to_hex("FE53E"); end
	def round_pushpin;                                             return convert_unicode_to_hex("FE53F"); end
	def page_with_curl;                                            return convert_unicode_to_hex("FE540"); end
	def page_facing_up;                                            return convert_unicode_to_hex("FE541"); end
	def calendar;                                                  return convert_unicode_to_hex("FE542"); end
	def file_folder;                                               return convert_unicode_to_hex("FE543"); end
	def open_file_folder;                                          return convert_unicode_to_hex("FE544"); end
	def notebook;                                                  return convert_unicode_to_hex("FE545"); end
	def open_book;                                                 return convert_unicode_to_hex("FE546"); end
	def notebook_with_decorative_cover;                            return convert_unicode_to_hex("FE547"); end
	def clipboard;                                                 return convert_unicode_to_hex("FE548"); end
	def tear_off_calendar;                                         return convert_unicode_to_hex("FE549"); end
	def bar_chart;                                                 return convert_unicode_to_hex("FE54A"); end
	def chart_with_upwards_trend;                                  return convert_unicode_to_hex("FE54B"); end
	def chart_with_downwards_trend;                                return convert_unicode_to_hex("FE54C"); end
	def card_index;                                                return convert_unicode_to_hex("FE54D"); end
	def pushpin;                                                   return convert_unicode_to_hex("FE54E"); end
	def ledger;                                                    return convert_unicode_to_hex("FE54F"); end
	def straight_ruler;                                            return convert_unicode_to_hex("FE550"); end
	def triangular_ruler;                                          return convert_unicode_to_hex("FE551"); end
	def bookmark_tabs;                                             return convert_unicode_to_hex("FE552"); end

	def footprints;                                                return convert_unicode_to_hex("FE553"); end


	def running_shirt_with_sash;                                   return convert_unicode_to_hex("FE7D0"); end
	def baseball;                                                  return convert_unicode_to_hex("FE7D1"); end
	def flag_in_hole;                                              return convert_unicode_to_hex("FE7D2"); end
	def tennis;                                                    return convert_unicode_to_hex("FE7D3"); end
	def soccer_ball;                                               return convert_unicode_to_hex("FE7D4"); end
	def skiing;                                                    return convert_unicode_to_hex("FE7D5"); end
	def basketball;                                                return convert_unicode_to_hex("FE7D6"); end
	def checkered_flag;                                            return convert_unicode_to_hex("FE7D7"); end
	def snowboarder;                                               return convert_unicode_to_hex("FE7D8"); end
	def runner;                                                    return convert_unicode_to_hex("FE7D9"); end
	def surfer;                                                    return convert_unicode_to_hex("FE7DA"); end
	def trophy;                                                    return convert_unicode_to_hex("FE7DB"); end
	def horse_racing;                                              return convert_unicode_to_hex("FE7DC"); end
	def american_football;                                         return convert_unicode_to_hex("FE7DD"); end
	def swimmer;                                                   return convert_unicode_to_hex("FE7DE"); end

	def train;                                                     return convert_unicode_to_hex("FE7DF"); end
	def subway;                                                    return convert_unicode_to_hex("FE7E0"); end
	def circled_latin_capital_letter_m;                            return convert_unicode_to_hex("FE7E1"); end
	def high_speed_train;                                          return convert_unicode_to_hex("FE7E2"); end
	def high_speed_train_with_bullet_nose;                         return convert_unicode_to_hex("FE7E3"); end
	def automobile_1;                                              return convert_unicode_to_hex("FE7E4"); end
	def recreational_vehicle;                                      return convert_unicode_to_hex("FE7E5"); end
	def bus_2;                                                     return convert_unicode_to_hex("FE7E6"); end
	def bus_stop;                                                  return convert_unicode_to_hex("FE7E7"); end
	def ship;                                                      return convert_unicode_to_hex("FE7E8"); end
	def airplane;                                                  return convert_unicode_to_hex("FE7E9"); end
	def sailboat;                                                  return convert_unicode_to_hex("FE7EA"); end
	def bicycle;                                                   return convert_unicode_to_hex("FE7EB"); end
	def station;                                                   return convert_unicode_to_hex("FE7EC"); end
	def rocket;                                                    return convert_unicode_to_hex("FE7ED"); end
	def speedboat;                                                 return convert_unicode_to_hex("FE7EE"); end
	def taxi_1;                                                    return convert_unicode_to_hex("FE7EF"); end
	def pedestrian;                                                return convert_unicode_to_hex("FE7F0"); end
	def truck;                                                     return convert_unicode_to_hex("FE7F1"); end
	def fire_engine;                                               return convert_unicode_to_hex("FE7F2"); end
	def ambulance;                                                 return convert_unicode_to_hex("FE7F3"); end
	def police_car_1;                                              return convert_unicode_to_hex("FE7F4"); end

	def fuel_pump;                                                 return convert_unicode_to_hex("FE7F5"); end
	def negative_squared_latin_capital_letter_p;                   return convert_unicode_to_hex("FE7F6"); end

	def horizontal_traffic_light;                                  return convert_unicode_to_hex("FE7F7"); end
	def construction_sign;                                         return convert_unicode_to_hex("FE7F8"); end
	def police_cars_revolving_light;                               return convert_unicode_to_hex("FE7F9"); end

	def hot_springs;                                               return convert_unicode_to_hex("FE7FA"); end
	def tent;                                                      return convert_unicode_to_hex("FE7FB"); end
	def carousel_horse;                                            return convert_unicode_to_hex("FE7FC"); end
	def ferris_wheel;                                              return convert_unicode_to_hex("FE7FD"); end
	def roller_coaster;                                            return convert_unicode_to_hex("FE7FE"); end
	def fishing;                                                   return convert_unicode_to_hex("FE7FF"); end
	def microphone;                                                return convert_unicode_to_hex("FE800"); end
	def movies;                                                    return convert_unicode_to_hex("FE801"); end
	def cinema;                                                    return convert_unicode_to_hex("FE802"); end
	def headphone;                                                 return convert_unicode_to_hex("FE803"); end
	def art;                                                       return convert_unicode_to_hex("FE804"); end
	def top_hat;                                                   return convert_unicode_to_hex("FE805"); end
	def event;                                                     return convert_unicode_to_hex("FE806"); end
	def ticket;                                                    return convert_unicode_to_hex("FE807"); end
	def movie_shooting_clapboard;                                  return convert_unicode_to_hex("FE808"); end
	def performing_arts;                                           return convert_unicode_to_hex("FE809"); end

	def video_game;                                                return convert_unicode_to_hex("FE80A"); end
	def mahjong_tile_red_dragon;                                   return convert_unicode_to_hex("FE80B"); end
	def direct_hit;                                                return convert_unicode_to_hex("FE80C"); end
	def slot_machine;                                              return convert_unicode_to_hex("FE80D"); end
	def billiards;                                                 return convert_unicode_to_hex("FE80E"); end
	def game_die;                                                  return convert_unicode_to_hex("FE80F"); end
	def bowling;                                                   return convert_unicode_to_hex("FE810"); end
	def flower_playing_cards;                                      return convert_unicode_to_hex("FE811"); end
	def playing_card_black_joker;                                  return convert_unicode_to_hex("FE812"); end

	def musical_note;                                              return convert_unicode_to_hex("FE813"); end
	def multiple_musical_notes;                                    return convert_unicode_to_hex("FE814"); end
	def saxophone;                                                 return convert_unicode_to_hex("FE815"); end
	def guitar;                                                    return convert_unicode_to_hex("FE816"); end
	def musical_keyboard;                                          return convert_unicode_to_hex("FE817"); end
	def trumpet;                                                   return convert_unicode_to_hex("FE818"); end
	def violin;                                                    return convert_unicode_to_hex("FE819"); end
	def musical_score;                                             return convert_unicode_to_hex("FE81A"); end
	def part_alternation_mark;                                     return convert_unicode_to_hex("FE81B"); end

	def television;                                                return convert_unicode_to_hex("FE81C"); end
	def optical_disk;                                              return convert_unicode_to_hex("FE81D"); end
	def dvd;                                                       return convert_unicode_to_hex("FE81E"); end
	def radio;                                                     return convert_unicode_to_hex("FE81F"); end
	def video_cassette_tape;                                       return convert_unicode_to_hex("FE820"); end
	def speaker_with_three_sound_waves;                            return convert_unicode_to_hex("FE821"); end
	def newspaper;                                                 return convert_unicode_to_hex("FE822"); end

	def kiss_mark;                                                 return convert_unicode_to_hex("FE823"); end
	def love_letter;                                               return convert_unicode_to_hex("FE824"); end
	def ring;                                                      return convert_unicode_to_hex("FE825"); end
	def gem_stone;                                                 return convert_unicode_to_hex("FE826"); end
	def kiss;                                                      return convert_unicode_to_hex("FE827"); end
	def bouquet;                                                   return convert_unicode_to_hex("FE828"); end
	def couple_with_heart;                                         return convert_unicode_to_hex("FE829"); end
	def wedding;                                                   return convert_unicode_to_hex("FE82A"); end

	def hash_key;                                                  return convert_unicode_to_hex("FE82C"); end
	def keycap_1;                                                  return convert_unicode_to_hex("FE82E"); end
	def keycap_2;                                                  return convert_unicode_to_hex("FE82F"); end
	def keycap_3;                                                  return convert_unicode_to_hex("FE830"); end
	def keycap_4;                                                  return convert_unicode_to_hex("FE831"); end
	def keycap_5;                                                  return convert_unicode_to_hex("FE832"); end
	def keycap_6;                                                  return convert_unicode_to_hex("FE833"); end
	def keycap_7;                                                  return convert_unicode_to_hex("FE834"); end
	def keycap_8;                                                  return convert_unicode_to_hex("FE835"); end
	def keycap_9;                                                  return convert_unicode_to_hex("FE836"); end
	def keycap_0;                                                  return convert_unicode_to_hex("FE837"); end
	def keycap_ten;                                                return convert_unicode_to_hex("FE83B"); end
	def antenna_with_bars;                                         return convert_unicode_to_hex("FE838"); end
	def vibration_mode;                                            return convert_unicode_to_hex("FE839"); end
	def mobile_phone_off;                                          return convert_unicode_to_hex("FE83A"); end


	def hamburger;                                                 return convert_unicode_to_hex("FE960"); end
	def rice_ball;                                                 return convert_unicode_to_hex("FE961"); end
	def shortcake;                                                 return convert_unicode_to_hex("FE962"); end
	def steaming_bowl;                                             return convert_unicode_to_hex("FE963"); end
	def bread;                                                     return convert_unicode_to_hex("FE964"); end
	def cooking;                                                   return convert_unicode_to_hex("FE965"); end
	def soft_ice_cream;                                            return convert_unicode_to_hex("FE966"); end
	def french_fries;                                              return convert_unicode_to_hex("FE967"); end
	def dumpling;                                                  return convert_unicode_to_hex("FE968"); end
	def rice_cracker;                                              return convert_unicode_to_hex("FE969"); end
	def cooked_rice;                                               return convert_unicode_to_hex("FE96A"); end
	def spaghetti;                                                 return convert_unicode_to_hex("FE96B"); end
	def curry_and_rice;                                            return convert_unicode_to_hex("FE96C"); end
	def seafood_casserole;                                         return convert_unicode_to_hex("FE96D"); end
	def sushi;                                                     return convert_unicode_to_hex("FE96E"); end
	def lunchbox;                                                  return convert_unicode_to_hex("FE96F"); end
	def pot_of_food;                                               return convert_unicode_to_hex("FE970"); end
	def shaved_ice;                                                return convert_unicode_to_hex("FE971"); end
	def meat_on_bone;                                              return convert_unicode_to_hex("FE972"); end
	def fish_cake_with_swirl_design;                               return convert_unicode_to_hex("FE973"); end
	def roasted_sweet_potato;                                      return convert_unicode_to_hex("FE974"); end
	def slice_of_pizza;                                            return convert_unicode_to_hex("FE975"); end
	def poultry_leg;                                               return convert_unicode_to_hex("FE976"); end
	def ice_cream;                                                 return convert_unicode_to_hex("FE977"); end
	def doughnut;                                                  return convert_unicode_to_hex("FE978"); end
	def cookie;                                                    return convert_unicode_to_hex("FE979"); end
	def chocolate_bar;                                             return convert_unicode_to_hex("FE97A"); end
	def candy;                                                     return convert_unicode_to_hex("FE97B"); end
	def lollipop;                                                  return convert_unicode_to_hex("FE97C"); end
	def custard;                                                   return convert_unicode_to_hex("FE97D"); end
	def honey_pot;                                                 return convert_unicode_to_hex("FE97E"); end
	def fried_shrimp;                                              return convert_unicode_to_hex("FE97F"); end
	def fork_and_knife;                                            return convert_unicode_to_hex("FE980"); end

	def hot_beverage;                                              return convert_unicode_to_hex("FE981"); end
	def cocktail_glass;                                            return convert_unicode_to_hex("FE982"); end
	def beer_mug;                                                  return convert_unicode_to_hex("FE983"); end
	def teacup_without_handle;                                     return convert_unicode_to_hex("FE984"); end
	def sake_bottle_and_cup;                                       return convert_unicode_to_hex("FE985"); end
	def wine_glass;                                                return convert_unicode_to_hex("FE986"); end
	def clinking_beer_mugs;                                        return convert_unicode_to_hex("FE987"); end
	def tropical_drink;                                            return convert_unicode_to_hex("FE988"); end


	def north_east_arrow;                                          return convert_unicode_to_hex("FEAF0"); end
	def south_east_arrow;                                          return convert_unicode_to_hex("FEAF1"); end
	def north_west_arrow;                                          return convert_unicode_to_hex("FEAF2"); end
	def south_west_arrow;                                          return convert_unicode_to_hex("FEAF3"); end
	def arrow_pointing_rightwards_then_curving_upwards;            return convert_unicode_to_hex("FEAF4"); end
	def arrow_pointing_rightwards_then_curving_downwards;          return convert_unicode_to_hex("FEAF5"); end
	def left_right_arrow;                                          return convert_unicode_to_hex("FEAF6"); end
	def up_down_arrow;                                             return convert_unicode_to_hex("FEAF7"); end
	def upwards_black_arrow;                                       return convert_unicode_to_hex("FEAF8"); end
	def downwards_black_arrow;                                     return convert_unicode_to_hex("FEAF9"); end
	def black_rightwards_arrow;                                    return convert_unicode_to_hex("FEAFA"); end
	def leftwards_black_arrow;                                     return convert_unicode_to_hex("FEAFB"); end

	def black_right_pointing_triangle;                             return convert_unicode_to_hex("FEAFC"); end
	def black_left_pointing_triangle;                              return convert_unicode_to_hex("FEAFD"); end
	def black_right_pointing_double_triangle;                      return convert_unicode_to_hex("FEAFE"); end
	def black_left_pointing_double_triangle;                       return convert_unicode_to_hex("FEAFF"); end
	def black_up_pointing_double_triangle;                         return convert_unicode_to_hex("FEB03"); end
	def black_down_pointing_double_triangle;                       return convert_unicode_to_hex("FEB02"); end
	def up_pointing_triangle_1;                                    return convert_unicode_to_hex("FEB78"); end
	def down_pointing_triangle_1;                                  return convert_unicode_to_hex("FEB79"); end
	def up_pointing_small_triangle_1;                              return convert_unicode_to_hex("FEB01"); end
	def down_pointing_small_triangle_1;                            return convert_unicode_to_hex("FEB00"); end

	def heavy_exclamation_mark_ornament;                           return convert_unicode_to_hex("FEB04"); end
	def exclamation_question_mark;                                 return convert_unicode_to_hex("FEB05"); end
	def double_exclamation_mark;                                   return convert_unicode_to_hex("FEB06"); end
	def black_question_mark_ornament;                              return convert_unicode_to_hex("FEB09"); end
	def white_question_mark_ornament;                              return convert_unicode_to_hex("FEB0A"); end
	def white_exclamation_mark_ornament;                           return convert_unicode_to_hex("FEB0B"); end

	def wavy_dash;                                                 return convert_unicode_to_hex("FEB07"); end
	def looped_length_mark;                                        return convert_unicode_to_hex("FEB08"); end

	def heavy_black_heart;                                         return convert_unicode_to_hex("FEB0C"); end
	def beating_heart;                                             return convert_unicode_to_hex("FEB0D"); end
	def broken_heart;                                              return convert_unicode_to_hex("FEB0E"); end
	def two_hearts;                                                return convert_unicode_to_hex("FEB0F"); end
	def sparkling_heart;                                           return convert_unicode_to_hex("FEB10"); end
	def growing_heart;                                             return convert_unicode_to_hex("FEB11"); end
	def heart_with_arrow;                                          return convert_unicode_to_hex("FEB12"); end
	def heart_1;                                                   return convert_unicode_to_hex("FEB13"); end
	def heart_2;                                                   return convert_unicode_to_hex("FEB14"); end
	def heart_3;                                                   return convert_unicode_to_hex("FEB15"); end
	def heart_4;                                                   return convert_unicode_to_hex("FEB16"); end
	def heart_with_ribbon;                                         return convert_unicode_to_hex("FEB17"); end
	def revolving_hearts;                                          return convert_unicode_to_hex("FEB18"); end
	def heart_decoration;                                          return convert_unicode_to_hex("FEB19"); end

	def black_heart_suit;                                          return convert_unicode_to_hex("FEB1A"); end
	def black_spade_suit;                                          return convert_unicode_to_hex("FEB1B"); end
	def black_diamond_suit;                                        return convert_unicode_to_hex("FEB1C"); end
	def black_club_suit;                                           return convert_unicode_to_hex("FEB1D"); end

	def smoking_symbol;                                            return convert_unicode_to_hex("FEB1E"); end
	def no_smoking_symbol;                                         return convert_unicode_to_hex("FEB1F"); end
	def wheelchair_symbol;                                         return convert_unicode_to_hex("FEB20"); end
	def japanese_symbol_for_beginner;                              return convert_unicode_to_hex("FE044"); end
	def trident_emblem;                                            return convert_unicode_to_hex("FE4D2"); end
	def triangular_flag_on_post;                                   return convert_unicode_to_hex("FEB22"); end
	def warning_sign;                                              return convert_unicode_to_hex("FEB23"); end
	def no_entry;                                                  return convert_unicode_to_hex("FEB26"); end
	def black_universal_recycling_symbol;                          return convert_unicode_to_hex("FEB2C"); end
	def mens_symbol;                                               return convert_unicode_to_hex("FEB33"); end
	def womens_symbol;                                             return convert_unicode_to_hex("FEB34"); end
	def baby_symbol;                                               return convert_unicode_to_hex("FEB35"); end
	def heavy_large_circle;                                        return convert_unicode_to_hex("FEB44"); end
	def cross_mark;                                                return convert_unicode_to_hex("FEB45"); end
	def negative_squared_cross_mark;                               return convert_unicode_to_hex("FEB46"); end
	def no_entry_sign;                                             return convert_unicode_to_hex("FEB48"); end
	def heavy_check_mark;                                          return convert_unicode_to_hex("FEB49"); end
	def white_heavy_check_mark;                                    return convert_unicode_to_hex("FEB4A"); end
	def link_symbol;                                               return convert_unicode_to_hex("FEB4B"); end
	def em_space;                                                  return convert_unicode_to_hex("FEB4C"); end
	def en_space;                                                  return convert_unicode_to_hex("FEB4D"); end
	def four_per_em_space;                                         return convert_unicode_to_hex("FEB4E"); end

	def free_sign;                                                 return convert_unicode_to_hex("FEB21"); end
	def no_one_under_eighteen_sign;                                return convert_unicode_to_hex("FEB25"); end
	def ok_sign;                                                   return convert_unicode_to_hex("FEB27"); end
	def no_good_sign;                                              return convert_unicode_to_hex("FEB28"); end
	def copyright_sign;                                            return convert_unicode_to_hex("FEB29"); end
	def registered_sign;                                           return convert_unicode_to_hex("FEB2D"); end
	def trade_mark_sign;                                           return convert_unicode_to_hex("FEB2A"); end
	def vs_sign;                                                   return convert_unicode_to_hex("FEB32"); end
	def new_sign;                                                  return convert_unicode_to_hex("FEB36"); end
	def up_sign;                                                   return convert_unicode_to_hex("FEB37"); end
	def cool_sign;                                                 return convert_unicode_to_hex("FEB38"); end
	def top_with_up_pointing_triangle_sign;                        return convert_unicode_to_hex("FEB42"); end
	def information_source;                                        return convert_unicode_to_hex("FEB47"); end
	def sos_sign;                                                  return convert_unicode_to_hex("FEB4F"); end

	def squared_katakana_koko;                                     return convert_unicode_to_hex("FEB24"); end
	def squared_katakana_sa;                                       return convert_unicode_to_hex("FEB3F"); end

	def squared_cjk_unified_ideograph_7981;                        return convert_unicode_to_hex("FEB2E"); end
	def squared_cjk_unified_ideograph_7a7a;                        return convert_unicode_to_hex("FEB2F"); end
	def squared_cjk_unified_ideograph_5408;                        return convert_unicode_to_hex("FEB30"); end
	def squared_cjk_unified_ideograph_6e80;                        return convert_unicode_to_hex("FEB31"); end
	def squared_cjk_unified_ideograph_6709;                        return convert_unicode_to_hex("FEB39"); end
	def squared_cjk_unified_ideograph_7121;                        return convert_unicode_to_hex("FEB3A"); end
	def squared_cjk_unified_ideograph_6708;                        return convert_unicode_to_hex("FEB3B"); end
	def squared_cjk_unified_ideograph_7533;                        return convert_unicode_to_hex("FEB3C"); end
	def squared_cjk_unified_ideograph_5272;                        return convert_unicode_to_hex("FEB3E"); end
	def squared_cjk_unified_ideograph_6307;                        return convert_unicode_to_hex("FEB40"); end
	def squared_cjk_unified_ideograph_55b6;                        return convert_unicode_to_hex("FEB41"); end

	def circled_ideograph_secret;                                  return convert_unicode_to_hex("FEB2B"); end
	def circled_ideograph_congratulation;                          return convert_unicode_to_hex("FEB43"); end
	def circled_ideograph_advantage;                               return convert_unicode_to_hex("FEB3D"); end
	def circled_ideograph_accept;                                  return convert_unicode_to_hex("FEB50"); end

	def heavy_plus_sign;                                           return convert_unicode_to_hex("FEB51"); end
	def heavy_minus_sign;                                          return convert_unicode_to_hex("FEB52"); end
	def heavy_multiplication_x;                                    return convert_unicode_to_hex("FEB53"); end
	def heavy_division_sign;                                       return convert_unicode_to_hex("FEB54"); end

	def diamond_shape_with_a_dot_inside;                           return convert_unicode_to_hex("FEB55"); end
	def electric_light_bulb;                                       return convert_unicode_to_hex("FEB56"); end
	def anger_sign;                                                return convert_unicode_to_hex("FEB57"); end
	def bomb;                                                      return convert_unicode_to_hex("FEB58"); end
	def sleeping_sign;                                             return convert_unicode_to_hex("FEB59"); end
	def collision_symbol;                                          return convert_unicode_to_hex("FEB5A"); end
	def splashing_sweat;                                           return convert_unicode_to_hex("FEB5B"); end
	def drip;                                                      return convert_unicode_to_hex("FEB5C"); end
	def dash_symbol;                                               return convert_unicode_to_hex("FEB5D"); end
	def flexed_bicep;                                              return convert_unicode_to_hex("FEB5E"); end
	def dizzy_symbol;                                              return convert_unicode_to_hex("FEB5F"); end

	def sparkles;                                                  return convert_unicode_to_hex("FEB60"); end
	def eight_pointed_black_star;                                  return convert_unicode_to_hex("FEB61"); end
	def eight_spoked_asterisk;                                     return convert_unicode_to_hex("FEB62"); end
	def medium_white_circle;                                       return convert_unicode_to_hex("FEB65"); end
	def medium_black_circle;                                       return convert_unicode_to_hex("FEB66"); end
	def large_circle_1;                                            return convert_unicode_to_hex("FEB63"); end
	def large_circle_2;                                            return convert_unicode_to_hex("FEB64"); end
	def black_rounded_square;                                      return convert_unicode_to_hex("FEB64"); end
	def white_rounded_square;                                      return convert_unicode_to_hex("FEB67"); end
	def white_medium_star;                                         return convert_unicode_to_hex("FEB68"); end
	def glowing_star;                                              return convert_unicode_to_hex("FEB69"); end
	def shooting_star;                                             return convert_unicode_to_hex("FEB6A"); end
	def white_large_square;                                        return convert_unicode_to_hex("FEB6B"); end
	def black_large_square;                                        return convert_unicode_to_hex("FEB6C"); end
	def white_small_square;                                        return convert_unicode_to_hex("FEB6D"); end
	def black_small_square;                                        return convert_unicode_to_hex("FEB6E"); end
	def white_medium_small_square;                                 return convert_unicode_to_hex("FEB6F"); end
	def black_medium_small_square;                                 return convert_unicode_to_hex("FEB70"); end
	def white_medium_square;                                       return convert_unicode_to_hex("FEB71"); end
	def black_medium_square;                                       return convert_unicode_to_hex("FEB72"); end
	def large_diamond_1;                                           return convert_unicode_to_hex("FEB73"); end
	def large_diamond_2;                                           return convert_unicode_to_hex("FEB74"); end
	def small_diamond_1;                                           return convert_unicode_to_hex("FEB75"); end
	def small_diamond_2;                                           return convert_unicode_to_hex("FEB76"); end
	def sparkle;                                                   return convert_unicode_to_hex("FEB77"); end

	def white_flower;                                              return convert_unicode_to_hex("FEB7A"); end
	def hundred_points_symbol;                                     return convert_unicode_to_hex("FEB7B"); end

	def identification_sign;                                       return convert_unicode_to_hex("FEB81"); end
	def clear_sign;                                                return convert_unicode_to_hex("FEB84"); end
	def leftwards_arrow_with_hook;                                 return convert_unicode_to_hex("FEB83"); end
	def rightwards_arrow_with_hook;                                return convert_unicode_to_hex("FEB88"); end
	def left_pointing_magnifying_glass;                            return convert_unicode_to_hex("FEB85"); end
	def right_pointing_magnifying_glass;                           return convert_unicode_to_hex("FEB8D"); end
	def lock;                                                      return convert_unicode_to_hex("FEB86"); end
	def open_lock;                                                 return convert_unicode_to_hex("FEB87"); end
	def lock_with_ink_pen;                                         return convert_unicode_to_hex("FEB90"); end
	def closed_lock_with_key;                                      return convert_unicode_to_hex("FEB8A"); end
	def key;                                                       return convert_unicode_to_hex("FEB82"); end
	def ballot_box_with_check;                                     return convert_unicode_to_hex("FEB8B"); end
	def radio_button;                                              return convert_unicode_to_hex("FEB8C"); end
	def back_with_left_arrow_above;                                return convert_unicode_to_hex("FEB8E"); end
	def bookmark;                                                  return convert_unicode_to_hex("FEB8F"); end
	def double_clockwise_open_circle_arrows;                       return convert_unicode_to_hex("FEB91"); end
	def e_mail_symbol;                                             return convert_unicode_to_hex("FEB92"); end

	def raised_fist;                                               return convert_unicode_to_hex("FEB93"); end
	def raised_hand;                                               return convert_unicode_to_hex("FEB95"); end
	def victory_hand;                                              return convert_unicode_to_hex("FEB94"); end

	def fisted_hand;                                               return convert_unicode_to_hex("FEB96"); end
	def thumbs_up_sign;                                            return convert_unicode_to_hex("FEB97"); end
	def white_up_pointing_index;                                   return convert_unicode_to_hex("FEB98"); end
	def white_up_pointing_backhand_index;                          return convert_unicode_to_hex("FEB99"); end
	def white_down_pointing_backhand_index;                        return convert_unicode_to_hex("FEB9A"); end
	def white_left_pointing_backhand_index;                        return convert_unicode_to_hex("FEB9B"); end
	def white_right_pointing_backhand_index;                       return convert_unicode_to_hex("FEB9C"); end
	def waving_hand;                                               return convert_unicode_to_hex("FEB9D"); end
	def clapping_hands;                                            return convert_unicode_to_hex("FEB9E"); end
	def ok_hand_sign;                                              return convert_unicode_to_hex("FEB9F"); end
	def thumbs_down_sign;                                          return convert_unicode_to_hex("FEBA0"); end
	def open_hands;                                                return convert_unicode_to_hex("FEBA1"); end
end