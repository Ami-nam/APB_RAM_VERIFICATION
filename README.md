# APB_RAM_VERIFICATION
Project directory


apb_uvm_verification/
│
├── rtl/
│   └── apb_slave.v
│
├── tb/
│   ├── interface/
│   │   └── apb_if.sv
│   │
│   ├── agent/

│   │   ├── apb_agent.sv
│   │   ├── apb_driver.sv
│   │   ├── apb_monitor.sv
│   │   └── apb_sequencer.sv
│   │
│   ├── seq/
│   │   ├── apb_seq_item.sv
│   │   ├── apb_base_seq.sv
│   │   └── apb_rw_seq.sv
│   │
│   ├── env/
│   │   └── apb_env.sv
│   │
│   ├── ral/
│   │   ├── apb_reg.sv
│   │   ├── apb_reg_block.sv
│   │   └── apb_reg_model.sv
│   │

│   ├── scoreboard/
│   │   └── apb_scoreboard.sv
│   │

│   ├── test/
│   │   ├── apb_base_test.sv
│   │   └── apb_rw_test.sv
│   │
│   └── apb_tb_top.sv
│
├── sim/
│   ├── run.do
│   └── compile.do
│
├── README.md
└── .gitignore
