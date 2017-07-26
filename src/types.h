#ifndef SRC_TYPES_H
#define SRC_TYPES_H

#include <functional>

typedef std::function<void(int)> Callback;

namespace Scene {
  enum Scene {
    MENU, OIL_FIEDS, PUMP_COMPANY // TODO add more
  };
}

namespace TranslatedString {
  enum TranslatedString {
    // according to strings in notes/strings.txt

    PURCHASE_OILFIELDS,                                 /* 1. Purchase oilfields */
    PUMP_PRICE,                                         /*  1 = pump price */
    YOU_HAVE_TO_GO_FMEARN_NOW_EVERY_YEAR,               /*  $20000. You have to go (FM:earn) now every year"  */
    MANUFACTURERS,                                      /*  2. Manufacturers */
    TANK_PRICE,                                         /*  2 = Tank price */
    DRILL_PRICE,                                        /*  3 = Drill price */
    TANK_TRUCK_MANUFACTURERS,                           /* 3. tank truck manufacturers. */
    FM_BECOME_A_DRILLING_COMPANY_LEADER,                /* 4. (FM) Become a drilling company leader */
    PAYOFF,                                             /* Payoff: $5000 */
    SABOTAGE_OPERATION,                                 /* 5. Sabotage operation */
    AND_OF_COURSE_ALL_TOGETHER,                         /* 6. And of course all together. */
    OR_NOTHING_AT_ALL,                                  /* 7. Or nothing at all. */
    A_DRILLING_COMPANY,                                 /* a = Drilling company */
    AGENTS_ATTRACT_AND_FOREIGN_OIL,                     /*  agents attract and foreign oil- */
    ALL_CLEAR,                                          /*  all clear! */
    FM_OVERRIDE_F,                                      /*  (FM) override. = F7 */
    BAY_PUMP_EG,                                        /* bay. pump eg  */
    PETROL_STATION,                                     /* Petrol station */
    OWNER,                                              /*  o w n e r  */
    OWNER2,                                             /* owner:  */
    OWNER_SEAT_F,                                       /* owner seat. = F3 */
    FM_PUMP_FACTORY_REQUEST,                            /* (FM) Pump factory request */
    PREVIOUS_DRILLING_DEPTH_DM,                         /*  previous drilling depth %dm */
    PLEASE_PRESS_A_BUTTON,                              /* Please press a button */
    BLACK_GOLD,                                         /* Black gold */
    FMDRILLING_COMPANY_BY_OIL_FLOODING,                 /*  (FM)Drilling company by oil flooding */
    PURCHASE_DRILLING_COMPANY,                          /*  Purchase Drilling Company */
    DRILLING_STILL_FOR,                                 /*  Drilling still for: */
    DRILL_PUMP_SON,                                     /* Drill & Pump & Son */
    DRILL_ON_FIELD,                                     /* Drill on field */
    BORE_IMPOSSIBLE_BECAUSE_NO_ONE_LEFT_ON_STUCK,       /* Bore impossible, because no one left on stuck */
    B_PUMP_COMPANY,                                     /*  b = Pump Company */
    FM_CK,                                              /*  (FM) CK */
    C_TANK_COMPANY,                                     /*  c = Tank Company */
    THE_BIG_GAME_FOR_BIG_MONEY,                         /* The big game for big money */
    THE_GAME_ENDS_IN,                                   /* The game ends in 2017 */
    ENDURANCE,                                          /* Endurance  */
    DEEP_DRILL_INC,                                     /* Deep Drill INC. */
    DENVER_CREAM,                                       /* denver cream */
    THE_LENDERS_GO_BANKRUPT,                            /*  The lenders go bankrupt  */
    OF_THE_GAME,                                        /*  of the game. */
    THE_CHANCES_OF_A_SUCCESSFUL,                        /*  The chances of a successful */
    THE_STRUTS_ARE_SOLD,                                /* The struts are sold! */
    THE_AIR_IS_OUT,                                     /*  The air is out */
    THE_REFINERY_PRICE_DEVELOPMENT,                     /* The refinery price development */
    D_OIL_FIELDS,                                       /*  d = oil fields */
    DOLLARS,                                            /* dollars  */
    PRESS_THE_RELEVANT_NUMBER,                          /* Press the relevant number */
    PRESS_F_AT_THE_RIGHT_MOMENT,                        /* Press F1 at the right moment */
    FM_DECREASE_PUMPING_LUCK,                           /* (FM) decrease pumping luck */
    YOU_GET_FROM_THE_BANKING_COMPANY,                   /*  You get from the banking company */
    FM_CARRIED_OUT_AT,                                  /* (FM) Carried out at 33%. */
    E_DRILL_RIGGING,                                    /*  e = drill rigging */
    EEEEEEEEEEEEEEEEEEEEEEEEEE,                         /*  EEEEEEEEEEEEEEEEEEEEEEEEEE */
    ONE_MOMENT_PLEASE,                                  /* one moment please */
    SHOPPING_AT_WHICH_COMPANY,                          /* Shopping at which company */
    SHOPPING_OF,                                        /* Shopping of */
    COMPANY_SHOULD_BE_SABOTAGED,                        /*  company should be sabotaged */
    DECISION_MAKING,                                    /* Decision - making */
    GET,                                                /* % get  */
    COMPANY_DOESNT_EXIST,                               /* company doesn't exist */
    SPARKLING_WATER,                                    /* ?sparkling water ? */
    EQING_OIL,                                          /* eqing oil */
    THE_FOLLOWING_EXPENSES_ARE_INCURRED,                /* The following expenses are incurred: */
    TO_RENDER_THE_COMPANY_UNSERVICEABLE,                /* To render the company unserviceable */
    COMPANY,                                            /* Company:  */
    COMPANY_PRICE_FOR_METER_DRILL_RIGS,                 /* Company price for 500 meter drill rigs:  */
    THE_FOLLOWING_DRILL_RIGS_ARE_OFFERED,               /* The following drill rigs are offered: */
    THE_FOLLOWING_DATA,                                 /* The following data:  */
    THE_FOLLOWING_SABOTAGE_OPERATIONS_ARE_POSSIBLE,     /* The following sabotage operations are possible:  */
    F_PUMPS,                                            /*  f = pumps */
    FREE,                                               /* free */
    FOR_WHICH_FIELD,                                    /* For which field */
    FOR_WHICH_PRODUCT_DO_YOU_WANT_THE,                  /* For which product do you want the  */
    DOES_NOT_BELONG_TO_THEM,                            /* does not belong to them! */
    IT_DOES_NOT_WORK,                                   /* it does not work! */
    SUCCESSFUL,                                         /* successful */
    TOTAL,                                              /* total = */
    OILFIELD_COMPANY_PRICE_D,                           /* Oilfield company price %d */
    SOCIETY_PRICEOWNER,                                 /* society price-owner */
    SOCIO_PUMP_PRICE_IN_D,                              /* socio pump price in %d */
    G_TANK_CAR,                                         /* g = tank car */
    HAPPY_BORING,                                       /* happy boring */
    HEAVY_PUMP,                                         /* heavy pump  */
    HEY_HERES_AGENT_DIABOLO_HUGGI_BAER,                 /* hey, here's agent diabolo huggi baer */
    HERE_THE_OVERALL_RESULT,                            /* Here the overall result: */
    HERE_FALLS_THE_DECISION,                            /* Here falls the decision! */
    H_NEXT_PLAYER,                                      /* h = Next player */
    I_HOPE_THEY_HAD_FUN_A_LOT_AND,                      /* I hope they had fun a lot and */
    THEY_ARE_OPEN_TO_THE_FOLLOWING,                     /* They are open to the following: */
    THEIR_DRILL_ROD_PRICE_FOR_M_FIXED,                  /* their Drill rod price for 500 m fixed */
    ITS_CAPITAL_AMOUNTS_NOW,                            /* its capital amounts now */
    THEIR_CAPITAL_D,                                    /* their capital %d */
    HER_OIL_FIELD_WAREHOUSE_MANAGER_TELLS_THEM,         /* her Oil field warehouse manager tells them */
    HER_OR_AVE_SUCCEEDED,                               /* her or ave succeeded! */
    THEIR_TANKER_PRICE,                                 /* their tanker price */
    ALWAYS_PRESSURE,                                    /* always pressure */
    I_SABOTAGE,                                         /* i = sabotage */
    YEAR,                                               /* year: */
    EVERY_PLAYER_HAS_D_STARTING_MONEY,                  /* Every player has %d starting money */
    NOW_PAYABLE,                                        /* now payable: 5 0 0 0 .-- $ */
    J_NEW_TRUCK_PRICE,                                  /* j new truck price */
    J_PRICING,                                          /* j = pricing */
    CAPITAL_D,                                          /* capital %d */
    PURCHASE_WHEREIN_FIRMA,                             /* purchase wherein firma */
    PURCHASE_OF_HOW_MUCH_TRUCK,                         /* purchase of how much truck */
    PUMPING_PURCHASE_OF_HOW_MUCH,                       /* pumping purchase of how much */
    NOT_OFFER_AS,                                       /* not offer as */
    NO_OFFERS,                                          /* no offers */
    NO_LOCKUP,                                          /* no lockup */
    NOT_BECAUSE_MORE,                                   /* not because more */
    NO_PURCHASE_X,                                      /* no purchase = 'x' */
    KNALTEX_GMBH,                                       /* knaltex gmbh */
    K_GO,                                               /* k = go */
    TO_LET_F1,                                          /* to let. = f1 */
    TO_LET_F5,                                          /* to let. = f5 */
    PLACE_IT_DETERMINES_THE_PUMP_PRICE,                 /* place it determines the pump price */
    UNFORTUNATELY_WE_HAVE_TO_INFORM_YOU_THAT,           /* Unfortunately we have to inform you that */
    RATHER_NOT_DO_ANYTHING_X,                           /* rather not do anything. = 'X' */
    YET_THERE_IS_NO_OFFER_BEFORE,                       /* yet there is no offer before */
    PIPELINES,                                          /* pipelines  */
    LIQUID_CAPITAL_D,                                   /* liquid capital: %d */
    STORAGE_CAPACITY,                                   /* storage capacity: */
    TRUCK_PURCHASE_WHEREIN_COMPANY,                     /* Truck purchase wherein company */
    TRUCK_NUMBER,                                       /* Truck number: */
    LUCKY_HOLE,                                         /* lucky hole */
    ANDES_MORE_OR_WE_NEED_REPLENISHMENT,                /* andes more or. we need replenishment! */
    FAILED,                                             /* failed */
    WITH_THE_MOST_CAPITAL_AT_THE_END,                   /* with the most capital at the end */
    NEW_PRICE,                                          /* new price */
    NEVER_AGAIN,                                        /* never & again */
    NEVER_COME_BACK,                                    /* never come back */
    N,                                                  /* n */
    STILL_PAYABLE_D,                                    /* still payable %d */
    NR_FIRM_NUMBER_PRICE,                               /* nr firm number price */
    NR_COMPANY_PRICE_OF_A_ROD,                          /* nr company Price of a rod */
    NR_F_I_R_M_A_TRUCK_PRICE,                           /* nr f i r m a truck price */
    NR_FIRMA_PUMP_PRICE,                                /* nr firma pump price */
    NR_COMPANY_TANKER_PRICE,                            /* nr company tanker price */
    NR,                                                 /* nr  */
    NOW_THE_NAMES_MAX_LETTERS,                          /* Now the names (max 12 letters) */
    OILFIELDOFFER,                                      /* O i l f i e l d  O f f e r */
    OILFIELD_NUMBER,                                    /* oilfield number */
    OILFIELD,                                           /* o i l f i e l d */
    OIL_ON_THE_ROAD,                                    /* oil on the road */
    OR_S_SPRENGS_TO_FF_ETC,                             /* or s, sprengs to ff etc = */
    OR_ABOUT,                                           /* or about */
    OVER_BUBBLE,                                        /* over bubble */
    BAD_LUCK,                                           /* Bad luck */
    SET_PRICE_NEW,                                      /* Set price new? */
    PRICE_D,                                            /* Price: %d */
    PUMPING_NUMBER,                                     /* pumping number: */
    PUMP_FIRMA_BY_SABOTAGE_EXCEPT,                      /* pump firma by sabotage except */
    PUMP_ASSOCIATION_SOCIETY,                           /* & Pump association society */
    PUMP_SALE_OFFERS,                                   /* ** Pump sale offers ** */
    PUMP,                                               /* pump */
    PUMPER_PLAY_WITH,                                   /* Pumper play with */
    SOURCE_EXHAUSTED,                                   /* source exhausted! */
    RAFFKE_AND_SON_BANK_CREDIT_DEPARTMENT,              /* Raffke and son bank credit department */
    RAFFKE_AND_SON_OF_A_BANK_LOAN,                      /* Raffke and son of a bank loan */
    RAFF_AND_GREED,                                     /* raff and greed */
    S_REFINERY_DECREASE_PRICE_D,                        /* %s refinery decrease price = %d */
    SABOTAGE_RESULT_BY_KEYSTROKE,                       /* sabotage result by keystroke */
    BE_SABOTAGED_AND_TAKEN_OVER,                        /* be sabotaged and taken over? */
    SALA_IL_TO_INC,                                     /* sala il to inc */
    WE_DO_NOT_DO_BUSINESS_TOO_BAD,                      /* we do not do business - too bad */
    SELL_HOPP,                                          /* sell & hopp */
    THEY_HAVE_A_RIGHT_OR_ON_THE,                        /* they have a right or on the */
    WINNER_IS_LOGICALLY_THE,                            /* winner is logically the */
    YOU_HAVE_THE,                                       /* You have the */
    THEY_UNFORTUNATELY_HAVE_TO_PUT_IT_ON,               /*  They unfortunately have to put it on */
    THEY_DO_NOT_WANT_THEY_PRESS_X,                      /* they do not want they press 'x' */
    THEY_ARE_NOW_OWNER_OF_THE_COMPANY,                  /* they are now owner of the company: */
    THEY_ARE_NOW_OWNERS_OF_THE_COMPANY_THEY_LAY_NOW,    /* they are now owners of the company they lay now */
    SO_FOR_THE_SABOTAGE_OF_OELFELDES,                   /* so. for the sabotage of oelfeldes */
    SHOULD_I_PROCEED_TO_DO,                             /* should I proceed to do? */
    TO_BE_SABOTAGED,                                    /* to be sabotaged? */
    OTHERS,                                             /* Others */
    S_SABOTAGE,                                         /* %s sabotage */
    CHARGES_KICKBACKS_ETC,                              /* charges, kickbacks, etc. = */
    PLAYERS_BANK_CREDIT_CAPITAL,                        /* players bank credit capital */
    PLAYER_S_D,                                         /* Player %s $= %d */
    GAME,                                               /* game */
    ARE_AVAILABLE,                                      /* are available: */
    SWIMMINOIL_INC,                                     /* swimminoil inc */
    TANK_CAR_COMPANY_BY_BRIBERY,                        /* Tank car company by bribery */
    TANKERCOMPANY,                                      /* t a n k e r  c o m p a n y */
    TANKER,                                             /* tanker: */
    TANKER_SALE_SPECIALS,                               /* ** tanker sale specials ** */
    INFORMS,                                            /* informs: */
    DEEP_FROZEN,                                        /* deep frozen */
    DEEP_FAST_AG,                                       /* deep & fast ag */
    TREND_OF_THE_NEXT_FEW_YEARS_ROUND,                  /* Trend of the next few years (round) */
    TURBO_DRILL_GMBH,                                   /* turbo & drill gmbh */
    UNREALISTIC,                                        /* unrealistic! */
    SUBMIT,                                             /* submit. */
    REMAIN_AS_THEIR_OELY,                               /* remain as their oely. */
    SALE,                                               /* s a l e */
    SOLD,                                               /* sold */
    SHIPPING_VOLUME,                                    /* Shipping volume: */
    MUCH_FUN_WITH_MONEY_AND_LOSE,                       /* Much fun with money and lose */
    THEY_SABOTAGED_TANKER_COMPANY,                      /* they sabotaged tanker company: */
    WHICH_OF_THESE_DRILLING_COMPANY,                    /* Which of these drilling company- */
    WHICH_OF_THESE_PUMPS_COMPANY_TO,                    /* Which of these pumps company to */
    WHICH_OF_THESE_TANK_CARS_COMPANY,                   /* Which of these tank cars Company */
    WHICH_COMPANY_NR,                                   /* which company (nr) */
    WHICH_COMPANY,                                      /* which company */
    WHICH_COMPANY_THEY_WANT_TO_BUY,                     /* which company they want to buy? */
    WHICH_FIELD_YOU_WANT_TO_BUY,                        /* which field you want to buy? */
    WHICH_OILFIELD_SHOULD_I_SABOTAGE,                   /* which oilfield should I sabotage? */
    WHICH_IS_TO_BE_SOLD,                                /* Which is to be sold */
    IF_THEY_WANT_TO_BUY_A_FACTORY,                      /* if they want to buy a factory */
    HOW_MUCH_THEY_WANT_TO_M_UNITS,                      /* how much they want to 500m units */
    HOW_MANY_WANT_TO_PUMP_PUMPER,                       /* How many want to pump (2-6 pumper) */
    HOW_MANY_LITERS_ARE_AWAY,                           /* how many liters are away */
    WE_ARE_IN_THE_YEAR,                                 /*  We are in the year */
    WE_CAN_YOU_THE_FOLLOWING_SPECIALS,                  /* we can you the following specials */
    WE_FOUND_IT,                                        /* we found it. */
    THEY_WANT_TO_BUY_Y_N,                               /* they want to buy (y / n)? */
    TOO_HIGH,                                           /* too high! */
    TOO_LONG,                                           /* too long */
    PENDING_FOR_SALE,                                   /* pending for sale. */
    FOR_TIME_NOT_PUMP_MANUFACTURING_COMPANY,            /* for time not pump manufacturing company */
    TOO_MUCH,                                           /* too much */

    __COUNT__ // special value
  };
}

#endif //SRC_TYPES_H
