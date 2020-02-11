local ROLE_TANK, ROLE_HEAL, ROLE_MDD, ROLE_RDD, BEFORE_PULL, AFTER_PULL = ROLE_TANK, ROLE_HEAL, ROLE_MDD, ROLE_RDD, BEFORE_PULL, AFTER_PULL

db = {}

db.tableElixirPrice = {
    [17628] = 120,
    [17539] = 80,
    [11474] = 80,
    [11390] = 40,
    [10692] = 40,
    [17538] = 80,
    [17038] = 80,
    [11405] = 20,
    [16329] = 80,
    [16323] = 40,
    [10667] = 40,
    [10669] = 40,
    [17626] = 120,
    [17540] = 80,
    [11348] = 40,
    [3593] = 20,
    [10668] = 40,
    [17627] = 120,
    [21920] = 20,
    [23161] = 80, -- Конь погибели

    -- Food
    [22730] = 20,
    [18192] = 20,
    [18125] = 20,
    [25661] = 20,
    [19710] = 20,
    [25804] = 20,
    [18141] = 20,
    [18194] = 20,
    [24799] = 20,
    [22790] = 20,
};

db.consumerNames = {
    ['Восполнение маны'] = {
        [2455] = true,  -- Слабое зелье маны, ДЛЯ ТЕСТА
        [13443] = true, -- Мощное зелье маны
        [13444] = true,  -- Сильнейшее зелье маны
    },
    ['Темная руна'] = {
        [20520] = true,
    },
    ['Демоническая руна'] = {
        [12662] = true,
    },
    ['Огненная защита'] = {
        [13457] = true,
        [6049] = true,
    },
    ['Сопротивление'] = {
        [9036] = true,
    },
    ['Свободное действие'] = {
        [5634] = true,
    },
    ['Восстановление'] = {
        [9030] = true,
    },
    ['Неуязвимость'] = {
        [3387] = true,
    },
    ['Больший каменный щит'] = {
        [13455] = true,
    },
    ['Лечебное зелье'] = {
        [13446] = true,
    },
    ['Побег джуджу'] = {
        [12459] = true,
    },
    ['Восполнение энергии'] = {
        [7676] = true,
    },
    ['Громадная ярость'] = {
        [13442] = true,
    },
    ['Восполнение энергии'] = {
        [7676] = true,
    },

    -- HUNTERS
    ['Автоматическая стрельба'] = {
        [13377] = true,
        [12654] = true,
        [11630] = true,
        [18042] = true,
        [15997] = true,
        [19316] = true,
        [19317] = true,
        [19316] = true,
    },
    ['Прицельный выстрел'] = {
        [13377] = true,
        [12654] = true,
        [11630] = true,
        [18042] = true,
        [15997] = true,
        [19316] = true,
        [19317] = true,
        [19316] = true,
    },
    ['Залп'] = {
        [13377] = true,
        [12654] = true,
        [11630] = true,
        [18042] = true,
        [15997] = true,
        [19316] = true,
        [19317] = true,
        [19316] = true,
    },
    ['Чародейский выстрел'] = {
        [13377] = true,
        [12654] = true,
        [11630] = true,
        [18042] = true,
        [15997] = true,
        [19316] = true,
        [19317] = true,
        [19316] = true,
    },
    ['Град стрел'] = {
        [13377] = true,
        [12654] = true,
        [11630] = true,
        [18042] = true,
        [15997] = true,
        [19316] = true,
        [19317] = true,
        [19316] = true,
    },
    ['Отвлекающий выстрел'] = {
        [13377] = true,
        [12654] = true,
        [11630] = true,
        [18042] = true,
        [15997] = true,
        [19316] = true,
        [19317] = true,
        [19316] = true,
    },
    ['Усмиряющий выстрел'] = {
        [13377] = true,
        [12654] = true,
        [11630] = true,
        [18042] = true,
        [15997] = true,
        [19316] = true,
        [19317] = true,
        [19316] = true,
    },
};

db.commonConsumptions = {
    [20520] = true,
    [12662] = true,
    [13444] = true,
    [13443] = true,
    [13457] = true,
    [6049] = true,
    [9036] = true,
    [5634] = true,
    [9030] = true,
    [3387] = true,
    [13446] = true,

    [2455] = true, -- TEST
}

