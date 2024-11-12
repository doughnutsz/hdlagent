#!/bin/bash



timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.0-pro-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.0-pro-002/HDLEval-comb/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:24a --top_k=10



timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.0-pro-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.0-pro-002/HDLEval-pipe/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:24a_pipe


timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.0-pro-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.0-pro-002/VerilogEval2-comb/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:VerilogEval2-comb

timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.0-pro-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.0-pro-002/VerilogEval2-pipe/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:VerilogEval2-pipe

timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.5-flash-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.5-flash-002/HDLEval-comb/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:24a --top_k=10


timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.5-flash-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.5-flash-002/HDLEval-pipe/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:24a_pipe


timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.5-flash-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.5-flash-002/VerilogEval2-comb/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:VerilogEval2-comb

timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=gemini-1.5-flash-002 --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/gemini-1.5-flash-002/VerilogEval2-pipe/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:VerilogEval2-pipe


# timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=llama3-405b --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/llama3-405b/HDLEval-comb/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:24a --top_k=10

# timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=llama3-405b --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/llama3-405b/HDLEval-pipe/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:24a_pipe


# timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=llama3-405b --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/llama3-405b/VerilogEval2-comb/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:VerilogEval2-comb


# timeout 4000 poetry run hdlagent/cli_agent.py bench --llm=llama3-405b --skip_successful --skip_completed --lang=Verilog --w_dir=../DAC_results/llama3-405b/VerilogEval2-pipe/Verilog/supp --lec_limit=1 --comp_limit=8 --init_context hdlagent/resources/Verilog/Verilog_context_1.md --supp_context hdeval:VerilogEval2-pipe