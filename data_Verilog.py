# Data extracted for plotting
# Each LLM maps to a list of benchmarks in the following order:
# ['HC', 'HP', 'VE2-C', 'VE2-P']
# Each benchmark contains a list of values corresponding to commands in the following order:
# ['simple', 'init_desc', 'few_shot', 'init', 'supp']
data = {
    'GPT-4': [  # Data for GPT-4
        # HC
        [98, 0, 1, 0, 0],
        # HP
        [0, 0, 25, 0, 0],
        # VE2-C
        [53, 0, 2, 0, 2],
        # VE2-P
        [49, 0, 0, 0, 7],
    ],
    'GPT-3.5n': [  # Data for GPT-3.5n
        # HC
        [0, 0, 69, 0, 0],
        # HP
        [0, 0, 20, 0, 0],
        # VE2-C
        [43, 4, 0, 5, 2],
        # VE2-P
        [19, 5, 0, 3, 5],
    ],
    'GPT-3.5o': [  # Data for GPT-3.5o
        # HC
        [0, 0, 75, 0, 0],
        # HP
        [0, 0, 22, 0, 0],
        # VE2-C
        [37, 2, 2, 0, 6],
        # VE2-P
        [24, 0, 0, 0, 5],
    ],
    'GPro-1.0': [  # Data for GPro-1.0
        # HC
        [71, 0, 0, 0, 10],
        # HP
        [18, 0, 0, 0, 6],
        # VE2-C
        [40, 0, 4, 0, 4],
        # VE2-P
        [12, 0, 4, 0, 7],
    ],
    'Gpro_1.5': [  # Data for Gpro_1.5
        # HC
        [87, 6, 0, 4, 0],
        # HP
        [25, 2, 0, 0, 0],
        # VE2-C
        [48, 0, 0, 2, 0],
        # VE2-P
        [37, 0, 3, 0, 0],
    ],
    'llmama40': [  # Data for llmama40
        # HC
        [52, 0, 0, 3, 0],
        # HP
        [16, 0, 0, 0, 0],
        # VE2-C
        [30, 0, 0, 0, 0],
        # VE2-P
        [18, 0, 0, 0, 0],
    ],
    'llama70': [  # Data for llama70
        # HC
        [52, 0, 0, 3, 0],
        # HP
        [16, 0, 0, 0, 0],
        # VE2-C
        [30, 1, 0, 4, 0],
        # VE2-P
        [17, 0, 0, 0, 0],
    ],
}