db.itemData = {
    [2455] = {
        ['name'] = 'Ну и нахуя ты его юзаешь?',
        ['EP'] = -1,
    },
    [20520] = {
        ['name'] = 'Темная руна',
        ['EP'] = 40,
    },
    [12662] = {
        ['name'] = 'Демоническая руна',
        ['EP'] = 40,
    },
    [13444] = {
        ['name'] = 'Сильнейшее зелье маны',
        ['EP'] = 40,
    },
    [13443] = {
        ['name'] = 'Мощное зелье маны',
        ['EP'] = 20,
    },
    [13457] = {
        ['name'] = 'Сильное зелье защиты от огня',
        ['EP'] = 60,
    },
    [6049] = {
        ['name'] = 'Зелье защиты от огня',
        ['EP'] = 30,
    },
    [9036] = {
        ['name'] = 'Зелье защиты от магии',
        ['EP'] = 20,
    },
    [5634] = {
        ['name'] = 'Зелье свободы действий',
        ['EP'] = 30,
    },
    [9030] = {
        ['name'] = 'Приводящее в сознание зелье',
        ['EP'] = 40,
    },
    [3387] = {
        ['name'] = 'Слабое зелье неуязвимости',
        ['EP'] = 20,
    },
    [13455] = {
        ['name'] = 'Сильное зелье каменного щита',
        ['EP'] = 40,
    },
    [13446] = {
        ['name'] = 'Хорошее лечебное зелье',
        ['EP'] = 20,
    },
    [7676] = {
        ['name'] = 'Артишоковый чай',
        ['EP'] = 40,
    },
    [13442] = {
        ['name'] = 'Мощное зелье ярости',
        ['EP'] = 40,
    },

    -- Hunters
    [13377] = {
        ['name'] = 'Ядра для мини-пушки',
        ['EP'] = 0.205,
    },
    [12654] = {
        ['name'] = 'Роковой снаряд',
        ['EP'] = 0.2,
    },
    [11630] = {
        ['name'] = 'Каменноосколочная беспатронная пуля',
        ['EP'] = 0.18,
    },
    [18042] = {
        ['name'] = 'Стрела с ториевым наконечником',
        ['EP'] = 0.175,
    },
    [15997] = {
        ['name'] = 'Ториевые патроны',
        ['EP'] = 0.175,
    },
    [19316] = {
        ['name'] = 'Пронизанная льдом стрела',
        ['EP'] = 0.165,
    },
    [19317] = {
        ['name'] = 'Пронизанная льдом пуля',
        ['EP'] = 0.165,
    },
};

db.tableClassSpecElexir = {
    ['ROGUE'] = {
        [ROLE_MDD] = {
            [BEFORE_PULL] = {
                [17538] = true,
                [17038] = true,
                [11334] = true,
                [11405] = true,
                [16329] = true,
                [16323] = true,
                [10667] = true,
                [10669] = true,

                [18192] = true,
                [18125] = true,
                [25804] = true,
            },
            [AFTER_PULL] = {
                [7676] = true,
            },
        },
    },
    ['WARLOCK'] = {
        [ROLE_RDD] = {
            [BEFORE_PULL] = {
                [17628] = true,
                [17539] = true,
                [11474] = true,
                [11390] = true,
                [10692] = true,
                [23161] = true, -- Конь погибели

                [22730] = true,
                [25804] = true,
            },
        },
    },
    ['MAGE'] = {
        [ROLE_RDD] = {
            [BEFORE_PULL] = {
                [17628] = true,
                [17539] = true,
                [11390] = true,
                [10692] = true,
                [21920] = true,

                [22730] = true,
                [25804] = true,
            },
        },
    },
    ['HUNTER'] = {
        [ROLE_RDD] = {
            [BEFORE_PULL] = {
                [17538] = true,
                [11334] = true,
                [16323] = true,
                [10669] = true,

                [18192] = true,
                [18125] = true,
                [25804] = true,
            },
            [AFTER_PULL] = {
                [13377] = true,
                [12654] = true,
                [11630] = true,
                [18042] = true,
                [15997] = true,
                [19316] = true,
                [19317] = true,
                [19316] = true,
            },
        },
    },
    ['WARRIOR'] = {
        [ROLE_MDD] = {
            [BEFORE_PULL] = {
                [17538] = true,
                [17038] = true,
                [17537] = true,
                [11334] = true,
                [11405] = true,
                [16329] = true,
                [16323] = true,
                [10667] = true,
                [10669] = true,

                [18192] = true,
                [18125] = true,
                [25804] = true,
            },
            [AFTER_PULL] = {
                [13442] = true,
            }
        },
        [ROLE_TANK] = {
            [BEFORE_PULL] = {
                [17626] = true,
                [17540] = true,
                [17538] = true,
                [17038] = true,
                [11348] = true,
                [17537] = true,
                [11405] = true,
                [11371] = true,
                [3593] = true,
                [16329] = true,
                [16323] = true,
                [10668] = true,

                [25661] = true,
                [19710] = true,
                [25804] = true,
            },
            [AFTER_PULL] = {
                [13455] = true,
                [12459] = true,
            },
        },
    },
    ['PALADIN'] = {
        [ROLE_MDD] = {
            [BEFORE_PULL] = {
                [17539] = true,
                [17538] = true,
                [17038] = true,
                [11390] = true,
                [16329] = true,
                [16323] = true,
                [10667] = true,
                [10669] = true,

                [24799] = true,
                [19710] = true,
                [25804] = true,
                [18194] = true,
            },
        },
        [ROLE_HEAL] = {
            [BEFORE_PULL] = {
                [17627] = true,
                [24363] = true,
                [10692] = true,

                [18141] = true,
                [22730] = true,
                [18194] = true,
                [25804] = true,
                [22790] = true,
            },
        },
        [ROLE_TANK] = {
            [BEFORE_PULL] = {
                [17626] = true,
                [17540] = true,
                [17538] = true,
                [17038] = true,
                [11348] = true,
                [17537] = true,
                [11405] = true,
                [11371] = true,
                [3593] = true,
                [16329] = true,
                [16323] = true,
                [10668] = true,

                [25661] = true,
                [19710] = true,
                [25804] = true,
                [18194] = true,
            },
            [AFTER_PULL] = {
                [13455] = true,
                [12459] = true,
            },
        },
    },
    ['PRIEST'] = {
        [ROLE_RDD] = {
            [BEFORE_PULL] = {
                [17628] = true,
                [17539] = true,
                [11474] = true,
                [11390] = true,
                [10692] = true,

                [22730] = true,
                [25804] = true,
            },
        },
        [ROLE_HEAL] = {
            [BEFORE_PULL] = {
                [17627] = true,
                [24363] = true,
                [10692] = true,

                [18141] = true,
                [22730] = true,
                [18194] = true,
                [25804] = true,
                [22790] = true,
            },
        },
    },
    ['DRUID'] = {
        [ROLE_RDD] = {
            [BEFORE_PULL] = {
                [17628] = true,
                [17539] = true,
                [11390] = true,
                [10692] = true,

                [22730] = true,
                [25804] = true,
            },
        },
        [ROLE_HEAL] = {
            [BEFORE_PULL] = {
                [17627] = true,
                [24363] = true,
                [10692] = true,

                [18141] = true,
                [22730] = true,
                [18194] = true,
                [25804] = true,
                [22790] = true,
            },
        },
        [ROLE_MDD] = {
            [BEFORE_PULL] = {
                [17538] = true,
                [17038] = true,
                [11334] = true,
                [11405] = true,
                [16329] = true,
                [16323] = true,
                [10667] = true,
                [10669] = true,

                [18192] = true,
                [18125] = true,
                [25804] = true,
            },
        },
        [ROLE_TANK] = {
            [BEFORE_PULL] = {
                [17626] = true,
                [17540] = true,
                [17538] = true,
                [17038] = true,
                [11348] = true,
                [17537] = true,
                [11405] = true,
                [11371] = true,
                [3593] = true,
                [16329] = true,
                [16323] = true,
                [10668] = true,

                [25661] = true,
                [18192] = true,
                [19710] = true,
                [25804] = true,
            },
            [AFTER_PULL] = {
                [13455] = true,
                [12459] = true,
            },
        },
    },
};

db.tableRequiredElexir = {
    ['ROGUE'] = {
        [ROLE_MDD] = {
            [17538] = true,
        },
    },
    ['WARLOCK'] = {
        [ROLE_RDD] = {
            [17539] = true,
            [11474] = true,

            [23161] = true, -- Конь погибели
        },
    },
    ['MAGE'] = {
        [ROLE_RDD] = {
            [17539] = true,
        },
    },
    ['HUNTER'] = {
        [ROLE_RDD] = {
            [17538] = true,
        },
    },
    ['WARRIOR'] = {
        [ROLE_MDD] = {
            [17538] = true,
        },
    },
    ['PALADIN'] = {
        [ROLE_MDD] = {
            [17538] = true,
        },
    },
    ['PRIEST'] = {
        [ROLE_RDD] = {
            [17539] = true,
            [11474] = true,
        },
    },
    ['DRUID'] = {
        [ROLE_RDD] = {
            [17539] = true,
        },
        [ROLE_MDD] = {
            [17538] = true,
        },
    },
};

db.tableRequiredTankElixir = {
    [11348] = true,
    [25804] = true,
}

db.fireResistFlask = {
    [7233] = 30,
    [17543] = 60,
--    [23161]=100, -- Конь погибели
};

db.fireResistJuju = 16326;

db.juju = {
    [16329] = true,
    [16323] = true,
};