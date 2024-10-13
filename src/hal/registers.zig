const Register = @import("register.zig").Register;

const AES_KEY_0 = packed struct {
	/// This bits stores key_0 that is a part of key material.
	KEY_0: u32,
};

const AES_KEY_1 = packed struct {
	/// This bits stores key_1 that is a part of key material.
	KEY_1: u32,
};

const AES_KEY_2 = packed struct {
	/// This bits stores key_2 that is a part of key material.
	KEY_2: u32,
};

const AES_KEY_3 = packed struct {
	/// This bits stores key_3 that is a part of key material.
	KEY_3: u32,
};

const AES_KEY_4 = packed struct {
	/// This bits stores key_4 that is a part of key material.
	KEY_4: u32,
};

const AES_KEY_5 = packed struct {
	/// This bits stores key_5 that is a part of key material.
	KEY_5: u32,
};

const AES_KEY_6 = packed struct {
	/// This bits stores key_6 that is a part of key material.
	KEY_6: u32,
};

const AES_KEY_7 = packed struct {
	/// This bits stores key_7 that is a part of key material.
	KEY_7: u32,
};

const AES_TEXT_IN_0 = packed struct {
	/// This bits stores text_in_0 that is a part of source text material.
	TEXT_IN_0: u32,
};

const AES_TEXT_IN_1 = packed struct {
	/// This bits stores text_in_1 that is a part of source text material.
	TEXT_IN_1: u32,
};

const AES_TEXT_IN_2 = packed struct {
	/// This bits stores text_in_2 that is a part of source text material.
	TEXT_IN_2: u32,
};

const AES_TEXT_IN_3 = packed struct {
	/// This bits stores text_in_3 that is a part of source text material.
	TEXT_IN_3: u32,
};

const AES_TEXT_OUT_0 = packed struct {
	/// This bits stores text_out_0 that is a part of result text material.
	TEXT_OUT_0: u32,
};

const AES_TEXT_OUT_1 = packed struct {
	/// This bits stores text_out_1 that is a part of result text material.
	TEXT_OUT_1: u32,
};

const AES_TEXT_OUT_2 = packed struct {
	/// This bits stores text_out_2 that is a part of result text material.
	TEXT_OUT_2: u32,
};

const AES_TEXT_OUT_3 = packed struct {
	/// This bits stores text_out_3 that is a part of result text material.
	TEXT_OUT_3: u32,
};

const AES_MODE = packed struct {
	/// This bits decides which one operation mode will be used. 3'd0: AES-EN-128, 3'd1: AES-EN-192, 3'd2: AES-EN-256, 3'd4: AES-DE-128, 3'd5: AES-DE-192, 3'd6: AES-DE-256.
	MODE: u3,
	reserved0: u29,
};

const AES_ENDIAN = packed struct {
	/// endian. [1:0] key endian, [3:2] text_in endian or in_stream endian,  [5:4] text_out endian or out_stream endian
	ENDIAN: u6,
	reserved0: u26,
};

const AES_TRIGGER = packed struct {
	/// Set this bit to start AES calculation.
	TRIGGER: u1,
	reserved0: u31,
};

const AES_STATE = packed struct {
	/// Those bits shows AES status. For typical AES, 0: idle, 1: busy. For DMA-AES, 0: idle, 1: busy, 2: calculation_done.
	STATE: u2,
	reserved0: u30,
};

const AES_IV_MEMN = packed struct {
	reserved0: u32,
};

const AES_H_MEMN = packed struct {
	reserved0: u32,
};

const AES_J0_MEMN = packed struct {
	reserved0: u32,
};

const AES_T0_MEMN = packed struct {
	reserved0: u32,
};

const AES_DMA_ENABLE = packed struct {
	/// 1'b0: typical AES working mode, 1'b1: DMA-AES working mode.
	DMA_ENABLE: u1,
	reserved0: u31,
};

const AES_BLOCK_MODE = packed struct {
	/// Those bits decides which block mode will be used. 0x0: ECB, 0x1: CBC, 0x2: OFB, 0x3: CTR, 0x4: CFB-8, 0x5: CFB-128, 0x6: GCM, 0x7: reserved.
	BLOCK_MODE: u3,
	reserved0: u29,
};

const AES_BLOCK_NUM = packed struct {
	/// Those bits stores the number of Plaintext/ciphertext block.
	BLOCK_NUM: u32,
};

const AES_INC_SEL = packed struct {
	/// This bit decides the standard incrementing function. 0: INC32. 1: INC128.
	INC_SEL: u1,
	reserved0: u31,
};

const AES_AAD_BLOCK_NUM = packed struct {
	/// Those bits stores the number of AAD block.
	AAD_BLOCK_NUM: u32,
};

const AES_REMAINDER_BIT_NUM = packed struct {
	/// Those bits stores the number of remainder bit.
	REMAINDER_BIT_NUM: u7,
	reserved0: u25,
};

const AES_CONTINUE = packed struct {
	/// Set this bit to continue GCM operation.
	CONTINUE: u1,
	reserved0: u31,
};

const AES_INT_CLEAR = packed struct {
	/// Set this bit to clear the AES interrupt.
	INT_CLEAR: u1,
	reserved0: u31,
};

const AES_INT_ENA = packed struct {
	/// Set this bit to enable interrupt that occurs when DMA-AES calculation is done.
	INT_ENA: u1,
	reserved0: u31,
};

const AES_DATE = packed struct {
	/// This bits stores the version information of AES.
	DATE: u30,
	reserved0: u2,
};

const AES_DMA_EXIT = packed struct {
	/// Set this register to leave calculation done stage. Recommend to use it after software finishes reading DMA's output buffer.
	DMA_EXIT: u1,
	reserved0: u31,
};

//Peripheral type
const AES = struct {
	/// Key material key_0 configure register
	KEY_0: *volatile Register(AES_KEY_0),
	/// Key material key_1 configure register
	KEY_1: *volatile Register(AES_KEY_1),
	/// Key material key_2 configure register
	KEY_2: *volatile Register(AES_KEY_2),
	/// Key material key_3 configure register
	KEY_3: *volatile Register(AES_KEY_3),
	/// Key material key_4 configure register
	KEY_4: *volatile Register(AES_KEY_4),
	/// Key material key_5 configure register
	KEY_5: *volatile Register(AES_KEY_5),
	/// Key material key_6 configure register
	KEY_6: *volatile Register(AES_KEY_6),
	/// Key material key_7 configure register
	KEY_7: *volatile Register(AES_KEY_7),
	/// source text material text_in_0 configure register
	TEXT_IN_0: *volatile Register(AES_TEXT_IN_0),
	/// source text material text_in_1 configure register
	TEXT_IN_1: *volatile Register(AES_TEXT_IN_1),
	/// source text material text_in_2 configure register
	TEXT_IN_2: *volatile Register(AES_TEXT_IN_2),
	/// source text material text_in_3 configure register
	TEXT_IN_3: *volatile Register(AES_TEXT_IN_3),
	/// result text material text_out_0 configure register
	TEXT_OUT_0: *volatile Register(AES_TEXT_OUT_0),
	/// result text material text_out_1 configure register
	TEXT_OUT_1: *volatile Register(AES_TEXT_OUT_1),
	/// result text material text_out_2 configure register
	TEXT_OUT_2: *volatile Register(AES_TEXT_OUT_2),
	/// result text material text_out_3 configure register
	TEXT_OUT_3: *volatile Register(AES_TEXT_OUT_3),
	/// AES Mode register
	MODE: *volatile Register(AES_MODE),
	/// AES Endian configure register
	ENDIAN: *volatile Register(AES_ENDIAN),
	/// AES trigger register
	TRIGGER: *volatile Register(AES_TRIGGER),
	/// AES state register
	STATE: *volatile Register(AES_STATE),
	/// The memory that stores initialization vector
	IV_MEM0: *volatile Register(AES_IV_MEMN),
	/// The memory that stores initialization vector
	IV_MEM1: *volatile Register(AES_IV_MEMN),
	/// The memory that stores initialization vector
	IV_MEM2: *volatile Register(AES_IV_MEMN),
	/// The memory that stores initialization vector
	IV_MEM3: *volatile Register(AES_IV_MEMN),
	/// The memory that stores GCM hash subkey
	H_MEM0: *volatile Register(AES_H_MEMN),
	/// The memory that stores GCM hash subkey
	H_MEM1: *volatile Register(AES_H_MEMN),
	/// The memory that stores GCM hash subkey
	H_MEM2: *volatile Register(AES_H_MEMN),
	/// The memory that stores GCM hash subkey
	H_MEM3: *volatile Register(AES_H_MEMN),
	/// The memory that stores J0
	J0_MEM0: *volatile Register(AES_J0_MEMN),
	/// The memory that stores J0
	J0_MEM1: *volatile Register(AES_J0_MEMN),
	/// The memory that stores J0
	J0_MEM2: *volatile Register(AES_J0_MEMN),
	/// The memory that stores J0
	J0_MEM3: *volatile Register(AES_J0_MEMN),
	/// The memory that stores T0
	T0_MEM0: *volatile Register(AES_T0_MEMN),
	/// The memory that stores T0
	T0_MEM1: *volatile Register(AES_T0_MEMN),
	/// The memory that stores T0
	T0_MEM2: *volatile Register(AES_T0_MEMN),
	/// The memory that stores T0
	T0_MEM3: *volatile Register(AES_T0_MEMN),
	/// DMA-AES working mode register
	DMA_ENABLE: *volatile Register(AES_DMA_ENABLE),
	/// AES cipher block mode register
	BLOCK_MODE: *volatile Register(AES_BLOCK_MODE),
	/// AES block number register
	BLOCK_NUM: *volatile Register(AES_BLOCK_NUM),
	/// Standard incrementing function configure register
	INC_SEL: *volatile Register(AES_INC_SEL),
	/// Additional Authential Data block number register
	AAD_BLOCK_NUM: *volatile Register(AES_AAD_BLOCK_NUM),
	/// AES remainder bit number register
	REMAINDER_BIT_NUM: *volatile Register(AES_REMAINDER_BIT_NUM),
	/// AES continue register
	CONTINUE: *volatile Register(AES_CONTINUE),
	/// AES Interrupt clear register
	INT_CLEAR: *volatile Register(AES_INT_CLEAR),
	/// AES Interrupt enable register
	INT_ENA: *volatile Register(AES_INT_ENA),
	/// AES version control register
	DATE: *volatile Register(AES_DATE),
	/// AES-DMA exit config
	DMA_EXIT: *volatile Register(AES_DMA_EXIT),
};

// Peripheral instance
const AES_instance = AES {
	.KEY_0 = @ptrFromInt(0x6003a000),
	.KEY_1 = @ptrFromInt(0x6003a004),
	.KEY_2 = @ptrFromInt(0x6003a008),
	.KEY_3 = @ptrFromInt(0x6003a00c),
	.KEY_4 = @ptrFromInt(0x6003a010),
	.KEY_5 = @ptrFromInt(0x6003a014),
	.KEY_6 = @ptrFromInt(0x6003a018),
	.KEY_7 = @ptrFromInt(0x6003a01c),
	.TEXT_IN_0 = @ptrFromInt(0x6003a020),
	.TEXT_IN_1 = @ptrFromInt(0x6003a024),
	.TEXT_IN_2 = @ptrFromInt(0x6003a028),
	.TEXT_IN_3 = @ptrFromInt(0x6003a02c),
	.TEXT_OUT_0 = @ptrFromInt(0x6003a030),
	.TEXT_OUT_1 = @ptrFromInt(0x6003a034),
	.TEXT_OUT_2 = @ptrFromInt(0x6003a038),
	.TEXT_OUT_3 = @ptrFromInt(0x6003a03c),
	.MODE = @ptrFromInt(0x6003a040),
	.ENDIAN = @ptrFromInt(0x6003a044),
	.TRIGGER = @ptrFromInt(0x6003a048),
	.STATE = @ptrFromInt(0x6003a04c),
	.IV_MEM0 = @ptrFromInt(0x6003a050),
	.IV_MEM1 = @ptrFromInt(0x6003a050),
	.IV_MEM2 = @ptrFromInt(0x6003a050),
	.IV_MEM3 = @ptrFromInt(0x6003a050),
	.H_MEM0 = @ptrFromInt(0x6003a060),
	.H_MEM1 = @ptrFromInt(0x6003a060),
	.H_MEM2 = @ptrFromInt(0x6003a060),
	.H_MEM3 = @ptrFromInt(0x6003a060),
	.J0_MEM0 = @ptrFromInt(0x6003a070),
	.J0_MEM1 = @ptrFromInt(0x6003a070),
	.J0_MEM2 = @ptrFromInt(0x6003a070),
	.J0_MEM3 = @ptrFromInt(0x6003a070),
	.T0_MEM0 = @ptrFromInt(0x6003a080),
	.T0_MEM1 = @ptrFromInt(0x6003a080),
	.T0_MEM2 = @ptrFromInt(0x6003a080),
	.T0_MEM3 = @ptrFromInt(0x6003a080),
	.DMA_ENABLE = @ptrFromInt(0x6003a090),
	.BLOCK_MODE = @ptrFromInt(0x6003a094),
	.BLOCK_NUM = @ptrFromInt(0x6003a098),
	.INC_SEL = @ptrFromInt(0x6003a09c),
	.AAD_BLOCK_NUM = @ptrFromInt(0x6003a0a0),
	.REMAINDER_BIT_NUM = @ptrFromInt(0x6003a0a4),
	.CONTINUE = @ptrFromInt(0x6003a0a8),
	.INT_CLEAR = @ptrFromInt(0x6003a0ac),
	.INT_ENA = @ptrFromInt(0x6003a0b0),
	.DATE = @ptrFromInt(0x6003a0b4),
	.DMA_EXIT = @ptrFromInt(0x6003a0b8),
};

const APB_CTRL_SYSCLK_CONF = packed struct {
	/// reg_pre_div_cnt
	PRE_DIV_CNT: u10,
	/// reg_clk_320m_en
	CLK_320M_EN: u1,
	/// reg_clk_en
	CLK_EN: u1,
	/// reg_rst_tick_cnt
	RST_TICK_CNT: u1,
	reserved0: u19,
};

const APB_CTRL_TICK_CONF = packed struct {
	/// reg_xtal_tick_num
	XTAL_TICK_NUM: u8,
	/// reg_ck8m_tick_num
	CK8M_TICK_NUM: u8,
	/// reg_tick_enable
	TICK_ENABLE: u1,
	reserved0: u15,
};

const APB_CTRL_CLK_OUT_EN = packed struct {
	/// reg_clk20_oen
	CLK20_OEN: u1,
	/// reg_clk22_oen
	CLK22_OEN: u1,
	/// reg_clk44_oen
	CLK44_OEN: u1,
	/// reg_clk_bb_oen
	CLK_BB_OEN: u1,
	/// reg_clk80_oen
	CLK80_OEN: u1,
	/// reg_clk160_oen
	CLK160_OEN: u1,
	/// reg_clk_320m_oen
	CLK_320M_OEN: u1,
	/// reg_clk_adc_inf_oen
	CLK_ADC_INF_OEN: u1,
	/// reg_clk_dac_cpu_oen
	CLK_DAC_CPU_OEN: u1,
	/// reg_clk40x_bb_oen
	CLK40X_BB_OEN: u1,
	/// reg_clk_xtal_oen
	CLK_XTAL_OEN: u1,
	reserved0: u21,
};

const APB_CTRL_WIFI_BB_CFG = packed struct {
	/// reg_wifi_bb_cfg
	WIFI_BB_CFG: u32,
};

const APB_CTRL_WIFI_BB_CFG_2 = packed struct {
	/// reg_wifi_bb_cfg_2
	WIFI_BB_CFG_2: u32,
};

const APB_CTRL_WIFI_CLK_EN = packed struct {
	/// reg_wifi_clk_en
	WIFI_CLK_EN: u32,
};

const APB_CTRL_WIFI_RST_EN = packed struct {
	/// reg_wifi_rst
	WIFI_RST: u32,
};

const APB_CTRL_HOST_INF_SEL = packed struct {
	/// reg_peri_io_swap
	PERI_IO_SWAP: u8,
	reserved0: u24,
};

const APB_CTRL_EXT_MEM_PMS_LOCK = packed struct {
	/// reg_ext_mem_pms_lock
	EXT_MEM_PMS_LOCK: u1,
	reserved0: u31,
};

const APB_CTRL_FLASH_ACE0_ATTR = packed struct {
	/// reg_flash_ace0_attr
	FLASH_ACE0_ATTR: u2,
	reserved0: u30,
};

const APB_CTRL_FLASH_ACE1_ATTR = packed struct {
	/// reg_flash_ace1_attr
	FLASH_ACE1_ATTR: u2,
	reserved0: u30,
};

const APB_CTRL_FLASH_ACE2_ATTR = packed struct {
	/// reg_flash_ace2_attr
	FLASH_ACE2_ATTR: u2,
	reserved0: u30,
};

const APB_CTRL_FLASH_ACE3_ATTR = packed struct {
	/// reg_flash_ace3_attr
	FLASH_ACE3_ATTR: u2,
	reserved0: u30,
};

const APB_CTRL_FLASH_ACE0_ADDR = packed struct {
	/// reg_flash_ace0_addr_s
	S: u32,
};

const APB_CTRL_FLASH_ACE1_ADDR = packed struct {
	/// reg_flash_ace1_addr_s
	S: u32,
};

const APB_CTRL_FLASH_ACE2_ADDR = packed struct {
	/// reg_flash_ace2_addr_s
	S: u32,
};

const APB_CTRL_FLASH_ACE3_ADDR = packed struct {
	/// reg_flash_ace3_addr_s
	S: u32,
};

const APB_CTRL_FLASH_ACE0_SIZE = packed struct {
	/// reg_flash_ace0_size
	FLASH_ACE0_SIZE: u13,
	reserved0: u19,
};

const APB_CTRL_FLASH_ACE1_SIZE = packed struct {
	/// reg_flash_ace1_size
	FLASH_ACE1_SIZE: u13,
	reserved0: u19,
};

const APB_CTRL_FLASH_ACE2_SIZE = packed struct {
	/// reg_flash_ace2_size
	FLASH_ACE2_SIZE: u13,
	reserved0: u19,
};

const APB_CTRL_FLASH_ACE3_SIZE = packed struct {
	/// reg_flash_ace3_size
	FLASH_ACE3_SIZE: u13,
	reserved0: u19,
};

const APB_CTRL_SPI_MEM_PMS_CTRL = packed struct {
	/// reg_spi_mem_reject_int
	SPI_MEM_REJECT_INT: u1,
	/// reg_spi_mem_reject_clr
	SPI_MEM_REJECT_CLR: u1,
	/// reg_spi_mem_reject_cde
	SPI_MEM_REJECT_CDE: u5,
	reserved0: u25,
};

const APB_CTRL_SPI_MEM_REJECT_ADDR = packed struct {
	/// reg_spi_mem_reject_addr
	SPI_MEM_REJECT_ADDR: u32,
};

const APB_CTRL_SDIO_CTRL = packed struct {
	/// reg_sdio_win_access_en
	SDIO_WIN_ACCESS_EN: u1,
	reserved0: u31,
};

const APB_CTRL_REDCY_SIG0 = packed struct {
	/// reg_redcy_sig0
	REDCY_SIG0: u31,
	/// reg_redcy_andor
	REDCY_ANDOR: u1,
};

const APB_CTRL_REDCY_SIG1 = packed struct {
	/// reg_redcy_sig1
	REDCY_SIG1: u31,
	/// reg_redcy_nandor
	REDCY_NANDOR: u1,
};

const APB_CTRL_FRONT_END_MEM_PD = packed struct {
	/// reg_agc_mem_force_pu
	AGC_MEM_FORCE_PU: u1,
	/// reg_agc_mem_force_pd
	AGC_MEM_FORCE_PD: u1,
	/// reg_pbus_mem_force_pu
	PBUS_MEM_FORCE_PU: u1,
	/// reg_pbus_mem_force_pd
	PBUS_MEM_FORCE_PD: u1,
	/// reg_dc_mem_force_pu
	DC_MEM_FORCE_PU: u1,
	/// reg_dc_mem_force_pd
	DC_MEM_FORCE_PD: u1,
	reserved0: u26,
};

const APB_CTRL_RETENTION_CTRL = packed struct {
	/// reg_retention_link_addr
	RETENTION_LINK_ADDR: u27,
	/// reg_nobypass_cpu_iso_rst
	NOBYPASS_CPU_ISO_RST: u1,
	reserved0: u4,
};

const APB_CTRL_CLKGATE_FORCE_ON = packed struct {
	/// reg_rom_clkgate_force_on
	ROM_CLKGATE_FORCE_ON: u2,
	/// reg_sram_clkgate_force_on
	SRAM_CLKGATE_FORCE_ON: u4,
	reserved0: u26,
};

const APB_CTRL_MEM_POWER_DOWN = packed struct {
	/// reg_rom_power_down
	ROM_POWER_DOWN: u2,
	/// reg_sram_power_down
	SRAM_POWER_DOWN: u4,
	reserved0: u26,
};

const APB_CTRL_MEM_POWER_UP = packed struct {
	/// reg_rom_power_up
	ROM_POWER_UP: u2,
	/// reg_sram_power_up
	SRAM_POWER_UP: u4,
	reserved0: u26,
};

const APB_CTRL_RND_DATA = packed struct {
	/// reg_rnd_data
	RND_DATA: u32,
};

const APB_CTRL_PERI_BACKUP_CONFIG = packed struct {
	reserved0: u1,
	/// reg_peri_backup_flow_err
	PERI_BACKUP_FLOW_ERR: u2,
	reserved1: u1,
	/// reg_peri_backup_burst_limit
	PERI_BACKUP_BURST_LIMIT: u5,
	/// reg_peri_backup_tout_thres
	PERI_BACKUP_TOUT_THRES: u10,
	/// reg_peri_backup_size
	PERI_BACKUP_SIZE: u10,
	/// reg_peri_backup_start
	PERI_BACKUP_START: u1,
	/// reg_peri_backup_to_mem
	PERI_BACKUP_TO_MEM: u1,
	/// reg_peri_backup_ena
	PERI_BACKUP_ENA: u1,
};

const APB_CTRL_PERI_BACKUP_APB_ADDR = packed struct {
	/// reg_backup_apb_start_addr
	BACKUP_APB_START_ADDR: u32,
};

const APB_CTRL_PERI_BACKUP_MEM_ADDR = packed struct {
	/// reg_backup_mem_start_addr
	BACKUP_MEM_START_ADDR: u32,
};

const APB_CTRL_PERI_BACKUP_INT_RAW = packed struct {
	/// reg_peri_backup_done_int_raw
	PERI_BACKUP_DONE_INT_RAW: u1,
	/// reg_peri_backup_err_int_raw
	PERI_BACKUP_ERR_INT_RAW: u1,
	reserved0: u30,
};

const APB_CTRL_PERI_BACKUP_INT_ST = packed struct {
	/// reg_peri_backup_done_int_st
	PERI_BACKUP_DONE_INT_ST: u1,
	/// reg_peri_backup_err_int_st
	PERI_BACKUP_ERR_INT_ST: u1,
	reserved0: u30,
};

const APB_CTRL_PERI_BACKUP_INT_ENA = packed struct {
	/// reg_peri_backup_done_int_ena
	PERI_BACKUP_DONE_INT_ENA: u1,
	/// reg_peri_backup_err_int_ena
	PERI_BACKUP_ERR_INT_ENA: u1,
	reserved0: u30,
};

const APB_CTRL_PERI_BACKUP_INT_CLR = packed struct {
	/// reg_peri_backup_done_int_clr
	PERI_BACKUP_DONE_INT_CLR: u1,
	/// reg_peri_backup_err_int_clr
	PERI_BACKUP_ERR_INT_CLR: u1,
	reserved0: u30,
};

const APB_CTRL_DATE = packed struct {
	/// reg_dateVersion control
	DATE: u32,
};

//Peripheral type
const APB_CTRL = struct {
	/// APB_CTRL_SYSCLK_CONF_REG
	SYSCLK_CONF: *volatile Register(APB_CTRL_SYSCLK_CONF),
	/// APB_CTRL_TICK_CONF_REG
	TICK_CONF: *volatile Register(APB_CTRL_TICK_CONF),
	/// APB_CTRL_CLK_OUT_EN_REG
	CLK_OUT_EN: *volatile Register(APB_CTRL_CLK_OUT_EN),
	/// APB_CTRL_WIFI_BB_CFG_REG
	WIFI_BB_CFG: *volatile Register(APB_CTRL_WIFI_BB_CFG),
	/// APB_CTRL_WIFI_BB_CFG_2_REG
	WIFI_BB_CFG_2: *volatile Register(APB_CTRL_WIFI_BB_CFG_2),
	/// APB_CTRL_WIFI_CLK_EN_REG
	WIFI_CLK_EN: *volatile Register(APB_CTRL_WIFI_CLK_EN),
	/// APB_CTRL_WIFI_RST_EN_REG
	WIFI_RST_EN: *volatile Register(APB_CTRL_WIFI_RST_EN),
	/// APB_CTRL_HOST_INF_SEL_REG
	HOST_INF_SEL: *volatile Register(APB_CTRL_HOST_INF_SEL),
	/// APB_CTRL_EXT_MEM_PMS_LOCK_REG
	EXT_MEM_PMS_LOCK: *volatile Register(APB_CTRL_EXT_MEM_PMS_LOCK),
	/// APB_CTRL_FLASH_ACE0_ATTR_REG
	FLASH_ACE0_ATTR: *volatile Register(APB_CTRL_FLASH_ACE0_ATTR),
	/// APB_CTRL_FLASH_ACE1_ATTR_REG
	FLASH_ACE1_ATTR: *volatile Register(APB_CTRL_FLASH_ACE1_ATTR),
	/// APB_CTRL_FLASH_ACE2_ATTR_REG
	FLASH_ACE2_ATTR: *volatile Register(APB_CTRL_FLASH_ACE2_ATTR),
	/// APB_CTRL_FLASH_ACE3_ATTR_REG
	FLASH_ACE3_ATTR: *volatile Register(APB_CTRL_FLASH_ACE3_ATTR),
	/// APB_CTRL_FLASH_ACE0_ADDR_REG
	FLASH_ACE0_ADDR: *volatile Register(APB_CTRL_FLASH_ACE0_ADDR),
	/// APB_CTRL_FLASH_ACE1_ADDR_REG
	FLASH_ACE1_ADDR: *volatile Register(APB_CTRL_FLASH_ACE1_ADDR),
	/// APB_CTRL_FLASH_ACE2_ADDR_REG
	FLASH_ACE2_ADDR: *volatile Register(APB_CTRL_FLASH_ACE2_ADDR),
	/// APB_CTRL_FLASH_ACE3_ADDR_REG
	FLASH_ACE3_ADDR: *volatile Register(APB_CTRL_FLASH_ACE3_ADDR),
	/// APB_CTRL_FLASH_ACE0_SIZE_REG
	FLASH_ACE0_SIZE: *volatile Register(APB_CTRL_FLASH_ACE0_SIZE),
	/// APB_CTRL_FLASH_ACE1_SIZE_REG
	FLASH_ACE1_SIZE: *volatile Register(APB_CTRL_FLASH_ACE1_SIZE),
	/// APB_CTRL_FLASH_ACE2_SIZE_REG
	FLASH_ACE2_SIZE: *volatile Register(APB_CTRL_FLASH_ACE2_SIZE),
	/// APB_CTRL_FLASH_ACE3_SIZE_REG
	FLASH_ACE3_SIZE: *volatile Register(APB_CTRL_FLASH_ACE3_SIZE),
	/// APB_CTRL_SPI_MEM_PMS_CTRL_REG
	SPI_MEM_PMS_CTRL: *volatile Register(APB_CTRL_SPI_MEM_PMS_CTRL),
	/// APB_CTRL_SPI_MEM_REJECT_ADDR_REG
	SPI_MEM_REJECT_ADDR: *volatile Register(APB_CTRL_SPI_MEM_REJECT_ADDR),
	/// APB_CTRL_SDIO_CTRL_REG
	SDIO_CTRL: *volatile Register(APB_CTRL_SDIO_CTRL),
	/// APB_CTRL_REDCY_SIG0_REG_REG
	REDCY_SIG0: *volatile Register(APB_CTRL_REDCY_SIG0),
	/// APB_CTRL_REDCY_SIG1_REG_REG
	REDCY_SIG1: *volatile Register(APB_CTRL_REDCY_SIG1),
	/// APB_CTRL_FRONT_END_MEM_PD_REG
	FRONT_END_MEM_PD: *volatile Register(APB_CTRL_FRONT_END_MEM_PD),
	/// APB_CTRL_RETENTION_CTRL_REG
	RETENTION_CTRL: *volatile Register(APB_CTRL_RETENTION_CTRL),
	/// APB_CTRL_CLKGATE_FORCE_ON_REG
	CLKGATE_FORCE_ON: *volatile Register(APB_CTRL_CLKGATE_FORCE_ON),
	/// APB_CTRL_MEM_POWER_DOWN_REG
	MEM_POWER_DOWN: *volatile Register(APB_CTRL_MEM_POWER_DOWN),
	/// APB_CTRL_MEM_POWER_UP_REG
	MEM_POWER_UP: *volatile Register(APB_CTRL_MEM_POWER_UP),
	/// APB_CTRL_RND_DATA_REG
	RND_DATA: *volatile Register(APB_CTRL_RND_DATA),
	/// APB_CTRL_PERI_BACKUP_CONFIG_REG_REG
	PERI_BACKUP_CONFIG: *volatile Register(APB_CTRL_PERI_BACKUP_CONFIG),
	/// APB_CTRL_PERI_BACKUP_APB_ADDR_REG_REG
	PERI_BACKUP_APB_ADDR: *volatile Register(APB_CTRL_PERI_BACKUP_APB_ADDR),
	/// APB_CTRL_PERI_BACKUP_MEM_ADDR_REG_REG
	PERI_BACKUP_MEM_ADDR: *volatile Register(APB_CTRL_PERI_BACKUP_MEM_ADDR),
	/// APB_CTRL_PERI_BACKUP_INT_RAW_REG
	PERI_BACKUP_INT_RAW: *volatile Register(APB_CTRL_PERI_BACKUP_INT_RAW),
	/// APB_CTRL_PERI_BACKUP_INT_ST_REG
	PERI_BACKUP_INT_ST: *volatile Register(APB_CTRL_PERI_BACKUP_INT_ST),
	/// APB_CTRL_PERI_BACKUP_INT_ENA_REG
	PERI_BACKUP_INT_ENA: *volatile Register(APB_CTRL_PERI_BACKUP_INT_ENA),
	/// APB_CTRL_PERI_BACKUP_INT_CLR_REG
	PERI_BACKUP_INT_CLR: *volatile Register(APB_CTRL_PERI_BACKUP_INT_CLR),
	/// APB_CTRL_DATE_REG
	DATE: *volatile Register(APB_CTRL_DATE),
};

// Peripheral instance
const APB_CTRL_instance = APB_CTRL {
	.SYSCLK_CONF = @ptrFromInt(0x60026000),
	.TICK_CONF = @ptrFromInt(0x60026004),
	.CLK_OUT_EN = @ptrFromInt(0x60026008),
	.WIFI_BB_CFG = @ptrFromInt(0x6002600c),
	.WIFI_BB_CFG_2 = @ptrFromInt(0x60026010),
	.WIFI_CLK_EN = @ptrFromInt(0x60026014),
	.WIFI_RST_EN = @ptrFromInt(0x60026018),
	.HOST_INF_SEL = @ptrFromInt(0x6002601c),
	.EXT_MEM_PMS_LOCK = @ptrFromInt(0x60026020),
	.FLASH_ACE0_ATTR = @ptrFromInt(0x60026028),
	.FLASH_ACE1_ATTR = @ptrFromInt(0x6002602c),
	.FLASH_ACE2_ATTR = @ptrFromInt(0x60026030),
	.FLASH_ACE3_ATTR = @ptrFromInt(0x60026034),
	.FLASH_ACE0_ADDR = @ptrFromInt(0x60026038),
	.FLASH_ACE1_ADDR = @ptrFromInt(0x6002603c),
	.FLASH_ACE2_ADDR = @ptrFromInt(0x60026040),
	.FLASH_ACE3_ADDR = @ptrFromInt(0x60026044),
	.FLASH_ACE0_SIZE = @ptrFromInt(0x60026048),
	.FLASH_ACE1_SIZE = @ptrFromInt(0x6002604c),
	.FLASH_ACE2_SIZE = @ptrFromInt(0x60026050),
	.FLASH_ACE3_SIZE = @ptrFromInt(0x60026054),
	.SPI_MEM_PMS_CTRL = @ptrFromInt(0x60026088),
	.SPI_MEM_REJECT_ADDR = @ptrFromInt(0x6002608c),
	.SDIO_CTRL = @ptrFromInt(0x60026090),
	.REDCY_SIG0 = @ptrFromInt(0x60026094),
	.REDCY_SIG1 = @ptrFromInt(0x60026098),
	.FRONT_END_MEM_PD = @ptrFromInt(0x6002609c),
	.RETENTION_CTRL = @ptrFromInt(0x600260a0),
	.CLKGATE_FORCE_ON = @ptrFromInt(0x600260a4),
	.MEM_POWER_DOWN = @ptrFromInt(0x600260a8),
	.MEM_POWER_UP = @ptrFromInt(0x600260ac),
	.RND_DATA = @ptrFromInt(0x600260b0),
	.PERI_BACKUP_CONFIG = @ptrFromInt(0x600260b4),
	.PERI_BACKUP_APB_ADDR = @ptrFromInt(0x600260b8),
	.PERI_BACKUP_MEM_ADDR = @ptrFromInt(0x600260bc),
	.PERI_BACKUP_INT_RAW = @ptrFromInt(0x600260c0),
	.PERI_BACKUP_INT_ST = @ptrFromInt(0x600260c4),
	.PERI_BACKUP_INT_ENA = @ptrFromInt(0x600260c8),
	.PERI_BACKUP_INT_CLR = @ptrFromInt(0x600260d0),
	.DATE = @ptrFromInt(0x600263fc),
};

const APB_SARADC_CTRL = packed struct {
	/// select software enable saradc sample
	SARADC_START_FORCE: u1,
	/// software enable saradc sample
	SARADC_START: u1,
	reserved0: u4,
	/// SAR clock gated
	SARADC_SAR_CLK_GATED: u1,
	/// SAR clock divider
	SARADC_SAR_CLK_DIV: u8,
	/// 0 ~ 15 means length 1 ~ 16
	SARADC_SAR_PATT_LEN: u3,
	reserved1: u5,
	/// clear the pointer of pattern table for DIG ADC1 CTRL
	SARADC_SAR_PATT_P_CLEAR: u1,
	reserved2: u3,
	/// force option to xpd sar blocks
	SARADC_XPD_SAR_FORCE: u2,
	reserved3: u1,
	/// wait arbit signal stable after sar_done
	SARADC_WAIT_ARB_CYCLE: u2,
};

const APB_SARADC_CTRL2 = packed struct {
	/// enable max meas num
	SARADC_MEAS_NUM_LIMIT: u1,
	/// max conversion number
	SARADC_MAX_MEAS_NUM: u8,
	/// 1: data to DIG ADC1 CTRL is inverted, otherwise not
	SARADC_SAR1_INV: u1,
	/// 1: data to DIG ADC2 CTRL is inverted, otherwise not
	SARADC_SAR2_INV: u1,
	reserved0: u1,
	/// to set saradc timer target
	SARADC_TIMER_TARGET: u12,
	/// to enable saradc timer trigger
	SARADC_TIMER_EN: u1,
	reserved1: u7,
};

const APB_SARADC_FILTER_CTRL1 = packed struct {
	reserved0: u26,
	/// Factor of saradc filter1
	APB_SARADC_FILTER_FACTOR1: u3,
	/// Factor of saradc filter0
	APB_SARADC_FILTER_FACTOR0: u3,
};

const APB_SARADC_FSM_WAIT = packed struct {
	/// saradc_xpd_wait
	SARADC_XPD_WAIT: u8,
	/// saradc_rstb_wait
	SARADC_RSTB_WAIT: u8,
	/// saradc_standby_wait
	SARADC_STANDBY_WAIT: u8,
	reserved0: u8,
};

const APB_SARADC_SAR1_STATUS = packed struct {
	/// saradc1 status about data and channel
	SARADC_SAR1_STATUS: u32,
};

const APB_SARADC_SAR2_STATUS = packed struct {
	/// saradc2 status about data and channel
	SARADC_SAR2_STATUS: u32,
};

const APB_SARADC_SAR_PATT_TAB1 = packed struct {
	/// item 0 ~ 3 for pattern table 1 (each item one byte)
	SARADC_SAR_PATT_TAB1: u24,
	reserved0: u8,
};

const APB_SARADC_SAR_PATT_TAB2 = packed struct {
	/// Item 4 ~ 7 for pattern table 1 (each item one byte)
	SARADC_SAR_PATT_TAB2: u24,
	reserved0: u8,
};

const APB_SARADC_ONETIME_SAMPLE = packed struct {
	reserved0: u23,
	/// configure onetime atten
	SARADC_ONETIME_ATTEN: u2,
	/// configure onetime channel
	SARADC_ONETIME_CHANNEL: u4,
	/// trigger adc onetime sample
	SARADC_ONETIME_START: u1,
	/// enable adc2 onetime sample
	SARADC2_ONETIME_SAMPLE: u1,
	/// enable adc1 onetime sample
	SARADC1_ONETIME_SAMPLE: u1,
};

const APB_SARADC_ARB_CTRL = packed struct {
	reserved0: u2,
	/// adc2 arbiter force to enableapb controller
	ADC_ARB_APB_FORCE: u1,
	/// adc2 arbiter force to enable rtc controller
	ADC_ARB_RTC_FORCE: u1,
	/// adc2 arbiter force to enable wifi controller
	ADC_ARB_WIFI_FORCE: u1,
	/// adc2 arbiter force grant
	ADC_ARB_GRANT_FORCE: u1,
	/// Set adc2 arbiterapb priority
	ADC_ARB_APB_PRIORITY: u2,
	/// Set adc2 arbiter rtc priority
	ADC_ARB_RTC_PRIORITY: u2,
	/// Set adc2 arbiter wifi priority
	ADC_ARB_WIFI_PRIORITY: u2,
	/// adc2 arbiter uses fixed priority
	ADC_ARB_FIX_PRIORITY: u1,
	reserved1: u19,
};

const APB_SARADC_FILTER_CTRL0 = packed struct {
	reserved0: u18,
	/// configure filter1 to adc channel
	APB_SARADC_FILTER_CHANNEL1: u4,
	/// configure filter0 to adc channel
	APB_SARADC_FILTER_CHANNEL0: u4,
	reserved1: u5,
	/// enable apb_adc1_filter
	APB_SARADC_FILTER_RESET: u1,
};

const APB_SARADC_SAR1DATA_STATUS = packed struct {
	/// saradc1 data
	APB_SARADC1_DATA: u17,
	reserved0: u15,
};

const APB_SARADC_SAR2DATA_STATUS = packed struct {
	/// saradc2 data
	APB_SARADC2_DATA: u17,
	reserved0: u15,
};

const APB_SARADC_THRES0_CTRL = packed struct {
	/// configure thres0 to adc channel
	APB_SARADC_THRES0_CHANNEL: u4,
	reserved0: u1,
	/// saradc thres0 monitor thres
	APB_SARADC_THRES0_HIGH: u13,
	/// saradc thres0 monitor thres
	APB_SARADC_THRES0_LOW: u13,
	reserved1: u1,
};

const APB_SARADC_THRES1_CTRL = packed struct {
	/// configure thres1 to adc channel
	APB_SARADC_THRES1_CHANNEL: u4,
	reserved0: u1,
	/// saradc thres1 monitor thres
	APB_SARADC_THRES1_HIGH: u13,
	/// saradc thres1 monitor thres
	APB_SARADC_THRES1_LOW: u13,
	reserved1: u1,
};

const APB_SARADC_THRES_CTRL = packed struct {
	reserved0: u27,
	/// enable thres to all channel
	APB_SARADC_THRES_ALL_EN: u1,
	reserved1: u2,
	/// enable thres1
	APB_SARADC_THRES1_EN: u1,
	/// enable thres0
	APB_SARADC_THRES0_EN: u1,
};

const APB_SARADC_INT_ENA = packed struct {
	reserved0: u26,
	/// saradc thres1 low  interrupt enable
	APB_SARADC_THRES1_LOW_INT_ENA: u1,
	/// saradc thres0 low interrupt enable
	APB_SARADC_THRES0_LOW_INT_ENA: u1,
	/// saradc thres1 high interrupt enable
	APB_SARADC_THRES1_HIGH_INT_ENA: u1,
	/// saradc thres0 high interrupt enable
	APB_SARADC_THRES0_HIGH_INT_ENA: u1,
	/// saradc2 done interrupt enable
	APB_SARADC2_DONE_INT_ENA: u1,
	/// saradc1 done interrupt enable
	APB_SARADC1_DONE_INT_ENA: u1,
};

const APB_SARADC_INT_RAW = packed struct {
	reserved0: u26,
	/// saradc thres1 low  interrupt raw
	APB_SARADC_THRES1_LOW_INT_RAW: u1,
	/// saradc thres0 low interrupt raw
	APB_SARADC_THRES0_LOW_INT_RAW: u1,
	/// saradc thres1 high interrupt raw
	APB_SARADC_THRES1_HIGH_INT_RAW: u1,
	/// saradc thres0 high interrupt raw
	APB_SARADC_THRES0_HIGH_INT_RAW: u1,
	/// saradc2 done interrupt raw
	APB_SARADC2_DONE_INT_RAW: u1,
	/// saradc1 done interrupt raw
	APB_SARADC1_DONE_INT_RAW: u1,
};

const APB_SARADC_INT_ST = packed struct {
	reserved0: u26,
	/// saradc thres1 low  interrupt state
	APB_SARADC_THRES1_LOW_INT_ST: u1,
	/// saradc thres0 low interrupt state
	APB_SARADC_THRES0_LOW_INT_ST: u1,
	/// saradc thres1 high interrupt state
	APB_SARADC_THRES1_HIGH_INT_ST: u1,
	/// saradc thres0 high interrupt state
	APB_SARADC_THRES0_HIGH_INT_ST: u1,
	/// saradc2 done interrupt state
	APB_SARADC2_DONE_INT_ST: u1,
	/// saradc1 done interrupt state
	APB_SARADC1_DONE_INT_ST: u1,
};

const APB_SARADC_INT_CLR = packed struct {
	reserved0: u26,
	/// saradc thres1 low  interrupt clear
	APB_SARADC_THRES1_LOW_INT_CLR: u1,
	/// saradc thres0 low interrupt clear
	APB_SARADC_THRES0_LOW_INT_CLR: u1,
	/// saradc thres1 high interrupt clear
	APB_SARADC_THRES1_HIGH_INT_CLR: u1,
	/// saradc thres0 high interrupt clear
	APB_SARADC_THRES0_HIGH_INT_CLR: u1,
	/// saradc2 done interrupt clear
	APB_SARADC2_DONE_INT_CLR: u1,
	/// saradc1 done interrupt clear
	APB_SARADC1_DONE_INT_CLR: u1,
};

const APB_SARADC_DMA_CONF = packed struct {
	/// the dma_in_suc_eof gen when sample cnt = spi_eof_num
	APB_ADC_EOF_NUM: u16,
	reserved0: u14,
	/// reset_apb_adc_state
	APB_ADC_RESET_FSM: u1,
	/// enable apb_adc use spi_dma
	APB_ADC_TRANS: u1,
};

const APB_SARADC_CLKM_CONF = packed struct {
	/// Integral I2S clock divider value
	CLKM_DIV_NUM: u8,
	/// Fractional clock divider numerator value
	CLKM_DIV_B: u6,
	/// Fractional clock divider denominator value
	CLKM_DIV_A: u6,
	/// reg clk en
	CLK_EN: u1,
	/// Set this bit to enable clk_apll
	CLK_SEL: u2,
	reserved0: u9,
};

const APB_SARADC_APB_TSENS_CTRL = packed struct {
	/// temperature sensor data out
	TSENS_OUT: u8,
	reserved0: u5,
	/// invert temperature sensor data
	TSENS_IN_INV: u1,
	/// temperature sensor clock divider
	TSENS_CLK_DIV: u8,
	/// temperature sensor power up
	TSENS_PU: u1,
	reserved1: u9,
};

const APB_SARADC_TSENS_CTRL2 = packed struct {
	/// the time that power up tsens need wait
	TSENS_XPD_WAIT: u12,
	/// force power up tsens
	TSENS_XPD_FORCE: u2,
	/// inv tsens clk
	TSENS_CLK_INV: u1,
	/// tsens clk select
	TSENS_CLK_SEL: u1,
	reserved0: u16,
};

const APB_SARADC_CALI = packed struct {
	/// saradc cali factor
	APB_SARADC_CALI_CFG: u17,
	reserved0: u15,
};

const APB_SARADC_CTRL_DATE = packed struct {
	/// version
	DATE: u32,
};

//Peripheral type
const APB_SARADC = struct {
	/// digital saradc configure register
	CTRL: *volatile Register(APB_SARADC_CTRL),
	/// digital saradc configure register
	CTRL2: *volatile Register(APB_SARADC_CTRL2),
	/// digital saradc configure register
	FILTER_CTRL1: *volatile Register(APB_SARADC_FILTER_CTRL1),
	/// digital saradc configure register
	FSM_WAIT: *volatile Register(APB_SARADC_FSM_WAIT),
	/// digital saradc configure register
	SAR1_STATUS: *volatile Register(APB_SARADC_SAR1_STATUS),
	/// digital saradc configure register
	SAR2_STATUS: *volatile Register(APB_SARADC_SAR2_STATUS),
	/// digital saradc configure register
	SAR_PATT_TAB1: *volatile Register(APB_SARADC_SAR_PATT_TAB1),
	/// digital saradc configure register
	SAR_PATT_TAB2: *volatile Register(APB_SARADC_SAR_PATT_TAB2),
	/// digital saradc configure register
	ONETIME_SAMPLE: *volatile Register(APB_SARADC_ONETIME_SAMPLE),
	/// digital saradc configure register
	ARB_CTRL: *volatile Register(APB_SARADC_ARB_CTRL),
	/// digital saradc configure register
	FILTER_CTRL0: *volatile Register(APB_SARADC_FILTER_CTRL0),
	/// digital saradc configure register
	SAR1DATA_STATUS: *volatile Register(APB_SARADC_SAR1DATA_STATUS),
	/// digital saradc configure register
	SAR2DATA_STATUS: *volatile Register(APB_SARADC_SAR2DATA_STATUS),
	/// digital saradc configure register
	THRES0_CTRL: *volatile Register(APB_SARADC_THRES0_CTRL),
	/// digital saradc configure register
	THRES1_CTRL: *volatile Register(APB_SARADC_THRES1_CTRL),
	/// digital saradc configure register
	THRES_CTRL: *volatile Register(APB_SARADC_THRES_CTRL),
	/// digital saradc int register
	INT_ENA: *volatile Register(APB_SARADC_INT_ENA),
	/// digital saradc int register
	INT_RAW: *volatile Register(APB_SARADC_INT_RAW),
	/// digital saradc int register
	INT_ST: *volatile Register(APB_SARADC_INT_ST),
	/// digital saradc int register
	INT_CLR: *volatile Register(APB_SARADC_INT_CLR),
	/// digital saradc configure register
	DMA_CONF: *volatile Register(APB_SARADC_DMA_CONF),
	/// digital saradc configure register
	CLKM_CONF: *volatile Register(APB_SARADC_CLKM_CONF),
	/// digital tsens configure register
	APB_TSENS_CTRL: *volatile Register(APB_SARADC_APB_TSENS_CTRL),
	/// digital tsens configure register
	TSENS_CTRL2: *volatile Register(APB_SARADC_TSENS_CTRL2),
	/// digital saradc configure register
	CALI: *volatile Register(APB_SARADC_CALI),
	/// version
	CTRL_DATE: *volatile Register(APB_SARADC_CTRL_DATE),
};

// Peripheral instance
const APB_SARADC_instance = APB_SARADC {
	.CTRL = @ptrFromInt(0x60040000),
	.CTRL2 = @ptrFromInt(0x60040004),
	.FILTER_CTRL1 = @ptrFromInt(0x60040008),
	.FSM_WAIT = @ptrFromInt(0x6004000c),
	.SAR1_STATUS = @ptrFromInt(0x60040010),
	.SAR2_STATUS = @ptrFromInt(0x60040014),
	.SAR_PATT_TAB1 = @ptrFromInt(0x60040018),
	.SAR_PATT_TAB2 = @ptrFromInt(0x6004001c),
	.ONETIME_SAMPLE = @ptrFromInt(0x60040020),
	.ARB_CTRL = @ptrFromInt(0x60040024),
	.FILTER_CTRL0 = @ptrFromInt(0x60040028),
	.SAR1DATA_STATUS = @ptrFromInt(0x6004002c),
	.SAR2DATA_STATUS = @ptrFromInt(0x60040030),
	.THRES0_CTRL = @ptrFromInt(0x60040034),
	.THRES1_CTRL = @ptrFromInt(0x60040038),
	.THRES_CTRL = @ptrFromInt(0x6004003c),
	.INT_ENA = @ptrFromInt(0x60040040),
	.INT_RAW = @ptrFromInt(0x60040044),
	.INT_ST = @ptrFromInt(0x60040048),
	.INT_CLR = @ptrFromInt(0x6004004c),
	.DMA_CONF = @ptrFromInt(0x60040050),
	.CLKM_CONF = @ptrFromInt(0x60040054),
	.APB_TSENS_CTRL = @ptrFromInt(0x60040058),
	.TSENS_CTRL2 = @ptrFromInt(0x6004005c),
	.CALI = @ptrFromInt(0x60040060),
	.CTRL_DATE = @ptrFromInt(0x600403fc),
};

const ASSIST_DEBUG_CORE_0_MONTR_ENA = packed struct {
	/// reg_core_0_area_dram0_0_rd_ena
	CORE_0_AREA_DRAM0_0_RD_ENA: u1,
	/// reg_core_0_area_dram0_0_wr_ena
	CORE_0_AREA_DRAM0_0_WR_ENA: u1,
	/// reg_core_0_area_dram0_1_rd_ena
	CORE_0_AREA_DRAM0_1_RD_ENA: u1,
	/// reg_core_0_area_dram0_1_wr_ena
	CORE_0_AREA_DRAM0_1_WR_ENA: u1,
	/// reg_core_0_area_pif_0_rd_ena
	CORE_0_AREA_PIF_0_RD_ENA: u1,
	/// reg_core_0_area_pif_0_wr_ena
	CORE_0_AREA_PIF_0_WR_ENA: u1,
	/// reg_core_0_area_pif_1_rd_ena
	CORE_0_AREA_PIF_1_RD_ENA: u1,
	/// reg_core_0_area_pif_1_wr_ena
	CORE_0_AREA_PIF_1_WR_ENA: u1,
	/// reg_core_0_sp_spill_min_ena
	CORE_0_SP_SPILL_MIN_ENA: u1,
	/// reg_core_0_sp_spill_max_ena
	CORE_0_SP_SPILL_MAX_ENA: u1,
	/// reg_core_0_iram0_exception_monitor_ena
	CORE_0_IRAM0_EXCEPTION_MONITOR_ENA: u1,
	/// reg_core_0_dram0_exception_monitor_ena
	CORE_0_DRAM0_EXCEPTION_MONITOR_ENA: u1,
	reserved0: u20,
};

const ASSIST_DEBUG_CORE_0_INTR_RAW = packed struct {
	/// reg_core_0_area_dram0_0_rd_raw
	CORE_0_AREA_DRAM0_0_RD_RAW: u1,
	/// reg_core_0_area_dram0_0_wr_raw
	CORE_0_AREA_DRAM0_0_WR_RAW: u1,
	/// reg_core_0_area_dram0_1_rd_raw
	CORE_0_AREA_DRAM0_1_RD_RAW: u1,
	/// reg_core_0_area_dram0_1_wr_raw
	CORE_0_AREA_DRAM0_1_WR_RAW: u1,
	/// reg_core_0_area_pif_0_rd_raw
	CORE_0_AREA_PIF_0_RD_RAW: u1,
	/// reg_core_0_area_pif_0_wr_raw
	CORE_0_AREA_PIF_0_WR_RAW: u1,
	/// reg_core_0_area_pif_1_rd_raw
	CORE_0_AREA_PIF_1_RD_RAW: u1,
	/// reg_core_0_area_pif_1_wr_raw
	CORE_0_AREA_PIF_1_WR_RAW: u1,
	/// reg_core_0_sp_spill_min_raw
	CORE_0_SP_SPILL_MIN_RAW: u1,
	/// reg_core_0_sp_spill_max_raw
	CORE_0_SP_SPILL_MAX_RAW: u1,
	/// reg_core_0_iram0_exception_monitor_raw
	CORE_0_IRAM0_EXCEPTION_MONITOR_RAW: u1,
	/// reg_core_0_dram0_exception_monitor_raw
	CORE_0_DRAM0_EXCEPTION_MONITOR_RAW: u1,
	reserved0: u20,
};

const ASSIST_DEBUG_CORE_0_INTR_ENA = packed struct {
	/// reg_core_0_area_dram0_0_rd_intr_ena
	CORE_0_AREA_DRAM0_0_RD_INTR_ENA: u1,
	/// reg_core_0_area_dram0_0_wr_intr_ena
	CORE_0_AREA_DRAM0_0_WR_INTR_ENA: u1,
	/// reg_core_0_area_dram0_1_rd_intr_ena
	CORE_0_AREA_DRAM0_1_RD_INTR_ENA: u1,
	/// reg_core_0_area_dram0_1_wr_intr_ena
	CORE_0_AREA_DRAM0_1_WR_INTR_ENA: u1,
	/// reg_core_0_area_pif_0_rd_intr_ena
	CORE_0_AREA_PIF_0_RD_INTR_ENA: u1,
	/// reg_core_0_area_pif_0_wr_intr_ena
	CORE_0_AREA_PIF_0_WR_INTR_ENA: u1,
	/// reg_core_0_area_pif_1_rd_intr_ena
	CORE_0_AREA_PIF_1_RD_INTR_ENA: u1,
	/// reg_core_0_area_pif_1_wr_intr_ena
	CORE_0_AREA_PIF_1_WR_INTR_ENA: u1,
	/// reg_core_0_sp_spill_min_intr_ena
	CORE_0_SP_SPILL_MIN_INTR_ENA: u1,
	/// reg_core_0_sp_spill_max_intr_ena
	CORE_0_SP_SPILL_MAX_INTR_ENA: u1,
	/// reg_core_0_iram0_exception_monitor_ena
	CORE_0_IRAM0_EXCEPTION_MONITOR_RLS: u1,
	/// reg_core_0_dram0_exception_monitor_ena
	CORE_0_DRAM0_EXCEPTION_MONITOR_RLS: u1,
	reserved0: u20,
};

const ASSIST_DEBUG_CORE_0_INTR_CLR = packed struct {
	/// reg_core_0_area_dram0_0_rd_clr
	CORE_0_AREA_DRAM0_0_RD_CLR: u1,
	/// reg_core_0_area_dram0_0_wr_clr
	CORE_0_AREA_DRAM0_0_WR_CLR: u1,
	/// reg_core_0_area_dram0_1_rd_clr
	CORE_0_AREA_DRAM0_1_RD_CLR: u1,
	/// reg_core_0_area_dram0_1_wr_clr
	CORE_0_AREA_DRAM0_1_WR_CLR: u1,
	/// reg_core_0_area_pif_0_rd_clr
	CORE_0_AREA_PIF_0_RD_CLR: u1,
	/// reg_core_0_area_pif_0_wr_clr
	CORE_0_AREA_PIF_0_WR_CLR: u1,
	/// reg_core_0_area_pif_1_rd_clr
	CORE_0_AREA_PIF_1_RD_CLR: u1,
	/// reg_core_0_area_pif_1_wr_clr
	CORE_0_AREA_PIF_1_WR_CLR: u1,
	/// reg_core_0_sp_spill_min_clr
	CORE_0_SP_SPILL_MIN_CLR: u1,
	/// reg_core_0_sp_spill_max_clr
	CORE_0_SP_SPILL_MAX_CLR: u1,
	/// reg_core_0_iram0_exception_monitor_clr
	CORE_0_IRAM0_EXCEPTION_MONITOR_CLR: u1,
	/// reg_core_0_dram0_exception_monitor_clr
	CORE_0_DRAM0_EXCEPTION_MONITOR_CLR: u1,
	reserved0: u20,
};

const ASSIST_DEBUG_CORE_0_AREA_DRAM0_0_MIN = packed struct {
	/// reg_core_0_area_dram0_0_min
	CORE_0_AREA_DRAM0_0_MIN: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_DRAM0_0_MAX = packed struct {
	/// reg_core_0_area_dram0_0_max
	CORE_0_AREA_DRAM0_0_MAX: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_DRAM0_1_MIN = packed struct {
	/// reg_core_0_area_dram0_1_min
	CORE_0_AREA_DRAM0_1_MIN: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_DRAM0_1_MAX = packed struct {
	/// reg_core_0_area_dram0_1_max
	CORE_0_AREA_DRAM0_1_MAX: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_PIF_0_MIN = packed struct {
	/// reg_core_0_area_pif_0_min
	CORE_0_AREA_PIF_0_MIN: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_PIF_0_MAX = packed struct {
	/// reg_core_0_area_pif_0_max
	CORE_0_AREA_PIF_0_MAX: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_PIF_1_MIN = packed struct {
	/// reg_core_0_area_pif_1_min
	CORE_0_AREA_PIF_1_MIN: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_PIF_1_MAX = packed struct {
	/// reg_core_0_area_pif_1_max
	CORE_0_AREA_PIF_1_MAX: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_PC = packed struct {
	/// reg_core_0_area_pc
	CORE_0_AREA_PC: u32,
};

const ASSIST_DEBUG_CORE_0_AREA_SP = packed struct {
	/// reg_core_0_area_sp
	CORE_0_AREA_SP: u32,
};

const ASSIST_DEBUG_CORE_0_SP_MIN = packed struct {
	/// reg_core_0_sp_min
	CORE_0_SP_MIN: u32,
};

const ASSIST_DEBUG_CORE_0_SP_MAX = packed struct {
	/// reg_core_0_sp_max
	CORE_0_SP_MAX: u32,
};

const ASSIST_DEBUG_CORE_0_SP_PC = packed struct {
	/// reg_core_0_sp_pc
	CORE_0_SP_PC: u32,
};

const ASSIST_DEBUG_CORE_0_RCD_EN = packed struct {
	/// reg_core_0_rcd_recorden
	CORE_0_RCD_RECORDEN: u1,
	/// reg_core_0_rcd_pdebugen
	CORE_0_RCD_PDEBUGEN: u1,
	reserved0: u30,
};

const ASSIST_DEBUG_CORE_0_RCD_PDEBUGPC = packed struct {
	/// reg_core_0_rcd_pdebugpc
	CORE_0_RCD_PDEBUGPC: u32,
};

const ASSIST_DEBUG_CORE_0_RCD_PDEBUGSP = packed struct {
	/// reg_core_0_rcd_pdebugsp
	CORE_0_RCD_PDEBUGSP: u32,
};

const ASSIST_DEBUG_CORE_0_IRAM0_EXCEPTION_MONITOR_0 = packed struct {
	/// reg_core_0_iram0_recording_addr_0
	CORE_0_IRAM0_RECORDING_ADDR_0: u24,
	/// reg_core_0_iram0_recording_wr_0
	CORE_0_IRAM0_RECORDING_WR_0: u1,
	/// reg_core_0_iram0_recording_loadstore_0
	CORE_0_IRAM0_RECORDING_LOADSTORE_0: u1,
	reserved0: u6,
};

const ASSIST_DEBUG_CORE_0_IRAM0_EXCEPTION_MONITOR_1 = packed struct {
	/// reg_core_0_iram0_recording_addr_1
	CORE_0_IRAM0_RECORDING_ADDR_1: u24,
	/// reg_core_0_iram0_recording_wr_1
	CORE_0_IRAM0_RECORDING_WR_1: u1,
	/// reg_core_0_iram0_recording_loadstore_1
	CORE_0_IRAM0_RECORDING_LOADSTORE_1: u1,
	reserved0: u6,
};

const ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_0 = packed struct {
	/// reg_core_0_dram0_recording_addr_0
	CORE_0_DRAM0_RECORDING_ADDR_0: u24,
	/// reg_core_0_dram0_recording_wr_0
	CORE_0_DRAM0_RECORDING_WR_0: u1,
	/// reg_core_0_dram0_recording_byteen_0
	CORE_0_DRAM0_RECORDING_BYTEEN_0: u4,
	reserved0: u3,
};

const ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_1 = packed struct {
	/// reg_core_0_dram0_recording_pc_0
	CORE_0_DRAM0_RECORDING_PC_0: u32,
};

const ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_2 = packed struct {
	/// reg_core_0_dram0_recording_addr_1
	CORE_0_DRAM0_RECORDING_ADDR_1: u24,
	/// reg_core_0_dram0_recording_wr_1
	CORE_0_DRAM0_RECORDING_WR_1: u1,
	/// reg_core_0_dram0_recording_byteen_1
	CORE_0_DRAM0_RECORDING_BYTEEN_1: u4,
	reserved0: u3,
};

const ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_3 = packed struct {
	/// reg_core_0_dram0_recording_pc_1
	CORE_0_DRAM0_RECORDING_PC_1: u32,
};

const ASSIST_DEBUG_CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0 = packed struct {
	/// reg_core_x_iram0_dram0_limit_cycle_0
	CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_0: u20,
	reserved0: u12,
};

const ASSIST_DEBUG_CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1 = packed struct {
	/// reg_core_x_iram0_dram0_limit_cycle_1
	CORE_X_IRAM0_DRAM0_LIMIT_CYCLE_1: u20,
	reserved0: u12,
};

const ASSIST_DEBUG_LOG_SETTING = packed struct {
	/// reg_log_ena
	LOG_ENA: u3,
	/// reg_log_mode
	LOG_MODE: u4,
	/// reg_log_mem_loop_enable
	LOG_MEM_LOOP_ENABLE: u1,
	reserved0: u24,
};

const ASSIST_DEBUG_LOG_DATA_0 = packed struct {
	/// reg_log_data_0
	LOG_DATA_0: u32,
};

const ASSIST_DEBUG_LOG_DATA_MASK = packed struct {
	/// reg_log_data_size
	LOG_DATA_SIZE: u16,
	reserved0: u16,
};

const ASSIST_DEBUG_LOG_MIN = packed struct {
	/// reg_log_min
	LOG_MIN: u32,
};

const ASSIST_DEBUG_LOG_MAX = packed struct {
	/// reg_log_max
	LOG_MAX: u32,
};

const ASSIST_DEBUG_LOG_MEM_START = packed struct {
	/// reg_log_mem_start
	LOG_MEM_START: u32,
};

const ASSIST_DEBUG_LOG_MEM_END = packed struct {
	/// reg_log_mem_end
	LOG_MEM_END: u32,
};

const ASSIST_DEBUG_LOG_MEM_WRITING_ADDR = packed struct {
	/// reg_log_mem_writing_addr
	LOG_MEM_WRITING_ADDR: u32,
};

const ASSIST_DEBUG_LOG_MEM_FULL_FLAG = packed struct {
	/// reg_log_mem_full_flag
	LOG_MEM_FULL_FLAG: u1,
	/// reg_clr_log_mem_full_flag
	CLR_LOG_MEM_FULL_FLAG: u1,
	reserved0: u30,
};

const ASSIST_DEBUG_C0RE_0_LASTPC_BEFORE_EXCEPTION = packed struct {
	/// reg_core_0_lastpc_before_exc
	CORE_0_LASTPC_BEFORE_EXC: u32,
};

const ASSIST_DEBUG_C0RE_0_DEBUG_MODE = packed struct {
	/// reg_core_0_debug_mode
	CORE_0_DEBUG_MODE: u1,
	/// reg_core_0_debug_module_active
	CORE_0_DEBUG_MODULE_ACTIVE: u1,
	reserved0: u30,
};

const ASSIST_DEBUG_DATE = packed struct {
	/// reg_assist_debug_date
	ASSIST_DEBUG_DATE: u28,
	reserved0: u4,
};

//Peripheral type
const ASSIST_DEBUG = struct {
	/// ASSIST_DEBUG_C0RE_0_MONTR_ENA_REG
	CORE_0_MONTR_ENA: *volatile Register(ASSIST_DEBUG_CORE_0_MONTR_ENA),
	/// ASSIST_DEBUG_CORE_0_INTR_RAW_REG
	CORE_0_INTR_RAW: *volatile Register(ASSIST_DEBUG_CORE_0_INTR_RAW),
	/// ASSIST_DEBUG_CORE_0_INTR_ENA_REG
	CORE_0_INTR_ENA: *volatile Register(ASSIST_DEBUG_CORE_0_INTR_ENA),
	/// ASSIST_DEBUG_CORE_0_INTR_CLR_REG
	CORE_0_INTR_CLR: *volatile Register(ASSIST_DEBUG_CORE_0_INTR_CLR),
	/// ASSIST_DEBUG_CORE_0_AREA_DRAM0_0_MIN_REG
	CORE_0_AREA_DRAM0_0_MIN: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_DRAM0_0_MIN),
	/// ASSIST_DEBUG_CORE_0_AREA_DRAM0_0_MAX_REG
	CORE_0_AREA_DRAM0_0_MAX: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_DRAM0_0_MAX),
	/// ASSIST_DEBUG_CORE_0_AREA_DRAM0_1_MIN_REG
	CORE_0_AREA_DRAM0_1_MIN: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_DRAM0_1_MIN),
	/// ASSIST_DEBUG_CORE_0_AREA_DRAM0_1_MAX_REG
	CORE_0_AREA_DRAM0_1_MAX: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_DRAM0_1_MAX),
	/// ASSIST_DEBUG_CORE_0_AREA_PIF_0_MIN_REG
	CORE_0_AREA_PIF_0_MIN: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_PIF_0_MIN),
	/// ASSIST_DEBUG_CORE_0_AREA_PIF_0_MAX_REG
	CORE_0_AREA_PIF_0_MAX: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_PIF_0_MAX),
	/// ASSIST_DEBUG_CORE_0_AREA_PIF_1_MIN_REG
	CORE_0_AREA_PIF_1_MIN: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_PIF_1_MIN),
	/// ASSIST_DEBUG_CORE_0_AREA_PIF_1_MAX_REG
	CORE_0_AREA_PIF_1_MAX: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_PIF_1_MAX),
	/// ASSIST_DEBUG_CORE_0_AREA_PC_REG
	CORE_0_AREA_PC: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_PC),
	/// ASSIST_DEBUG_CORE_0_AREA_SP_REG
	CORE_0_AREA_SP: *volatile Register(ASSIST_DEBUG_CORE_0_AREA_SP),
	/// ASSIST_DEBUG_CORE_0_SP_MIN_REG
	CORE_0_SP_MIN: *volatile Register(ASSIST_DEBUG_CORE_0_SP_MIN),
	/// ASSIST_DEBUG_CORE_0_SP_MAX_REG
	CORE_0_SP_MAX: *volatile Register(ASSIST_DEBUG_CORE_0_SP_MAX),
	/// ASSIST_DEBUG_CORE_0_SP_PC_REG
	CORE_0_SP_PC: *volatile Register(ASSIST_DEBUG_CORE_0_SP_PC),
	/// ASSIST_DEBUG_CORE_0_RCD_EN_REG
	CORE_0_RCD_EN: *volatile Register(ASSIST_DEBUG_CORE_0_RCD_EN),
	/// ASSIST_DEBUG_CORE_0_RCD_PDEBUGPC_REG
	CORE_0_RCD_PDEBUGPC: *volatile Register(ASSIST_DEBUG_CORE_0_RCD_PDEBUGPC),
	/// ASSIST_DEBUG_CORE_0_RCD_PDEBUGSP_REG
	CORE_0_RCD_PDEBUGSP: *volatile Register(ASSIST_DEBUG_CORE_0_RCD_PDEBUGSP),
	/// ASSIST_DEBUG_CORE_0_RCD_PDEBUGSP_REG
	CORE_0_IRAM0_EXCEPTION_MONITOR_0: *volatile Register(ASSIST_DEBUG_CORE_0_IRAM0_EXCEPTION_MONITOR_0),
	/// ASSIST_DEBUG_CORE_0_IRAM0_EXCEPTION_MONITOR_1_REG
	CORE_0_IRAM0_EXCEPTION_MONITOR_1: *volatile Register(ASSIST_DEBUG_CORE_0_IRAM0_EXCEPTION_MONITOR_1),
	/// ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_0_REG
	CORE_0_DRAM0_EXCEPTION_MONITOR_0: *volatile Register(ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_0),
	/// ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_1_REG
	CORE_0_DRAM0_EXCEPTION_MONITOR_1: *volatile Register(ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_1),
	/// ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_1_REG
	CORE_0_DRAM0_EXCEPTION_MONITOR_2: *volatile Register(ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_2),
	/// ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_3_REG
	CORE_0_DRAM0_EXCEPTION_MONITOR_3: *volatile Register(ASSIST_DEBUG_CORE_0_DRAM0_EXCEPTION_MONITOR_3),
	/// ASSIST_DEBUG_CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0_REG
	CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0: *volatile Register(ASSIST_DEBUG_CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0),
	/// ASSIST_DEBUG_CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1_REG
	CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1: *volatile Register(ASSIST_DEBUG_CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1),
	/// ASSIST_DEBUG_LOG_SETTING
	LOG_SETTING: *volatile Register(ASSIST_DEBUG_LOG_SETTING),
	/// ASSIST_DEBUG_LOG_DATA_0_REG
	LOG_DATA_0: *volatile Register(ASSIST_DEBUG_LOG_DATA_0),
	/// ASSIST_DEBUG_LOG_DATA_MASK_REG
	LOG_DATA_MASK: *volatile Register(ASSIST_DEBUG_LOG_DATA_MASK),
	/// ASSIST_DEBUG_LOG_MIN_REG
	LOG_MIN: *volatile Register(ASSIST_DEBUG_LOG_MIN),
	/// ASSIST_DEBUG_LOG_MAX_REG
	LOG_MAX: *volatile Register(ASSIST_DEBUG_LOG_MAX),
	/// ASSIST_DEBUG_LOG_MEM_START_REG
	LOG_MEM_START: *volatile Register(ASSIST_DEBUG_LOG_MEM_START),
	/// ASSIST_DEBUG_LOG_MEM_END_REG
	LOG_MEM_END: *volatile Register(ASSIST_DEBUG_LOG_MEM_END),
	/// ASSIST_DEBUG_LOG_MEM_WRITING_ADDR_REG
	LOG_MEM_WRITING_ADDR: *volatile Register(ASSIST_DEBUG_LOG_MEM_WRITING_ADDR),
	/// ASSIST_DEBUG_LOG_MEM_FULL_FLAG_REG
	LOG_MEM_FULL_FLAG: *volatile Register(ASSIST_DEBUG_LOG_MEM_FULL_FLAG),
	/// ASSIST_DEBUG_C0RE_0_LASTPC_BEFORE_EXCEPTION
	C0RE_0_LASTPC_BEFORE_EXCEPTION: *volatile Register(ASSIST_DEBUG_C0RE_0_LASTPC_BEFORE_EXCEPTION),
	/// ASSIST_DEBUG_C0RE_0_DEBUG_MODE
	C0RE_0_DEBUG_MODE: *volatile Register(ASSIST_DEBUG_C0RE_0_DEBUG_MODE),
	/// ASSIST_DEBUG_DATE_REG
	DATE: *volatile Register(ASSIST_DEBUG_DATE),
};

// Peripheral instance
const ASSIST_DEBUG_instance = ASSIST_DEBUG {
	.CORE_0_MONTR_ENA = @ptrFromInt(0x600ce000),
	.CORE_0_INTR_RAW = @ptrFromInt(0x600ce004),
	.CORE_0_INTR_ENA = @ptrFromInt(0x600ce008),
	.CORE_0_INTR_CLR = @ptrFromInt(0x600ce00c),
	.CORE_0_AREA_DRAM0_0_MIN = @ptrFromInt(0x600ce010),
	.CORE_0_AREA_DRAM0_0_MAX = @ptrFromInt(0x600ce014),
	.CORE_0_AREA_DRAM0_1_MIN = @ptrFromInt(0x600ce018),
	.CORE_0_AREA_DRAM0_1_MAX = @ptrFromInt(0x600ce01c),
	.CORE_0_AREA_PIF_0_MIN = @ptrFromInt(0x600ce020),
	.CORE_0_AREA_PIF_0_MAX = @ptrFromInt(0x600ce024),
	.CORE_0_AREA_PIF_1_MIN = @ptrFromInt(0x600ce028),
	.CORE_0_AREA_PIF_1_MAX = @ptrFromInt(0x600ce02c),
	.CORE_0_AREA_PC = @ptrFromInt(0x600ce030),
	.CORE_0_AREA_SP = @ptrFromInt(0x600ce034),
	.CORE_0_SP_MIN = @ptrFromInt(0x600ce038),
	.CORE_0_SP_MAX = @ptrFromInt(0x600ce03c),
	.CORE_0_SP_PC = @ptrFromInt(0x600ce040),
	.CORE_0_RCD_EN = @ptrFromInt(0x600ce044),
	.CORE_0_RCD_PDEBUGPC = @ptrFromInt(0x600ce048),
	.CORE_0_RCD_PDEBUGSP = @ptrFromInt(0x600ce04c),
	.CORE_0_IRAM0_EXCEPTION_MONITOR_0 = @ptrFromInt(0x600ce050),
	.CORE_0_IRAM0_EXCEPTION_MONITOR_1 = @ptrFromInt(0x600ce054),
	.CORE_0_DRAM0_EXCEPTION_MONITOR_0 = @ptrFromInt(0x600ce058),
	.CORE_0_DRAM0_EXCEPTION_MONITOR_1 = @ptrFromInt(0x600ce05c),
	.CORE_0_DRAM0_EXCEPTION_MONITOR_2 = @ptrFromInt(0x600ce060),
	.CORE_0_DRAM0_EXCEPTION_MONITOR_3 = @ptrFromInt(0x600ce064),
	.CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_0 = @ptrFromInt(0x600ce068),
	.CORE_X_IRAM0_DRAM0_EXCEPTION_MONITOR_1 = @ptrFromInt(0x600ce06c),
	.LOG_SETTING = @ptrFromInt(0x600ce070),
	.LOG_DATA_0 = @ptrFromInt(0x600ce074),
	.LOG_DATA_MASK = @ptrFromInt(0x600ce078),
	.LOG_MIN = @ptrFromInt(0x600ce07c),
	.LOG_MAX = @ptrFromInt(0x600ce080),
	.LOG_MEM_START = @ptrFromInt(0x600ce084),
	.LOG_MEM_END = @ptrFromInt(0x600ce088),
	.LOG_MEM_WRITING_ADDR = @ptrFromInt(0x600ce08c),
	.LOG_MEM_FULL_FLAG = @ptrFromInt(0x600ce090),
	.C0RE_0_LASTPC_BEFORE_EXCEPTION = @ptrFromInt(0x600ce094),
	.C0RE_0_DEBUG_MODE = @ptrFromInt(0x600ce098),
	.DATE = @ptrFromInt(0x600ce1fc),
};

const BB_BBPD_CTRL = packed struct {
	DC_EST_FORCE_PD: u1,
	DC_EST_FORCE_PU: u1,
	FFT_FORCE_PD: u1,
	FFT_FORCE_PU: u1,
	reserved0: u28,
};

//Peripheral type
const BB = struct {
	/// Baseband control register
	BBPD_CTRL: *volatile Register(BB_BBPD_CTRL),
};

// Peripheral instance
const BB_instance = BB {
	.BBPD_CTRL = @ptrFromInt(0x6001d054),
};

const DMA_INT_RAW_CHN = packed struct {
	/// The raw interrupt bit turns to high level when the last data pointed by one inlink descriptor has been received for Rx channel 0.
	IN_DONE: u1,
	/// The raw interrupt bit turns to high level when the last data pointed by one inlink descriptor has been received for Rx channel 0. For UHCI0, the raw interrupt bit turns to high level when the last data pointed by one inlink descriptor has been received and no data error is detected for Rx channel 0.
	IN_SUC_EOF: u1,
	/// The raw interrupt bit turns to high level when data error is detected only in the case that the peripheral is UHCI0 for Rx channel 0. For other peripherals, this raw interrupt is reserved.
	IN_ERR_EOF: u1,
	/// The raw interrupt bit turns to high level when the last data pointed by one outlink descriptor has been transmitted to peripherals for Tx channel 0.
	OUT_DONE: u1,
	/// The raw interrupt bit turns to high level when the last data pointed by one outlink descriptor has been read from memory for Tx channel 0.
	OUT_EOF: u1,
	/// The raw interrupt bit turns to high level when detecting inlink descriptor error, including owner error, the second and third word error of inlink descriptor for Rx channel 0.
	IN_DSCR_ERR: u1,
	/// The raw interrupt bit turns to high level when detecting outlink descriptor error, including owner error, the second and third word error of outlink descriptor for Tx channel 0.
	OUT_DSCR_ERR: u1,
	/// The raw interrupt bit turns to high level when Rx buffer pointed by inlink is full and receiving data is not completed, but there is no more inlink for Rx channel 0.
	IN_DSCR_EMPTY: u1,
	/// The raw interrupt bit turns to high level when data corresponding a outlink (includes one link descriptor or few link descriptors) is transmitted out for Tx channel 0.
	OUT_TOTAL_EOF: u1,
	/// This raw interrupt bit turns to high level when level 1 fifo of Rx channel 0 is overflow.
	INFIFO_OVF: u1,
	/// This raw interrupt bit turns to high level when level 1 fifo of Rx channel 0 is underflow.
	INFIFO_UDF: u1,
	/// This raw interrupt bit turns to high level when level 1 fifo of Tx channel 0 is overflow.
	OUTFIFO_OVF: u1,
	/// This raw interrupt bit turns to high level when level 1 fifo of Tx channel 0 is underflow.
	OUTFIFO_UDF: u1,
	reserved0: u19,
};

const DMA_INT_ST_CH0 = packed struct {
	/// The raw interrupt status bit for the IN_DONE_CH_INT interrupt.
	IN_DONE: u1,
	/// The raw interrupt status bit for the IN_SUC_EOF_CH_INT interrupt.
	IN_SUC_EOF: u1,
	/// The raw interrupt status bit for the IN_ERR_EOF_CH_INT interrupt.
	IN_ERR_EOF: u1,
	/// The raw interrupt status bit for the OUT_DONE_CH_INT interrupt.
	OUT_DONE: u1,
	/// The raw interrupt status bit for the OUT_EOF_CH_INT interrupt.
	OUT_EOF: u1,
	/// The raw interrupt status bit for the IN_DSCR_ERR_CH_INT interrupt.
	IN_DSCR_ERR: u1,
	/// The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT interrupt.
	OUT_DSCR_ERR: u1,
	/// The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT interrupt.
	IN_DSCR_EMPTY: u1,
	/// The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT interrupt.
	OUT_TOTAL_EOF: u1,
	/// The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT interrupt.
	INFIFO_OVF: u1,
	/// The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT interrupt.
	INFIFO_UDF: u1,
	/// The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
	OUTFIFO_OVF: u1,
	/// The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
	OUTFIFO_UDF: u1,
	reserved0: u19,
};

const DMA_INT_ENA_CHN = packed struct {
	/// The interrupt enable bit for the IN_DONE_CH_INT interrupt.
	IN_DONE: u1,
	/// The interrupt enable bit for the IN_SUC_EOF_CH_INT interrupt.
	IN_SUC_EOF: u1,
	/// The interrupt enable bit for the IN_ERR_EOF_CH_INT interrupt.
	IN_ERR_EOF: u1,
	/// The interrupt enable bit for the OUT_DONE_CH_INT interrupt.
	OUT_DONE: u1,
	/// The interrupt enable bit for the OUT_EOF_CH_INT interrupt.
	OUT_EOF: u1,
	/// The interrupt enable bit for the IN_DSCR_ERR_CH_INT interrupt.
	IN_DSCR_ERR: u1,
	/// The interrupt enable bit for the OUT_DSCR_ERR_CH_INT interrupt.
	OUT_DSCR_ERR: u1,
	/// The interrupt enable bit for the IN_DSCR_EMPTY_CH_INT interrupt.
	IN_DSCR_EMPTY: u1,
	/// The interrupt enable bit for the OUT_TOTAL_EOF_CH_INT interrupt.
	OUT_TOTAL_EOF: u1,
	/// The interrupt enable bit for the INFIFO_OVF_L1_CH_INT interrupt.
	INFIFO_OVF: u1,
	/// The interrupt enable bit for the INFIFO_UDF_L1_CH_INT interrupt.
	INFIFO_UDF: u1,
	/// The interrupt enable bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
	OUTFIFO_OVF: u1,
	/// The interrupt enable bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
	OUTFIFO_UDF: u1,
	reserved0: u19,
};

const DMA_INT_CLR_CHN = packed struct {
	/// Set this bit to clear the IN_DONE_CH_INT interrupt.
	IN_DONE: u1,
	/// Set this bit to clear the IN_SUC_EOF_CH_INT interrupt.
	IN_SUC_EOF: u1,
	/// Set this bit to clear the IN_ERR_EOF_CH_INT interrupt.
	IN_ERR_EOF: u1,
	/// Set this bit to clear the OUT_DONE_CH_INT interrupt.
	OUT_DONE: u1,
	/// Set this bit to clear the OUT_EOF_CH_INT interrupt.
	OUT_EOF: u1,
	/// Set this bit to clear the IN_DSCR_ERR_CH_INT interrupt.
	IN_DSCR_ERR: u1,
	/// Set this bit to clear the OUT_DSCR_ERR_CH_INT interrupt.
	OUT_DSCR_ERR: u1,
	/// Set this bit to clear the IN_DSCR_EMPTY_CH_INT interrupt.
	IN_DSCR_EMPTY: u1,
	/// Set this bit to clear the OUT_TOTAL_EOF_CH_INT interrupt.
	OUT_TOTAL_EOF: u1,
	/// Set this bit to clear the INFIFO_OVF_L1_CH_INT interrupt.
	INFIFO_OVF: u1,
	/// Set this bit to clear the INFIFO_UDF_L1_CH_INT interrupt.
	INFIFO_UDF: u1,
	/// Set this bit to clear the OUTFIFO_OVF_L1_CH_INT interrupt.
	OUTFIFO_OVF: u1,
	/// Set this bit to clear the OUTFIFO_UDF_L1_CH_INT interrupt.
	OUTFIFO_UDF: u1,
	reserved0: u19,
};

const DMA_INT_ST_CH1 = packed struct {
	/// The raw interrupt status bit for the IN_DONE_CH_INT interrupt.
	IN_DONE: u1,
	/// The raw interrupt status bit for the IN_SUC_EOF_CH_INT interrupt.
	IN_SUC_EOF: u1,
	/// The raw interrupt status bit for the IN_ERR_EOF_CH_INT interrupt.
	IN_ERR_EOF: u1,
	/// The raw interrupt status bit for the OUT_DONE_CH_INT interrupt.
	OUT_DONE: u1,
	/// The raw interrupt status bit for the OUT_EOF_CH_INT interrupt.
	OUT_EOF: u1,
	/// The raw interrupt status bit for the IN_DSCR_ERR_CH_INT interrupt.
	IN_DSCR_ERR: u1,
	/// The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT interrupt.
	OUT_DSCR_ERR: u1,
	/// The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT interrupt.
	IN_DSCR_EMPTY: u1,
	/// The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT interrupt.
	OUT_TOTAL_EOF: u1,
	/// The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT interrupt.
	INFIFO_OVF: u1,
	/// The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT interrupt.
	INFIFO_UDF: u1,
	/// The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
	OUTFIFO_OVF: u1,
	/// The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
	OUTFIFO_UDF: u1,
	reserved0: u19,
};

const DMA_INT_ST_CH2 = packed struct {
	/// The raw interrupt status bit for the IN_DONE_CH_INT interrupt.
	IN_DONE: u1,
	/// The raw interrupt status bit for the IN_SUC_EOF_CH_INT interrupt.
	IN_SUC_EOF: u1,
	/// The raw interrupt status bit for the IN_ERR_EOF_CH_INT interrupt.
	IN_ERR_EOF: u1,
	/// The raw interrupt status bit for the OUT_DONE_CH_INT interrupt.
	OUT_DONE: u1,
	/// The raw interrupt status bit for the OUT_EOF_CH_INT interrupt.
	OUT_EOF: u1,
	/// The raw interrupt status bit for the IN_DSCR_ERR_CH_INT interrupt.
	IN_DSCR_ERR: u1,
	/// The raw interrupt status bit for the OUT_DSCR_ERR_CH_INT interrupt.
	OUT_DSCR_ERR: u1,
	/// The raw interrupt status bit for the IN_DSCR_EMPTY_CH_INT interrupt.
	IN_DSCR_EMPTY: u1,
	/// The raw interrupt status bit for the OUT_TOTAL_EOF_CH_INT interrupt.
	OUT_TOTAL_EOF: u1,
	/// The raw interrupt status bit for the INFIFO_OVF_L1_CH_INT interrupt.
	INFIFO_OVF: u1,
	/// The raw interrupt status bit for the INFIFO_UDF_L1_CH_INT interrupt.
	INFIFO_UDF: u1,
	/// The raw interrupt status bit for the OUTFIFO_OVF_L1_CH_INT interrupt.
	OUTFIFO_OVF: u1,
	/// The raw interrupt status bit for the OUTFIFO_UDF_L1_CH_INT interrupt.
	OUTFIFO_UDF: u1,
	reserved0: u19,
};

const DMA_AHB_TEST = packed struct {
	/// reserved
	AHB_TESTMODE: u3,
	reserved0: u1,
	/// reserved
	AHB_TESTADDR: u2,
	reserved1: u26,
};

const DMA_MISC_CONF = packed struct {
	/// Set this bit, then clear this bit to reset the internal ahb FSM.
	AHBM_RST_INTER: u1,
	reserved0: u1,
	/// Set this bit to disable priority arbitration function.
	ARB_PRI_DIS: u1,
	/// reg_clk_en
	CLK_EN: u1,
	reserved1: u28,
};

const DMA_DATE = packed struct {
	/// register version.
	DATE: u32,
};

const DMA_IN_CONF0_CHN = packed struct {
	/// This bit is used to reset DMA channel 0 Rx FSM and Rx FIFO pointer.
	IN_RST: u1,
	/// reserved
	IN_LOOP_TEST: u1,
	/// Set this bit to 1 to enable INCR burst transfer for Rx channel 0 reading link descriptor when accessing internal SRAM.
	INDSCR_BURST_EN: u1,
	/// Set this bit to 1 to enable INCR burst transfer for Rx channel 0 receiving data when accessing internal SRAM.
	IN_DATA_BURST_EN: u1,
	/// Set this bit 1 to enable automatic transmitting data from memory to memory via DMA.
	MEM_TRANS_EN: u1,
	reserved0: u27,
};

const DMA_IN_CONF1_CH0 = packed struct {
	reserved0: u12,
	/// Set this bit to enable checking the owner attribute of the link descriptor.
	IN_CHECK_OWNER: u1,
	reserved1: u19,
};

const DMA_INFIFO_STATUS_CH0 = packed struct {
	/// L1 Rx FIFO full signal for Rx channel 0.
	INFIFO_FULL: u1,
	/// L1 Rx FIFO empty signal for Rx channel 0.
	INFIFO_EMPTY: u1,
	/// The register stores the byte number of the data in L1 Rx FIFO for Rx channel 0.
	INFIFO_CNT: u6,
	reserved0: u15,
	/// reserved
	IN_REMAIN_UNDER_1B: u1,
	/// reserved
	IN_REMAIN_UNDER_2B: u1,
	/// reserved
	IN_REMAIN_UNDER_3B: u1,
	/// reserved
	IN_REMAIN_UNDER_4B: u1,
	/// reserved
	IN_BUF_HUNGRY: u1,
	reserved1: u4,
};

const DMA_IN_POP_CH0 = packed struct {
	/// This register stores the data popping from DMA FIFO.
	INFIFO_RDATA: u12,
	/// Set this bit to pop data from DMA FIFO.
	INFIFO_POP: u1,
	reserved0: u19,
};

const DMA_IN_LINK_CHN = packed struct {
	/// This register stores the 20 least significant bits of the first inlink descriptor's address.
	INLINK_ADDR: u20,
	/// Set this bit to return to current inlink descriptor's address, when there are some errors in current receiving data.
	INLINK_AUTO_RET: u1,
	/// Set this bit to stop dealing with the inlink descriptors.
	INLINK_STOP: u1,
	/// Set this bit to start dealing with the inlink descriptors.
	INLINK_START: u1,
	/// Set this bit to mount a new inlink descriptor.
	INLINK_RESTART: u1,
	/// 1: the inlink descriptor's FSM is in idle state.  0: the inlink descriptor's FSM is working.
	INLINK_PARK: u1,
	reserved0: u7,
};

const DMA_IN_STATE_CH0 = packed struct {
	/// This register stores the current inlink descriptor's address.
	INLINK_DSCR_ADDR: u18,
	/// reserved
	IN_DSCR_STATE: u2,
	/// reserved
	IN_STATE: u3,
	reserved0: u9,
};

const DMA_IN_SUC_EOF_DES_ADDR_CH0 = packed struct {
	/// This register stores the address of the inlink descriptor when the EOF bit in this descriptor is 1.
	IN_SUC_EOF_DES_ADDR: u32,
};

const DMA_IN_ERR_EOF_DES_ADDR_CH0 = packed struct {
	/// This register stores the address of the inlink descriptor when there are some errors in current receiving data. Only used when peripheral is UHCI0.
	IN_ERR_EOF_DES_ADDR: u32,
};

const DMA_IN_DSCR_CH0 = packed struct {
	/// The address of the current inlink descriptor x.
	INLINK_DSCR: u32,
};

const DMA_IN_DSCR_BF0_CHN = packed struct {
	/// The address of the last inlink descriptor x-1.
	INLINK_DSCR_BF0: u32,
};

const DMA_IN_DSCR_BF1_CH0 = packed struct {
	/// The address of the second-to-last inlink descriptor x-2.
	INLINK_DSCR_BF1: u32,
};

const DMA_IN_PRI_CHN = packed struct {
	/// The priority of Rx channel 0. The larger of the value, the higher of the priority.
	RX_PRI: u4,
	reserved0: u28,
};

const DMA_IN_PERI_SEL_CHN = packed struct {
	/// This register is used to select peripheral for Rx channel 0. 0:SPI2. 1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7: SHA. 8: ADC_DAC.
	PERI_IN_SEL: u6,
	reserved0: u26,
};

const DMA_OUT_CONF0_CHN = packed struct {
	/// This bit is used to reset DMA channel 0 Tx FSM and Tx FIFO pointer.
	OUT_RST: u1,
	/// reserved
	OUT_LOOP_TEST: u1,
	/// Set this bit to enable automatic outlink-writeback when all the data in tx buffer has been transmitted.
	OUT_AUTO_WRBACK: u1,
	/// EOF flag generation mode when transmitting data. 1: EOF flag for Tx channel 0 is generated when data need to transmit has been popped from FIFO in DMA
	OUT_EOF_MODE: u1,
	/// Set this bit to 1 to enable INCR burst transfer for Tx channel 0 reading link descriptor when accessing internal SRAM.
	OUTDSCR_BURST_EN: u1,
	/// Set this bit to 1 to enable INCR burst transfer for Tx channel 0 transmitting data when accessing internal SRAM.
	OUT_DATA_BURST_EN: u1,
	reserved0: u26,
};

const DMA_OUT_CONF1_CHN = packed struct {
	reserved0: u12,
	/// Set this bit to enable checking the owner attribute of the link descriptor.
	OUT_CHECK_OWNER: u1,
	reserved1: u19,
};

const DMA_OUTFIFO_STATUS_CH0 = packed struct {
	/// L1 Tx FIFO full signal for Tx channel 0.
	OUTFIFO_FULL: u1,
	/// L1 Tx FIFO empty signal for Tx channel 0.
	OUTFIFO_EMPTY: u1,
	/// The register stores the byte number of the data in L1 Tx FIFO for Tx channel 0.
	OUTFIFO_CNT: u6,
	reserved0: u15,
	/// reserved
	OUT_REMAIN_UNDER_1B: u1,
	/// reserved
	OUT_REMAIN_UNDER_2B: u1,
	/// reserved
	OUT_REMAIN_UNDER_3B: u1,
	/// reserved
	OUT_REMAIN_UNDER_4B: u1,
	reserved1: u5,
};

const DMA_OUT_PUSH_CH0 = packed struct {
	/// This register stores the data that need to be pushed into DMA FIFO.
	OUTFIFO_WDATA: u9,
	/// Set this bit to push data into DMA FIFO.
	OUTFIFO_PUSH: u1,
	reserved0: u22,
};

const DMA_OUT_LINK_CHN = packed struct {
	/// This register stores the 20 least significant bits of the first outlink descriptor's address.
	OUTLINK_ADDR: u20,
	/// Set this bit to stop dealing with the outlink descriptors.
	OUTLINK_STOP: u1,
	/// Set this bit to start dealing with the outlink descriptors.
	OUTLINK_START: u1,
	/// Set this bit to restart a new outlink from the last address.
	OUTLINK_RESTART: u1,
	/// 1: the outlink descriptor's FSM is in idle state.  0: the outlink descriptor's FSM is working.
	OUTLINK_PARK: u1,
	reserved0: u8,
};

const DMA_OUT_STATE_CH0 = packed struct {
	/// This register stores the current outlink descriptor's address.
	OUTLINK_DSCR_ADDR: u18,
	/// reserved
	OUT_DSCR_STATE: u2,
	/// reserved
	OUT_STATE: u3,
	reserved0: u9,
};

const DMA_OUT_EOF_DES_ADDR_CHN = packed struct {
	/// This register stores the address of the outlink descriptor when the EOF bit in this descriptor is 1.
	OUT_EOF_DES_ADDR: u32,
};

const DMA_OUT_EOF_BFR_DES_ADDR_CH0 = packed struct {
	/// This register stores the address of the outlink descriptor before the last outlink descriptor.
	OUT_EOF_BFR_DES_ADDR: u32,
};

const DMA_OUT_DSCR_CH0 = packed struct {
	/// The address of the current outlink descriptor y.
	OUTLINK_DSCR: u32,
};

const DMA_OUT_DSCR_BF0_CH0 = packed struct {
	/// The address of the last outlink descriptor y-1.
	OUTLINK_DSCR_BF0: u32,
};

const DMA_OUT_DSCR_BF1_CH0 = packed struct {
	/// The address of the second-to-last inlink descriptor x-2.
	OUTLINK_DSCR_BF1: u32,
};

const DMA_OUT_PRI_CHN = packed struct {
	/// The priority of Tx channel 0. The larger of the value, the higher of the priority.
	TX_PRI: u4,
	reserved0: u28,
};

const DMA_OUT_PERI_SEL_CHN = packed struct {
	/// This register is used to select peripheral for Tx channel 0. 0:SPI2. 1: reserved. 2: UHCI0. 3: I2S0. 4: reserved. 5: reserved. 6: AES. 7: SHA. 8: ADC_DAC.
	PERI_OUT_SEL: u6,
	reserved0: u26,
};

const DMA_IN_CONF1_CH1 = packed struct {
	reserved0: u12,
	/// Set this bit to enable checking the owner attribute of the link descriptor.
	IN_CHECK_OWNER: u1,
	reserved1: u19,
};

const DMA_INFIFO_STATUS_CH1 = packed struct {
	/// L1 Rx FIFO full signal for Rx channel 1.
	INFIFO_FULL: u1,
	/// L1 Rx FIFO empty signal for Rx channel 1.
	INFIFO_EMPTY: u1,
	/// The register stores the byte number of the data in L1 Rx FIFO for Rx channel 1.
	INFIFO_CNT: u6,
	reserved0: u15,
	/// reserved
	IN_REMAIN_UNDER_1B: u1,
	/// reserved
	IN_REMAIN_UNDER_2B: u1,
	/// reserved
	IN_REMAIN_UNDER_3B: u1,
	/// reserved
	IN_REMAIN_UNDER_4B: u1,
	/// reserved
	IN_BUF_HUNGRY: u1,
	reserved1: u4,
};

const DMA_IN_POP_CH1 = packed struct {
	/// This register stores the data popping from DMA FIFO.
	INFIFO_RDATA: u12,
	/// Set this bit to pop data from DMA FIFO.
	INFIFO_POP: u1,
	reserved0: u19,
};

const DMA_IN_STATE_CH1 = packed struct {
	/// This register stores the current inlink descriptor's address.
	INLINK_DSCR_ADDR: u18,
	/// reserved
	IN_DSCR_STATE: u2,
	/// reserved
	IN_STATE: u3,
	reserved0: u9,
};

const DMA_IN_SUC_EOF_DES_ADDR_CH1 = packed struct {
	/// This register stores the address of the inlink descriptor when the EOF bit in this descriptor is 1.
	IN_SUC_EOF_DES_ADDR: u32,
};

const DMA_IN_ERR_EOF_DES_ADDR_CH1 = packed struct {
	/// This register stores the address of the inlink descriptor when there are some errors in current receiving data. Only used when peripheral is UHCI0.
	IN_ERR_EOF_DES_ADDR: u32,
};

const DMA_IN_DSCR_CH1 = packed struct {
	/// The address of the current inlink descriptor x.
	INLINK_DSCR: u32,
};

const DMA_IN_DSCR_BF1_CH1 = packed struct {
	/// The address of the second-to-last inlink descriptor x-2.
	INLINK_DSCR_BF1: u32,
};

const DMA_OUTFIFO_STATUS_CH1 = packed struct {
	/// L1 Tx FIFO full signal for Tx channel 1.
	OUTFIFO_FULL: u1,
	/// L1 Tx FIFO empty signal for Tx channel 1.
	OUTFIFO_EMPTY: u1,
	/// The register stores the byte number of the data in L1 Tx FIFO for Tx channel 1.
	OUTFIFO_CNT: u6,
	reserved0: u15,
	/// reserved
	OUT_REMAIN_UNDER_1B: u1,
	/// reserved
	OUT_REMAIN_UNDER_2B: u1,
	/// reserved
	OUT_REMAIN_UNDER_3B: u1,
	/// reserved
	OUT_REMAIN_UNDER_4B: u1,
	reserved1: u5,
};

const DMA_OUT_PUSH_CH1 = packed struct {
	/// This register stores the data that need to be pushed into DMA FIFO.
	OUTFIFO_WDATA: u9,
	/// Set this bit to push data into DMA FIFO.
	OUTFIFO_PUSH: u1,
	reserved0: u22,
};

const DMA_OUT_STATE_CH1 = packed struct {
	/// This register stores the current outlink descriptor's address.
	OUTLINK_DSCR_ADDR: u18,
	/// reserved
	OUT_DSCR_STATE: u2,
	/// reserved
	OUT_STATE: u3,
	reserved0: u9,
};

const DMA_OUT_EOF_BFR_DES_ADDR_CH1 = packed struct {
	/// This register stores the address of the outlink descriptor before the last outlink descriptor.
	OUT_EOF_BFR_DES_ADDR: u32,
};

const DMA_OUT_DSCR_CH1 = packed struct {
	/// The address of the current outlink descriptor y.
	OUTLINK_DSCR: u32,
};

const DMA_OUT_DSCR_BF0_CH1 = packed struct {
	/// The address of the last outlink descriptor y-1.
	OUTLINK_DSCR_BF0: u32,
};

const DMA_OUT_DSCR_BF1_CH1 = packed struct {
	/// The address of the second-to-last inlink descriptor x-2.
	OUTLINK_DSCR_BF1: u32,
};

const DMA_IN_CONF1_CH2 = packed struct {
	reserved0: u12,
	/// Set this bit to enable checking the owner attribute of the link descriptor.
	IN_CHECK_OWNER: u1,
	reserved1: u19,
};

const DMA_INFIFO_STATUS_CH2 = packed struct {
	/// L1 Rx FIFO full signal for Rx channel 2.
	INFIFO_FULL: u1,
	/// L1 Rx FIFO empty signal for Rx channel 2.
	INFIFO_EMPTY: u1,
	/// The register stores the byte number of the data in L1 Rx FIFO for Rx channel 2.
	INFIFO_CNT: u6,
	reserved0: u15,
	/// reserved
	IN_REMAIN_UNDER_1B: u1,
	/// reserved
	IN_REMAIN_UNDER_2B: u1,
	/// reserved
	IN_REMAIN_UNDER_3B: u1,
	/// reserved
	IN_REMAIN_UNDER_4B: u1,
	/// reserved
	IN_BUF_HUNGRY: u1,
	reserved1: u4,
};

const DMA_IN_POP_CH2 = packed struct {
	/// This register stores the data popping from DMA FIFO.
	INFIFO_RDATA: u12,
	/// Set this bit to pop data from DMA FIFO.
	INFIFO_POP: u1,
	reserved0: u19,
};

const DMA_IN_STATE_CH2 = packed struct {
	/// This register stores the current inlink descriptor's address.
	INLINK_DSCR_ADDR: u18,
	/// reserved
	IN_DSCR_STATE: u2,
	/// reserved
	IN_STATE: u3,
	reserved0: u9,
};

const DMA_IN_SUC_EOF_DES_ADDR_CH2 = packed struct {
	/// This register stores the address of the inlink descriptor when the EOF bit in this descriptor is 1.
	IN_SUC_EOF_DES_ADDR: u32,
};

const DMA_IN_ERR_EOF_DES_ADDR_CH2 = packed struct {
	/// This register stores the address of the inlink descriptor when there are some errors in current receiving data. Only used when peripheral is UHCI0.
	IN_ERR_EOF_DES_ADDR: u32,
};

const DMA_IN_DSCR_CH2 = packed struct {
	/// The address of the current inlink descriptor x.
	INLINK_DSCR: u32,
};

const DMA_IN_DSCR_BF1_CH2 = packed struct {
	/// The address of the second-to-last inlink descriptor x-2.
	INLINK_DSCR_BF1: u32,
};

const DMA_OUTFIFO_STATUS_CH2 = packed struct {
	/// L1 Tx FIFO full signal for Tx channel 2.
	OUTFIFO_FULL: u1,
	/// L1 Tx FIFO empty signal for Tx channel 2.
	OUTFIFO_EMPTY: u1,
	/// The register stores the byte number of the data in L1 Tx FIFO for Tx channel 2.
	OUTFIFO_CNT: u6,
	reserved0: u15,
	/// reserved
	OUT_REMAIN_UNDER_1B: u1,
	/// reserved
	OUT_REMAIN_UNDER_2B: u1,
	/// reserved
	OUT_REMAIN_UNDER_3B: u1,
	/// reserved
	OUT_REMAIN_UNDER_4B: u1,
	reserved1: u5,
};

const DMA_OUT_PUSH_CH2 = packed struct {
	/// This register stores the data that need to be pushed into DMA FIFO.
	OUTFIFO_WDATA: u9,
	/// Set this bit to push data into DMA FIFO.
	OUTFIFO_PUSH: u1,
	reserved0: u22,
};

const DMA_OUT_STATE_CH2 = packed struct {
	/// This register stores the current outlink descriptor's address.
	OUTLINK_DSCR_ADDR: u18,
	/// reserved
	OUT_DSCR_STATE: u2,
	/// reserved
	OUT_STATE: u3,
	reserved0: u9,
};

const DMA_OUT_EOF_BFR_DES_ADDR_CH2 = packed struct {
	/// This register stores the address of the outlink descriptor before the last outlink descriptor.
	OUT_EOF_BFR_DES_ADDR: u32,
};

const DMA_OUT_DSCR_CH2 = packed struct {
	/// The address of the current outlink descriptor y.
	OUTLINK_DSCR: u32,
};

const DMA_OUT_DSCR_BF0_CH2 = packed struct {
	/// The address of the last outlink descriptor y-1.
	OUTLINK_DSCR_BF0: u32,
};

const DMA_OUT_DSCR_BF1_CH2 = packed struct {
	/// The address of the second-to-last inlink descriptor x-2.
	OUTLINK_DSCR_BF1: u32,
};

//Peripheral type
const DMA = struct {
	/// DMA_INT_RAW_CH0_REG.
	INT_RAW_CH0: *volatile Register(DMA_INT_RAW_CHN),
	/// DMA_INT_RAW_CH1_REG.
	INT_RAW_CH1: *volatile Register(DMA_INT_RAW_CHN),
	/// DMA_INT_RAW_CH2_REG.
	INT_RAW_CH2: *volatile Register(DMA_INT_RAW_CHN),
	/// DMA_INT_ST_CH0_REG.
	INT_ST_CH0: *volatile Register(DMA_INT_ST_CH0),
	/// DMA_INT_ENA_CH0_REG.
	INT_ENA_CH0: *volatile Register(DMA_INT_ENA_CHN),
	/// DMA_INT_ENA_CH1_REG.
	INT_ENA_CH1: *volatile Register(DMA_INT_ENA_CHN),
	/// DMA_INT_ENA_CH2_REG.
	INT_ENA_CH2: *volatile Register(DMA_INT_ENA_CHN),
	/// DMA_INT_CLR_CH0_REG.
	INT_CLR_CH0: *volatile Register(DMA_INT_CLR_CHN),
	/// DMA_INT_CLR_CH1_REG.
	INT_CLR_CH1: *volatile Register(DMA_INT_CLR_CHN),
	/// DMA_INT_CLR_CH2_REG.
	INT_CLR_CH2: *volatile Register(DMA_INT_CLR_CHN),
	/// DMA_INT_ST_CH1_REG.
	INT_ST_CH1: *volatile Register(DMA_INT_ST_CH1),
	/// DMA_INT_ST_CH2_REG.
	INT_ST_CH2: *volatile Register(DMA_INT_ST_CH2),
	/// DMA_AHB_TEST_REG.
	AHB_TEST: *volatile Register(DMA_AHB_TEST),
	/// DMA_MISC_CONF_REG.
	MISC_CONF: *volatile Register(DMA_MISC_CONF),
	/// DMA_DATE_REG.
	DATE: *volatile Register(DMA_DATE),
	/// DMA_IN_CONF0_CH0_REG.
	IN_CONF0_CH0: *volatile Register(DMA_IN_CONF0_CHN),
	/// DMA_IN_CONF1_CH1_REG.
	IN_CONF0_CH1: *volatile Register(DMA_IN_CONF0_CHN),
	/// DMA_IN_CONF2_CH2_REG.
	IN_CONF0_CH2: *volatile Register(DMA_IN_CONF0_CHN),
	/// DMA_IN_CONF1_CH0_REG.
	IN_CONF1_CH0: *volatile Register(DMA_IN_CONF1_CH0),
	/// DMA_INFIFO_STATUS_CH0_REG.
	INFIFO_STATUS_CH0: *volatile Register(DMA_INFIFO_STATUS_CH0),
	/// DMA_IN_POP_CH0_REG.
	IN_POP_CH0: *volatile Register(DMA_IN_POP_CH0),
	/// DMA_IN_LINK_CH0_REG.
	IN_LINK_CH0: *volatile Register(DMA_IN_LINK_CHN),
	/// DMA_IN_LINK_CH1_REG.
	IN_LINK_CH1: *volatile Register(DMA_IN_LINK_CHN),
	/// DMA_IN_LINK_CH2_REG.
	IN_LINK_CH2: *volatile Register(DMA_IN_LINK_CHN),
	/// DMA_IN_STATE_CH0_REG.
	IN_STATE_CH0: *volatile Register(DMA_IN_STATE_CH0),
	/// DMA_IN_SUC_EOF_DES_ADDR_CH0_REG.
	IN_SUC_EOF_DES_ADDR_CH0: *volatile Register(DMA_IN_SUC_EOF_DES_ADDR_CH0),
	/// DMA_IN_ERR_EOF_DES_ADDR_CH0_REG.
	IN_ERR_EOF_DES_ADDR_CH0: *volatile Register(DMA_IN_ERR_EOF_DES_ADDR_CH0),
	/// DMA_IN_DSCR_CH0_REG.
	IN_DSCR_CH0: *volatile Register(DMA_IN_DSCR_CH0),
	/// DMA_IN_DSCR_BF0_CH0_REG.
	IN_DSCR_BF0_CH0: *volatile Register(DMA_IN_DSCR_BF0_CHN),
	/// DMA_IN_DSCR_BF1_CH1_REG.
	IN_DSCR_BF0_CH1: *volatile Register(DMA_IN_DSCR_BF0_CHN),
	/// DMA_IN_DSCR_BF2_CH2_REG.
	IN_DSCR_BF0_CH2: *volatile Register(DMA_IN_DSCR_BF0_CHN),
	/// DMA_IN_DSCR_BF1_CH0_REG.
	IN_DSCR_BF1_CH0: *volatile Register(DMA_IN_DSCR_BF1_CH0),
	/// DMA_IN_PRI_CH0_REG.
	IN_PRI_CH0: *volatile Register(DMA_IN_PRI_CHN),
	/// DMA_IN_PRI_CH1_REG.
	IN_PRI_CH1: *volatile Register(DMA_IN_PRI_CHN),
	/// DMA_IN_PRI_CH2_REG.
	IN_PRI_CH2: *volatile Register(DMA_IN_PRI_CHN),
	/// DMA_IN_PERI_SEL_CH0_REG.
	IN_PERI_SEL_CH0: *volatile Register(DMA_IN_PERI_SEL_CHN),
	/// DMA_IN_PERI_SEL_CH1_REG.
	IN_PERI_SEL_CH1: *volatile Register(DMA_IN_PERI_SEL_CHN),
	/// DMA_IN_PERI_SEL_CH2_REG.
	IN_PERI_SEL_CH2: *volatile Register(DMA_IN_PERI_SEL_CHN),
	/// DMA_OUT_CONF0_CH0_REG.
	OUT_CONF0_CH0: *volatile Register(DMA_OUT_CONF0_CHN),
	/// DMA_OUT_CONF1_CH1_REG.
	OUT_CONF0_CH1: *volatile Register(DMA_OUT_CONF0_CHN),
	/// DMA_OUT_CONF2_CH2_REG.
	OUT_CONF0_CH2: *volatile Register(DMA_OUT_CONF0_CHN),
	/// DMA_OUT_CONF1_CH0_REG.
	OUT_CONF1_CH0: *volatile Register(DMA_OUT_CONF1_CHN),
	/// DMA_OUT_CONF1_CH1_REG.
	OUT_CONF1_CH1: *volatile Register(DMA_OUT_CONF1_CHN),
	/// DMA_OUT_CONF1_CH2_REG.
	OUT_CONF1_CH2: *volatile Register(DMA_OUT_CONF1_CHN),
	/// DMA_OUTFIFO_STATUS_CH0_REG.
	OUTFIFO_STATUS_CH0: *volatile Register(DMA_OUTFIFO_STATUS_CH0),
	/// DMA_OUT_PUSH_CH0_REG.
	OUT_PUSH_CH0: *volatile Register(DMA_OUT_PUSH_CH0),
	/// DMA_OUT_LINK_CH0_REG.
	OUT_LINK_CH0: *volatile Register(DMA_OUT_LINK_CHN),
	/// DMA_OUT_LINK_CH1_REG.
	OUT_LINK_CH1: *volatile Register(DMA_OUT_LINK_CHN),
	/// DMA_OUT_LINK_CH2_REG.
	OUT_LINK_CH2: *volatile Register(DMA_OUT_LINK_CHN),
	/// DMA_OUT_STATE_CH0_REG.
	OUT_STATE_CH0: *volatile Register(DMA_OUT_STATE_CH0),
	/// DMA_OUT_EOF_DES_ADDR_CH0_REG.
	OUT_EOF_DES_ADDR_CH0: *volatile Register(DMA_OUT_EOF_DES_ADDR_CHN),
	/// DMA_OUT_EOF_DES_ADDR_CH1_REG.
	OUT_EOF_DES_ADDR_CH1: *volatile Register(DMA_OUT_EOF_DES_ADDR_CHN),
	/// DMA_OUT_EOF_DES_ADDR_CH2_REG.
	OUT_EOF_DES_ADDR_CH2: *volatile Register(DMA_OUT_EOF_DES_ADDR_CHN),
	/// DMA_OUT_EOF_BFR_DES_ADDR_CH0_REG.
	OUT_EOF_BFR_DES_ADDR_CH0: *volatile Register(DMA_OUT_EOF_BFR_DES_ADDR_CH0),
	/// DMA_OUT_DSCR_CH0_REG.
	OUT_DSCR_CH0: *volatile Register(DMA_OUT_DSCR_CH0),
	/// DMA_OUT_DSCR_BF0_CH0_REG.
	OUT_DSCR_BF0_CH0: *volatile Register(DMA_OUT_DSCR_BF0_CH0),
	/// DMA_OUT_DSCR_BF1_CH0_REG.
	OUT_DSCR_BF1_CH0: *volatile Register(DMA_OUT_DSCR_BF1_CH0),
	/// DMA_OUT_PRI_CH0_REG.
	OUT_PRI_CH0: *volatile Register(DMA_OUT_PRI_CHN),
	/// DMA_OUT_PRI_CH1_REG.
	OUT_PRI_CH1: *volatile Register(DMA_OUT_PRI_CHN),
	/// DMA_OUT_PRI_CH2_REG.
	OUT_PRI_CH2: *volatile Register(DMA_OUT_PRI_CHN),
	/// DMA_OUT_PERI_SEL_CH0_REG.
	OUT_PERI_SEL_CH0: *volatile Register(DMA_OUT_PERI_SEL_CHN),
	/// DMA_OUT_PERI_SEL_CH1_REG.
	OUT_PERI_SEL_CH1: *volatile Register(DMA_OUT_PERI_SEL_CHN),
	/// DMA_OUT_PERI_SEL_CH2_REG.
	OUT_PERI_SEL_CH2: *volatile Register(DMA_OUT_PERI_SEL_CHN),
	/// DMA_IN_CONF1_CH1_REG.
	IN_CONF1_CH1: *volatile Register(DMA_IN_CONF1_CH1),
	/// DMA_INFIFO_STATUS_CH1_REG.
	INFIFO_STATUS_CH1: *volatile Register(DMA_INFIFO_STATUS_CH1),
	/// DMA_IN_POP_CH1_REG.
	IN_POP_CH1: *volatile Register(DMA_IN_POP_CH1),
	/// DMA_IN_STATE_CH1_REG.
	IN_STATE_CH1: *volatile Register(DMA_IN_STATE_CH1),
	/// DMA_IN_SUC_EOF_DES_ADDR_CH1_REG.
	IN_SUC_EOF_DES_ADDR_CH1: *volatile Register(DMA_IN_SUC_EOF_DES_ADDR_CH1),
	/// DMA_IN_ERR_EOF_DES_ADDR_CH1_REG.
	IN_ERR_EOF_DES_ADDR_CH1: *volatile Register(DMA_IN_ERR_EOF_DES_ADDR_CH1),
	/// DMA_IN_DSCR_CH1_REG.
	IN_DSCR_CH1: *volatile Register(DMA_IN_DSCR_CH1),
	/// DMA_IN_DSCR_BF1_CH1_REG.
	IN_DSCR_BF1_CH1: *volatile Register(DMA_IN_DSCR_BF1_CH1),
	/// DMA_OUTFIFO_STATUS_CH1_REG.
	OUTFIFO_STATUS_CH1: *volatile Register(DMA_OUTFIFO_STATUS_CH1),
	/// DMA_OUT_PUSH_CH1_REG.
	OUT_PUSH_CH1: *volatile Register(DMA_OUT_PUSH_CH1),
	/// DMA_OUT_STATE_CH1_REG.
	OUT_STATE_CH1: *volatile Register(DMA_OUT_STATE_CH1),
	/// DMA_OUT_EOF_BFR_DES_ADDR_CH1_REG.
	OUT_EOF_BFR_DES_ADDR_CH1: *volatile Register(DMA_OUT_EOF_BFR_DES_ADDR_CH1),
	/// DMA_OUT_DSCR_CH1_REG.
	OUT_DSCR_CH1: *volatile Register(DMA_OUT_DSCR_CH1),
	/// DMA_OUT_DSCR_BF0_CH1_REG.
	OUT_DSCR_BF0_CH1: *volatile Register(DMA_OUT_DSCR_BF0_CH1),
	/// DMA_OUT_DSCR_BF1_CH1_REG.
	OUT_DSCR_BF1_CH1: *volatile Register(DMA_OUT_DSCR_BF1_CH1),
	/// DMA_IN_CONF1_CH2_REG.
	IN_CONF1_CH2: *volatile Register(DMA_IN_CONF1_CH2),
	/// DMA_INFIFO_STATUS_CH2_REG.
	INFIFO_STATUS_CH2: *volatile Register(DMA_INFIFO_STATUS_CH2),
	/// DMA_IN_POP_CH2_REG.
	IN_POP_CH2: *volatile Register(DMA_IN_POP_CH2),
	/// DMA_IN_STATE_CH2_REG.
	IN_STATE_CH2: *volatile Register(DMA_IN_STATE_CH2),
	/// DMA_IN_SUC_EOF_DES_ADDR_CH2_REG.
	IN_SUC_EOF_DES_ADDR_CH2: *volatile Register(DMA_IN_SUC_EOF_DES_ADDR_CH2),
	/// DMA_IN_ERR_EOF_DES_ADDR_CH2_REG.
	IN_ERR_EOF_DES_ADDR_CH2: *volatile Register(DMA_IN_ERR_EOF_DES_ADDR_CH2),
	/// DMA_IN_DSCR_CH2_REG.
	IN_DSCR_CH2: *volatile Register(DMA_IN_DSCR_CH2),
	/// DMA_IN_DSCR_BF1_CH2_REG.
	IN_DSCR_BF1_CH2: *volatile Register(DMA_IN_DSCR_BF1_CH2),
	/// DMA_OUTFIFO_STATUS_CH2_REG.
	OUTFIFO_STATUS_CH2: *volatile Register(DMA_OUTFIFO_STATUS_CH2),
	/// DMA_OUT_PUSH_CH2_REG.
	OUT_PUSH_CH2: *volatile Register(DMA_OUT_PUSH_CH2),
	/// DMA_OUT_STATE_CH2_REG.
	OUT_STATE_CH2: *volatile Register(DMA_OUT_STATE_CH2),
	/// DMA_OUT_EOF_BFR_DES_ADDR_CH2_REG.
	OUT_EOF_BFR_DES_ADDR_CH2: *volatile Register(DMA_OUT_EOF_BFR_DES_ADDR_CH2),
	/// DMA_OUT_DSCR_CH2_REG.
	OUT_DSCR_CH2: *volatile Register(DMA_OUT_DSCR_CH2),
	/// DMA_OUT_DSCR_BF0_CH2_REG.
	OUT_DSCR_BF0_CH2: *volatile Register(DMA_OUT_DSCR_BF0_CH2),
	/// DMA_OUT_DSCR_BF1_CH2_REG.
	OUT_DSCR_BF1_CH2: *volatile Register(DMA_OUT_DSCR_BF1_CH2),
};

// Peripheral instance
const DMA_instance = DMA {
	.INT_RAW_CH0 = @ptrFromInt(0x6003f000),
	.INT_RAW_CH1 = @ptrFromInt(0x6003f000),
	.INT_RAW_CH2 = @ptrFromInt(0x6003f000),
	.INT_ST_CH0 = @ptrFromInt(0x6003f004),
	.INT_ENA_CH0 = @ptrFromInt(0x6003f008),
	.INT_ENA_CH1 = @ptrFromInt(0x6003f008),
	.INT_ENA_CH2 = @ptrFromInt(0x6003f008),
	.INT_CLR_CH0 = @ptrFromInt(0x6003f00c),
	.INT_CLR_CH1 = @ptrFromInt(0x6003f00c),
	.INT_CLR_CH2 = @ptrFromInt(0x6003f00c),
	.INT_ST_CH1 = @ptrFromInt(0x6003f014),
	.INT_ST_CH2 = @ptrFromInt(0x6003f024),
	.AHB_TEST = @ptrFromInt(0x6003f040),
	.MISC_CONF = @ptrFromInt(0x6003f044),
	.DATE = @ptrFromInt(0x6003f048),
	.IN_CONF0_CH0 = @ptrFromInt(0x6003f070),
	.IN_CONF0_CH1 = @ptrFromInt(0x6003f070),
	.IN_CONF0_CH2 = @ptrFromInt(0x6003f070),
	.IN_CONF1_CH0 = @ptrFromInt(0x6003f074),
	.INFIFO_STATUS_CH0 = @ptrFromInt(0x6003f078),
	.IN_POP_CH0 = @ptrFromInt(0x6003f07c),
	.IN_LINK_CH0 = @ptrFromInt(0x6003f080),
	.IN_LINK_CH1 = @ptrFromInt(0x6003f080),
	.IN_LINK_CH2 = @ptrFromInt(0x6003f080),
	.IN_STATE_CH0 = @ptrFromInt(0x6003f084),
	.IN_SUC_EOF_DES_ADDR_CH0 = @ptrFromInt(0x6003f088),
	.IN_ERR_EOF_DES_ADDR_CH0 = @ptrFromInt(0x6003f08c),
	.IN_DSCR_CH0 = @ptrFromInt(0x6003f090),
	.IN_DSCR_BF0_CH0 = @ptrFromInt(0x6003f094),
	.IN_DSCR_BF0_CH1 = @ptrFromInt(0x6003f094),
	.IN_DSCR_BF0_CH2 = @ptrFromInt(0x6003f094),
	.IN_DSCR_BF1_CH0 = @ptrFromInt(0x6003f098),
	.IN_PRI_CH0 = @ptrFromInt(0x6003f09c),
	.IN_PRI_CH1 = @ptrFromInt(0x6003f09c),
	.IN_PRI_CH2 = @ptrFromInt(0x6003f09c),
	.IN_PERI_SEL_CH0 = @ptrFromInt(0x6003f0a0),
	.IN_PERI_SEL_CH1 = @ptrFromInt(0x6003f0a0),
	.IN_PERI_SEL_CH2 = @ptrFromInt(0x6003f0a0),
	.OUT_CONF0_CH0 = @ptrFromInt(0x6003f0d0),
	.OUT_CONF0_CH1 = @ptrFromInt(0x6003f0d0),
	.OUT_CONF0_CH2 = @ptrFromInt(0x6003f0d0),
	.OUT_CONF1_CH0 = @ptrFromInt(0x6003f0d4),
	.OUT_CONF1_CH1 = @ptrFromInt(0x6003f0d4),
	.OUT_CONF1_CH2 = @ptrFromInt(0x6003f0d4),
	.OUTFIFO_STATUS_CH0 = @ptrFromInt(0x6003f0d8),
	.OUT_PUSH_CH0 = @ptrFromInt(0x6003f0dc),
	.OUT_LINK_CH0 = @ptrFromInt(0x6003f0e0),
	.OUT_LINK_CH1 = @ptrFromInt(0x6003f0e0),
	.OUT_LINK_CH2 = @ptrFromInt(0x6003f0e0),
	.OUT_STATE_CH0 = @ptrFromInt(0x6003f0e4),
	.OUT_EOF_DES_ADDR_CH0 = @ptrFromInt(0x6003f0e8),
	.OUT_EOF_DES_ADDR_CH1 = @ptrFromInt(0x6003f0e8),
	.OUT_EOF_DES_ADDR_CH2 = @ptrFromInt(0x6003f0e8),
	.OUT_EOF_BFR_DES_ADDR_CH0 = @ptrFromInt(0x6003f0ec),
	.OUT_DSCR_CH0 = @ptrFromInt(0x6003f0f0),
	.OUT_DSCR_BF0_CH0 = @ptrFromInt(0x6003f0f4),
	.OUT_DSCR_BF1_CH0 = @ptrFromInt(0x6003f0f8),
	.OUT_PRI_CH0 = @ptrFromInt(0x6003f0fc),
	.OUT_PRI_CH1 = @ptrFromInt(0x6003f0fc),
	.OUT_PRI_CH2 = @ptrFromInt(0x6003f0fc),
	.OUT_PERI_SEL_CH0 = @ptrFromInt(0x6003f100),
	.OUT_PERI_SEL_CH1 = @ptrFromInt(0x6003f100),
	.OUT_PERI_SEL_CH2 = @ptrFromInt(0x6003f100),
	.IN_CONF1_CH1 = @ptrFromInt(0x6003f134),
	.INFIFO_STATUS_CH1 = @ptrFromInt(0x6003f138),
	.IN_POP_CH1 = @ptrFromInt(0x6003f13c),
	.IN_STATE_CH1 = @ptrFromInt(0x6003f144),
	.IN_SUC_EOF_DES_ADDR_CH1 = @ptrFromInt(0x6003f148),
	.IN_ERR_EOF_DES_ADDR_CH1 = @ptrFromInt(0x6003f14c),
	.IN_DSCR_CH1 = @ptrFromInt(0x6003f150),
	.IN_DSCR_BF1_CH1 = @ptrFromInt(0x6003f158),
	.OUTFIFO_STATUS_CH1 = @ptrFromInt(0x6003f198),
	.OUT_PUSH_CH1 = @ptrFromInt(0x6003f19c),
	.OUT_STATE_CH1 = @ptrFromInt(0x6003f1a4),
	.OUT_EOF_BFR_DES_ADDR_CH1 = @ptrFromInt(0x6003f1ac),
	.OUT_DSCR_CH1 = @ptrFromInt(0x6003f1b0),
	.OUT_DSCR_BF0_CH1 = @ptrFromInt(0x6003f1b4),
	.OUT_DSCR_BF1_CH1 = @ptrFromInt(0x6003f1b8),
	.IN_CONF1_CH2 = @ptrFromInt(0x6003f1f4),
	.INFIFO_STATUS_CH2 = @ptrFromInt(0x6003f1f8),
	.IN_POP_CH2 = @ptrFromInt(0x6003f1fc),
	.IN_STATE_CH2 = @ptrFromInt(0x6003f204),
	.IN_SUC_EOF_DES_ADDR_CH2 = @ptrFromInt(0x6003f208),
	.IN_ERR_EOF_DES_ADDR_CH2 = @ptrFromInt(0x6003f20c),
	.IN_DSCR_CH2 = @ptrFromInt(0x6003f210),
	.IN_DSCR_BF1_CH2 = @ptrFromInt(0x6003f218),
	.OUTFIFO_STATUS_CH2 = @ptrFromInt(0x6003f258),
	.OUT_PUSH_CH2 = @ptrFromInt(0x6003f25c),
	.OUT_STATE_CH2 = @ptrFromInt(0x6003f264),
	.OUT_EOF_BFR_DES_ADDR_CH2 = @ptrFromInt(0x6003f26c),
	.OUT_DSCR_CH2 = @ptrFromInt(0x6003f270),
	.OUT_DSCR_BF0_CH2 = @ptrFromInt(0x6003f274),
	.OUT_DSCR_BF1_CH2 = @ptrFromInt(0x6003f278),
};

const DS_Y_MEMN = packed struct {
	reserved0: u32,
};

const DS_M_MEMN = packed struct {
	reserved0: u32,
};

const DS_RB_MEMN = packed struct {
	reserved0: u32,
};

const DS_BOX_MEMN = packed struct {
	reserved0: u32,
};

const DS_X_MEMN = packed struct {
	reserved0: u32,
};

const DS_Z_MEMN = packed struct {
	reserved0: u32,
};

const DS_SET_START = packed struct {
	/// set this bit to start DS operation.
	SET_START: u1,
	reserved0: u31,
};

const DS_SET_CONTINUE = packed struct {
	/// set this bit to continue DS operation.
	SET_CONTINUE: u1,
	reserved0: u31,
};

const DS_SET_FINISH = packed struct {
	/// Set this bit to finish DS process.
	SET_FINISH: u1,
	reserved0: u31,
};

const DS_QUERY_BUSY = packed struct {
	/// digital signature state. 1'b0: idle, 1'b1: busy
	QUERY_BUSY: u1,
	reserved0: u31,
};

const DS_QUERY_KEY_WRONG = packed struct {
	/// digital signature key wrong counter
	QUERY_KEY_WRONG: u4,
	reserved0: u28,
};

const DS_QUERY_CHECK = packed struct {
	/// MD checkout result. 1'b0: MD check pass, 1'b1: MD check fail
	MD_ERROR: u1,
	/// padding checkout result. 1'b0: a good padding, 1'b1: a bad padding
	PADDING_BAD: u1,
	reserved0: u30,
};

const DS_DATE = packed struct {
	/// ds version information
	DATE: u30,
	reserved0: u2,
};

//Peripheral type
const DS = struct {
	/// memory that stores Y
	Y_MEM0: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM1: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM2: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM3: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM4: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM5: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM6: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM7: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM8: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM9: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM10: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM11: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM12: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM13: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM14: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM15: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM16: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM17: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM18: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM19: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM20: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM21: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM22: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM23: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM24: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM25: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM26: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM27: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM28: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM29: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM30: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM31: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM32: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM33: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM34: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM35: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM36: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM37: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM38: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM39: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM40: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM41: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM42: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM43: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM44: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM45: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM46: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM47: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM48: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM49: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM50: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM51: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM52: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM53: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM54: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM55: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM56: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM57: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM58: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM59: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM60: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM61: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM62: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM63: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM64: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM65: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM66: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM67: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM68: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM69: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM70: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM71: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM72: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM73: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM74: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM75: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM76: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM77: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM78: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM79: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM80: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM81: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM82: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM83: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM84: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM85: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM86: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM87: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM88: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM89: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM90: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM91: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM92: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM93: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM94: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM95: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM96: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM97: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM98: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM99: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM100: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM101: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM102: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM103: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM104: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM105: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM106: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM107: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM108: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM109: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM110: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM111: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM112: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM113: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM114: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM115: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM116: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM117: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM118: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM119: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM120: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM121: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM122: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM123: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM124: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM125: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM126: *volatile Register(DS_Y_MEMN),
	/// memory that stores Y
	Y_MEM127: *volatile Register(DS_Y_MEMN),
	/// memory that stores M
	M_MEM0: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM1: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM2: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM3: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM4: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM5: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM6: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM7: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM8: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM9: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM10: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM11: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM12: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM13: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM14: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM15: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM16: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM17: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM18: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM19: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM20: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM21: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM22: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM23: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM24: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM25: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM26: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM27: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM28: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM29: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM30: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM31: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM32: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM33: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM34: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM35: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM36: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM37: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM38: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM39: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM40: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM41: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM42: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM43: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM44: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM45: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM46: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM47: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM48: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM49: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM50: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM51: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM52: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM53: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM54: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM55: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM56: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM57: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM58: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM59: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM60: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM61: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM62: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM63: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM64: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM65: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM66: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM67: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM68: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM69: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM70: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM71: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM72: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM73: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM74: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM75: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM76: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM77: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM78: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM79: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM80: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM81: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM82: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM83: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM84: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM85: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM86: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM87: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM88: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM89: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM90: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM91: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM92: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM93: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM94: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM95: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM96: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM97: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM98: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM99: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM100: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM101: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM102: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM103: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM104: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM105: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM106: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM107: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM108: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM109: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM110: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM111: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM112: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM113: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM114: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM115: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM116: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM117: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM118: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM119: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM120: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM121: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM122: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM123: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM124: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM125: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM126: *volatile Register(DS_M_MEMN),
	/// memory that stores M
	M_MEM127: *volatile Register(DS_M_MEMN),
	/// memory that stores Rb
	RB_MEM0: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM1: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM2: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM3: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM4: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM5: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM6: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM7: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM8: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM9: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM10: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM11: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM12: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM13: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM14: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM15: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM16: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM17: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM18: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM19: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM20: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM21: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM22: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM23: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM24: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM25: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM26: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM27: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM28: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM29: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM30: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM31: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM32: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM33: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM34: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM35: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM36: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM37: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM38: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM39: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM40: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM41: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM42: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM43: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM44: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM45: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM46: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM47: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM48: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM49: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM50: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM51: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM52: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM53: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM54: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM55: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM56: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM57: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM58: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM59: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM60: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM61: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM62: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM63: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM64: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM65: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM66: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM67: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM68: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM69: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM70: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM71: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM72: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM73: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM74: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM75: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM76: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM77: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM78: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM79: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM80: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM81: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM82: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM83: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM84: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM85: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM86: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM87: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM88: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM89: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM90: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM91: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM92: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM93: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM94: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM95: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM96: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM97: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM98: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM99: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM100: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM101: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM102: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM103: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM104: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM105: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM106: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM107: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM108: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM109: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM110: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM111: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM112: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM113: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM114: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM115: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM116: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM117: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM118: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM119: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM120: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM121: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM122: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM123: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM124: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM125: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM126: *volatile Register(DS_RB_MEMN),
	/// memory that stores Rb
	RB_MEM127: *volatile Register(DS_RB_MEMN),
	/// memory that stores BOX
	BOX_MEM0: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM1: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM2: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM3: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM4: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM5: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM6: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM7: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM8: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM9: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM10: *volatile Register(DS_BOX_MEMN),
	/// memory that stores BOX
	BOX_MEM11: *volatile Register(DS_BOX_MEMN),
	/// memory that stores X
	X_MEM0: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM1: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM2: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM3: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM4: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM5: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM6: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM7: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM8: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM9: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM10: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM11: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM12: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM13: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM14: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM15: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM16: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM17: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM18: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM19: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM20: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM21: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM22: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM23: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM24: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM25: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM26: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM27: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM28: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM29: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM30: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM31: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM32: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM33: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM34: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM35: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM36: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM37: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM38: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM39: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM40: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM41: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM42: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM43: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM44: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM45: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM46: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM47: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM48: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM49: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM50: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM51: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM52: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM53: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM54: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM55: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM56: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM57: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM58: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM59: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM60: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM61: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM62: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM63: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM64: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM65: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM66: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM67: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM68: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM69: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM70: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM71: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM72: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM73: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM74: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM75: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM76: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM77: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM78: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM79: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM80: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM81: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM82: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM83: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM84: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM85: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM86: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM87: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM88: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM89: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM90: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM91: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM92: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM93: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM94: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM95: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM96: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM97: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM98: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM99: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM100: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM101: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM102: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM103: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM104: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM105: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM106: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM107: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM108: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM109: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM110: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM111: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM112: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM113: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM114: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM115: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM116: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM117: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM118: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM119: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM120: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM121: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM122: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM123: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM124: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM125: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM126: *volatile Register(DS_X_MEMN),
	/// memory that stores X
	X_MEM127: *volatile Register(DS_X_MEMN),
	/// memory that stores Z
	Z_MEM0: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM1: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM2: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM3: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM4: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM5: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM6: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM7: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM8: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM9: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM10: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM11: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM12: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM13: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM14: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM15: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM16: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM17: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM18: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM19: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM20: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM21: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM22: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM23: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM24: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM25: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM26: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM27: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM28: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM29: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM30: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM31: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM32: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM33: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM34: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM35: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM36: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM37: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM38: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM39: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM40: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM41: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM42: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM43: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM44: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM45: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM46: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM47: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM48: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM49: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM50: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM51: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM52: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM53: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM54: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM55: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM56: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM57: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM58: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM59: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM60: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM61: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM62: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM63: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM64: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM65: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM66: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM67: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM68: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM69: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM70: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM71: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM72: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM73: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM74: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM75: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM76: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM77: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM78: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM79: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM80: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM81: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM82: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM83: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM84: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM85: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM86: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM87: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM88: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM89: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM90: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM91: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM92: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM93: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM94: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM95: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM96: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM97: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM98: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM99: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM100: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM101: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM102: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM103: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM104: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM105: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM106: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM107: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM108: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM109: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM110: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM111: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM112: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM113: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM114: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM115: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM116: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM117: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM118: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM119: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM120: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM121: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM122: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM123: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM124: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM125: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM126: *volatile Register(DS_Z_MEMN),
	/// memory that stores Z
	Z_MEM127: *volatile Register(DS_Z_MEMN),
	/// DS start control register
	SET_START: *volatile Register(DS_SET_START),
	/// DS continue control register
	SET_CONTINUE: *volatile Register(DS_SET_CONTINUE),
	/// DS finish control register
	SET_FINISH: *volatile Register(DS_SET_FINISH),
	/// DS query busy register
	QUERY_BUSY: *volatile Register(DS_QUERY_BUSY),
	/// DS query key-wrong counter register
	QUERY_KEY_WRONG: *volatile Register(DS_QUERY_KEY_WRONG),
	/// DS query check result register
	QUERY_CHECK: *volatile Register(DS_QUERY_CHECK),
	/// DS version control register
	DATE: *volatile Register(DS_DATE),
};

// Peripheral instance
const DS_instance = DS {
	.Y_MEM0 = @ptrFromInt(0x6003d000),
	.Y_MEM1 = @ptrFromInt(0x6003d000),
	.Y_MEM2 = @ptrFromInt(0x6003d000),
	.Y_MEM3 = @ptrFromInt(0x6003d000),
	.Y_MEM4 = @ptrFromInt(0x6003d000),
	.Y_MEM5 = @ptrFromInt(0x6003d000),
	.Y_MEM6 = @ptrFromInt(0x6003d000),
	.Y_MEM7 = @ptrFromInt(0x6003d000),
	.Y_MEM8 = @ptrFromInt(0x6003d000),
	.Y_MEM9 = @ptrFromInt(0x6003d000),
	.Y_MEM10 = @ptrFromInt(0x6003d000),
	.Y_MEM11 = @ptrFromInt(0x6003d000),
	.Y_MEM12 = @ptrFromInt(0x6003d000),
	.Y_MEM13 = @ptrFromInt(0x6003d000),
	.Y_MEM14 = @ptrFromInt(0x6003d000),
	.Y_MEM15 = @ptrFromInt(0x6003d000),
	.Y_MEM16 = @ptrFromInt(0x6003d000),
	.Y_MEM17 = @ptrFromInt(0x6003d000),
	.Y_MEM18 = @ptrFromInt(0x6003d000),
	.Y_MEM19 = @ptrFromInt(0x6003d000),
	.Y_MEM20 = @ptrFromInt(0x6003d000),
	.Y_MEM21 = @ptrFromInt(0x6003d000),
	.Y_MEM22 = @ptrFromInt(0x6003d000),
	.Y_MEM23 = @ptrFromInt(0x6003d000),
	.Y_MEM24 = @ptrFromInt(0x6003d000),
	.Y_MEM25 = @ptrFromInt(0x6003d000),
	.Y_MEM26 = @ptrFromInt(0x6003d000),
	.Y_MEM27 = @ptrFromInt(0x6003d000),
	.Y_MEM28 = @ptrFromInt(0x6003d000),
	.Y_MEM29 = @ptrFromInt(0x6003d000),
	.Y_MEM30 = @ptrFromInt(0x6003d000),
	.Y_MEM31 = @ptrFromInt(0x6003d000),
	.Y_MEM32 = @ptrFromInt(0x6003d000),
	.Y_MEM33 = @ptrFromInt(0x6003d000),
	.Y_MEM34 = @ptrFromInt(0x6003d000),
	.Y_MEM35 = @ptrFromInt(0x6003d000),
	.Y_MEM36 = @ptrFromInt(0x6003d000),
	.Y_MEM37 = @ptrFromInt(0x6003d000),
	.Y_MEM38 = @ptrFromInt(0x6003d000),
	.Y_MEM39 = @ptrFromInt(0x6003d000),
	.Y_MEM40 = @ptrFromInt(0x6003d000),
	.Y_MEM41 = @ptrFromInt(0x6003d000),
	.Y_MEM42 = @ptrFromInt(0x6003d000),
	.Y_MEM43 = @ptrFromInt(0x6003d000),
	.Y_MEM44 = @ptrFromInt(0x6003d000),
	.Y_MEM45 = @ptrFromInt(0x6003d000),
	.Y_MEM46 = @ptrFromInt(0x6003d000),
	.Y_MEM47 = @ptrFromInt(0x6003d000),
	.Y_MEM48 = @ptrFromInt(0x6003d000),
	.Y_MEM49 = @ptrFromInt(0x6003d000),
	.Y_MEM50 = @ptrFromInt(0x6003d000),
	.Y_MEM51 = @ptrFromInt(0x6003d000),
	.Y_MEM52 = @ptrFromInt(0x6003d000),
	.Y_MEM53 = @ptrFromInt(0x6003d000),
	.Y_MEM54 = @ptrFromInt(0x6003d000),
	.Y_MEM55 = @ptrFromInt(0x6003d000),
	.Y_MEM56 = @ptrFromInt(0x6003d000),
	.Y_MEM57 = @ptrFromInt(0x6003d000),
	.Y_MEM58 = @ptrFromInt(0x6003d000),
	.Y_MEM59 = @ptrFromInt(0x6003d000),
	.Y_MEM60 = @ptrFromInt(0x6003d000),
	.Y_MEM61 = @ptrFromInt(0x6003d000),
	.Y_MEM62 = @ptrFromInt(0x6003d000),
	.Y_MEM63 = @ptrFromInt(0x6003d000),
	.Y_MEM64 = @ptrFromInt(0x6003d000),
	.Y_MEM65 = @ptrFromInt(0x6003d000),
	.Y_MEM66 = @ptrFromInt(0x6003d000),
	.Y_MEM67 = @ptrFromInt(0x6003d000),
	.Y_MEM68 = @ptrFromInt(0x6003d000),
	.Y_MEM69 = @ptrFromInt(0x6003d000),
	.Y_MEM70 = @ptrFromInt(0x6003d000),
	.Y_MEM71 = @ptrFromInt(0x6003d000),
	.Y_MEM72 = @ptrFromInt(0x6003d000),
	.Y_MEM73 = @ptrFromInt(0x6003d000),
	.Y_MEM74 = @ptrFromInt(0x6003d000),
	.Y_MEM75 = @ptrFromInt(0x6003d000),
	.Y_MEM76 = @ptrFromInt(0x6003d000),
	.Y_MEM77 = @ptrFromInt(0x6003d000),
	.Y_MEM78 = @ptrFromInt(0x6003d000),
	.Y_MEM79 = @ptrFromInt(0x6003d000),
	.Y_MEM80 = @ptrFromInt(0x6003d000),
	.Y_MEM81 = @ptrFromInt(0x6003d000),
	.Y_MEM82 = @ptrFromInt(0x6003d000),
	.Y_MEM83 = @ptrFromInt(0x6003d000),
	.Y_MEM84 = @ptrFromInt(0x6003d000),
	.Y_MEM85 = @ptrFromInt(0x6003d000),
	.Y_MEM86 = @ptrFromInt(0x6003d000),
	.Y_MEM87 = @ptrFromInt(0x6003d000),
	.Y_MEM88 = @ptrFromInt(0x6003d000),
	.Y_MEM89 = @ptrFromInt(0x6003d000),
	.Y_MEM90 = @ptrFromInt(0x6003d000),
	.Y_MEM91 = @ptrFromInt(0x6003d000),
	.Y_MEM92 = @ptrFromInt(0x6003d000),
	.Y_MEM93 = @ptrFromInt(0x6003d000),
	.Y_MEM94 = @ptrFromInt(0x6003d000),
	.Y_MEM95 = @ptrFromInt(0x6003d000),
	.Y_MEM96 = @ptrFromInt(0x6003d000),
	.Y_MEM97 = @ptrFromInt(0x6003d000),
	.Y_MEM98 = @ptrFromInt(0x6003d000),
	.Y_MEM99 = @ptrFromInt(0x6003d000),
	.Y_MEM100 = @ptrFromInt(0x6003d000),
	.Y_MEM101 = @ptrFromInt(0x6003d000),
	.Y_MEM102 = @ptrFromInt(0x6003d000),
	.Y_MEM103 = @ptrFromInt(0x6003d000),
	.Y_MEM104 = @ptrFromInt(0x6003d000),
	.Y_MEM105 = @ptrFromInt(0x6003d000),
	.Y_MEM106 = @ptrFromInt(0x6003d000),
	.Y_MEM107 = @ptrFromInt(0x6003d000),
	.Y_MEM108 = @ptrFromInt(0x6003d000),
	.Y_MEM109 = @ptrFromInt(0x6003d000),
	.Y_MEM110 = @ptrFromInt(0x6003d000),
	.Y_MEM111 = @ptrFromInt(0x6003d000),
	.Y_MEM112 = @ptrFromInt(0x6003d000),
	.Y_MEM113 = @ptrFromInt(0x6003d000),
	.Y_MEM114 = @ptrFromInt(0x6003d000),
	.Y_MEM115 = @ptrFromInt(0x6003d000),
	.Y_MEM116 = @ptrFromInt(0x6003d000),
	.Y_MEM117 = @ptrFromInt(0x6003d000),
	.Y_MEM118 = @ptrFromInt(0x6003d000),
	.Y_MEM119 = @ptrFromInt(0x6003d000),
	.Y_MEM120 = @ptrFromInt(0x6003d000),
	.Y_MEM121 = @ptrFromInt(0x6003d000),
	.Y_MEM122 = @ptrFromInt(0x6003d000),
	.Y_MEM123 = @ptrFromInt(0x6003d000),
	.Y_MEM124 = @ptrFromInt(0x6003d000),
	.Y_MEM125 = @ptrFromInt(0x6003d000),
	.Y_MEM126 = @ptrFromInt(0x6003d000),
	.Y_MEM127 = @ptrFromInt(0x6003d000),
	.M_MEM0 = @ptrFromInt(0x6003d200),
	.M_MEM1 = @ptrFromInt(0x6003d200),
	.M_MEM2 = @ptrFromInt(0x6003d200),
	.M_MEM3 = @ptrFromInt(0x6003d200),
	.M_MEM4 = @ptrFromInt(0x6003d200),
	.M_MEM5 = @ptrFromInt(0x6003d200),
	.M_MEM6 = @ptrFromInt(0x6003d200),
	.M_MEM7 = @ptrFromInt(0x6003d200),
	.M_MEM8 = @ptrFromInt(0x6003d200),
	.M_MEM9 = @ptrFromInt(0x6003d200),
	.M_MEM10 = @ptrFromInt(0x6003d200),
	.M_MEM11 = @ptrFromInt(0x6003d200),
	.M_MEM12 = @ptrFromInt(0x6003d200),
	.M_MEM13 = @ptrFromInt(0x6003d200),
	.M_MEM14 = @ptrFromInt(0x6003d200),
	.M_MEM15 = @ptrFromInt(0x6003d200),
	.M_MEM16 = @ptrFromInt(0x6003d200),
	.M_MEM17 = @ptrFromInt(0x6003d200),
	.M_MEM18 = @ptrFromInt(0x6003d200),
	.M_MEM19 = @ptrFromInt(0x6003d200),
	.M_MEM20 = @ptrFromInt(0x6003d200),
	.M_MEM21 = @ptrFromInt(0x6003d200),
	.M_MEM22 = @ptrFromInt(0x6003d200),
	.M_MEM23 = @ptrFromInt(0x6003d200),
	.M_MEM24 = @ptrFromInt(0x6003d200),
	.M_MEM25 = @ptrFromInt(0x6003d200),
	.M_MEM26 = @ptrFromInt(0x6003d200),
	.M_MEM27 = @ptrFromInt(0x6003d200),
	.M_MEM28 = @ptrFromInt(0x6003d200),
	.M_MEM29 = @ptrFromInt(0x6003d200),
	.M_MEM30 = @ptrFromInt(0x6003d200),
	.M_MEM31 = @ptrFromInt(0x6003d200),
	.M_MEM32 = @ptrFromInt(0x6003d200),
	.M_MEM33 = @ptrFromInt(0x6003d200),
	.M_MEM34 = @ptrFromInt(0x6003d200),
	.M_MEM35 = @ptrFromInt(0x6003d200),
	.M_MEM36 = @ptrFromInt(0x6003d200),
	.M_MEM37 = @ptrFromInt(0x6003d200),
	.M_MEM38 = @ptrFromInt(0x6003d200),
	.M_MEM39 = @ptrFromInt(0x6003d200),
	.M_MEM40 = @ptrFromInt(0x6003d200),
	.M_MEM41 = @ptrFromInt(0x6003d200),
	.M_MEM42 = @ptrFromInt(0x6003d200),
	.M_MEM43 = @ptrFromInt(0x6003d200),
	.M_MEM44 = @ptrFromInt(0x6003d200),
	.M_MEM45 = @ptrFromInt(0x6003d200),
	.M_MEM46 = @ptrFromInt(0x6003d200),
	.M_MEM47 = @ptrFromInt(0x6003d200),
	.M_MEM48 = @ptrFromInt(0x6003d200),
	.M_MEM49 = @ptrFromInt(0x6003d200),
	.M_MEM50 = @ptrFromInt(0x6003d200),
	.M_MEM51 = @ptrFromInt(0x6003d200),
	.M_MEM52 = @ptrFromInt(0x6003d200),
	.M_MEM53 = @ptrFromInt(0x6003d200),
	.M_MEM54 = @ptrFromInt(0x6003d200),
	.M_MEM55 = @ptrFromInt(0x6003d200),
	.M_MEM56 = @ptrFromInt(0x6003d200),
	.M_MEM57 = @ptrFromInt(0x6003d200),
	.M_MEM58 = @ptrFromInt(0x6003d200),
	.M_MEM59 = @ptrFromInt(0x6003d200),
	.M_MEM60 = @ptrFromInt(0x6003d200),
	.M_MEM61 = @ptrFromInt(0x6003d200),
	.M_MEM62 = @ptrFromInt(0x6003d200),
	.M_MEM63 = @ptrFromInt(0x6003d200),
	.M_MEM64 = @ptrFromInt(0x6003d200),
	.M_MEM65 = @ptrFromInt(0x6003d200),
	.M_MEM66 = @ptrFromInt(0x6003d200),
	.M_MEM67 = @ptrFromInt(0x6003d200),
	.M_MEM68 = @ptrFromInt(0x6003d200),
	.M_MEM69 = @ptrFromInt(0x6003d200),
	.M_MEM70 = @ptrFromInt(0x6003d200),
	.M_MEM71 = @ptrFromInt(0x6003d200),
	.M_MEM72 = @ptrFromInt(0x6003d200),
	.M_MEM73 = @ptrFromInt(0x6003d200),
	.M_MEM74 = @ptrFromInt(0x6003d200),
	.M_MEM75 = @ptrFromInt(0x6003d200),
	.M_MEM76 = @ptrFromInt(0x6003d200),
	.M_MEM77 = @ptrFromInt(0x6003d200),
	.M_MEM78 = @ptrFromInt(0x6003d200),
	.M_MEM79 = @ptrFromInt(0x6003d200),
	.M_MEM80 = @ptrFromInt(0x6003d200),
	.M_MEM81 = @ptrFromInt(0x6003d200),
	.M_MEM82 = @ptrFromInt(0x6003d200),
	.M_MEM83 = @ptrFromInt(0x6003d200),
	.M_MEM84 = @ptrFromInt(0x6003d200),
	.M_MEM85 = @ptrFromInt(0x6003d200),
	.M_MEM86 = @ptrFromInt(0x6003d200),
	.M_MEM87 = @ptrFromInt(0x6003d200),
	.M_MEM88 = @ptrFromInt(0x6003d200),
	.M_MEM89 = @ptrFromInt(0x6003d200),
	.M_MEM90 = @ptrFromInt(0x6003d200),
	.M_MEM91 = @ptrFromInt(0x6003d200),
	.M_MEM92 = @ptrFromInt(0x6003d200),
	.M_MEM93 = @ptrFromInt(0x6003d200),
	.M_MEM94 = @ptrFromInt(0x6003d200),
	.M_MEM95 = @ptrFromInt(0x6003d200),
	.M_MEM96 = @ptrFromInt(0x6003d200),
	.M_MEM97 = @ptrFromInt(0x6003d200),
	.M_MEM98 = @ptrFromInt(0x6003d200),
	.M_MEM99 = @ptrFromInt(0x6003d200),
	.M_MEM100 = @ptrFromInt(0x6003d200),
	.M_MEM101 = @ptrFromInt(0x6003d200),
	.M_MEM102 = @ptrFromInt(0x6003d200),
	.M_MEM103 = @ptrFromInt(0x6003d200),
	.M_MEM104 = @ptrFromInt(0x6003d200),
	.M_MEM105 = @ptrFromInt(0x6003d200),
	.M_MEM106 = @ptrFromInt(0x6003d200),
	.M_MEM107 = @ptrFromInt(0x6003d200),
	.M_MEM108 = @ptrFromInt(0x6003d200),
	.M_MEM109 = @ptrFromInt(0x6003d200),
	.M_MEM110 = @ptrFromInt(0x6003d200),
	.M_MEM111 = @ptrFromInt(0x6003d200),
	.M_MEM112 = @ptrFromInt(0x6003d200),
	.M_MEM113 = @ptrFromInt(0x6003d200),
	.M_MEM114 = @ptrFromInt(0x6003d200),
	.M_MEM115 = @ptrFromInt(0x6003d200),
	.M_MEM116 = @ptrFromInt(0x6003d200),
	.M_MEM117 = @ptrFromInt(0x6003d200),
	.M_MEM118 = @ptrFromInt(0x6003d200),
	.M_MEM119 = @ptrFromInt(0x6003d200),
	.M_MEM120 = @ptrFromInt(0x6003d200),
	.M_MEM121 = @ptrFromInt(0x6003d200),
	.M_MEM122 = @ptrFromInt(0x6003d200),
	.M_MEM123 = @ptrFromInt(0x6003d200),
	.M_MEM124 = @ptrFromInt(0x6003d200),
	.M_MEM125 = @ptrFromInt(0x6003d200),
	.M_MEM126 = @ptrFromInt(0x6003d200),
	.M_MEM127 = @ptrFromInt(0x6003d200),
	.RB_MEM0 = @ptrFromInt(0x6003d400),
	.RB_MEM1 = @ptrFromInt(0x6003d400),
	.RB_MEM2 = @ptrFromInt(0x6003d400),
	.RB_MEM3 = @ptrFromInt(0x6003d400),
	.RB_MEM4 = @ptrFromInt(0x6003d400),
	.RB_MEM5 = @ptrFromInt(0x6003d400),
	.RB_MEM6 = @ptrFromInt(0x6003d400),
	.RB_MEM7 = @ptrFromInt(0x6003d400),
	.RB_MEM8 = @ptrFromInt(0x6003d400),
	.RB_MEM9 = @ptrFromInt(0x6003d400),
	.RB_MEM10 = @ptrFromInt(0x6003d400),
	.RB_MEM11 = @ptrFromInt(0x6003d400),
	.RB_MEM12 = @ptrFromInt(0x6003d400),
	.RB_MEM13 = @ptrFromInt(0x6003d400),
	.RB_MEM14 = @ptrFromInt(0x6003d400),
	.RB_MEM15 = @ptrFromInt(0x6003d400),
	.RB_MEM16 = @ptrFromInt(0x6003d400),
	.RB_MEM17 = @ptrFromInt(0x6003d400),
	.RB_MEM18 = @ptrFromInt(0x6003d400),
	.RB_MEM19 = @ptrFromInt(0x6003d400),
	.RB_MEM20 = @ptrFromInt(0x6003d400),
	.RB_MEM21 = @ptrFromInt(0x6003d400),
	.RB_MEM22 = @ptrFromInt(0x6003d400),
	.RB_MEM23 = @ptrFromInt(0x6003d400),
	.RB_MEM24 = @ptrFromInt(0x6003d400),
	.RB_MEM25 = @ptrFromInt(0x6003d400),
	.RB_MEM26 = @ptrFromInt(0x6003d400),
	.RB_MEM27 = @ptrFromInt(0x6003d400),
	.RB_MEM28 = @ptrFromInt(0x6003d400),
	.RB_MEM29 = @ptrFromInt(0x6003d400),
	.RB_MEM30 = @ptrFromInt(0x6003d400),
	.RB_MEM31 = @ptrFromInt(0x6003d400),
	.RB_MEM32 = @ptrFromInt(0x6003d400),
	.RB_MEM33 = @ptrFromInt(0x6003d400),
	.RB_MEM34 = @ptrFromInt(0x6003d400),
	.RB_MEM35 = @ptrFromInt(0x6003d400),
	.RB_MEM36 = @ptrFromInt(0x6003d400),
	.RB_MEM37 = @ptrFromInt(0x6003d400),
	.RB_MEM38 = @ptrFromInt(0x6003d400),
	.RB_MEM39 = @ptrFromInt(0x6003d400),
	.RB_MEM40 = @ptrFromInt(0x6003d400),
	.RB_MEM41 = @ptrFromInt(0x6003d400),
	.RB_MEM42 = @ptrFromInt(0x6003d400),
	.RB_MEM43 = @ptrFromInt(0x6003d400),
	.RB_MEM44 = @ptrFromInt(0x6003d400),
	.RB_MEM45 = @ptrFromInt(0x6003d400),
	.RB_MEM46 = @ptrFromInt(0x6003d400),
	.RB_MEM47 = @ptrFromInt(0x6003d400),
	.RB_MEM48 = @ptrFromInt(0x6003d400),
	.RB_MEM49 = @ptrFromInt(0x6003d400),
	.RB_MEM50 = @ptrFromInt(0x6003d400),
	.RB_MEM51 = @ptrFromInt(0x6003d400),
	.RB_MEM52 = @ptrFromInt(0x6003d400),
	.RB_MEM53 = @ptrFromInt(0x6003d400),
	.RB_MEM54 = @ptrFromInt(0x6003d400),
	.RB_MEM55 = @ptrFromInt(0x6003d400),
	.RB_MEM56 = @ptrFromInt(0x6003d400),
	.RB_MEM57 = @ptrFromInt(0x6003d400),
	.RB_MEM58 = @ptrFromInt(0x6003d400),
	.RB_MEM59 = @ptrFromInt(0x6003d400),
	.RB_MEM60 = @ptrFromInt(0x6003d400),
	.RB_MEM61 = @ptrFromInt(0x6003d400),
	.RB_MEM62 = @ptrFromInt(0x6003d400),
	.RB_MEM63 = @ptrFromInt(0x6003d400),
	.RB_MEM64 = @ptrFromInt(0x6003d400),
	.RB_MEM65 = @ptrFromInt(0x6003d400),
	.RB_MEM66 = @ptrFromInt(0x6003d400),
	.RB_MEM67 = @ptrFromInt(0x6003d400),
	.RB_MEM68 = @ptrFromInt(0x6003d400),
	.RB_MEM69 = @ptrFromInt(0x6003d400),
	.RB_MEM70 = @ptrFromInt(0x6003d400),
	.RB_MEM71 = @ptrFromInt(0x6003d400),
	.RB_MEM72 = @ptrFromInt(0x6003d400),
	.RB_MEM73 = @ptrFromInt(0x6003d400),
	.RB_MEM74 = @ptrFromInt(0x6003d400),
	.RB_MEM75 = @ptrFromInt(0x6003d400),
	.RB_MEM76 = @ptrFromInt(0x6003d400),
	.RB_MEM77 = @ptrFromInt(0x6003d400),
	.RB_MEM78 = @ptrFromInt(0x6003d400),
	.RB_MEM79 = @ptrFromInt(0x6003d400),
	.RB_MEM80 = @ptrFromInt(0x6003d400),
	.RB_MEM81 = @ptrFromInt(0x6003d400),
	.RB_MEM82 = @ptrFromInt(0x6003d400),
	.RB_MEM83 = @ptrFromInt(0x6003d400),
	.RB_MEM84 = @ptrFromInt(0x6003d400),
	.RB_MEM85 = @ptrFromInt(0x6003d400),
	.RB_MEM86 = @ptrFromInt(0x6003d400),
	.RB_MEM87 = @ptrFromInt(0x6003d400),
	.RB_MEM88 = @ptrFromInt(0x6003d400),
	.RB_MEM89 = @ptrFromInt(0x6003d400),
	.RB_MEM90 = @ptrFromInt(0x6003d400),
	.RB_MEM91 = @ptrFromInt(0x6003d400),
	.RB_MEM92 = @ptrFromInt(0x6003d400),
	.RB_MEM93 = @ptrFromInt(0x6003d400),
	.RB_MEM94 = @ptrFromInt(0x6003d400),
	.RB_MEM95 = @ptrFromInt(0x6003d400),
	.RB_MEM96 = @ptrFromInt(0x6003d400),
	.RB_MEM97 = @ptrFromInt(0x6003d400),
	.RB_MEM98 = @ptrFromInt(0x6003d400),
	.RB_MEM99 = @ptrFromInt(0x6003d400),
	.RB_MEM100 = @ptrFromInt(0x6003d400),
	.RB_MEM101 = @ptrFromInt(0x6003d400),
	.RB_MEM102 = @ptrFromInt(0x6003d400),
	.RB_MEM103 = @ptrFromInt(0x6003d400),
	.RB_MEM104 = @ptrFromInt(0x6003d400),
	.RB_MEM105 = @ptrFromInt(0x6003d400),
	.RB_MEM106 = @ptrFromInt(0x6003d400),
	.RB_MEM107 = @ptrFromInt(0x6003d400),
	.RB_MEM108 = @ptrFromInt(0x6003d400),
	.RB_MEM109 = @ptrFromInt(0x6003d400),
	.RB_MEM110 = @ptrFromInt(0x6003d400),
	.RB_MEM111 = @ptrFromInt(0x6003d400),
	.RB_MEM112 = @ptrFromInt(0x6003d400),
	.RB_MEM113 = @ptrFromInt(0x6003d400),
	.RB_MEM114 = @ptrFromInt(0x6003d400),
	.RB_MEM115 = @ptrFromInt(0x6003d400),
	.RB_MEM116 = @ptrFromInt(0x6003d400),
	.RB_MEM117 = @ptrFromInt(0x6003d400),
	.RB_MEM118 = @ptrFromInt(0x6003d400),
	.RB_MEM119 = @ptrFromInt(0x6003d400),
	.RB_MEM120 = @ptrFromInt(0x6003d400),
	.RB_MEM121 = @ptrFromInt(0x6003d400),
	.RB_MEM122 = @ptrFromInt(0x6003d400),
	.RB_MEM123 = @ptrFromInt(0x6003d400),
	.RB_MEM124 = @ptrFromInt(0x6003d400),
	.RB_MEM125 = @ptrFromInt(0x6003d400),
	.RB_MEM126 = @ptrFromInt(0x6003d400),
	.RB_MEM127 = @ptrFromInt(0x6003d400),
	.BOX_MEM0 = @ptrFromInt(0x6003d600),
	.BOX_MEM1 = @ptrFromInt(0x6003d600),
	.BOX_MEM2 = @ptrFromInt(0x6003d600),
	.BOX_MEM3 = @ptrFromInt(0x6003d600),
	.BOX_MEM4 = @ptrFromInt(0x6003d600),
	.BOX_MEM5 = @ptrFromInt(0x6003d600),
	.BOX_MEM6 = @ptrFromInt(0x6003d600),
	.BOX_MEM7 = @ptrFromInt(0x6003d600),
	.BOX_MEM8 = @ptrFromInt(0x6003d600),
	.BOX_MEM9 = @ptrFromInt(0x6003d600),
	.BOX_MEM10 = @ptrFromInt(0x6003d600),
	.BOX_MEM11 = @ptrFromInt(0x6003d600),
	.X_MEM0 = @ptrFromInt(0x6003d800),
	.X_MEM1 = @ptrFromInt(0x6003d800),
	.X_MEM2 = @ptrFromInt(0x6003d800),
	.X_MEM3 = @ptrFromInt(0x6003d800),
	.X_MEM4 = @ptrFromInt(0x6003d800),
	.X_MEM5 = @ptrFromInt(0x6003d800),
	.X_MEM6 = @ptrFromInt(0x6003d800),
	.X_MEM7 = @ptrFromInt(0x6003d800),
	.X_MEM8 = @ptrFromInt(0x6003d800),
	.X_MEM9 = @ptrFromInt(0x6003d800),
	.X_MEM10 = @ptrFromInt(0x6003d800),
	.X_MEM11 = @ptrFromInt(0x6003d800),
	.X_MEM12 = @ptrFromInt(0x6003d800),
	.X_MEM13 = @ptrFromInt(0x6003d800),
	.X_MEM14 = @ptrFromInt(0x6003d800),
	.X_MEM15 = @ptrFromInt(0x6003d800),
	.X_MEM16 = @ptrFromInt(0x6003d800),
	.X_MEM17 = @ptrFromInt(0x6003d800),
	.X_MEM18 = @ptrFromInt(0x6003d800),
	.X_MEM19 = @ptrFromInt(0x6003d800),
	.X_MEM20 = @ptrFromInt(0x6003d800),
	.X_MEM21 = @ptrFromInt(0x6003d800),
	.X_MEM22 = @ptrFromInt(0x6003d800),
	.X_MEM23 = @ptrFromInt(0x6003d800),
	.X_MEM24 = @ptrFromInt(0x6003d800),
	.X_MEM25 = @ptrFromInt(0x6003d800),
	.X_MEM26 = @ptrFromInt(0x6003d800),
	.X_MEM27 = @ptrFromInt(0x6003d800),
	.X_MEM28 = @ptrFromInt(0x6003d800),
	.X_MEM29 = @ptrFromInt(0x6003d800),
	.X_MEM30 = @ptrFromInt(0x6003d800),
	.X_MEM31 = @ptrFromInt(0x6003d800),
	.X_MEM32 = @ptrFromInt(0x6003d800),
	.X_MEM33 = @ptrFromInt(0x6003d800),
	.X_MEM34 = @ptrFromInt(0x6003d800),
	.X_MEM35 = @ptrFromInt(0x6003d800),
	.X_MEM36 = @ptrFromInt(0x6003d800),
	.X_MEM37 = @ptrFromInt(0x6003d800),
	.X_MEM38 = @ptrFromInt(0x6003d800),
	.X_MEM39 = @ptrFromInt(0x6003d800),
	.X_MEM40 = @ptrFromInt(0x6003d800),
	.X_MEM41 = @ptrFromInt(0x6003d800),
	.X_MEM42 = @ptrFromInt(0x6003d800),
	.X_MEM43 = @ptrFromInt(0x6003d800),
	.X_MEM44 = @ptrFromInt(0x6003d800),
	.X_MEM45 = @ptrFromInt(0x6003d800),
	.X_MEM46 = @ptrFromInt(0x6003d800),
	.X_MEM47 = @ptrFromInt(0x6003d800),
	.X_MEM48 = @ptrFromInt(0x6003d800),
	.X_MEM49 = @ptrFromInt(0x6003d800),
	.X_MEM50 = @ptrFromInt(0x6003d800),
	.X_MEM51 = @ptrFromInt(0x6003d800),
	.X_MEM52 = @ptrFromInt(0x6003d800),
	.X_MEM53 = @ptrFromInt(0x6003d800),
	.X_MEM54 = @ptrFromInt(0x6003d800),
	.X_MEM55 = @ptrFromInt(0x6003d800),
	.X_MEM56 = @ptrFromInt(0x6003d800),
	.X_MEM57 = @ptrFromInt(0x6003d800),
	.X_MEM58 = @ptrFromInt(0x6003d800),
	.X_MEM59 = @ptrFromInt(0x6003d800),
	.X_MEM60 = @ptrFromInt(0x6003d800),
	.X_MEM61 = @ptrFromInt(0x6003d800),
	.X_MEM62 = @ptrFromInt(0x6003d800),
	.X_MEM63 = @ptrFromInt(0x6003d800),
	.X_MEM64 = @ptrFromInt(0x6003d800),
	.X_MEM65 = @ptrFromInt(0x6003d800),
	.X_MEM66 = @ptrFromInt(0x6003d800),
	.X_MEM67 = @ptrFromInt(0x6003d800),
	.X_MEM68 = @ptrFromInt(0x6003d800),
	.X_MEM69 = @ptrFromInt(0x6003d800),
	.X_MEM70 = @ptrFromInt(0x6003d800),
	.X_MEM71 = @ptrFromInt(0x6003d800),
	.X_MEM72 = @ptrFromInt(0x6003d800),
	.X_MEM73 = @ptrFromInt(0x6003d800),
	.X_MEM74 = @ptrFromInt(0x6003d800),
	.X_MEM75 = @ptrFromInt(0x6003d800),
	.X_MEM76 = @ptrFromInt(0x6003d800),
	.X_MEM77 = @ptrFromInt(0x6003d800),
	.X_MEM78 = @ptrFromInt(0x6003d800),
	.X_MEM79 = @ptrFromInt(0x6003d800),
	.X_MEM80 = @ptrFromInt(0x6003d800),
	.X_MEM81 = @ptrFromInt(0x6003d800),
	.X_MEM82 = @ptrFromInt(0x6003d800),
	.X_MEM83 = @ptrFromInt(0x6003d800),
	.X_MEM84 = @ptrFromInt(0x6003d800),
	.X_MEM85 = @ptrFromInt(0x6003d800),
	.X_MEM86 = @ptrFromInt(0x6003d800),
	.X_MEM87 = @ptrFromInt(0x6003d800),
	.X_MEM88 = @ptrFromInt(0x6003d800),
	.X_MEM89 = @ptrFromInt(0x6003d800),
	.X_MEM90 = @ptrFromInt(0x6003d800),
	.X_MEM91 = @ptrFromInt(0x6003d800),
	.X_MEM92 = @ptrFromInt(0x6003d800),
	.X_MEM93 = @ptrFromInt(0x6003d800),
	.X_MEM94 = @ptrFromInt(0x6003d800),
	.X_MEM95 = @ptrFromInt(0x6003d800),
	.X_MEM96 = @ptrFromInt(0x6003d800),
	.X_MEM97 = @ptrFromInt(0x6003d800),
	.X_MEM98 = @ptrFromInt(0x6003d800),
	.X_MEM99 = @ptrFromInt(0x6003d800),
	.X_MEM100 = @ptrFromInt(0x6003d800),
	.X_MEM101 = @ptrFromInt(0x6003d800),
	.X_MEM102 = @ptrFromInt(0x6003d800),
	.X_MEM103 = @ptrFromInt(0x6003d800),
	.X_MEM104 = @ptrFromInt(0x6003d800),
	.X_MEM105 = @ptrFromInt(0x6003d800),
	.X_MEM106 = @ptrFromInt(0x6003d800),
	.X_MEM107 = @ptrFromInt(0x6003d800),
	.X_MEM108 = @ptrFromInt(0x6003d800),
	.X_MEM109 = @ptrFromInt(0x6003d800),
	.X_MEM110 = @ptrFromInt(0x6003d800),
	.X_MEM111 = @ptrFromInt(0x6003d800),
	.X_MEM112 = @ptrFromInt(0x6003d800),
	.X_MEM113 = @ptrFromInt(0x6003d800),
	.X_MEM114 = @ptrFromInt(0x6003d800),
	.X_MEM115 = @ptrFromInt(0x6003d800),
	.X_MEM116 = @ptrFromInt(0x6003d800),
	.X_MEM117 = @ptrFromInt(0x6003d800),
	.X_MEM118 = @ptrFromInt(0x6003d800),
	.X_MEM119 = @ptrFromInt(0x6003d800),
	.X_MEM120 = @ptrFromInt(0x6003d800),
	.X_MEM121 = @ptrFromInt(0x6003d800),
	.X_MEM122 = @ptrFromInt(0x6003d800),
	.X_MEM123 = @ptrFromInt(0x6003d800),
	.X_MEM124 = @ptrFromInt(0x6003d800),
	.X_MEM125 = @ptrFromInt(0x6003d800),
	.X_MEM126 = @ptrFromInt(0x6003d800),
	.X_MEM127 = @ptrFromInt(0x6003d800),
	.Z_MEM0 = @ptrFromInt(0x6003da00),
	.Z_MEM1 = @ptrFromInt(0x6003da00),
	.Z_MEM2 = @ptrFromInt(0x6003da00),
	.Z_MEM3 = @ptrFromInt(0x6003da00),
	.Z_MEM4 = @ptrFromInt(0x6003da00),
	.Z_MEM5 = @ptrFromInt(0x6003da00),
	.Z_MEM6 = @ptrFromInt(0x6003da00),
	.Z_MEM7 = @ptrFromInt(0x6003da00),
	.Z_MEM8 = @ptrFromInt(0x6003da00),
	.Z_MEM9 = @ptrFromInt(0x6003da00),
	.Z_MEM10 = @ptrFromInt(0x6003da00),
	.Z_MEM11 = @ptrFromInt(0x6003da00),
	.Z_MEM12 = @ptrFromInt(0x6003da00),
	.Z_MEM13 = @ptrFromInt(0x6003da00),
	.Z_MEM14 = @ptrFromInt(0x6003da00),
	.Z_MEM15 = @ptrFromInt(0x6003da00),
	.Z_MEM16 = @ptrFromInt(0x6003da00),
	.Z_MEM17 = @ptrFromInt(0x6003da00),
	.Z_MEM18 = @ptrFromInt(0x6003da00),
	.Z_MEM19 = @ptrFromInt(0x6003da00),
	.Z_MEM20 = @ptrFromInt(0x6003da00),
	.Z_MEM21 = @ptrFromInt(0x6003da00),
	.Z_MEM22 = @ptrFromInt(0x6003da00),
	.Z_MEM23 = @ptrFromInt(0x6003da00),
	.Z_MEM24 = @ptrFromInt(0x6003da00),
	.Z_MEM25 = @ptrFromInt(0x6003da00),
	.Z_MEM26 = @ptrFromInt(0x6003da00),
	.Z_MEM27 = @ptrFromInt(0x6003da00),
	.Z_MEM28 = @ptrFromInt(0x6003da00),
	.Z_MEM29 = @ptrFromInt(0x6003da00),
	.Z_MEM30 = @ptrFromInt(0x6003da00),
	.Z_MEM31 = @ptrFromInt(0x6003da00),
	.Z_MEM32 = @ptrFromInt(0x6003da00),
	.Z_MEM33 = @ptrFromInt(0x6003da00),
	.Z_MEM34 = @ptrFromInt(0x6003da00),
	.Z_MEM35 = @ptrFromInt(0x6003da00),
	.Z_MEM36 = @ptrFromInt(0x6003da00),
	.Z_MEM37 = @ptrFromInt(0x6003da00),
	.Z_MEM38 = @ptrFromInt(0x6003da00),
	.Z_MEM39 = @ptrFromInt(0x6003da00),
	.Z_MEM40 = @ptrFromInt(0x6003da00),
	.Z_MEM41 = @ptrFromInt(0x6003da00),
	.Z_MEM42 = @ptrFromInt(0x6003da00),
	.Z_MEM43 = @ptrFromInt(0x6003da00),
	.Z_MEM44 = @ptrFromInt(0x6003da00),
	.Z_MEM45 = @ptrFromInt(0x6003da00),
	.Z_MEM46 = @ptrFromInt(0x6003da00),
	.Z_MEM47 = @ptrFromInt(0x6003da00),
	.Z_MEM48 = @ptrFromInt(0x6003da00),
	.Z_MEM49 = @ptrFromInt(0x6003da00),
	.Z_MEM50 = @ptrFromInt(0x6003da00),
	.Z_MEM51 = @ptrFromInt(0x6003da00),
	.Z_MEM52 = @ptrFromInt(0x6003da00),
	.Z_MEM53 = @ptrFromInt(0x6003da00),
	.Z_MEM54 = @ptrFromInt(0x6003da00),
	.Z_MEM55 = @ptrFromInt(0x6003da00),
	.Z_MEM56 = @ptrFromInt(0x6003da00),
	.Z_MEM57 = @ptrFromInt(0x6003da00),
	.Z_MEM58 = @ptrFromInt(0x6003da00),
	.Z_MEM59 = @ptrFromInt(0x6003da00),
	.Z_MEM60 = @ptrFromInt(0x6003da00),
	.Z_MEM61 = @ptrFromInt(0x6003da00),
	.Z_MEM62 = @ptrFromInt(0x6003da00),
	.Z_MEM63 = @ptrFromInt(0x6003da00),
	.Z_MEM64 = @ptrFromInt(0x6003da00),
	.Z_MEM65 = @ptrFromInt(0x6003da00),
	.Z_MEM66 = @ptrFromInt(0x6003da00),
	.Z_MEM67 = @ptrFromInt(0x6003da00),
	.Z_MEM68 = @ptrFromInt(0x6003da00),
	.Z_MEM69 = @ptrFromInt(0x6003da00),
	.Z_MEM70 = @ptrFromInt(0x6003da00),
	.Z_MEM71 = @ptrFromInt(0x6003da00),
	.Z_MEM72 = @ptrFromInt(0x6003da00),
	.Z_MEM73 = @ptrFromInt(0x6003da00),
	.Z_MEM74 = @ptrFromInt(0x6003da00),
	.Z_MEM75 = @ptrFromInt(0x6003da00),
	.Z_MEM76 = @ptrFromInt(0x6003da00),
	.Z_MEM77 = @ptrFromInt(0x6003da00),
	.Z_MEM78 = @ptrFromInt(0x6003da00),
	.Z_MEM79 = @ptrFromInt(0x6003da00),
	.Z_MEM80 = @ptrFromInt(0x6003da00),
	.Z_MEM81 = @ptrFromInt(0x6003da00),
	.Z_MEM82 = @ptrFromInt(0x6003da00),
	.Z_MEM83 = @ptrFromInt(0x6003da00),
	.Z_MEM84 = @ptrFromInt(0x6003da00),
	.Z_MEM85 = @ptrFromInt(0x6003da00),
	.Z_MEM86 = @ptrFromInt(0x6003da00),
	.Z_MEM87 = @ptrFromInt(0x6003da00),
	.Z_MEM88 = @ptrFromInt(0x6003da00),
	.Z_MEM89 = @ptrFromInt(0x6003da00),
	.Z_MEM90 = @ptrFromInt(0x6003da00),
	.Z_MEM91 = @ptrFromInt(0x6003da00),
	.Z_MEM92 = @ptrFromInt(0x6003da00),
	.Z_MEM93 = @ptrFromInt(0x6003da00),
	.Z_MEM94 = @ptrFromInt(0x6003da00),
	.Z_MEM95 = @ptrFromInt(0x6003da00),
	.Z_MEM96 = @ptrFromInt(0x6003da00),
	.Z_MEM97 = @ptrFromInt(0x6003da00),
	.Z_MEM98 = @ptrFromInt(0x6003da00),
	.Z_MEM99 = @ptrFromInt(0x6003da00),
	.Z_MEM100 = @ptrFromInt(0x6003da00),
	.Z_MEM101 = @ptrFromInt(0x6003da00),
	.Z_MEM102 = @ptrFromInt(0x6003da00),
	.Z_MEM103 = @ptrFromInt(0x6003da00),
	.Z_MEM104 = @ptrFromInt(0x6003da00),
	.Z_MEM105 = @ptrFromInt(0x6003da00),
	.Z_MEM106 = @ptrFromInt(0x6003da00),
	.Z_MEM107 = @ptrFromInt(0x6003da00),
	.Z_MEM108 = @ptrFromInt(0x6003da00),
	.Z_MEM109 = @ptrFromInt(0x6003da00),
	.Z_MEM110 = @ptrFromInt(0x6003da00),
	.Z_MEM111 = @ptrFromInt(0x6003da00),
	.Z_MEM112 = @ptrFromInt(0x6003da00),
	.Z_MEM113 = @ptrFromInt(0x6003da00),
	.Z_MEM114 = @ptrFromInt(0x6003da00),
	.Z_MEM115 = @ptrFromInt(0x6003da00),
	.Z_MEM116 = @ptrFromInt(0x6003da00),
	.Z_MEM117 = @ptrFromInt(0x6003da00),
	.Z_MEM118 = @ptrFromInt(0x6003da00),
	.Z_MEM119 = @ptrFromInt(0x6003da00),
	.Z_MEM120 = @ptrFromInt(0x6003da00),
	.Z_MEM121 = @ptrFromInt(0x6003da00),
	.Z_MEM122 = @ptrFromInt(0x6003da00),
	.Z_MEM123 = @ptrFromInt(0x6003da00),
	.Z_MEM124 = @ptrFromInt(0x6003da00),
	.Z_MEM125 = @ptrFromInt(0x6003da00),
	.Z_MEM126 = @ptrFromInt(0x6003da00),
	.Z_MEM127 = @ptrFromInt(0x6003da00),
	.SET_START = @ptrFromInt(0x6003de00),
	.SET_CONTINUE = @ptrFromInt(0x6003de04),
	.SET_FINISH = @ptrFromInt(0x6003de08),
	.QUERY_BUSY = @ptrFromInt(0x6003de0c),
	.QUERY_KEY_WRONG = @ptrFromInt(0x6003de10),
	.QUERY_CHECK = @ptrFromInt(0x6003de14),
	.DATE = @ptrFromInt(0x6003de20),
};

const EFUSE_PGM_DATA0 = packed struct {
	/// The content of the 0th 32-bit data to be programmed.
	PGM_DATA_0: u32,
};

const EFUSE_PGM_DATA1 = packed struct {
	/// The content of the 1st 32-bit data to be programmed.
	PGM_DATA_1: u32,
};

const EFUSE_PGM_DATA2 = packed struct {
	/// The content of the 2nd 32-bit data to be programmed.
	PGM_DATA_2: u32,
};

const EFUSE_PGM_DATA3 = packed struct {
	/// The content of the 3rd 32-bit data to be programmed.
	PGM_DATA_3: u32,
};

const EFUSE_PGM_DATA4 = packed struct {
	/// The content of the 4th 32-bit data to be programmed.
	PGM_DATA_4: u32,
};

const EFUSE_PGM_DATA5 = packed struct {
	/// The content of the 5th 32-bit data to be programmed.
	PGM_DATA_5: u32,
};

const EFUSE_PGM_DATA6 = packed struct {
	/// The content of the 6th 32-bit data to be programmed.
	PGM_DATA_6: u32,
};

const EFUSE_PGM_DATA7 = packed struct {
	/// The content of the 7th 32-bit data to be programmed.
	PGM_DATA_7: u32,
};

const EFUSE_PGM_CHECK_VALUE0 = packed struct {
	/// The content of the 0th 32-bit RS code to be programmed.
	PGM_RS_DATA_0: u32,
};

const EFUSE_PGM_CHECK_VALUE1 = packed struct {
	/// The content of the 1st 32-bit RS code to be programmed.
	PGM_RS_DATA_1: u32,
};

const EFUSE_PGM_CHECK_VALUE2 = packed struct {
	/// The content of the 2nd 32-bit RS code to be programmed.
	PGM_RS_DATA_2: u32,
};

const EFUSE_RD_WR_DIS = packed struct {
	/// Disable programming of individual eFuses.
	WR_DIS: u32,
};

const EFUSE_RD_REPEAT_DATA0 = packed struct {
	/// Set this bit to disable reading from BlOCK4-10.
	RD_DIS: u7,
	/// Set this bit to disable boot from RTC RAM.
	DIS_RTC_RAM_BOOT: u1,
	/// Set this bit to disable Icache.
	DIS_ICACHE: u1,
	/// Set this bit to disable function of usb switch to jtag in module of usb device.
	DIS_USB_JTAG: u1,
	/// Set this bit to disable Icache in download mode (boot_mode[3:0] is 0, 1, 2, 3, 6, 7).
	DIS_DOWNLOAD_ICACHE: u1,
	/// Set this bit to disable usb device.
	DIS_USB_DEVICE: u1,
	/// Set this bit to disable the function that forces chip into download mode.
	DIS_FORCE_DOWNLOAD: u1,
	/// Reserved (used for four backups method).
	RPT4_RESERVED6: u1,
	/// Set this bit to disable CAN function.
	DIS_CAN: u1,
	/// Set this bit to enable selection between usb_to_jtag and pad_to_jtag through strapping gpio10 when both reg_dis_usb_jtag and reg_dis_pad_jtag are equal to 0.
	JTAG_SEL_ENABLE: u1,
	/// Set these bits to disable JTAG in the soft way (odd number 1 means disable ). JTAG can be enabled in HMAC module.
	SOFT_DIS_JTAG: u3,
	/// Set this bit to disable JTAG in the hard way. JTAG is disabled permanently.
	DIS_PAD_JTAG: u1,
	/// Set this bit to disable flash encryption when in download boot modes.
	DIS_DOWNLOAD_MANUAL_ENCRYPT: u1,
	/// Controls single-end input threshold vrefh, 1.76 V to 2 V with step of 80 mV, stored in eFuse.
	USB_DREFH: u2,
	/// Controls single-end input threshold vrefl, 0.8 V to 1.04 V with step of 80 mV, stored in eFuse.
	USB_DREFL: u2,
	/// Set this bit to exchange USB D+ and D- pins.
	USB_EXCHG_PINS: u1,
	/// Set this bit to vdd spi pin function as gpio.
	VDD_SPI_AS_GPIO: u1,
	/// Enable btlc gpio.
	BTLC_GPIO_ENABLE: u2,
	/// Set this bit to enable power glitch function.
	POWERGLITCH_EN: u1,
	/// Sample delay configuration of power glitch.
	POWER_GLITCH_DSENSE: u2,
};

const EFUSE_RD_REPEAT_DATA1 = packed struct {
	/// Reserved (used for four backups method).
	RPT4_RESERVED2: u16,
	/// Selects RTC watchdog timeout threshold, in unit of slow clock cycle. 0: 40000. 1: 80000. 2: 160000. 3:320000.
	WDT_DELAY_SEL: u2,
	/// Set this bit to enable SPI boot encrypt/decrypt. Odd number of 1: enable. even number of 1: disable.
	SPI_BOOT_CRYPT_CNT: u3,
	/// Set this bit to enable revoking first secure boot key.
	SECURE_BOOT_KEY_REVOKE0: u1,
	/// Set this bit to enable revoking second secure boot key.
	SECURE_BOOT_KEY_REVOKE1: u1,
	/// Set this bit to enable revoking third secure boot key.
	SECURE_BOOT_KEY_REVOKE2: u1,
	/// Purpose of Key0.
	KEY_PURPOSE_0: u4,
	/// Purpose of Key1.
	KEY_PURPOSE_1: u4,
};

const EFUSE_RD_REPEAT_DATA2 = packed struct {
	/// Purpose of Key2.
	KEY_PURPOSE_2: u4,
	/// Purpose of Key3.
	KEY_PURPOSE_3: u4,
	/// Purpose of Key4.
	KEY_PURPOSE_4: u4,
	/// Purpose of Key5.
	KEY_PURPOSE_5: u4,
	/// Reserved (used for four backups method).
	RPT4_RESERVED3: u4,
	/// Set this bit to enable secure boot.
	SECURE_BOOT_EN: u1,
	/// Set this bit to enable revoking aggressive secure boot.
	SECURE_BOOT_AGGRESSIVE_REVOKE: u1,
	/// Reserved (used for four backups method).
	RPT4_RESERVED0: u6,
	/// Configures flash waiting time after power-up, in unit of ms. If the value is less than 15, the waiting time is the configurable value; Otherwise, the waiting time is twice the configurable value.
	FLASH_TPUW: u4,
};

const EFUSE_RD_REPEAT_DATA3 = packed struct {
	/// Set this bit to disable download mode (boot_mode[3:0] = 0, 1, 2, 3, 6, 7).
	DIS_DOWNLOAD_MODE: u1,
	/// Set this bit to disable Legacy SPI boot mode (boot_mode[3:0] = 4).
	DIS_LEGACY_SPI_BOOT: u1,
	/// Selectes the default UART print channel. 0: UART0. 1: UART1.
	UART_PRINT_CHANNEL: u1,
	/// Set ECC mode in ROM, 0: ROM would Enable Flash ECC 16to18 byte mode. 1:ROM would use 16to17 byte mode.
	FLASH_ECC_MODE: u1,
	/// Set this bit to disable UART download mode through USB.
	DIS_USB_DOWNLOAD_MODE: u1,
	/// Set this bit to enable secure UART download mode.
	ENABLE_SECURITY_DOWNLOAD: u1,
	/// Set the default UARTboot message output mode. 00: Enabled. 01: Enabled when GPIO8 is low at reset. 10: Enabled when GPIO8 is high at reset. 11:disabled.
	UART_PRINT_CONTROL: u2,
	/// GPIO33-GPIO37 power supply selection in ROM code. 0: VDD3P3_CPU. 1: VDD_SPI.
	PIN_POWER_SELECTION: u1,
	/// Set the maximum lines of SPI flash. 0: four lines. 1: eight lines.
	FLASH_TYPE: u1,
	/// Set Flash page size.
	FLASH_PAGE_SIZE: u2,
	/// Set 1 to enable ECC for flash boot.
	FLASH_ECC_EN: u1,
	/// Set this bit to force ROM code to send a resume command during SPI boot.
	FORCE_SEND_RESUME: u1,
	/// Secure version (used by ESP-IDF anti-rollback feature).
	SECURE_VERSION: u16,
	/// Reserved (used for four backups method).
	RPT4_RESERVED1: u2,
};

const EFUSE_RD_REPEAT_DATA4 = packed struct {
	/// Reserved (used for four backups method).
	RPT4_RESERVED4: u24,
	reserved0: u8,
};

const EFUSE_RD_MAC_SPI_SYS_0 = packed struct {
	/// Stores the low 32 bits of MAC address.
	MAC_0: u32,
};

const EFUSE_RD_MAC_SPI_SYS_1 = packed struct {
	/// Stores the high 16 bits of MAC address.
	MAC_1: u16,
	/// Stores the zeroth part of SPI_PAD_CONF.
	SPI_PAD_CONF_0: u16,
};

const EFUSE_RD_MAC_SPI_SYS_2 = packed struct {
	/// Stores the first part of SPI_PAD_CONF.
	SPI_PAD_CONF_1: u32,
};

const EFUSE_RD_MAC_SPI_SYS_3 = packed struct {
	/// Stores the second part of SPI_PAD_CONF.
	SPI_PAD_CONF_2: u18,
	/// Stores the fist 14 bits of the zeroth part of system data.
	SYS_DATA_PART0_0: u14,
};

const EFUSE_RD_MAC_SPI_SYS_4 = packed struct {
	/// Stores the fist 32 bits of the zeroth part of system data.
	SYS_DATA_PART0_1: u32,
};

const EFUSE_RD_MAC_SPI_SYS_5 = packed struct {
	/// Stores the second 32 bits of the zeroth part of system data.
	SYS_DATA_PART0_2: u32,
};

const EFUSE_RD_SYS_PART1_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of the first part of system data.
	SYS_DATA_PART1_0: u32,
};

const EFUSE_RD_SYS_PART1_DATA1 = packed struct {
	/// Stores the first 32 bits of the first part of system data.
	SYS_DATA_PART1_1: u32,
};

const EFUSE_RD_SYS_PART1_DATA2 = packed struct {
	/// Stores the second 32 bits of the first part of system data.
	SYS_DATA_PART1_2: u32,
};

const EFUSE_RD_SYS_PART1_DATA3 = packed struct {
	/// Stores the third 32 bits of the first part of system data.
	SYS_DATA_PART1_3: u32,
};

const EFUSE_RD_SYS_PART1_DATA4 = packed struct {
	/// Stores the fourth 32 bits of the first part of system data.
	SYS_DATA_PART1_4: u32,
};

const EFUSE_RD_SYS_PART1_DATA5 = packed struct {
	/// Stores the fifth 32 bits of the first part of system data.
	SYS_DATA_PART1_5: u32,
};

const EFUSE_RD_SYS_PART1_DATA6 = packed struct {
	/// Stores the sixth 32 bits of the first part of system data.
	SYS_DATA_PART1_6: u32,
};

const EFUSE_RD_SYS_PART1_DATA7 = packed struct {
	/// Stores the seventh 32 bits of the first part of system data.
	SYS_DATA_PART1_7: u32,
};

const EFUSE_RD_USR_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of BLOCK3 (user).
	USR_DATA0: u32,
};

const EFUSE_RD_USR_DATA1 = packed struct {
	/// Stores the first 32 bits of BLOCK3 (user).
	USR_DATA1: u32,
};

const EFUSE_RD_USR_DATA2 = packed struct {
	/// Stores the second 32 bits of BLOCK3 (user).
	USR_DATA2: u32,
};

const EFUSE_RD_USR_DATA3 = packed struct {
	/// Stores the third 32 bits of BLOCK3 (user).
	USR_DATA3: u32,
};

const EFUSE_RD_USR_DATA4 = packed struct {
	/// Stores the fourth 32 bits of BLOCK3 (user).
	USR_DATA4: u32,
};

const EFUSE_RD_USR_DATA5 = packed struct {
	/// Stores the fifth 32 bits of BLOCK3 (user).
	USR_DATA5: u32,
};

const EFUSE_RD_USR_DATA6 = packed struct {
	/// Stores the sixth 32 bits of BLOCK3 (user).
	USR_DATA6: u32,
};

const EFUSE_RD_USR_DATA7 = packed struct {
	/// Stores the seventh 32 bits of BLOCK3 (user).
	USR_DATA7: u32,
};

const EFUSE_RD_KEY0_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of KEY0.
	KEY0_DATA0: u32,
};

const EFUSE_RD_KEY0_DATA1 = packed struct {
	/// Stores the first 32 bits of KEY0.
	KEY0_DATA1: u32,
};

const EFUSE_RD_KEY0_DATA2 = packed struct {
	/// Stores the second 32 bits of KEY0.
	KEY0_DATA2: u32,
};

const EFUSE_RD_KEY0_DATA3 = packed struct {
	/// Stores the third 32 bits of KEY0.
	KEY0_DATA3: u32,
};

const EFUSE_RD_KEY0_DATA4 = packed struct {
	/// Stores the fourth 32 bits of KEY0.
	KEY0_DATA4: u32,
};

const EFUSE_RD_KEY0_DATA5 = packed struct {
	/// Stores the fifth 32 bits of KEY0.
	KEY0_DATA5: u32,
};

const EFUSE_RD_KEY0_DATA6 = packed struct {
	/// Stores the sixth 32 bits of KEY0.
	KEY0_DATA6: u32,
};

const EFUSE_RD_KEY0_DATA7 = packed struct {
	/// Stores the seventh 32 bits of KEY0.
	KEY0_DATA7: u32,
};

const EFUSE_RD_KEY1_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of KEY1.
	KEY1_DATA0: u32,
};

const EFUSE_RD_KEY1_DATA1 = packed struct {
	/// Stores the first 32 bits of KEY1.
	KEY1_DATA1: u32,
};

const EFUSE_RD_KEY1_DATA2 = packed struct {
	/// Stores the second 32 bits of KEY1.
	KEY1_DATA2: u32,
};

const EFUSE_RD_KEY1_DATA3 = packed struct {
	/// Stores the third 32 bits of KEY1.
	KEY1_DATA3: u32,
};

const EFUSE_RD_KEY1_DATA4 = packed struct {
	/// Stores the fourth 32 bits of KEY1.
	KEY1_DATA4: u32,
};

const EFUSE_RD_KEY1_DATA5 = packed struct {
	/// Stores the fifth 32 bits of KEY1.
	KEY1_DATA5: u32,
};

const EFUSE_RD_KEY1_DATA6 = packed struct {
	/// Stores the sixth 32 bits of KEY1.
	KEY1_DATA6: u32,
};

const EFUSE_RD_KEY1_DATA7 = packed struct {
	/// Stores the seventh 32 bits of KEY1.
	KEY1_DATA7: u32,
};

const EFUSE_RD_KEY2_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of KEY2.
	KEY2_DATA0: u32,
};

const EFUSE_RD_KEY2_DATA1 = packed struct {
	/// Stores the first 32 bits of KEY2.
	KEY2_DATA1: u32,
};

const EFUSE_RD_KEY2_DATA2 = packed struct {
	/// Stores the second 32 bits of KEY2.
	KEY2_DATA2: u32,
};

const EFUSE_RD_KEY2_DATA3 = packed struct {
	/// Stores the third 32 bits of KEY2.
	KEY2_DATA3: u32,
};

const EFUSE_RD_KEY2_DATA4 = packed struct {
	/// Stores the fourth 32 bits of KEY2.
	KEY2_DATA4: u32,
};

const EFUSE_RD_KEY2_DATA5 = packed struct {
	/// Stores the fifth 32 bits of KEY2.
	KEY2_DATA5: u32,
};

const EFUSE_RD_KEY2_DATA6 = packed struct {
	/// Stores the sixth 32 bits of KEY2.
	KEY2_DATA6: u32,
};

const EFUSE_RD_KEY2_DATA7 = packed struct {
	/// Stores the seventh 32 bits of KEY2.
	KEY2_DATA7: u32,
};

const EFUSE_RD_KEY3_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of KEY3.
	KEY3_DATA0: u32,
};

const EFUSE_RD_KEY3_DATA1 = packed struct {
	/// Stores the first 32 bits of KEY3.
	KEY3_DATA1: u32,
};

const EFUSE_RD_KEY3_DATA2 = packed struct {
	/// Stores the second 32 bits of KEY3.
	KEY3_DATA2: u32,
};

const EFUSE_RD_KEY3_DATA3 = packed struct {
	/// Stores the third 32 bits of KEY3.
	KEY3_DATA3: u32,
};

const EFUSE_RD_KEY3_DATA4 = packed struct {
	/// Stores the fourth 32 bits of KEY3.
	KEY3_DATA4: u32,
};

const EFUSE_RD_KEY3_DATA5 = packed struct {
	/// Stores the fifth 32 bits of KEY3.
	KEY3_DATA5: u32,
};

const EFUSE_RD_KEY3_DATA6 = packed struct {
	/// Stores the sixth 32 bits of KEY3.
	KEY3_DATA6: u32,
};

const EFUSE_RD_KEY3_DATA7 = packed struct {
	/// Stores the seventh 32 bits of KEY3.
	KEY3_DATA7: u32,
};

const EFUSE_RD_KEY4_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of KEY4.
	KEY4_DATA0: u32,
};

const EFUSE_RD_KEY4_DATA1 = packed struct {
	/// Stores the first 32 bits of KEY4.
	KEY4_DATA1: u32,
};

const EFUSE_RD_KEY4_DATA2 = packed struct {
	/// Stores the second 32 bits of KEY4.
	KEY4_DATA2: u32,
};

const EFUSE_RD_KEY4_DATA3 = packed struct {
	/// Stores the third 32 bits of KEY4.
	KEY4_DATA3: u32,
};

const EFUSE_RD_KEY4_DATA4 = packed struct {
	/// Stores the fourth 32 bits of KEY4.
	KEY4_DATA4: u32,
};

const EFUSE_RD_KEY4_DATA5 = packed struct {
	/// Stores the fifth 32 bits of KEY4.
	KEY4_DATA5: u32,
};

const EFUSE_RD_KEY4_DATA6 = packed struct {
	/// Stores the sixth 32 bits of KEY4.
	KEY4_DATA6: u32,
};

const EFUSE_RD_KEY4_DATA7 = packed struct {
	/// Stores the seventh 32 bits of KEY4.
	KEY4_DATA7: u32,
};

const EFUSE_RD_KEY5_DATA0 = packed struct {
	/// Stores the zeroth 32 bits of KEY5.
	KEY5_DATA0: u32,
};

const EFUSE_RD_KEY5_DATA1 = packed struct {
	/// Stores the first 32 bits of KEY5.
	KEY5_DATA1: u32,
};

const EFUSE_RD_KEY5_DATA2 = packed struct {
	/// Stores the second 32 bits of KEY5.
	KEY5_DATA2: u32,
};

const EFUSE_RD_KEY5_DATA3 = packed struct {
	/// Stores the third 32 bits of KEY5.
	KEY5_DATA3: u32,
};

const EFUSE_RD_KEY5_DATA4 = packed struct {
	/// Stores the fourth 32 bits of KEY5.
	KEY5_DATA4: u32,
};

const EFUSE_RD_KEY5_DATA5 = packed struct {
	/// Stores the fifth 32 bits of KEY5.
	KEY5_DATA5: u32,
};

const EFUSE_RD_KEY5_DATA6 = packed struct {
	/// Stores the sixth 32 bits of KEY5.
	KEY5_DATA6: u32,
};

const EFUSE_RD_KEY5_DATA7 = packed struct {
	/// Stores the seventh 32 bits of KEY5.
	KEY5_DATA7: u32,
};

const EFUSE_RD_SYS_PART2_DATA0 = packed struct {
	/// Stores the 0th 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_0: u32,
};

const EFUSE_RD_SYS_PART2_DATA1 = packed struct {
	/// Stores the 1st 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_1: u32,
};

const EFUSE_RD_SYS_PART2_DATA2 = packed struct {
	/// Stores the 2nd 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_2: u32,
};

const EFUSE_RD_SYS_PART2_DATA3 = packed struct {
	/// Stores the 3rd 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_3: u32,
};

const EFUSE_RD_SYS_PART2_DATA4 = packed struct {
	/// Stores the 4th 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_4: u32,
};

const EFUSE_RD_SYS_PART2_DATA5 = packed struct {
	/// Stores the 5th 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_5: u32,
};

const EFUSE_RD_SYS_PART2_DATA6 = packed struct {
	/// Stores the 6th 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_6: u32,
};

const EFUSE_RD_SYS_PART2_DATA7 = packed struct {
	/// Stores the 7th 32 bits of the 2nd part of system data.
	SYS_DATA_PART2_7: u32,
};

const EFUSE_RD_REPEAT_ERR0 = packed struct {
	/// If any bit in RD_DIS is 1, then it indicates a programming error.
	RD_DIS_ERR: u7,
	/// If DIS_RTC_RAM_BOOT is 1, then it indicates a programming error.
	DIS_RTC_RAM_BOOT_ERR: u1,
	/// If DIS_ICACHE is 1, then it indicates a programming error.
	DIS_ICACHE_ERR: u1,
	/// If DIS_USB_JTAG is 1, then it indicates a programming error.
	DIS_USB_JTAG_ERR: u1,
	/// If DIS_DOWNLOAD_ICACHE is 1, then it indicates a programming error.
	DIS_DOWNLOAD_ICACHE_ERR: u1,
	/// If DIS_USB_DEVICE is 1, then it indicates a programming error.
	DIS_USB_DEVICE_ERR: u1,
	/// If DIS_FORCE_DOWNLOAD is 1, then it indicates a programming error.
	DIS_FORCE_DOWNLOAD_ERR: u1,
	/// Reserved.
	RPT4_RESERVED6_ERR: u1,
	/// If DIS_CAN is 1, then it indicates a programming error.
	DIS_CAN_ERR: u1,
	/// If JTAG_SEL_ENABLE is 1, then it indicates a programming error.
	JTAG_SEL_ENABLE_ERR: u1,
	/// If SOFT_DIS_JTAG is 1, then it indicates a programming error.
	SOFT_DIS_JTAG_ERR: u3,
	/// If DIS_PAD_JTAG is 1, then it indicates a programming error.
	DIS_PAD_JTAG_ERR: u1,
	/// If DIS_DOWNLOAD_MANUAL_ENCRYPT is 1, then it indicates a programming error.
	DIS_DOWNLOAD_MANUAL_ENCRYPT_ERR: u1,
	/// If any bit in USB_DREFH is 1, then it indicates a programming error.
	USB_DREFH_ERR: u2,
	/// If any bit in USB_DREFL is 1, then it indicates a programming error.
	USB_DREFL_ERR: u2,
	/// If USB_EXCHG_PINS is 1, then it indicates a programming error.
	USB_EXCHG_PINS_ERR: u1,
	/// If VDD_SPI_AS_GPIO is 1, then it indicates a programming error.
	VDD_SPI_AS_GPIO_ERR: u1,
	/// If any bit in BTLC_GPIO_ENABLE is 1, then it indicates a programming error.
	BTLC_GPIO_ENABLE_ERR: u2,
	/// If POWERGLITCH_EN is 1, then it indicates a programming error.
	POWERGLITCH_EN_ERR: u1,
	/// If any bit in POWER_GLITCH_DSENSE is 1, then it indicates a programming error.
	POWER_GLITCH_DSENSE_ERR: u2,
};

const EFUSE_RD_REPEAT_ERR1 = packed struct {
	/// Reserved.
	RPT4_RESERVED2_ERR: u16,
	/// If any bit in WDT_DELAY_SEL is 1, then it indicates a programming error.
	WDT_DELAY_SEL_ERR: u2,
	/// If any bit in SPI_BOOT_CRYPT_CNT is 1, then it indicates a programming error.
	SPI_BOOT_CRYPT_CNT_ERR: u3,
	/// If SECURE_BOOT_KEY_REVOKE0 is 1, then it indicates a programming error.
	SECURE_BOOT_KEY_REVOKE0_ERR: u1,
	/// If SECURE_BOOT_KEY_REVOKE1 is 1, then it indicates a programming error.
	SECURE_BOOT_KEY_REVOKE1_ERR: u1,
	/// If SECURE_BOOT_KEY_REVOKE2 is 1, then it indicates a programming error.
	SECURE_BOOT_KEY_REVOKE2_ERR: u1,
	/// If any bit in KEY_PURPOSE_0 is 1, then it indicates a programming error.
	KEY_PURPOSE_0_ERR: u4,
	/// If any bit in KEY_PURPOSE_1 is 1, then it indicates a programming error.
	KEY_PURPOSE_1_ERR: u4,
};

const EFUSE_RD_REPEAT_ERR2 = packed struct {
	/// If any bit in KEY_PURPOSE_2 is 1, then it indicates a programming error.
	KEY_PURPOSE_2_ERR: u4,
	/// If any bit in KEY_PURPOSE_3 is 1, then it indicates a programming error.
	KEY_PURPOSE_3_ERR: u4,
	/// If any bit in KEY_PURPOSE_4 is 1, then it indicates a programming error.
	KEY_PURPOSE_4_ERR: u4,
	/// If any bit in KEY_PURPOSE_5 is 1, then it indicates a programming error.
	KEY_PURPOSE_5_ERR: u4,
	/// Reserved.
	RPT4_RESERVED3_ERR: u4,
	/// If SECURE_BOOT_EN is 1, then it indicates a programming error.
	SECURE_BOOT_EN_ERR: u1,
	/// If SECURE_BOOT_AGGRESSIVE_REVOKE is 1, then it indicates a programming error.
	SECURE_BOOT_AGGRESSIVE_REVOKE_ERR: u1,
	/// Reserved.
	RPT4_RESERVED0_ERR: u6,
	/// If any bit in FLASH_TPUM is 1, then it indicates a programming error.
	FLASH_TPUW_ERR: u4,
};

const EFUSE_RD_REPEAT_ERR3 = packed struct {
	/// If DIS_DOWNLOAD_MODE is 1, then it indicates a programming error.
	DIS_DOWNLOAD_MODE_ERR: u1,
	/// If DIS_LEGACY_SPI_BOOT is 1, then it indicates a programming error.
	DIS_LEGACY_SPI_BOOT_ERR: u1,
	/// If UART_PRINT_CHANNEL is 1, then it indicates a programming error.
	UART_PRINT_CHANNEL_ERR: u1,
	/// If FLASH_ECC_MODE is 1, then it indicates a programming error.
	FLASH_ECC_MODE_ERR: u1,
	/// If DIS_USB_DOWNLOAD_MODE is 1, then it indicates a programming error.
	DIS_USB_DOWNLOAD_MODE_ERR: u1,
	/// If ENABLE_SECURITY_DOWNLOAD is 1, then it indicates a programming error.
	ENABLE_SECURITY_DOWNLOAD_ERR: u1,
	/// If any bit in UART_PRINT_CONTROL is 1, then it indicates a programming error.
	UART_PRINT_CONTROL_ERR: u2,
	/// If PIN_POWER_SELECTION is 1, then it indicates a programming error.
	PIN_POWER_SELECTION_ERR: u1,
	/// If FLASH_TYPE is 1, then it indicates a programming error.
	FLASH_TYPE_ERR: u1,
	/// If any bits in FLASH_PAGE_SIZE is 1, then it indicates a programming error.
	FLASH_PAGE_SIZE_ERR: u2,
	/// If FLASH_ECC_EN_ERR is 1, then it indicates a programming error.
	FLASH_ECC_EN_ERR: u1,
	/// If FORCE_SEND_RESUME is 1, then it indicates a programming error.
	FORCE_SEND_RESUME_ERR: u1,
	/// If any bit in SECURE_VERSION is 1, then it indicates a programming error.
	SECURE_VERSION_ERR: u16,
	/// Reserved.
	RPT4_RESERVED1_ERR: u2,
};

const EFUSE_RD_REPEAT_ERR4 = packed struct {
	/// Reserved.
	RPT4_RESERVED4_ERR: u24,
	reserved0: u8,
};

const EFUSE_RD_RS_ERR0 = packed struct {
	/// The value of this signal means the number of error bytes.
	MAC_SPI_8M_ERR_NUM: u3,
	/// 0: Means no failure and that the data of MAC_SPI_8M is reliable 1: Means that programming user data failed and the number of error bytes is over 6.
	MAC_SPI_8M_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	SYS_PART1_NUM: u3,
	/// 0: Means no failure and that the data of system part1 is reliable 1: Means that programming user data failed and the number of error bytes is over 6.
	SYS_PART1_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	USR_DATA_ERR_NUM: u3,
	/// 0: Means no failure and that the user data is reliable 1: Means that programming user data failed and the number of error bytes is over 6.
	USR_DATA_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	KEY0_ERR_NUM: u3,
	/// 0: Means no failure and that the data of key0 is reliable 1: Means that programming key0 failed and the number of error bytes is over 6.
	KEY0_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	KEY1_ERR_NUM: u3,
	/// 0: Means no failure and that the data of key1 is reliable 1: Means that programming key1 failed and the number of error bytes is over 6.
	KEY1_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	KEY2_ERR_NUM: u3,
	/// 0: Means no failure and that the data of key2 is reliable 1: Means that programming key2 failed and the number of error bytes is over 6.
	KEY2_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	KEY3_ERR_NUM: u3,
	/// 0: Means no failure and that the data of key3 is reliable 1: Means that programming key3 failed and the number of error bytes is over 6.
	KEY3_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	KEY4_ERR_NUM: u3,
	/// 0: Means no failure and that the data of key4 is reliable 1: Means that programming key4 failed and the number of error bytes is over 6.
	KEY4_FAIL: u1,
};

const EFUSE_RD_RS_ERR1 = packed struct {
	/// The value of this signal means the number of error bytes.
	KEY5_ERR_NUM: u3,
	/// 0: Means no failure and that the data of KEY5 is reliable 1: Means that programming user data failed and the number of error bytes is over 6.
	KEY5_FAIL: u1,
	/// The value of this signal means the number of error bytes.
	SYS_PART2_ERR_NUM: u3,
	/// 0: Means no failure and that the data of system part2 is reliable 1: Means that programming user data failed and the number of error bytes is over 6.
	SYS_PART2_FAIL: u1,
	reserved0: u24,
};

const EFUSE_CLK = packed struct {
	/// Set this bit to force eFuse SRAM into power-saving mode.
	EFUSE_MEM_FORCE_PD: u1,
	/// Set this bit and force to activate clock signal of eFuse SRAM.
	MEM_CLK_FORCE_ON: u1,
	/// Set this bit to force eFuse SRAM into working mode.
	EFUSE_MEM_FORCE_PU: u1,
	reserved0: u13,
	/// Set this bit and force to enable clock signal of eFuse memory.
	EN: u1,
	reserved1: u15,
};

const EFUSE_CONF = packed struct {
	/// 0x5A5A: Operate programming command 0x5AA5: Operate read command.
	OP_CODE: u16,
	reserved0: u16,
};

const EFUSE_STATUS = packed struct {
	/// Indicates the state of the eFuse state machine.
	STATE: u4,
	/// The value of OTP_LOAD_SW.
	OTP_LOAD_SW: u1,
	/// The value of OTP_VDDQ_C_SYNC2.
	OTP_VDDQ_C_SYNC2: u1,
	/// The value of OTP_STROBE_SW.
	OTP_STROBE_SW: u1,
	/// The value of OTP_CSB_SW.
	OTP_CSB_SW: u1,
	/// The value of OTP_PGENB_SW.
	OTP_PGENB_SW: u1,
	/// The value of OTP_VDDQ_IS_SW.
	OTP_VDDQ_IS_SW: u1,
	/// Indicates the number of error bits during programming BLOCK0.
	REPEAT_ERR_CNT: u8,
	reserved0: u14,
};

const EFUSE_CMD = packed struct {
	/// Set this bit to send read command.
	READ_CMD: u1,
	/// Set this bit to send programming command.
	PGM_CMD: u1,
	/// The serial number of the block to be programmed. Value 0-10 corresponds to block number 0-10, respectively.
	BLK_NUM: u4,
	reserved0: u26,
};

const EFUSE_INT_RAW = packed struct {
	/// The raw bit signal for read_done interrupt.
	READ_DONE_INT_RAW: u1,
	/// The raw bit signal for pgm_done interrupt.
	PGM_DONE_INT_RAW: u1,
	reserved0: u30,
};

const EFUSE_INT_ST = packed struct {
	/// The status signal for read_done interrupt.
	READ_DONE_INT_ST: u1,
	/// The status signal for pgm_done interrupt.
	PGM_DONE_INT_ST: u1,
	reserved0: u30,
};

const EFUSE_INT_ENA = packed struct {
	/// The enable signal for read_done interrupt.
	READ_DONE_INT_ENA: u1,
	/// The enable signal for pgm_done interrupt.
	PGM_DONE_INT_ENA: u1,
	reserved0: u30,
};

const EFUSE_INT_CLR = packed struct {
	/// The clear signal for read_done interrupt.
	READ_DONE_INT_CLR: u1,
	/// The clear signal for pgm_done interrupt.
	PGM_DONE_INT_CLR: u1,
	reserved0: u30,
};

const EFUSE_DAC_CONF = packed struct {
	/// Controls the division factor of the rising clock of the programming voltage.
	DAC_CLK_DIV: u8,
	/// Don't care.
	DAC_CLK_PAD_SEL: u1,
	/// Controls the rising period of the programming voltage.
	DAC_NUM: u8,
	/// Reduces the power supply of the programming voltage.
	OE_CLR: u1,
	reserved0: u14,
};

const EFUSE_RD_TIM_CONF = packed struct {
	reserved0: u24,
	/// Configures the initial read time of eFuse.
	READ_INIT_NUM: u8,
};

const EFUSE_WR_TIM_CONF1 = packed struct {
	reserved0: u8,
	/// Configures the power up time for VDDQ.
	PWR_ON_NUM: u16,
	reserved1: u8,
};

const EFUSE_WR_TIM_CONF2 = packed struct {
	/// Configures the power outage time for VDDQ.
	PWR_OFF_NUM: u16,
	reserved0: u16,
};

const EFUSE_DATE = packed struct {
	/// Stores eFuse version.
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const EFUSE = struct {
	/// Register 0 that stores data to be programmed.
	PGM_DATA0: *volatile Register(EFUSE_PGM_DATA0),
	/// Register 1 that stores data to be programmed.
	PGM_DATA1: *volatile Register(EFUSE_PGM_DATA1),
	/// Register 2 that stores data to be programmed.
	PGM_DATA2: *volatile Register(EFUSE_PGM_DATA2),
	/// Register 3 that stores data to be programmed.
	PGM_DATA3: *volatile Register(EFUSE_PGM_DATA3),
	/// Register 4 that stores data to be programmed.
	PGM_DATA4: *volatile Register(EFUSE_PGM_DATA4),
	/// Register 5 that stores data to be programmed.
	PGM_DATA5: *volatile Register(EFUSE_PGM_DATA5),
	/// Register 6 that stores data to be programmed.
	PGM_DATA6: *volatile Register(EFUSE_PGM_DATA6),
	/// Register 7 that stores data to be programmed.
	PGM_DATA7: *volatile Register(EFUSE_PGM_DATA7),
	/// Register 0 that stores the RS code to be programmed.
	PGM_CHECK_VALUE0: *volatile Register(EFUSE_PGM_CHECK_VALUE0),
	/// Register 1 that stores the RS code to be programmed.
	PGM_CHECK_VALUE1: *volatile Register(EFUSE_PGM_CHECK_VALUE1),
	/// Register 2 that stores the RS code to be programmed.
	PGM_CHECK_VALUE2: *volatile Register(EFUSE_PGM_CHECK_VALUE2),
	/// BLOCK0 data register 0.
	RD_WR_DIS: *volatile Register(EFUSE_RD_WR_DIS),
	/// BLOCK0 data register 1.
	RD_REPEAT_DATA0: *volatile Register(EFUSE_RD_REPEAT_DATA0),
	/// BLOCK0 data register 2.
	RD_REPEAT_DATA1: *volatile Register(EFUSE_RD_REPEAT_DATA1),
	/// BLOCK0 data register 3.
	RD_REPEAT_DATA2: *volatile Register(EFUSE_RD_REPEAT_DATA2),
	/// BLOCK0 data register 4.
	RD_REPEAT_DATA3: *volatile Register(EFUSE_RD_REPEAT_DATA3),
	/// BLOCK0 data register 5.
	RD_REPEAT_DATA4: *volatile Register(EFUSE_RD_REPEAT_DATA4),
	/// BLOCK1 data register 0.
	RD_MAC_SPI_SYS_0: *volatile Register(EFUSE_RD_MAC_SPI_SYS_0),
	/// BLOCK1 data register 1.
	RD_MAC_SPI_SYS_1: *volatile Register(EFUSE_RD_MAC_SPI_SYS_1),
	/// BLOCK1 data register 2.
	RD_MAC_SPI_SYS_2: *volatile Register(EFUSE_RD_MAC_SPI_SYS_2),
	/// BLOCK1 data register 3.
	RD_MAC_SPI_SYS_3: *volatile Register(EFUSE_RD_MAC_SPI_SYS_3),
	/// BLOCK1 data register 4.
	RD_MAC_SPI_SYS_4: *volatile Register(EFUSE_RD_MAC_SPI_SYS_4),
	/// BLOCK1 data register 5.
	RD_MAC_SPI_SYS_5: *volatile Register(EFUSE_RD_MAC_SPI_SYS_5),
	/// Register 0 of BLOCK2 (system).
	RD_SYS_PART1_DATA0: *volatile Register(EFUSE_RD_SYS_PART1_DATA0),
	/// Register 1 of BLOCK2 (system).
	RD_SYS_PART1_DATA1: *volatile Register(EFUSE_RD_SYS_PART1_DATA1),
	/// Register 2 of BLOCK2 (system).
	RD_SYS_PART1_DATA2: *volatile Register(EFUSE_RD_SYS_PART1_DATA2),
	/// Register 3 of BLOCK2 (system).
	RD_SYS_PART1_DATA3: *volatile Register(EFUSE_RD_SYS_PART1_DATA3),
	/// Register 4 of BLOCK2 (system).
	RD_SYS_PART1_DATA4: *volatile Register(EFUSE_RD_SYS_PART1_DATA4),
	/// Register 5 of BLOCK2 (system).
	RD_SYS_PART1_DATA5: *volatile Register(EFUSE_RD_SYS_PART1_DATA5),
	/// Register 6 of BLOCK2 (system).
	RD_SYS_PART1_DATA6: *volatile Register(EFUSE_RD_SYS_PART1_DATA6),
	/// Register 7 of BLOCK2 (system).
	RD_SYS_PART1_DATA7: *volatile Register(EFUSE_RD_SYS_PART1_DATA7),
	/// Register 0 of BLOCK3 (user).
	RD_USR_DATA0: *volatile Register(EFUSE_RD_USR_DATA0),
	/// Register 1 of BLOCK3 (user).
	RD_USR_DATA1: *volatile Register(EFUSE_RD_USR_DATA1),
	/// Register 2 of BLOCK3 (user).
	RD_USR_DATA2: *volatile Register(EFUSE_RD_USR_DATA2),
	/// Register 3 of BLOCK3 (user).
	RD_USR_DATA3: *volatile Register(EFUSE_RD_USR_DATA3),
	/// Register 4 of BLOCK3 (user).
	RD_USR_DATA4: *volatile Register(EFUSE_RD_USR_DATA4),
	/// Register 5 of BLOCK3 (user).
	RD_USR_DATA5: *volatile Register(EFUSE_RD_USR_DATA5),
	/// Register 6 of BLOCK3 (user).
	RD_USR_DATA6: *volatile Register(EFUSE_RD_USR_DATA6),
	/// Register 7 of BLOCK3 (user).
	RD_USR_DATA7: *volatile Register(EFUSE_RD_USR_DATA7),
	/// Register 0 of BLOCK4 (KEY0).
	RD_KEY0_DATA0: *volatile Register(EFUSE_RD_KEY0_DATA0),
	/// Register 1 of BLOCK4 (KEY0).
	RD_KEY0_DATA1: *volatile Register(EFUSE_RD_KEY0_DATA1),
	/// Register 2 of BLOCK4 (KEY0).
	RD_KEY0_DATA2: *volatile Register(EFUSE_RD_KEY0_DATA2),
	/// Register 3 of BLOCK4 (KEY0).
	RD_KEY0_DATA3: *volatile Register(EFUSE_RD_KEY0_DATA3),
	/// Register 4 of BLOCK4 (KEY0).
	RD_KEY0_DATA4: *volatile Register(EFUSE_RD_KEY0_DATA4),
	/// Register 5 of BLOCK4 (KEY0).
	RD_KEY0_DATA5: *volatile Register(EFUSE_RD_KEY0_DATA5),
	/// Register 6 of BLOCK4 (KEY0).
	RD_KEY0_DATA6: *volatile Register(EFUSE_RD_KEY0_DATA6),
	/// Register 7 of BLOCK4 (KEY0).
	RD_KEY0_DATA7: *volatile Register(EFUSE_RD_KEY0_DATA7),
	/// Register 0 of BLOCK5 (KEY1).
	RD_KEY1_DATA0: *volatile Register(EFUSE_RD_KEY1_DATA0),
	/// Register 1 of BLOCK5 (KEY1).
	RD_KEY1_DATA1: *volatile Register(EFUSE_RD_KEY1_DATA1),
	/// Register 2 of BLOCK5 (KEY1).
	RD_KEY1_DATA2: *volatile Register(EFUSE_RD_KEY1_DATA2),
	/// Register 3 of BLOCK5 (KEY1).
	RD_KEY1_DATA3: *volatile Register(EFUSE_RD_KEY1_DATA3),
	/// Register 4 of BLOCK5 (KEY1).
	RD_KEY1_DATA4: *volatile Register(EFUSE_RD_KEY1_DATA4),
	/// Register 5 of BLOCK5 (KEY1).
	RD_KEY1_DATA5: *volatile Register(EFUSE_RD_KEY1_DATA5),
	/// Register 6 of BLOCK5 (KEY1).
	RD_KEY1_DATA6: *volatile Register(EFUSE_RD_KEY1_DATA6),
	/// Register 7 of BLOCK5 (KEY1).
	RD_KEY1_DATA7: *volatile Register(EFUSE_RD_KEY1_DATA7),
	/// Register 0 of BLOCK6 (KEY2).
	RD_KEY2_DATA0: *volatile Register(EFUSE_RD_KEY2_DATA0),
	/// Register 1 of BLOCK6 (KEY2).
	RD_KEY2_DATA1: *volatile Register(EFUSE_RD_KEY2_DATA1),
	/// Register 2 of BLOCK6 (KEY2).
	RD_KEY2_DATA2: *volatile Register(EFUSE_RD_KEY2_DATA2),
	/// Register 3 of BLOCK6 (KEY2).
	RD_KEY2_DATA3: *volatile Register(EFUSE_RD_KEY2_DATA3),
	/// Register 4 of BLOCK6 (KEY2).
	RD_KEY2_DATA4: *volatile Register(EFUSE_RD_KEY2_DATA4),
	/// Register 5 of BLOCK6 (KEY2).
	RD_KEY2_DATA5: *volatile Register(EFUSE_RD_KEY2_DATA5),
	/// Register 6 of BLOCK6 (KEY2).
	RD_KEY2_DATA6: *volatile Register(EFUSE_RD_KEY2_DATA6),
	/// Register 7 of BLOCK6 (KEY2).
	RD_KEY2_DATA7: *volatile Register(EFUSE_RD_KEY2_DATA7),
	/// Register 0 of BLOCK7 (KEY3).
	RD_KEY3_DATA0: *volatile Register(EFUSE_RD_KEY3_DATA0),
	/// Register 1 of BLOCK7 (KEY3).
	RD_KEY3_DATA1: *volatile Register(EFUSE_RD_KEY3_DATA1),
	/// Register 2 of BLOCK7 (KEY3).
	RD_KEY3_DATA2: *volatile Register(EFUSE_RD_KEY3_DATA2),
	/// Register 3 of BLOCK7 (KEY3).
	RD_KEY3_DATA3: *volatile Register(EFUSE_RD_KEY3_DATA3),
	/// Register 4 of BLOCK7 (KEY3).
	RD_KEY3_DATA4: *volatile Register(EFUSE_RD_KEY3_DATA4),
	/// Register 5 of BLOCK7 (KEY3).
	RD_KEY3_DATA5: *volatile Register(EFUSE_RD_KEY3_DATA5),
	/// Register 6 of BLOCK7 (KEY3).
	RD_KEY3_DATA6: *volatile Register(EFUSE_RD_KEY3_DATA6),
	/// Register 7 of BLOCK7 (KEY3).
	RD_KEY3_DATA7: *volatile Register(EFUSE_RD_KEY3_DATA7),
	/// Register 0 of BLOCK8 (KEY4).
	RD_KEY4_DATA0: *volatile Register(EFUSE_RD_KEY4_DATA0),
	/// Register 1 of BLOCK8 (KEY4).
	RD_KEY4_DATA1: *volatile Register(EFUSE_RD_KEY4_DATA1),
	/// Register 2 of BLOCK8 (KEY4).
	RD_KEY4_DATA2: *volatile Register(EFUSE_RD_KEY4_DATA2),
	/// Register 3 of BLOCK8 (KEY4).
	RD_KEY4_DATA3: *volatile Register(EFUSE_RD_KEY4_DATA3),
	/// Register 4 of BLOCK8 (KEY4).
	RD_KEY4_DATA4: *volatile Register(EFUSE_RD_KEY4_DATA4),
	/// Register 5 of BLOCK8 (KEY4).
	RD_KEY4_DATA5: *volatile Register(EFUSE_RD_KEY4_DATA5),
	/// Register 6 of BLOCK8 (KEY4).
	RD_KEY4_DATA6: *volatile Register(EFUSE_RD_KEY4_DATA6),
	/// Register 7 of BLOCK8 (KEY4).
	RD_KEY4_DATA7: *volatile Register(EFUSE_RD_KEY4_DATA7),
	/// Register 0 of BLOCK9 (KEY5).
	RD_KEY5_DATA0: *volatile Register(EFUSE_RD_KEY5_DATA0),
	/// Register 1 of BLOCK9 (KEY5).
	RD_KEY5_DATA1: *volatile Register(EFUSE_RD_KEY5_DATA1),
	/// Register 2 of BLOCK9 (KEY5).
	RD_KEY5_DATA2: *volatile Register(EFUSE_RD_KEY5_DATA2),
	/// Register 3 of BLOCK9 (KEY5).
	RD_KEY5_DATA3: *volatile Register(EFUSE_RD_KEY5_DATA3),
	/// Register 4 of BLOCK9 (KEY5).
	RD_KEY5_DATA4: *volatile Register(EFUSE_RD_KEY5_DATA4),
	/// Register 5 of BLOCK9 (KEY5).
	RD_KEY5_DATA5: *volatile Register(EFUSE_RD_KEY5_DATA5),
	/// Register 6 of BLOCK9 (KEY5).
	RD_KEY5_DATA6: *volatile Register(EFUSE_RD_KEY5_DATA6),
	/// Register 7 of BLOCK9 (KEY5).
	RD_KEY5_DATA7: *volatile Register(EFUSE_RD_KEY5_DATA7),
	/// Register 0 of BLOCK10 (system).
	RD_SYS_PART2_DATA0: *volatile Register(EFUSE_RD_SYS_PART2_DATA0),
	/// Register 1 of BLOCK9 (KEY5).
	RD_SYS_PART2_DATA1: *volatile Register(EFUSE_RD_SYS_PART2_DATA1),
	/// Register 2 of BLOCK10 (system).
	RD_SYS_PART2_DATA2: *volatile Register(EFUSE_RD_SYS_PART2_DATA2),
	/// Register 3 of BLOCK10 (system).
	RD_SYS_PART2_DATA3: *volatile Register(EFUSE_RD_SYS_PART2_DATA3),
	/// Register 4 of BLOCK10 (system).
	RD_SYS_PART2_DATA4: *volatile Register(EFUSE_RD_SYS_PART2_DATA4),
	/// Register 5 of BLOCK10 (system).
	RD_SYS_PART2_DATA5: *volatile Register(EFUSE_RD_SYS_PART2_DATA5),
	/// Register 6 of BLOCK10 (system).
	RD_SYS_PART2_DATA6: *volatile Register(EFUSE_RD_SYS_PART2_DATA6),
	/// Register 7 of BLOCK10 (system).
	RD_SYS_PART2_DATA7: *volatile Register(EFUSE_RD_SYS_PART2_DATA7),
	/// Programming error record register 0 of BLOCK0.
	RD_REPEAT_ERR0: *volatile Register(EFUSE_RD_REPEAT_ERR0),
	/// Programming error record register 1 of BLOCK0.
	RD_REPEAT_ERR1: *volatile Register(EFUSE_RD_REPEAT_ERR1),
	/// Programming error record register 2 of BLOCK0.
	RD_REPEAT_ERR2: *volatile Register(EFUSE_RD_REPEAT_ERR2),
	/// Programming error record register 3 of BLOCK0.
	RD_REPEAT_ERR3: *volatile Register(EFUSE_RD_REPEAT_ERR3),
	/// Programming error record register 4 of BLOCK0.
	RD_REPEAT_ERR4: *volatile Register(EFUSE_RD_REPEAT_ERR4),
	/// Programming error record register 0 of BLOCK1-10.
	RD_RS_ERR0: *volatile Register(EFUSE_RD_RS_ERR0),
	/// Programming error record register 1 of BLOCK1-10.
	RD_RS_ERR1: *volatile Register(EFUSE_RD_RS_ERR1),
	/// eFuse clock configuration register.
	CLK: *volatile Register(EFUSE_CLK),
	/// eFuse operation mode configuration register.
	CONF: *volatile Register(EFUSE_CONF),
	/// eFuse status register.
	STATUS: *volatile Register(EFUSE_STATUS),
	/// eFuse command register.
	CMD: *volatile Register(EFUSE_CMD),
	/// eFuse raw interrupt register.
	INT_RAW: *volatile Register(EFUSE_INT_RAW),
	/// eFuse interrupt status register.
	INT_ST: *volatile Register(EFUSE_INT_ST),
	/// eFuse interrupt enable register.
	INT_ENA: *volatile Register(EFUSE_INT_ENA),
	/// eFuse interrupt clear register.
	INT_CLR: *volatile Register(EFUSE_INT_CLR),
	/// Controls the eFuse programming voltage.
	DAC_CONF: *volatile Register(EFUSE_DAC_CONF),
	/// Configures read timing parameters.
	RD_TIM_CONF: *volatile Register(EFUSE_RD_TIM_CONF),
	/// Configuration register 1 of eFuse programming timing parameters.
	WR_TIM_CONF1: *volatile Register(EFUSE_WR_TIM_CONF1),
	/// Configuration register 2 of eFuse programming timing parameters.
	WR_TIM_CONF2: *volatile Register(EFUSE_WR_TIM_CONF2),
	/// eFuse version register.
	DATE: *volatile Register(EFUSE_DATE),
};

// Peripheral instance
const EFUSE_instance = EFUSE {
	.PGM_DATA0 = @ptrFromInt(0x60008800),
	.PGM_DATA1 = @ptrFromInt(0x60008804),
	.PGM_DATA2 = @ptrFromInt(0x60008808),
	.PGM_DATA3 = @ptrFromInt(0x6000880c),
	.PGM_DATA4 = @ptrFromInt(0x60008810),
	.PGM_DATA5 = @ptrFromInt(0x60008814),
	.PGM_DATA6 = @ptrFromInt(0x60008818),
	.PGM_DATA7 = @ptrFromInt(0x6000881c),
	.PGM_CHECK_VALUE0 = @ptrFromInt(0x60008820),
	.PGM_CHECK_VALUE1 = @ptrFromInt(0x60008824),
	.PGM_CHECK_VALUE2 = @ptrFromInt(0x60008828),
	.RD_WR_DIS = @ptrFromInt(0x6000882c),
	.RD_REPEAT_DATA0 = @ptrFromInt(0x60008830),
	.RD_REPEAT_DATA1 = @ptrFromInt(0x60008834),
	.RD_REPEAT_DATA2 = @ptrFromInt(0x60008838),
	.RD_REPEAT_DATA3 = @ptrFromInt(0x6000883c),
	.RD_REPEAT_DATA4 = @ptrFromInt(0x60008840),
	.RD_MAC_SPI_SYS_0 = @ptrFromInt(0x60008844),
	.RD_MAC_SPI_SYS_1 = @ptrFromInt(0x60008848),
	.RD_MAC_SPI_SYS_2 = @ptrFromInt(0x6000884c),
	.RD_MAC_SPI_SYS_3 = @ptrFromInt(0x60008850),
	.RD_MAC_SPI_SYS_4 = @ptrFromInt(0x60008854),
	.RD_MAC_SPI_SYS_5 = @ptrFromInt(0x60008858),
	.RD_SYS_PART1_DATA0 = @ptrFromInt(0x6000885c),
	.RD_SYS_PART1_DATA1 = @ptrFromInt(0x60008860),
	.RD_SYS_PART1_DATA2 = @ptrFromInt(0x60008864),
	.RD_SYS_PART1_DATA3 = @ptrFromInt(0x60008868),
	.RD_SYS_PART1_DATA4 = @ptrFromInt(0x6000886c),
	.RD_SYS_PART1_DATA5 = @ptrFromInt(0x60008870),
	.RD_SYS_PART1_DATA6 = @ptrFromInt(0x60008874),
	.RD_SYS_PART1_DATA7 = @ptrFromInt(0x60008878),
	.RD_USR_DATA0 = @ptrFromInt(0x6000887c),
	.RD_USR_DATA1 = @ptrFromInt(0x60008880),
	.RD_USR_DATA2 = @ptrFromInt(0x60008884),
	.RD_USR_DATA3 = @ptrFromInt(0x60008888),
	.RD_USR_DATA4 = @ptrFromInt(0x6000888c),
	.RD_USR_DATA5 = @ptrFromInt(0x60008890),
	.RD_USR_DATA6 = @ptrFromInt(0x60008894),
	.RD_USR_DATA7 = @ptrFromInt(0x60008898),
	.RD_KEY0_DATA0 = @ptrFromInt(0x6000889c),
	.RD_KEY0_DATA1 = @ptrFromInt(0x600088a0),
	.RD_KEY0_DATA2 = @ptrFromInt(0x600088a4),
	.RD_KEY0_DATA3 = @ptrFromInt(0x600088a8),
	.RD_KEY0_DATA4 = @ptrFromInt(0x600088ac),
	.RD_KEY0_DATA5 = @ptrFromInt(0x600088b0),
	.RD_KEY0_DATA6 = @ptrFromInt(0x600088b4),
	.RD_KEY0_DATA7 = @ptrFromInt(0x600088b8),
	.RD_KEY1_DATA0 = @ptrFromInt(0x600088bc),
	.RD_KEY1_DATA1 = @ptrFromInt(0x600088c0),
	.RD_KEY1_DATA2 = @ptrFromInt(0x600088c4),
	.RD_KEY1_DATA3 = @ptrFromInt(0x600088c8),
	.RD_KEY1_DATA4 = @ptrFromInt(0x600088cc),
	.RD_KEY1_DATA5 = @ptrFromInt(0x600088d0),
	.RD_KEY1_DATA6 = @ptrFromInt(0x600088d4),
	.RD_KEY1_DATA7 = @ptrFromInt(0x600088d8),
	.RD_KEY2_DATA0 = @ptrFromInt(0x600088dc),
	.RD_KEY2_DATA1 = @ptrFromInt(0x600088e0),
	.RD_KEY2_DATA2 = @ptrFromInt(0x600088e4),
	.RD_KEY2_DATA3 = @ptrFromInt(0x600088e8),
	.RD_KEY2_DATA4 = @ptrFromInt(0x600088ec),
	.RD_KEY2_DATA5 = @ptrFromInt(0x600088f0),
	.RD_KEY2_DATA6 = @ptrFromInt(0x600088f4),
	.RD_KEY2_DATA7 = @ptrFromInt(0x600088f8),
	.RD_KEY3_DATA0 = @ptrFromInt(0x600088fc),
	.RD_KEY3_DATA1 = @ptrFromInt(0x60008900),
	.RD_KEY3_DATA2 = @ptrFromInt(0x60008904),
	.RD_KEY3_DATA3 = @ptrFromInt(0x60008908),
	.RD_KEY3_DATA4 = @ptrFromInt(0x6000890c),
	.RD_KEY3_DATA5 = @ptrFromInt(0x60008910),
	.RD_KEY3_DATA6 = @ptrFromInt(0x60008914),
	.RD_KEY3_DATA7 = @ptrFromInt(0x60008918),
	.RD_KEY4_DATA0 = @ptrFromInt(0x6000891c),
	.RD_KEY4_DATA1 = @ptrFromInt(0x60008920),
	.RD_KEY4_DATA2 = @ptrFromInt(0x60008924),
	.RD_KEY4_DATA3 = @ptrFromInt(0x60008928),
	.RD_KEY4_DATA4 = @ptrFromInt(0x6000892c),
	.RD_KEY4_DATA5 = @ptrFromInt(0x60008930),
	.RD_KEY4_DATA6 = @ptrFromInt(0x60008934),
	.RD_KEY4_DATA7 = @ptrFromInt(0x60008938),
	.RD_KEY5_DATA0 = @ptrFromInt(0x6000893c),
	.RD_KEY5_DATA1 = @ptrFromInt(0x60008940),
	.RD_KEY5_DATA2 = @ptrFromInt(0x60008944),
	.RD_KEY5_DATA3 = @ptrFromInt(0x60008948),
	.RD_KEY5_DATA4 = @ptrFromInt(0x6000894c),
	.RD_KEY5_DATA5 = @ptrFromInt(0x60008950),
	.RD_KEY5_DATA6 = @ptrFromInt(0x60008954),
	.RD_KEY5_DATA7 = @ptrFromInt(0x60008958),
	.RD_SYS_PART2_DATA0 = @ptrFromInt(0x6000895c),
	.RD_SYS_PART2_DATA1 = @ptrFromInt(0x60008960),
	.RD_SYS_PART2_DATA2 = @ptrFromInt(0x60008964),
	.RD_SYS_PART2_DATA3 = @ptrFromInt(0x60008968),
	.RD_SYS_PART2_DATA4 = @ptrFromInt(0x6000896c),
	.RD_SYS_PART2_DATA5 = @ptrFromInt(0x60008970),
	.RD_SYS_PART2_DATA6 = @ptrFromInt(0x60008974),
	.RD_SYS_PART2_DATA7 = @ptrFromInt(0x60008978),
	.RD_REPEAT_ERR0 = @ptrFromInt(0x6000897c),
	.RD_REPEAT_ERR1 = @ptrFromInt(0x60008980),
	.RD_REPEAT_ERR2 = @ptrFromInt(0x60008984),
	.RD_REPEAT_ERR3 = @ptrFromInt(0x60008988),
	.RD_REPEAT_ERR4 = @ptrFromInt(0x60008990),
	.RD_RS_ERR0 = @ptrFromInt(0x600089c0),
	.RD_RS_ERR1 = @ptrFromInt(0x600089c4),
	.CLK = @ptrFromInt(0x600089c8),
	.CONF = @ptrFromInt(0x600089cc),
	.STATUS = @ptrFromInt(0x600089d0),
	.CMD = @ptrFromInt(0x600089d4),
	.INT_RAW = @ptrFromInt(0x600089d8),
	.INT_ST = @ptrFromInt(0x600089dc),
	.INT_ENA = @ptrFromInt(0x600089e0),
	.INT_CLR = @ptrFromInt(0x600089e4),
	.DAC_CONF = @ptrFromInt(0x600089e8),
	.RD_TIM_CONF = @ptrFromInt(0x600089ec),
	.WR_TIM_CONF1 = @ptrFromInt(0x600089f0),
	.WR_TIM_CONF2 = @ptrFromInt(0x600089f4),
	.DATE = @ptrFromInt(0x600089fc),
};

const EXTMEM_ICACHE_CTRL = packed struct {
	/// The bit is used to activate the data cache. 0: disable, 1: enable
	ICACHE_ENABLE: u1,
	reserved0: u31,
};

const EXTMEM_ICACHE_CTRL1 = packed struct {
	/// The bit is used to disable core0 ibus, 0: enable, 1: disable
	ICACHE_SHUT_IBUS: u1,
	/// The bit is used to disable core1 ibus, 0: enable, 1: disable
	ICACHE_SHUT_DBUS: u1,
	reserved0: u30,
};

const EXTMEM_ICACHE_TAG_POWER_CTRL = packed struct {
	/// The bit is used to close clock gating of  icache tag memory. 1: close gating, 0: open clock gating.
	ICACHE_TAG_MEM_FORCE_ON: u1,
	/// The bit is used to power  icache tag memory down, 0: follow rtc_lslp, 1: power down
	ICACHE_TAG_MEM_FORCE_PD: u1,
	/// The bit is used to power  icache tag memory up, 0: follow rtc_lslp, 1: power up
	ICACHE_TAG_MEM_FORCE_PU: u1,
	reserved0: u29,
};

const EXTMEM_ICACHE_PRELOCK_CTRL = packed struct {
	/// The bit is used to enable the first section of prelock function.
	ICACHE_PRELOCK_SCT0_EN: u1,
	/// The bit is used to enable the second section of prelock function.
	ICACHE_PRELOCK_SCT1_EN: u1,
	reserved0: u30,
};

const EXTMEM_ICACHE_PRELOCK_SCT0_ADDR = packed struct {
	/// The bits are used to configure the first start virtual address of data prelock, which is combined with ICACHE_PRELOCK_SCT0_SIZE_REG
	ICACHE_PRELOCK_SCT0_ADDR: u32,
};

const EXTMEM_ICACHE_PRELOCK_SCT1_ADDR = packed struct {
	/// The bits are used to configure the second start virtual address of data prelock, which is combined with ICACHE_PRELOCK_SCT1_SIZE_REG
	ICACHE_PRELOCK_SCT1_ADDR: u32,
};

const EXTMEM_ICACHE_PRELOCK_SCT_SIZE = packed struct {
	/// The bits are used to configure the second length of data locking, which is combined with ICACHE_PRELOCK_SCT1_ADDR_REG
	ICACHE_PRELOCK_SCT1_SIZE: u16,
	/// The bits are used to configure the first length of data locking, which is combined with ICACHE_PRELOCK_SCT0_ADDR_REG
	ICACHE_PRELOCK_SCT0_SIZE: u16,
};

const EXTMEM_ICACHE_LOCK_CTRL = packed struct {
	/// The bit is used to enable lock operation. It will be cleared by hardware after lock operation done.
	ICACHE_LOCK_ENA: u1,
	/// The bit is used to enable unlock operation. It will be cleared by hardware after unlock operation done.
	ICACHE_UNLOCK_ENA: u1,
	/// The bit is used to indicate unlock/lock operation is finished.
	ICACHE_LOCK_DONE: u1,
	reserved0: u29,
};

const EXTMEM_ICACHE_LOCK_ADDR = packed struct {
	/// The bits are used to configure the start virtual address for lock operations. It should be combined with ICACHE_LOCK_SIZE_REG.
	ICACHE_LOCK_ADDR: u32,
};

const EXTMEM_ICACHE_LOCK_SIZE = packed struct {
	/// The bits are used to configure the length for lock operations. The bits are the counts of cache block. It should be combined with ICACHE_LOCK_ADDR_REG.
	ICACHE_LOCK_SIZE: u16,
	reserved0: u16,
};

const EXTMEM_ICACHE_SYNC_CTRL = packed struct {
	/// The bit is used to enable invalidate operation. It will be cleared by hardware after invalidate operation done.
	ICACHE_INVALIDATE_ENA: u1,
	/// The bit is used to indicate invalidate operation is finished.
	ICACHE_SYNC_DONE: u1,
	reserved0: u30,
};

const EXTMEM_ICACHE_SYNC_ADDR = packed struct {
	/// The bits are used to configure the start virtual address for clean operations. It should be combined with ICACHE_SYNC_SIZE_REG.
	ICACHE_SYNC_ADDR: u32,
};

const EXTMEM_ICACHE_SYNC_SIZE = packed struct {
	/// The bits are used to configure the length for sync operations. The bits are the counts of cache block. It should be combined with ICACHE_SYNC_ADDR_REG.
	ICACHE_SYNC_SIZE: u23,
	reserved0: u9,
};

const EXTMEM_ICACHE_PRELOAD_CTRL = packed struct {
	/// The bit is used to enable preload operation. It will be cleared by hardware after preload operation done.
	ICACHE_PRELOAD_ENA: u1,
	/// The bit is used to indicate preload operation is finished.
	ICACHE_PRELOAD_DONE: u1,
	/// The bit is used to configure the direction of preload operation. 1: descending, 0: ascending.
	ICACHE_PRELOAD_ORDER: u1,
	reserved0: u29,
};

const EXTMEM_ICACHE_PRELOAD_ADDR = packed struct {
	/// The bits are used to configure the start virtual address for preload operation. It should be combined with ICACHE_PRELOAD_SIZE_REG.
	ICACHE_PRELOAD_ADDR: u32,
};

const EXTMEM_ICACHE_PRELOAD_SIZE = packed struct {
	/// The bits are used to configure the length for preload operation. The bits are the counts of cache block. It should be combined with ICACHE_PRELOAD_ADDR_REG..
	ICACHE_PRELOAD_SIZE: u16,
	reserved0: u16,
};

const EXTMEM_ICACHE_AUTOLOAD_CTRL = packed struct {
	/// The bits are used to enable the first section for autoload operation.
	ICACHE_AUTOLOAD_SCT0_ENA: u1,
	/// The bits are used to enable the second section for autoload operation.
	ICACHE_AUTOLOAD_SCT1_ENA: u1,
	/// The bit is used to enable and disable autoload operation. It is combined with icache_autoload_done. 1: enable, 0: disable.
	ICACHE_AUTOLOAD_ENA: u1,
	/// The bit is used to indicate autoload operation is finished.
	ICACHE_AUTOLOAD_DONE: u1,
	/// The bits are used to configure the direction of autoload. 1: descending, 0: ascending.
	ICACHE_AUTOLOAD_ORDER: u1,
	/// The bits are used to configure trigger conditions for autoload. 0/3: cache miss, 1: cache hit, 2: both cache miss and hit.
	ICACHE_AUTOLOAD_RQST: u2,
	reserved0: u25,
};

const EXTMEM_ICACHE_AUTOLOAD_SCT0_ADDR = packed struct {
	/// The bits are used to configure the start virtual address of the first section for autoload operation. It should be combined with icache_autoload_sct0_ena.
	ICACHE_AUTOLOAD_SCT0_ADDR: u32,
};

const EXTMEM_ICACHE_AUTOLOAD_SCT0_SIZE = packed struct {
	/// The bits are used to configure the length of the first section for autoload operation. It should be combined with icache_autoload_sct0_ena.
	ICACHE_AUTOLOAD_SCT0_SIZE: u27,
	reserved0: u5,
};

const EXTMEM_ICACHE_AUTOLOAD_SCT1_ADDR = packed struct {
	/// The bits are used to configure the start virtual address of the second section for autoload operation. It should be combined with icache_autoload_sct1_ena.
	ICACHE_AUTOLOAD_SCT1_ADDR: u32,
};

const EXTMEM_ICACHE_AUTOLOAD_SCT1_SIZE = packed struct {
	/// The bits are used to configure the length of the second section for autoload operation. It should be combined with icache_autoload_sct1_ena.
	ICACHE_AUTOLOAD_SCT1_SIZE: u27,
	reserved0: u5,
};

const EXTMEM_IBUS_TO_FLASH_START_VADDR = packed struct {
	/// The bits are used to configure the start virtual address of ibus to access flash. The register is used to give constraints to ibus access counter.
	IBUS_TO_FLASH_START_VADDR: u32,
};

const EXTMEM_IBUS_TO_FLASH_END_VADDR = packed struct {
	/// The bits are used to configure the end virtual address of ibus to access flash. The register is used to give constraints to ibus access counter.
	IBUS_TO_FLASH_END_VADDR: u32,
};

const EXTMEM_DBUS_TO_FLASH_START_VADDR = packed struct {
	/// The bits are used to configure the start virtual address of dbus to access flash. The register is used to give constraints to dbus access counter.
	DBUS_TO_FLASH_START_VADDR: u32,
};

const EXTMEM_DBUS_TO_FLASH_END_VADDR = packed struct {
	/// The bits are used to configure the end virtual address of dbus to access flash. The register is used to give constraints to dbus access counter.
	DBUS_TO_FLASH_END_VADDR: u32,
};

const EXTMEM_CACHE_ACS_CNT_CLR = packed struct {
	/// The bit is used to clear ibus counter.
	IBUS_ACS_CNT_CLR: u1,
	/// The bit is used to clear dbus counter.
	DBUS_ACS_CNT_CLR: u1,
	reserved0: u30,
};

const EXTMEM_IBUS_ACS_MISS_CNT = packed struct {
	/// The bits are used to count the number of the cache miss caused by ibus access flash.
	IBUS_ACS_MISS_CNT: u32,
};

const EXTMEM_IBUS_ACS_CNT = packed struct {
	/// The bits are used to count the number of ibus access flash through icache.
	IBUS_ACS_CNT: u32,
};

const EXTMEM_DBUS_ACS_FLASH_MISS_CNT = packed struct {
	/// The bits are used to count the number of the cache miss caused by dbus access flash.
	DBUS_ACS_FLASH_MISS_CNT: u32,
};

const EXTMEM_DBUS_ACS_CNT = packed struct {
	/// The bits are used to count the number of dbus access flash through icache.
	DBUS_ACS_CNT: u32,
};

const EXTMEM_CACHE_ILG_INT_ENA = packed struct {
	/// The bit is used to enable interrupt by sync configurations fault.
	ICACHE_SYNC_OP_FAULT_INT_ENA: u1,
	/// The bit is used to enable interrupt by preload configurations fault.
	ICACHE_PRELOAD_OP_FAULT_INT_ENA: u1,
	reserved0: u3,
	/// The bit is used to enable interrupt by mmu entry fault.
	MMU_ENTRY_FAULT_INT_ENA: u1,
	reserved1: u1,
	/// The bit is used to enable interrupt by ibus counter overflow.
	IBUS_CNT_OVF_INT_ENA: u1,
	/// The bit is used to enable interrupt by dbus counter overflow.
	DBUS_CNT_OVF_INT_ENA: u1,
	reserved2: u23,
};

const EXTMEM_CACHE_ILG_INT_CLR = packed struct {
	/// The bit is used to clear interrupt by sync configurations fault.
	ICACHE_SYNC_OP_FAULT_INT_CLR: u1,
	/// The bit is used to clear interrupt by preload configurations fault.
	ICACHE_PRELOAD_OP_FAULT_INT_CLR: u1,
	reserved0: u3,
	/// The bit is used to clear interrupt by mmu entry fault.
	MMU_ENTRY_FAULT_INT_CLR: u1,
	reserved1: u1,
	/// The bit is used to clear interrupt by ibus counter overflow.
	IBUS_CNT_OVF_INT_CLR: u1,
	/// The bit is used to clear interrupt by dbus counter overflow.
	DBUS_CNT_OVF_INT_CLR: u1,
	reserved2: u23,
};

const EXTMEM_CACHE_ILG_INT_ST = packed struct {
	/// The bit is used to indicate interrupt by sync configurations fault.
	ICACHE_SYNC_OP_FAULT_ST: u1,
	/// The bit is used to indicate interrupt by preload configurations fault.
	ICACHE_PRELOAD_OP_FAULT_ST: u1,
	reserved0: u3,
	/// The bit is used to indicate interrupt by mmu entry fault.
	MMU_ENTRY_FAULT_ST: u1,
	reserved1: u1,
	/// The bit is used to indicate interrupt by ibus access flash/spiram counter overflow.
	IBUS_ACS_CNT_OVF_ST: u1,
	/// The bit is used to indicate interrupt by ibus access flash/spiram miss counter overflow.
	IBUS_ACS_MISS_CNT_OVF_ST: u1,
	/// The bit is used to indicate interrupt by dbus access flash/spiram counter overflow.
	DBUS_ACS_CNT_OVF_ST: u1,
	/// The bit is used to indicate interrupt by dbus access flash miss counter overflow.
	DBUS_ACS_FLASH_MISS_CNT_OVF_ST: u1,
	reserved2: u21,
};

const EXTMEM_CORE0_ACS_CACHE_INT_ENA = packed struct {
	/// The bit is used to enable interrupt by cpu access icache while the corresponding ibus is disabled which include speculative access.
	CORE0_IBUS_ACS_MSK_IC_INT_ENA: u1,
	/// The bit is used to enable interrupt by ibus trying to write icache
	CORE0_IBUS_WR_IC_INT_ENA: u1,
	/// The bit is used to enable interrupt by authentication fail.
	CORE0_IBUS_REJECT_INT_ENA: u1,
	/// The bit is used to enable interrupt by cpu access icache while the corresponding dbus is disabled which include speculative access.
	CORE0_DBUS_ACS_MSK_IC_INT_ENA: u1,
	/// The bit is used to enable interrupt by authentication fail.
	CORE0_DBUS_REJECT_INT_ENA: u1,
	/// The bit is used to enable interrupt by dbus trying to write icache
	CORE0_DBUS_WR_IC_INT_ENA: u1,
	reserved0: u26,
};

const EXTMEM_CORE0_ACS_CACHE_INT_CLR = packed struct {
	/// The bit is used to clear interrupt by cpu access icache while the corresponding ibus is disabled or icache is disabled which include speculative access.
	CORE0_IBUS_ACS_MSK_IC_INT_CLR: u1,
	/// The bit is used to clear interrupt by ibus trying to write icache
	CORE0_IBUS_WR_IC_INT_CLR: u1,
	/// The bit is used to clear interrupt by authentication fail.
	CORE0_IBUS_REJECT_INT_CLR: u1,
	/// The bit is used to clear interrupt by cpu access icache while the corresponding dbus is disabled or icache is disabled which include speculative access.
	CORE0_DBUS_ACS_MSK_IC_INT_CLR: u1,
	/// The bit is used to clear interrupt by authentication fail.
	CORE0_DBUS_REJECT_INT_CLR: u1,
	/// The bit is used to clear interrupt by dbus trying to write icache
	CORE0_DBUS_WR_IC_INT_CLR: u1,
	reserved0: u26,
};

const EXTMEM_CORE0_ACS_CACHE_INT_ST = packed struct {
	/// The bit is used to indicate interrupt by cpu access  icache while the core0_ibus is disabled or icache is disabled which include speculative access.
	CORE0_IBUS_ACS_MSK_ICACHE_ST: u1,
	/// The bit is used to indicate interrupt by ibus trying to write icache
	CORE0_IBUS_WR_ICACHE_ST: u1,
	/// The bit is used to indicate interrupt by authentication fail.
	CORE0_IBUS_REJECT_ST: u1,
	/// The bit is used to indicate interrupt by cpu access icache while the core0_dbus is disabled or icache is disabled which include speculative access.
	CORE0_DBUS_ACS_MSK_ICACHE_ST: u1,
	/// The bit is used to indicate interrupt by authentication fail.
	CORE0_DBUS_REJECT_ST: u1,
	/// The bit is used to indicate interrupt by dbus trying to write icache
	CORE0_DBUS_WR_ICACHE_ST: u1,
	reserved0: u26,
};

const EXTMEM_CORE0_DBUS_REJECT_ST = packed struct {
	/// The bits are used to indicate the attribute of CPU access dbus when authentication fail. 0: invalidate, 1: execute-able, 2: read-able, 4: write-able.
	CORE0_DBUS_ATTR: u3,
	/// The bit is used to indicate the world of CPU access dbus when authentication fail. 0: WORLD0, 1: WORLD1
	CORE0_DBUS_WORLD: u1,
	reserved0: u28,
};

const EXTMEM_CORE0_DBUS_REJECT_VADDR = packed struct {
	/// The bits are used to indicate the virtual address of CPU access dbus when authentication fail.
	CORE0_DBUS_VADDR: u32,
};

const EXTMEM_CORE0_IBUS_REJECT_ST = packed struct {
	/// The bits are used to indicate the attribute of CPU access ibus when authentication fail. 0: invalidate, 1: execute-able, 2: read-able
	CORE0_IBUS_ATTR: u3,
	/// The bit is used to indicate the world of CPU access ibus when authentication fail. 0: WORLD0, 1: WORLD1
	CORE0_IBUS_WORLD: u1,
	reserved0: u28,
};

const EXTMEM_CORE0_IBUS_REJECT_VADDR = packed struct {
	/// The bits are used to indicate the virtual address of CPU access  ibus when authentication fail.
	CORE0_IBUS_VADDR: u32,
};

const EXTMEM_CACHE_MMU_FAULT_CONTENT = packed struct {
	/// The bits are used to indicate the content of mmu entry which cause mmu fault..
	CACHE_MMU_FAULT_CONTENT: u10,
	/// The right-most 3 bits are used to indicate the operations which cause mmu fault occurrence. 0: default, 1: cpu miss, 2: preload miss, 3: writeback, 4: cpu miss evict recovery address, 5: load miss evict recovery address, 6: external dma tx, 7: external dma rx. The most significant bit is used to indicate this operation occurs in which one icache.
	CACHE_MMU_FAULT_CODE: u4,
	reserved0: u18,
};

const EXTMEM_CACHE_MMU_FAULT_VADDR = packed struct {
	/// The bits are used to indicate the virtual address which cause mmu fault..
	CACHE_MMU_FAULT_VADDR: u32,
};

const EXTMEM_CACHE_WRAP_AROUND_CTRL = packed struct {
	/// The bit is used to enable wrap around mode when read data from flash.
	CACHE_FLASH_WRAP_AROUND: u1,
	reserved0: u31,
};

const EXTMEM_CACHE_MMU_POWER_CTRL = packed struct {
	/// The bit is used to enable clock gating to save power when access mmu memory, 0: enable, 1: disable
	CACHE_MMU_MEM_FORCE_ON: u1,
	/// The bit is used to power mmu memory down, 0: follow_rtc_lslp_pd, 1: power down
	CACHE_MMU_MEM_FORCE_PD: u1,
	/// The bit is used to power mmu memory down, 0: follow_rtc_lslp_pd, 1: power up
	CACHE_MMU_MEM_FORCE_PU: u1,
	reserved0: u29,
};

const EXTMEM_CACHE_STATE = packed struct {
	/// The bit is used to indicate whether  icache main fsm is in idle state or not. 1: in idle state,  0: not in idle state
	ICACHE_STATE: u12,
	reserved0: u20,
};

const EXTMEM_CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE = packed struct {
	/// Reserved.
	RECORD_DISABLE_DB_ENCRYPT: u1,
	/// Reserved.
	RECORD_DISABLE_G0CB_DECRYPT: u1,
	reserved0: u30,
};

const EXTMEM_CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON = packed struct {
	/// The bit is used to close clock gating of manual crypt clock. 1: close gating, 0: open clock gating.
	CLK_FORCE_ON_MANUAL_CRYPT: u1,
	/// The bit is used to close clock gating of automatic crypt clock. 1: close gating, 0: open clock gating.
	CLK_FORCE_ON_AUTO_CRYPT: u1,
	/// The bit is used to close clock gating of external memory encrypt and decrypt clock. 1: close gating, 0: open clock gating.
	CLK_FORCE_ON_CRYPT: u1,
	reserved0: u29,
};

const EXTMEM_CACHE_PRELOAD_INT_CTRL = packed struct {
	/// The bit is used to indicate the interrupt by  icache pre-load done.
	ICACHE_PRELOAD_INT_ST: u1,
	/// The bit is used to enable the interrupt by  icache pre-load done.
	ICACHE_PRELOAD_INT_ENA: u1,
	/// The bit is used to clear the interrupt by  icache pre-load done.
	ICACHE_PRELOAD_INT_CLR: u1,
	reserved0: u29,
};

const EXTMEM_CACHE_SYNC_INT_CTRL = packed struct {
	/// The bit is used to indicate the interrupt by  icache sync done.
	ICACHE_SYNC_INT_ST: u1,
	/// The bit is used to enable the interrupt by  icache sync done.
	ICACHE_SYNC_INT_ENA: u1,
	/// The bit is used to clear the interrupt by  icache sync done.
	ICACHE_SYNC_INT_CLR: u1,
	reserved0: u29,
};

const EXTMEM_CACHE_MMU_OWNER = packed struct {
	/// The bits are used to specify the owner of MMU.bit0/bit2: ibus, bit1/bit3: dbus
	CACHE_MMU_OWNER: u4,
	reserved0: u28,
};

const EXTMEM_CACHE_CONF_MISC = packed struct {
	/// The bit is used to disable checking mmu entry fault by preload operation.
	CACHE_IGNORE_PRELOAD_MMU_ENTRY_FAULT: u1,
	/// The bit is used to disable checking mmu entry fault by sync operation.
	CACHE_IGNORE_SYNC_MMU_ENTRY_FAULT: u1,
	/// The bit is used to enable cache trace function.
	CACHE_TRACE_ENA: u1,
	reserved0: u29,
};

const EXTMEM_ICACHE_FREEZE = packed struct {
	/// The bit is used to enable icache freeze mode
	ENA: u1,
	/// The bit is used to configure freeze mode, 0:  assert busy if CPU miss 1: assert hit if CPU miss
	MODE: u1,
	/// The bit is used to indicate icache freeze success
	DONE: u1,
	reserved0: u29,
};

const EXTMEM_ICACHE_ATOMIC_OPERATE_ENA = packed struct {
	/// The bit is used to activate icache atomic operation protection. In this case, sync/lock operation can not interrupt miss-work. This feature does not work during invalidateAll operation.
	ICACHE_ATOMIC_OPERATE_ENA: u1,
	reserved0: u31,
};

const EXTMEM_CACHE_REQUEST = packed struct {
	/// The bit is used to disable request recording which could cause performance issue
	BYPASS: u1,
	reserved0: u31,
};

const EXTMEM_IBUS_PMS_TBL_LOCK = packed struct {
	/// The bit is used to configure the ibus permission control section boundary0
	IBUS_PMS_LOCK: u1,
	reserved0: u31,
};

const EXTMEM_IBUS_PMS_TBL_BOUNDARY0 = packed struct {
	/// The bit is used to configure the ibus permission control section boundary0
	IBUS_PMS_BOUNDARY0: u12,
	reserved0: u20,
};

const EXTMEM_IBUS_PMS_TBL_BOUNDARY1 = packed struct {
	/// The bit is used to configure the ibus permission control section boundary1
	IBUS_PMS_BOUNDARY1: u12,
	reserved0: u20,
};

const EXTMEM_IBUS_PMS_TBL_BOUNDARY2 = packed struct {
	/// The bit is used to configure the ibus permission control section boundary2
	IBUS_PMS_BOUNDARY2: u12,
	reserved0: u20,
};

const EXTMEM_IBUS_PMS_TBL_ATTR = packed struct {
	/// The bit is used to configure attribute of the ibus permission control section1, bit0: fetch in world0, bit1: load in world0, bit2: fetch in world1, bit3: load in world1
	IBUS_PMS_SCT1_ATTR: u4,
	/// The bit is used to configure attribute of the ibus permission control section2, bit0: fetch in world0, bit1: load in world0, bit2: fetch in world1, bit3: load in world1
	IBUS_PMS_SCT2_ATTR: u4,
	reserved0: u24,
};

const EXTMEM_DBUS_PMS_TBL_LOCK = packed struct {
	/// The bit is used to configure the ibus permission control section boundary0
	DBUS_PMS_LOCK: u1,
	reserved0: u31,
};

const EXTMEM_DBUS_PMS_TBL_BOUNDARY0 = packed struct {
	/// The bit is used to configure the dbus permission control section boundary0
	DBUS_PMS_BOUNDARY0: u12,
	reserved0: u20,
};

const EXTMEM_DBUS_PMS_TBL_BOUNDARY1 = packed struct {
	/// The bit is used to configure the dbus permission control section boundary1
	DBUS_PMS_BOUNDARY1: u12,
	reserved0: u20,
};

const EXTMEM_DBUS_PMS_TBL_BOUNDARY2 = packed struct {
	/// The bit is used to configure the dbus permission control section boundary2
	DBUS_PMS_BOUNDARY2: u12,
	reserved0: u20,
};

const EXTMEM_DBUS_PMS_TBL_ATTR = packed struct {
	/// The bit is used to configure attribute of the dbus permission control section1, bit0: load in world0, bit2: load in world1
	DBUS_PMS_SCT1_ATTR: u2,
	/// The bit is used to configure attribute of the dbus permission control section2, bit0: load in world0, bit2: load in world1
	DBUS_PMS_SCT2_ATTR: u2,
	reserved0: u28,
};

const EXTMEM_CLOCK_GATE = packed struct {
	/// clock gate enable.
	CLK_EN: u1,
	reserved0: u31,
};

const EXTMEM_REG_DATE = packed struct {
	/// version information
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const EXTMEM = struct {
	/// This description will be updated in the near future.
	ICACHE_CTRL: *volatile Register(EXTMEM_ICACHE_CTRL),
	/// This description will be updated in the near future.
	ICACHE_CTRL1: *volatile Register(EXTMEM_ICACHE_CTRL1),
	/// This description will be updated in the near future.
	ICACHE_TAG_POWER_CTRL: *volatile Register(EXTMEM_ICACHE_TAG_POWER_CTRL),
	/// This description will be updated in the near future.
	ICACHE_PRELOCK_CTRL: *volatile Register(EXTMEM_ICACHE_PRELOCK_CTRL),
	/// This description will be updated in the near future.
	ICACHE_PRELOCK_SCT0_ADDR: *volatile Register(EXTMEM_ICACHE_PRELOCK_SCT0_ADDR),
	/// This description will be updated in the near future.
	ICACHE_PRELOCK_SCT1_ADDR: *volatile Register(EXTMEM_ICACHE_PRELOCK_SCT1_ADDR),
	/// This description will be updated in the near future.
	ICACHE_PRELOCK_SCT_SIZE: *volatile Register(EXTMEM_ICACHE_PRELOCK_SCT_SIZE),
	/// This description will be updated in the near future.
	ICACHE_LOCK_CTRL: *volatile Register(EXTMEM_ICACHE_LOCK_CTRL),
	/// This description will be updated in the near future.
	ICACHE_LOCK_ADDR: *volatile Register(EXTMEM_ICACHE_LOCK_ADDR),
	/// This description will be updated in the near future.
	ICACHE_LOCK_SIZE: *volatile Register(EXTMEM_ICACHE_LOCK_SIZE),
	/// This description will be updated in the near future.
	ICACHE_SYNC_CTRL: *volatile Register(EXTMEM_ICACHE_SYNC_CTRL),
	/// This description will be updated in the near future.
	ICACHE_SYNC_ADDR: *volatile Register(EXTMEM_ICACHE_SYNC_ADDR),
	/// This description will be updated in the near future.
	ICACHE_SYNC_SIZE: *volatile Register(EXTMEM_ICACHE_SYNC_SIZE),
	/// This description will be updated in the near future.
	ICACHE_PRELOAD_CTRL: *volatile Register(EXTMEM_ICACHE_PRELOAD_CTRL),
	/// This description will be updated in the near future.
	ICACHE_PRELOAD_ADDR: *volatile Register(EXTMEM_ICACHE_PRELOAD_ADDR),
	/// This description will be updated in the near future.
	ICACHE_PRELOAD_SIZE: *volatile Register(EXTMEM_ICACHE_PRELOAD_SIZE),
	/// This description will be updated in the near future.
	ICACHE_AUTOLOAD_CTRL: *volatile Register(EXTMEM_ICACHE_AUTOLOAD_CTRL),
	/// This description will be updated in the near future.
	ICACHE_AUTOLOAD_SCT0_ADDR: *volatile Register(EXTMEM_ICACHE_AUTOLOAD_SCT0_ADDR),
	/// This description will be updated in the near future.
	ICACHE_AUTOLOAD_SCT0_SIZE: *volatile Register(EXTMEM_ICACHE_AUTOLOAD_SCT0_SIZE),
	/// This description will be updated in the near future.
	ICACHE_AUTOLOAD_SCT1_ADDR: *volatile Register(EXTMEM_ICACHE_AUTOLOAD_SCT1_ADDR),
	/// This description will be updated in the near future.
	ICACHE_AUTOLOAD_SCT1_SIZE: *volatile Register(EXTMEM_ICACHE_AUTOLOAD_SCT1_SIZE),
	/// This description will be updated in the near future.
	IBUS_TO_FLASH_START_VADDR: *volatile Register(EXTMEM_IBUS_TO_FLASH_START_VADDR),
	/// This description will be updated in the near future.
	IBUS_TO_FLASH_END_VADDR: *volatile Register(EXTMEM_IBUS_TO_FLASH_END_VADDR),
	/// This description will be updated in the near future.
	DBUS_TO_FLASH_START_VADDR: *volatile Register(EXTMEM_DBUS_TO_FLASH_START_VADDR),
	/// This description will be updated in the near future.
	DBUS_TO_FLASH_END_VADDR: *volatile Register(EXTMEM_DBUS_TO_FLASH_END_VADDR),
	/// This description will be updated in the near future.
	CACHE_ACS_CNT_CLR: *volatile Register(EXTMEM_CACHE_ACS_CNT_CLR),
	/// This description will be updated in the near future.
	IBUS_ACS_MISS_CNT: *volatile Register(EXTMEM_IBUS_ACS_MISS_CNT),
	/// This description will be updated in the near future.
	IBUS_ACS_CNT: *volatile Register(EXTMEM_IBUS_ACS_CNT),
	/// This description will be updated in the near future.
	DBUS_ACS_FLASH_MISS_CNT: *volatile Register(EXTMEM_DBUS_ACS_FLASH_MISS_CNT),
	/// This description will be updated in the near future.
	DBUS_ACS_CNT: *volatile Register(EXTMEM_DBUS_ACS_CNT),
	/// This description will be updated in the near future.
	CACHE_ILG_INT_ENA: *volatile Register(EXTMEM_CACHE_ILG_INT_ENA),
	/// This description will be updated in the near future.
	CACHE_ILG_INT_CLR: *volatile Register(EXTMEM_CACHE_ILG_INT_CLR),
	/// This description will be updated in the near future.
	CACHE_ILG_INT_ST: *volatile Register(EXTMEM_CACHE_ILG_INT_ST),
	/// This description will be updated in the near future.
	CORE0_ACS_CACHE_INT_ENA: *volatile Register(EXTMEM_CORE0_ACS_CACHE_INT_ENA),
	/// This description will be updated in the near future.
	CORE0_ACS_CACHE_INT_CLR: *volatile Register(EXTMEM_CORE0_ACS_CACHE_INT_CLR),
	/// This description will be updated in the near future.
	CORE0_ACS_CACHE_INT_ST: *volatile Register(EXTMEM_CORE0_ACS_CACHE_INT_ST),
	/// This description will be updated in the near future.
	CORE0_DBUS_REJECT_ST: *volatile Register(EXTMEM_CORE0_DBUS_REJECT_ST),
	/// This description will be updated in the near future.
	CORE0_DBUS_REJECT_VADDR: *volatile Register(EXTMEM_CORE0_DBUS_REJECT_VADDR),
	/// This description will be updated in the near future.
	CORE0_IBUS_REJECT_ST: *volatile Register(EXTMEM_CORE0_IBUS_REJECT_ST),
	/// This description will be updated in the near future.
	CORE0_IBUS_REJECT_VADDR: *volatile Register(EXTMEM_CORE0_IBUS_REJECT_VADDR),
	/// This description will be updated in the near future.
	CACHE_MMU_FAULT_CONTENT: *volatile Register(EXTMEM_CACHE_MMU_FAULT_CONTENT),
	/// This description will be updated in the near future.
	CACHE_MMU_FAULT_VADDR: *volatile Register(EXTMEM_CACHE_MMU_FAULT_VADDR),
	/// This description will be updated in the near future.
	CACHE_WRAP_AROUND_CTRL: *volatile Register(EXTMEM_CACHE_WRAP_AROUND_CTRL),
	/// This description will be updated in the near future.
	CACHE_MMU_POWER_CTRL: *volatile Register(EXTMEM_CACHE_MMU_POWER_CTRL),
	/// This description will be updated in the near future.
	CACHE_STATE: *volatile Register(EXTMEM_CACHE_STATE),
	/// This description will be updated in the near future.
	CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE: *volatile Register(EXTMEM_CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE),
	/// This description will be updated in the near future.
	CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON: *volatile Register(EXTMEM_CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON),
	/// This description will be updated in the near future.
	CACHE_PRELOAD_INT_CTRL: *volatile Register(EXTMEM_CACHE_PRELOAD_INT_CTRL),
	/// This description will be updated in the near future.
	CACHE_SYNC_INT_CTRL: *volatile Register(EXTMEM_CACHE_SYNC_INT_CTRL),
	/// This description will be updated in the near future.
	CACHE_MMU_OWNER: *volatile Register(EXTMEM_CACHE_MMU_OWNER),
	/// This description will be updated in the near future.
	CACHE_CONF_MISC: *volatile Register(EXTMEM_CACHE_CONF_MISC),
	/// This description will be updated in the near future.
	ICACHE_FREEZE: *volatile Register(EXTMEM_ICACHE_FREEZE),
	/// This description will be updated in the near future.
	ICACHE_ATOMIC_OPERATE_ENA: *volatile Register(EXTMEM_ICACHE_ATOMIC_OPERATE_ENA),
	/// This description will be updated in the near future.
	CACHE_REQUEST: *volatile Register(EXTMEM_CACHE_REQUEST),
	/// This description will be updated in the near future.
	IBUS_PMS_TBL_LOCK: *volatile Register(EXTMEM_IBUS_PMS_TBL_LOCK),
	/// This description will be updated in the near future.
	IBUS_PMS_TBL_BOUNDARY0: *volatile Register(EXTMEM_IBUS_PMS_TBL_BOUNDARY0),
	/// This description will be updated in the near future.
	IBUS_PMS_TBL_BOUNDARY1: *volatile Register(EXTMEM_IBUS_PMS_TBL_BOUNDARY1),
	/// This description will be updated in the near future.
	IBUS_PMS_TBL_BOUNDARY2: *volatile Register(EXTMEM_IBUS_PMS_TBL_BOUNDARY2),
	/// This description will be updated in the near future.
	IBUS_PMS_TBL_ATTR: *volatile Register(EXTMEM_IBUS_PMS_TBL_ATTR),
	/// This description will be updated in the near future.
	DBUS_PMS_TBL_LOCK: *volatile Register(EXTMEM_DBUS_PMS_TBL_LOCK),
	/// This description will be updated in the near future.
	DBUS_PMS_TBL_BOUNDARY0: *volatile Register(EXTMEM_DBUS_PMS_TBL_BOUNDARY0),
	/// This description will be updated in the near future.
	DBUS_PMS_TBL_BOUNDARY1: *volatile Register(EXTMEM_DBUS_PMS_TBL_BOUNDARY1),
	/// This description will be updated in the near future.
	DBUS_PMS_TBL_BOUNDARY2: *volatile Register(EXTMEM_DBUS_PMS_TBL_BOUNDARY2),
	/// This description will be updated in the near future.
	DBUS_PMS_TBL_ATTR: *volatile Register(EXTMEM_DBUS_PMS_TBL_ATTR),
	/// This description will be updated in the near future.
	CLOCK_GATE: *volatile Register(EXTMEM_CLOCK_GATE),
	/// This description will be updated in the near future.
	REG_DATE: *volatile Register(EXTMEM_REG_DATE),
};

// Peripheral instance
const EXTMEM_instance = EXTMEM {
	.ICACHE_CTRL = @ptrFromInt(0x600c4000),
	.ICACHE_CTRL1 = @ptrFromInt(0x600c4004),
	.ICACHE_TAG_POWER_CTRL = @ptrFromInt(0x600c4008),
	.ICACHE_PRELOCK_CTRL = @ptrFromInt(0x600c400c),
	.ICACHE_PRELOCK_SCT0_ADDR = @ptrFromInt(0x600c4010),
	.ICACHE_PRELOCK_SCT1_ADDR = @ptrFromInt(0x600c4014),
	.ICACHE_PRELOCK_SCT_SIZE = @ptrFromInt(0x600c4018),
	.ICACHE_LOCK_CTRL = @ptrFromInt(0x600c401c),
	.ICACHE_LOCK_ADDR = @ptrFromInt(0x600c4020),
	.ICACHE_LOCK_SIZE = @ptrFromInt(0x600c4024),
	.ICACHE_SYNC_CTRL = @ptrFromInt(0x600c4028),
	.ICACHE_SYNC_ADDR = @ptrFromInt(0x600c402c),
	.ICACHE_SYNC_SIZE = @ptrFromInt(0x600c4030),
	.ICACHE_PRELOAD_CTRL = @ptrFromInt(0x600c4034),
	.ICACHE_PRELOAD_ADDR = @ptrFromInt(0x600c4038),
	.ICACHE_PRELOAD_SIZE = @ptrFromInt(0x600c403c),
	.ICACHE_AUTOLOAD_CTRL = @ptrFromInt(0x600c4040),
	.ICACHE_AUTOLOAD_SCT0_ADDR = @ptrFromInt(0x600c4044),
	.ICACHE_AUTOLOAD_SCT0_SIZE = @ptrFromInt(0x600c4048),
	.ICACHE_AUTOLOAD_SCT1_ADDR = @ptrFromInt(0x600c404c),
	.ICACHE_AUTOLOAD_SCT1_SIZE = @ptrFromInt(0x600c4050),
	.IBUS_TO_FLASH_START_VADDR = @ptrFromInt(0x600c4054),
	.IBUS_TO_FLASH_END_VADDR = @ptrFromInt(0x600c4058),
	.DBUS_TO_FLASH_START_VADDR = @ptrFromInt(0x600c405c),
	.DBUS_TO_FLASH_END_VADDR = @ptrFromInt(0x600c4060),
	.CACHE_ACS_CNT_CLR = @ptrFromInt(0x600c4064),
	.IBUS_ACS_MISS_CNT = @ptrFromInt(0x600c4068),
	.IBUS_ACS_CNT = @ptrFromInt(0x600c406c),
	.DBUS_ACS_FLASH_MISS_CNT = @ptrFromInt(0x600c4070),
	.DBUS_ACS_CNT = @ptrFromInt(0x600c4074),
	.CACHE_ILG_INT_ENA = @ptrFromInt(0x600c4078),
	.CACHE_ILG_INT_CLR = @ptrFromInt(0x600c407c),
	.CACHE_ILG_INT_ST = @ptrFromInt(0x600c4080),
	.CORE0_ACS_CACHE_INT_ENA = @ptrFromInt(0x600c4084),
	.CORE0_ACS_CACHE_INT_CLR = @ptrFromInt(0x600c4088),
	.CORE0_ACS_CACHE_INT_ST = @ptrFromInt(0x600c408c),
	.CORE0_DBUS_REJECT_ST = @ptrFromInt(0x600c4090),
	.CORE0_DBUS_REJECT_VADDR = @ptrFromInt(0x600c4094),
	.CORE0_IBUS_REJECT_ST = @ptrFromInt(0x600c4098),
	.CORE0_IBUS_REJECT_VADDR = @ptrFromInt(0x600c409c),
	.CACHE_MMU_FAULT_CONTENT = @ptrFromInt(0x600c40a0),
	.CACHE_MMU_FAULT_VADDR = @ptrFromInt(0x600c40a4),
	.CACHE_WRAP_AROUND_CTRL = @ptrFromInt(0x600c40a8),
	.CACHE_MMU_POWER_CTRL = @ptrFromInt(0x600c40ac),
	.CACHE_STATE = @ptrFromInt(0x600c40b0),
	.CACHE_ENCRYPT_DECRYPT_RECORD_DISABLE = @ptrFromInt(0x600c40b4),
	.CACHE_ENCRYPT_DECRYPT_CLK_FORCE_ON = @ptrFromInt(0x600c40b8),
	.CACHE_PRELOAD_INT_CTRL = @ptrFromInt(0x600c40bc),
	.CACHE_SYNC_INT_CTRL = @ptrFromInt(0x600c40c0),
	.CACHE_MMU_OWNER = @ptrFromInt(0x600c40c4),
	.CACHE_CONF_MISC = @ptrFromInt(0x600c40c8),
	.ICACHE_FREEZE = @ptrFromInt(0x600c40cc),
	.ICACHE_ATOMIC_OPERATE_ENA = @ptrFromInt(0x600c40d0),
	.CACHE_REQUEST = @ptrFromInt(0x600c40d4),
	.IBUS_PMS_TBL_LOCK = @ptrFromInt(0x600c40d8),
	.IBUS_PMS_TBL_BOUNDARY0 = @ptrFromInt(0x600c40dc),
	.IBUS_PMS_TBL_BOUNDARY1 = @ptrFromInt(0x600c40e0),
	.IBUS_PMS_TBL_BOUNDARY2 = @ptrFromInt(0x600c40e4),
	.IBUS_PMS_TBL_ATTR = @ptrFromInt(0x600c40e8),
	.DBUS_PMS_TBL_LOCK = @ptrFromInt(0x600c40ec),
	.DBUS_PMS_TBL_BOUNDARY0 = @ptrFromInt(0x600c40f0),
	.DBUS_PMS_TBL_BOUNDARY1 = @ptrFromInt(0x600c40f4),
	.DBUS_PMS_TBL_BOUNDARY2 = @ptrFromInt(0x600c40f8),
	.DBUS_PMS_TBL_ATTR = @ptrFromInt(0x600c40fc),
	.CLOCK_GATE = @ptrFromInt(0x600c4100),
	.REG_DATE = @ptrFromInt(0x600c43fc),
};

const GPIO_BT_SELECT = packed struct {
	/// GPIO bit select register
	BT_SEL: u32,
};

const GPIO_OUT = packed struct {
	/// GPIO output register for GPIO0-25
	DATA_ORIG: u26,
	reserved0: u6,
};

const GPIO_OUT_W1TS = packed struct {
	/// GPIO output set register for GPIO0-25
	OUT_W1TS: u26,
	reserved0: u6,
};

const GPIO_OUT_W1TC = packed struct {
	/// GPIO output clear register for GPIO0-25
	OUT_W1TC: u26,
	reserved0: u6,
};

const GPIO_SDIO_SELECT = packed struct {
	/// GPIO sdio select register
	SDIO_SEL: u8,
	reserved0: u24,
};

const GPIO_ENABLE = packed struct {
	/// GPIO output enable register for GPIO0-25
	DATA: u26,
	reserved0: u6,
};

const GPIO_ENABLE_W1TS = packed struct {
	/// GPIO output enable set register for GPIO0-25
	ENABLE_W1TS: u26,
	reserved0: u6,
};

const GPIO_ENABLE_W1TC = packed struct {
	/// GPIO output enable clear register for GPIO0-25
	ENABLE_W1TC: u26,
	reserved0: u6,
};

const GPIO_STRAP = packed struct {
	/// pad strapping register
	STRAPPING: u16,
	reserved0: u16,
};

const GPIO_IN = packed struct {
	/// GPIO input register for GPIO0-25
	DATA_NEXT: u26,
	reserved0: u6,
};

const GPIO_STATUS = packed struct {
	/// GPIO interrupt status register for GPIO0-25
	INTERRUPT: u26,
	reserved0: u6,
};

const GPIO_STATUS_W1TS = packed struct {
	/// GPIO interrupt status set register for GPIO0-25
	STATUS_W1TS: u26,
	reserved0: u6,
};

const GPIO_STATUS_W1TC = packed struct {
	/// GPIO interrupt status clear register for GPIO0-25
	STATUS_W1TC: u26,
	reserved0: u6,
};

const GPIO_PCPU_INT = packed struct {
	/// GPIO PRO_CPU interrupt status register for GPIO0-25
	PROCPU_INT: u26,
	reserved0: u6,
};

const GPIO_PCPU_NMI_INT = packed struct {
	/// GPIO PRO_CPU(not shielded) interrupt status register for GPIO0-25
	PROCPU_NMI_INT: u26,
	reserved0: u6,
};

const GPIO_CPUSDIO_INT = packed struct {
	/// GPIO CPUSDIO interrupt status register for GPIO0-25
	SDIO_INT: u26,
	reserved0: u6,
};

const GPIO_PINN = packed struct {
	/// set GPIO input_sync2 signal mode. 0:disable. 1:trigger at negedge. 2or3:trigger at posedge.
	SYNC2_BYPASS: u2,
	/// set this bit to select pad driver. 1:open-drain. 0:normal.
	PAD_DRIVER: u1,
	/// set GPIO input_sync1 signal mode. 0:disable. 1:trigger at negedge. 2or3:trigger at posedge.
	SYNC1_BYPASS: u2,
	reserved0: u2,
	/// set this value to choose interrupt mode. 0:disable GPIO interrupt. 1:trigger at posedge. 2:trigger at negedge. 3:trigger at any edge. 4:valid at low level. 5:valid at high level
	INT_TYPE: u3,
	/// set this bit to enable GPIO wakeup.(can only wakeup CPU from Light-sleep Mode)
	WAKEUP_ENABLE: u1,
	/// reserved
	CONFIG: u2,
	/// set bit 13 to enable CPU interrupt. set bit 14 to enable CPU(not shielded) interrupt.
	INT_ENA: u5,
	reserved1: u14,
};

const GPIO_STATUS_NEXT = packed struct {
	/// GPIO interrupt source register for GPIO0-25
	STATUS_INTERRUPT_NEXT: u26,
	reserved0: u6,
};

const GPIO_FUNCN_IN_SEL_CFG = packed struct {
	/// set this value: s=0-53: connect GPIO[s] to this port. s=0x38: set this port always high level. s=0x3C: set this port always low level.
	IN_SEL: u5,
	/// set this bit to invert input signal. 1:invert. 0:not invert.
	IN_INV_SEL: u1,
	/// set this bit to bypass GPIO. 1:do not bypass GPIO. 0:bypass GPIO.
	SEL: u1,
	reserved0: u25,
};

const GPIO_FUNCN_OUT_SEL_CFG = packed struct {
	/// The value of the bits: 0<=s<=256. Set the value to select output signal. s=0-255: output of GPIO[n] equals input of peripheral[s]. s=256: output of GPIO[n] equals GPIO_OUT_REG[n].
	OUT_SEL: u8,
	/// set this bit to invert output signal.1:invert.0:not invert.
	INV_SEL: u1,
	/// set this bit to select output enable signal.1:use GPIO_ENABLE_REG[n] as output enable signal.0:use peripheral output enable signal.
	OEN_SEL: u1,
	/// set this bit to invert output enable signal.1:invert.0:not invert.
	OEN_INV_SEL: u1,
	reserved0: u21,
};

const GPIO_CLOCK_GATE = packed struct {
	/// set this bit to enable GPIO clock gate
	CLK_EN: u1,
	reserved0: u31,
};

const GPIO_REG_DATE = packed struct {
	/// version register
	REG_DATE: u28,
	reserved0: u4,
};

//Peripheral type
const GPIO = struct {
	/// GPIO bit select register
	BT_SELECT: *volatile Register(GPIO_BT_SELECT),
	/// GPIO output register
	OUT: *volatile Register(GPIO_OUT),
	/// GPIO output set register
	OUT_W1TS: *volatile Register(GPIO_OUT_W1TS),
	/// GPIO output clear register
	OUT_W1TC: *volatile Register(GPIO_OUT_W1TC),
	/// GPIO sdio select register
	SDIO_SELECT: *volatile Register(GPIO_SDIO_SELECT),
	/// GPIO output enable register
	ENABLE: *volatile Register(GPIO_ENABLE),
	/// GPIO output enable set register
	ENABLE_W1TS: *volatile Register(GPIO_ENABLE_W1TS),
	/// GPIO output enable clear register
	ENABLE_W1TC: *volatile Register(GPIO_ENABLE_W1TC),
	/// pad strapping register
	STRAP: *volatile Register(GPIO_STRAP),
	/// GPIO input register
	IN: *volatile Register(GPIO_IN),
	/// GPIO interrupt status register
	STATUS: *volatile Register(GPIO_STATUS),
	/// GPIO interrupt status set register
	STATUS_W1TS: *volatile Register(GPIO_STATUS_W1TS),
	/// GPIO interrupt status clear register
	STATUS_W1TC: *volatile Register(GPIO_STATUS_W1TC),
	/// GPIO PRO_CPU interrupt status register
	PCPU_INT: *volatile Register(GPIO_PCPU_INT),
	/// GPIO PRO_CPU(not shielded) interrupt status register
	PCPU_NMI_INT: *volatile Register(GPIO_PCPU_NMI_INT),
	/// GPIO CPUSDIO interrupt status register
	CPUSDIO_INT: *volatile Register(GPIO_CPUSDIO_INT),
	/// GPIO pin configuration register
	PIN0: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN1: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN2: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN3: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN4: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN5: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN6: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN7: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN8: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN9: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN10: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN11: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN12: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN13: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN14: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN15: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN16: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN17: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN18: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN19: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN20: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN21: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN22: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN23: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN24: *volatile Register(GPIO_PINN),
	/// GPIO pin configuration register
	PIN25: *volatile Register(GPIO_PINN),
	/// GPIO interrupt source register
	STATUS_NEXT: *volatile Register(GPIO_STATUS_NEXT),
	/// GPIO input function configuration register
	FUNC0_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC1_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC2_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC3_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC4_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC5_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC6_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC7_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC8_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC9_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC10_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC11_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC12_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC13_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC14_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC15_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC16_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC17_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC18_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC19_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC20_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC21_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC22_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC23_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC24_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC25_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC26_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC27_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC28_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC29_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC30_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC31_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC32_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC33_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC34_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC35_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC36_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC37_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC38_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC39_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC40_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC41_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC42_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC43_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC44_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC45_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC46_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC47_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC48_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC49_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC50_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC51_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC52_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC53_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC54_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC55_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC56_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC57_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC58_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC59_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC60_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC61_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC62_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC63_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC64_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC65_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC66_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC67_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC68_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC69_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC70_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC71_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC72_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC73_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC74_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC75_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC76_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC77_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC78_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC79_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC80_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC81_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC82_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC83_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC84_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC85_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC86_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC87_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC88_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC89_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC90_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC91_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC92_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC93_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC94_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC95_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC96_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC97_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC98_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC99_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC100_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC101_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC102_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC103_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC104_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC105_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC106_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC107_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC108_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC109_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC110_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC111_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC112_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC113_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC114_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC115_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC116_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC117_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC118_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC119_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC120_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC121_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC122_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC123_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC124_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC125_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC126_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO input function configuration register
	FUNC127_IN_SEL_CFG: *volatile Register(GPIO_FUNCN_IN_SEL_CFG),
	/// GPIO output function select register
	FUNC0_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC1_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC2_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC3_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC4_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC5_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC6_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC7_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC8_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC9_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC10_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC11_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC12_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC13_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC14_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC15_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC16_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC17_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC18_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC19_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC20_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC21_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC22_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC23_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC24_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO output function select register
	FUNC25_OUT_SEL_CFG: *volatile Register(GPIO_FUNCN_OUT_SEL_CFG),
	/// GPIO clock gate register
	CLOCK_GATE: *volatile Register(GPIO_CLOCK_GATE),
	/// GPIO version register
	REG_DATE: *volatile Register(GPIO_REG_DATE),
};

// Peripheral instance
const GPIO_instance = GPIO {
	.BT_SELECT = @ptrFromInt(0x60004000),
	.OUT = @ptrFromInt(0x60004004),
	.OUT_W1TS = @ptrFromInt(0x60004008),
	.OUT_W1TC = @ptrFromInt(0x6000400c),
	.SDIO_SELECT = @ptrFromInt(0x6000401c),
	.ENABLE = @ptrFromInt(0x60004020),
	.ENABLE_W1TS = @ptrFromInt(0x60004024),
	.ENABLE_W1TC = @ptrFromInt(0x60004028),
	.STRAP = @ptrFromInt(0x60004038),
	.IN = @ptrFromInt(0x6000403c),
	.STATUS = @ptrFromInt(0x60004044),
	.STATUS_W1TS = @ptrFromInt(0x60004048),
	.STATUS_W1TC = @ptrFromInt(0x6000404c),
	.PCPU_INT = @ptrFromInt(0x6000405c),
	.PCPU_NMI_INT = @ptrFromInt(0x60004060),
	.CPUSDIO_INT = @ptrFromInt(0x60004064),
	.PIN0 = @ptrFromInt(0x60004074),
	.PIN1 = @ptrFromInt(0x60004074),
	.PIN2 = @ptrFromInt(0x60004074),
	.PIN3 = @ptrFromInt(0x60004074),
	.PIN4 = @ptrFromInt(0x60004074),
	.PIN5 = @ptrFromInt(0x60004074),
	.PIN6 = @ptrFromInt(0x60004074),
	.PIN7 = @ptrFromInt(0x60004074),
	.PIN8 = @ptrFromInt(0x60004074),
	.PIN9 = @ptrFromInt(0x60004074),
	.PIN10 = @ptrFromInt(0x60004074),
	.PIN11 = @ptrFromInt(0x60004074),
	.PIN12 = @ptrFromInt(0x60004074),
	.PIN13 = @ptrFromInt(0x60004074),
	.PIN14 = @ptrFromInt(0x60004074),
	.PIN15 = @ptrFromInt(0x60004074),
	.PIN16 = @ptrFromInt(0x60004074),
	.PIN17 = @ptrFromInt(0x60004074),
	.PIN18 = @ptrFromInt(0x60004074),
	.PIN19 = @ptrFromInt(0x60004074),
	.PIN20 = @ptrFromInt(0x60004074),
	.PIN21 = @ptrFromInt(0x60004074),
	.PIN22 = @ptrFromInt(0x60004074),
	.PIN23 = @ptrFromInt(0x60004074),
	.PIN24 = @ptrFromInt(0x60004074),
	.PIN25 = @ptrFromInt(0x60004074),
	.STATUS_NEXT = @ptrFromInt(0x6000414c),
	.FUNC0_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC1_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC2_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC3_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC4_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC5_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC6_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC7_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC8_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC9_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC10_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC11_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC12_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC13_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC14_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC15_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC16_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC17_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC18_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC19_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC20_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC21_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC22_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC23_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC24_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC25_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC26_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC27_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC28_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC29_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC30_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC31_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC32_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC33_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC34_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC35_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC36_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC37_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC38_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC39_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC40_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC41_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC42_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC43_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC44_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC45_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC46_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC47_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC48_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC49_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC50_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC51_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC52_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC53_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC54_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC55_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC56_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC57_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC58_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC59_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC60_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC61_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC62_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC63_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC64_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC65_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC66_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC67_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC68_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC69_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC70_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC71_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC72_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC73_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC74_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC75_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC76_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC77_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC78_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC79_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC80_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC81_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC82_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC83_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC84_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC85_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC86_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC87_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC88_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC89_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC90_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC91_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC92_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC93_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC94_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC95_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC96_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC97_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC98_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC99_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC100_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC101_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC102_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC103_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC104_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC105_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC106_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC107_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC108_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC109_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC110_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC111_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC112_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC113_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC114_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC115_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC116_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC117_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC118_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC119_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC120_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC121_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC122_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC123_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC124_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC125_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC126_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC127_IN_SEL_CFG = @ptrFromInt(0x60004154),
	.FUNC0_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC1_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC2_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC3_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC4_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC5_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC6_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC7_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC8_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC9_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC10_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC11_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC12_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC13_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC14_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC15_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC16_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC17_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC18_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC19_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC20_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC21_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC22_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC23_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC24_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.FUNC25_OUT_SEL_CFG = @ptrFromInt(0x60004554),
	.CLOCK_GATE = @ptrFromInt(0x6000462c),
	.REG_DATE = @ptrFromInt(0x600046fc),
};

const GPIO_SD_SIGMADELTAN = packed struct {
	/// This field is used to configure the duty cycle of sigma delta modulation output.
	SD0_IN: u8,
	/// This field is used to set a divider value to divide APB clock.
	SD0_PRESCALE: u8,
	reserved0: u16,
};

const GPIO_SD_SIGMADELTA_CG = packed struct {
	reserved0: u31,
	/// Clock enable bit of configuration registers for sigma delta modulation.
	CLK_EN: u1,
};

const GPIO_SD_SIGMADELTA_MISC = packed struct {
	reserved0: u30,
	/// Clock enable bit of sigma delta modulation.
	FUNCTION_CLK_EN: u1,
	/// Reserved.
	SPI_SWAP: u1,
};

const GPIO_SD_SIGMADELTA_VERSION = packed struct {
	/// Version control register.
	GPIO_SD_DATE: u28,
	reserved0: u4,
};

//Peripheral type
const GPIO_SD = struct {
	/// Duty Cycle Configure Register of SDM0
	SIGMADELTA0: *volatile Register(GPIO_SD_SIGMADELTAN),
	/// Duty Cycle Configure Register of SDM1
	SIGMADELTA1: *volatile Register(GPIO_SD_SIGMADELTAN),
	/// Duty Cycle Configure Register of SDM2
	SIGMADELTA2: *volatile Register(GPIO_SD_SIGMADELTAN),
	/// Duty Cycle Configure Register of SDM3
	SIGMADELTA3: *volatile Register(GPIO_SD_SIGMADELTAN),
	/// Clock Gating Configure Register
	SIGMADELTA_CG: *volatile Register(GPIO_SD_SIGMADELTA_CG),
	/// MISC Register
	SIGMADELTA_MISC: *volatile Register(GPIO_SD_SIGMADELTA_MISC),
	/// Version Control Register
	SIGMADELTA_VERSION: *volatile Register(GPIO_SD_SIGMADELTA_VERSION),
};

// Peripheral instance
const GPIO_SD_instance = GPIO_SD {
	.SIGMADELTA0 = @ptrFromInt(0x60004f00),
	.SIGMADELTA1 = @ptrFromInt(0x60004f00),
	.SIGMADELTA2 = @ptrFromInt(0x60004f00),
	.SIGMADELTA3 = @ptrFromInt(0x60004f00),
	.SIGMADELTA_CG = @ptrFromInt(0x60004f20),
	.SIGMADELTA_MISC = @ptrFromInt(0x60004f24),
	.SIGMADELTA_VERSION = @ptrFromInt(0x60004f28),
};

const HMAC_SET_START = packed struct {
	/// Start hmac operation.
	SET_START: u1,
	reserved0: u31,
};

const HMAC_SET_PARA_PURPOSE = packed struct {
	/// Set hmac parameter purpose.
	PURPOSE_SET: u4,
	reserved0: u28,
};

const HMAC_SET_PARA_KEY = packed struct {
	/// Set hmac parameter key.
	KEY_SET: u3,
	reserved0: u29,
};

const HMAC_SET_PARA_FINISH = packed struct {
	/// Finish hmac configuration.
	SET_PARA_END: u1,
	reserved0: u31,
};

const HMAC_SET_MESSAGE_ONE = packed struct {
	/// Call SHA to calculate one message block.
	SET_TEXT_ONE: u1,
	reserved0: u31,
};

const HMAC_SET_MESSAGE_ING = packed struct {
	/// Continue typical hmac.
	SET_TEXT_ING: u1,
	reserved0: u31,
};

const HMAC_SET_MESSAGE_END = packed struct {
	/// Start hardware padding.
	SET_TEXT_END: u1,
	reserved0: u31,
};

const HMAC_SET_RESULT_FINISH = packed struct {
	/// After read result from upstream, then let hmac back to idle.
	SET_RESULT_END: u1,
	reserved0: u31,
};

const HMAC_SET_INVALIDATE_JTAG = packed struct {
	/// Clear result from hmac downstream JTAG.
	SET_INVALIDATE_JTAG: u1,
	reserved0: u31,
};

const HMAC_SET_INVALIDATE_DS = packed struct {
	/// Clear result from hmac downstream DS.
	SET_INVALIDATE_DS: u1,
	reserved0: u31,
};

const HMAC_QUERY_ERROR = packed struct {
	/// Hmac configuration state. 0: key are agree with purpose. 1: error
	QUERY_CHECK: u1,
	reserved0: u31,
};

const HMAC_QUERY_BUSY = packed struct {
	/// Hmac state. 1'b0: idle. 1'b1: busy
	BUSY_STATE: u1,
	reserved0: u31,
};

const HMAC_WR_MESSAGE_MEMN = packed struct {
	reserved0: u32,
};

const HMAC_RD_RESULT_MEMN = packed struct {
	reserved0: u32,
};

const HMAC_SET_MESSAGE_PAD = packed struct {
	/// Start software padding.
	SET_TEXT_PAD: u1,
	reserved0: u31,
};

const HMAC_ONE_BLOCK = packed struct {
	/// Don't have to do padding.
	SET_ONE_BLOCK: u1,
	reserved0: u31,
};

const HMAC_SOFT_JTAG_CTRL = packed struct {
	/// Turn on JTAG verification.
	SOFT_JTAG_CTRL: u1,
	reserved0: u31,
};

const HMAC_WR_JTAG = packed struct {
	/// 32-bit of key to be compared.
	WR_JTAG: u32,
};

//Peripheral type
const HMAC = struct {
	/// Process control register 0.
	SET_START: *volatile Register(HMAC_SET_START),
	/// Configure purpose.
	SET_PARA_PURPOSE: *volatile Register(HMAC_SET_PARA_PURPOSE),
	/// Configure key.
	SET_PARA_KEY: *volatile Register(HMAC_SET_PARA_KEY),
	/// Finish initial configuration.
	SET_PARA_FINISH: *volatile Register(HMAC_SET_PARA_FINISH),
	/// Process control register 1.
	SET_MESSAGE_ONE: *volatile Register(HMAC_SET_MESSAGE_ONE),
	/// Process control register 2.
	SET_MESSAGE_ING: *volatile Register(HMAC_SET_MESSAGE_ING),
	/// Process control register 3.
	SET_MESSAGE_END: *volatile Register(HMAC_SET_MESSAGE_END),
	/// Process control register 4.
	SET_RESULT_FINISH: *volatile Register(HMAC_SET_RESULT_FINISH),
	/// Invalidate register 0.
	SET_INVALIDATE_JTAG: *volatile Register(HMAC_SET_INVALIDATE_JTAG),
	/// Invalidate register 1.
	SET_INVALIDATE_DS: *volatile Register(HMAC_SET_INVALIDATE_DS),
	/// Error register.
	QUERY_ERROR: *volatile Register(HMAC_QUERY_ERROR),
	/// Busy register.
	QUERY_BUSY: *volatile Register(HMAC_QUERY_BUSY),
	/// Message block memory.
	WR_MESSAGE_MEM0: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM1: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM2: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM3: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM4: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM5: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM6: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM7: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM8: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM9: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM10: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM11: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM12: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM13: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM14: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Message block memory.
	WR_MESSAGE_MEM15: *volatile Register(HMAC_WR_MESSAGE_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM0: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM1: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM2: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM3: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM4: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM5: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM6: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Result from upstream.
	RD_RESULT_MEM7: *volatile Register(HMAC_RD_RESULT_MEMN),
	/// Process control register 5.
	SET_MESSAGE_PAD: *volatile Register(HMAC_SET_MESSAGE_PAD),
	/// Process control register 6.
	ONE_BLOCK: *volatile Register(HMAC_ONE_BLOCK),
	/// Jtag register 0.
	SOFT_JTAG_CTRL: *volatile Register(HMAC_SOFT_JTAG_CTRL),
	/// Jtag register 1.
	WR_JTAG: *volatile Register(HMAC_WR_JTAG),
};

// Peripheral instance
const HMAC_instance = HMAC {
	.SET_START = @ptrFromInt(0x6003e040),
	.SET_PARA_PURPOSE = @ptrFromInt(0x6003e044),
	.SET_PARA_KEY = @ptrFromInt(0x6003e048),
	.SET_PARA_FINISH = @ptrFromInt(0x6003e04c),
	.SET_MESSAGE_ONE = @ptrFromInt(0x6003e050),
	.SET_MESSAGE_ING = @ptrFromInt(0x6003e054),
	.SET_MESSAGE_END = @ptrFromInt(0x6003e058),
	.SET_RESULT_FINISH = @ptrFromInt(0x6003e05c),
	.SET_INVALIDATE_JTAG = @ptrFromInt(0x6003e060),
	.SET_INVALIDATE_DS = @ptrFromInt(0x6003e064),
	.QUERY_ERROR = @ptrFromInt(0x6003e068),
	.QUERY_BUSY = @ptrFromInt(0x6003e06c),
	.WR_MESSAGE_MEM0 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM1 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM2 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM3 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM4 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM5 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM6 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM7 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM8 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM9 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM10 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM11 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM12 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM13 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM14 = @ptrFromInt(0x6003e080),
	.WR_MESSAGE_MEM15 = @ptrFromInt(0x6003e080),
	.RD_RESULT_MEM0 = @ptrFromInt(0x6003e0c0),
	.RD_RESULT_MEM1 = @ptrFromInt(0x6003e0c0),
	.RD_RESULT_MEM2 = @ptrFromInt(0x6003e0c0),
	.RD_RESULT_MEM3 = @ptrFromInt(0x6003e0c0),
	.RD_RESULT_MEM4 = @ptrFromInt(0x6003e0c0),
	.RD_RESULT_MEM5 = @ptrFromInt(0x6003e0c0),
	.RD_RESULT_MEM6 = @ptrFromInt(0x6003e0c0),
	.RD_RESULT_MEM7 = @ptrFromInt(0x6003e0c0),
	.SET_MESSAGE_PAD = @ptrFromInt(0x6003e0f0),
	.ONE_BLOCK = @ptrFromInt(0x6003e0f4),
	.SOFT_JTAG_CTRL = @ptrFromInt(0x6003e0f8),
	.WR_JTAG = @ptrFromInt(0x6003e0fc),
};

const I2C0_SCL_LOW_PERIOD = packed struct {
	/// reg_scl_low_period
	SCL_LOW_PERIOD: u9,
	reserved0: u23,
};

const I2C0_CTR = packed struct {
	/// reg_sda_force_out
	SDA_FORCE_OUT: u1,
	/// reg_scl_force_out
	SCL_FORCE_OUT: u1,
	/// reg_sample_scl_level
	SAMPLE_SCL_LEVEL: u1,
	/// reg_rx_full_ack_level
	RX_FULL_ACK_LEVEL: u1,
	/// reg_ms_mode
	MS_MODE: u1,
	/// reg_trans_start
	TRANS_START: u1,
	/// reg_tx_lsb_first
	TX_LSB_FIRST: u1,
	/// reg_rx_lsb_first
	RX_LSB_FIRST: u1,
	/// reg_clk_en
	CLK_EN: u1,
	/// reg_arbitration_en
	ARBITRATION_EN: u1,
	/// reg_fsm_rst
	FSM_RST: u1,
	/// reg_conf_upgate
	CONF_UPGATE: u1,
	/// reg_slv_tx_auto_start_en
	SLV_TX_AUTO_START_EN: u1,
	/// reg_addr_10bit_rw_check_en
	ADDR_10BIT_RW_CHECK_EN: u1,
	/// reg_addr_broadcasting_en
	ADDR_BROADCASTING_EN: u1,
	reserved0: u17,
};

const I2C0_SR = packed struct {
	/// reg_resp_rec
	RESP_REC: u1,
	/// reg_slave_rw
	SLAVE_RW: u1,
	reserved0: u1,
	/// reg_arb_lost
	ARB_LOST: u1,
	/// reg_bus_busy
	BUS_BUSY: u1,
	/// reg_slave_addressed
	SLAVE_ADDRESSED: u1,
	reserved1: u2,
	/// reg_rxfifo_cnt
	RXFIFO_CNT: u6,
	/// reg_stretch_cause
	STRETCH_CAUSE: u2,
	reserved2: u2,
	/// reg_txfifo_cnt
	TXFIFO_CNT: u6,
	/// reg_scl_main_state_last
	SCL_MAIN_STATE_LAST: u3,
	reserved3: u1,
	/// reg_scl_state_last
	SCL_STATE_LAST: u3,
	reserved4: u1,
};

const I2C0_TO = packed struct {
	/// reg_time_out_value
	TIME_OUT_VALUE: u5,
	/// reg_time_out_en
	TIME_OUT_EN: u1,
	reserved0: u26,
};

const I2C0_SLAVE_ADDR = packed struct {
	/// reg_slave_addr
	SLAVE_ADDR: u15,
	reserved0: u16,
	/// reg_addr_10bit_en
	ADDR_10BIT_EN: u1,
};

const I2C0_FIFO_ST = packed struct {
	/// reg_rxfifo_raddr
	RXFIFO_RADDR: u5,
	/// reg_rxfifo_waddr
	RXFIFO_WADDR: u5,
	/// reg_txfifo_raddr
	TXFIFO_RADDR: u5,
	/// reg_txfifo_waddr
	TXFIFO_WADDR: u5,
	reserved0: u2,
	/// reg_slave_rw_point
	SLAVE_RW_POINT: u8,
	reserved1: u2,
};

const I2C0_FIFO_CONF = packed struct {
	/// reg_rxfifo_wm_thrhd
	RXFIFO_WM_THRHD: u5,
	/// reg_txfifo_wm_thrhd
	TXFIFO_WM_THRHD: u5,
	/// reg_nonfifo_en
	NONFIFO_EN: u1,
	/// reg_fifo_addr_cfg_en
	FIFO_ADDR_CFG_EN: u1,
	/// reg_rx_fifo_rst
	RX_FIFO_RST: u1,
	/// reg_tx_fifo_rst
	TX_FIFO_RST: u1,
	/// reg_fifo_prt_en
	FIFO_PRT_EN: u1,
	reserved0: u17,
};

const I2C0_DATA = packed struct {
	/// reg_fifo_rdata
	FIFO_RDATA: u8,
	reserved0: u24,
};

const I2C0_INT_RAW = packed struct {
	/// reg_rxfifo_wm_int_raw
	RXFIFO_WM_INT_RAW: u1,
	/// reg_txfifo_wm_int_raw
	TXFIFO_WM_INT_RAW: u1,
	/// reg_rxfifo_ovf_int_raw
	RXFIFO_OVF_INT_RAW: u1,
	/// reg_end_detect_int_raw
	END_DETECT_INT_RAW: u1,
	/// reg_byte_trans_done_int_raw
	BYTE_TRANS_DONE_INT_RAW: u1,
	/// reg_arbitration_lost_int_raw
	ARBITRATION_LOST_INT_RAW: u1,
	/// reg_mst_txfifo_udf_int_raw
	MST_TXFIFO_UDF_INT_RAW: u1,
	/// reg_trans_complete_int_raw
	TRANS_COMPLETE_INT_RAW: u1,
	/// reg_time_out_int_raw
	TIME_OUT_INT_RAW: u1,
	/// reg_trans_start_int_raw
	TRANS_START_INT_RAW: u1,
	/// reg_nack_int_raw
	NACK_INT_RAW: u1,
	/// reg_txfifo_ovf_int_raw
	TXFIFO_OVF_INT_RAW: u1,
	/// reg_rxfifo_udf_int_raw
	RXFIFO_UDF_INT_RAW: u1,
	/// reg_scl_st_to_int_raw
	SCL_ST_TO_INT_RAW: u1,
	/// reg_scl_main_st_to_int_raw
	SCL_MAIN_ST_TO_INT_RAW: u1,
	/// reg_det_start_int_raw
	DET_START_INT_RAW: u1,
	/// reg_slave_stretch_int_raw
	SLAVE_STRETCH_INT_RAW: u1,
	/// reg_general_call_int_raw
	GENERAL_CALL_INT_RAW: u1,
	reserved0: u14,
};

const I2C0_INT_CLR = packed struct {
	/// reg_rxfifo_wm_int_clr
	RXFIFO_WM_INT_CLR: u1,
	/// reg_txfifo_wm_int_clr
	TXFIFO_WM_INT_CLR: u1,
	/// reg_rxfifo_ovf_int_clr
	RXFIFO_OVF_INT_CLR: u1,
	/// reg_end_detect_int_clr
	END_DETECT_INT_CLR: u1,
	/// reg_byte_trans_done_int_clr
	BYTE_TRANS_DONE_INT_CLR: u1,
	/// reg_arbitration_lost_int_clr
	ARBITRATION_LOST_INT_CLR: u1,
	/// reg_mst_txfifo_udf_int_clr
	MST_TXFIFO_UDF_INT_CLR: u1,
	/// reg_trans_complete_int_clr
	TRANS_COMPLETE_INT_CLR: u1,
	/// reg_time_out_int_clr
	TIME_OUT_INT_CLR: u1,
	/// reg_trans_start_int_clr
	TRANS_START_INT_CLR: u1,
	/// reg_nack_int_clr
	NACK_INT_CLR: u1,
	/// reg_txfifo_ovf_int_clr
	TXFIFO_OVF_INT_CLR: u1,
	/// reg_rxfifo_udf_int_clr
	RXFIFO_UDF_INT_CLR: u1,
	/// reg_scl_st_to_int_clr
	SCL_ST_TO_INT_CLR: u1,
	/// reg_scl_main_st_to_int_clr
	SCL_MAIN_ST_TO_INT_CLR: u1,
	/// reg_det_start_int_clr
	DET_START_INT_CLR: u1,
	/// reg_slave_stretch_int_clr
	SLAVE_STRETCH_INT_CLR: u1,
	/// reg_general_call_int_clr
	GENERAL_CALL_INT_CLR: u1,
	reserved0: u14,
};

const I2C0_INT_ENA = packed struct {
	/// reg_rxfifo_wm_int_ena
	RXFIFO_WM_INT_ENA: u1,
	/// reg_txfifo_wm_int_ena
	TXFIFO_WM_INT_ENA: u1,
	/// reg_rxfifo_ovf_int_ena
	RXFIFO_OVF_INT_ENA: u1,
	/// reg_end_detect_int_ena
	END_DETECT_INT_ENA: u1,
	/// reg_byte_trans_done_int_ena
	BYTE_TRANS_DONE_INT_ENA: u1,
	/// reg_arbitration_lost_int_ena
	ARBITRATION_LOST_INT_ENA: u1,
	/// reg_mst_txfifo_udf_int_ena
	MST_TXFIFO_UDF_INT_ENA: u1,
	/// reg_trans_complete_int_ena
	TRANS_COMPLETE_INT_ENA: u1,
	/// reg_time_out_int_ena
	TIME_OUT_INT_ENA: u1,
	/// reg_trans_start_int_ena
	TRANS_START_INT_ENA: u1,
	/// reg_nack_int_ena
	NACK_INT_ENA: u1,
	/// reg_txfifo_ovf_int_ena
	TXFIFO_OVF_INT_ENA: u1,
	/// reg_rxfifo_udf_int_ena
	RXFIFO_UDF_INT_ENA: u1,
	/// reg_scl_st_to_int_ena
	SCL_ST_TO_INT_ENA: u1,
	/// reg_scl_main_st_to_int_ena
	SCL_MAIN_ST_TO_INT_ENA: u1,
	/// reg_det_start_int_ena
	DET_START_INT_ENA: u1,
	/// reg_slave_stretch_int_ena
	SLAVE_STRETCH_INT_ENA: u1,
	/// reg_general_call_int_ena
	GENERAL_CALL_INT_ENA: u1,
	reserved0: u14,
};

const I2C0_INT_STATUS = packed struct {
	/// reg_rxfifo_wm_int_st
	RXFIFO_WM_INT_ST: u1,
	/// reg_txfifo_wm_int_st
	TXFIFO_WM_INT_ST: u1,
	/// reg_rxfifo_ovf_int_st
	RXFIFO_OVF_INT_ST: u1,
	/// reg_end_detect_int_st
	END_DETECT_INT_ST: u1,
	/// reg_byte_trans_done_int_st
	BYTE_TRANS_DONE_INT_ST: u1,
	/// reg_arbitration_lost_int_st
	ARBITRATION_LOST_INT_ST: u1,
	/// reg_mst_txfifo_udf_int_st
	MST_TXFIFO_UDF_INT_ST: u1,
	/// reg_trans_complete_int_st
	TRANS_COMPLETE_INT_ST: u1,
	/// reg_time_out_int_st
	TIME_OUT_INT_ST: u1,
	/// reg_trans_start_int_st
	TRANS_START_INT_ST: u1,
	/// reg_nack_int_st
	NACK_INT_ST: u1,
	/// reg_txfifo_ovf_int_st
	TXFIFO_OVF_INT_ST: u1,
	/// reg_rxfifo_udf_int_st
	RXFIFO_UDF_INT_ST: u1,
	/// reg_scl_st_to_int_st
	SCL_ST_TO_INT_ST: u1,
	/// reg_scl_main_st_to_int_st
	SCL_MAIN_ST_TO_INT_ST: u1,
	/// reg_det_start_int_st
	DET_START_INT_ST: u1,
	/// reg_slave_stretch_int_st
	SLAVE_STRETCH_INT_ST: u1,
	/// reg_general_call_int_st
	GENERAL_CALL_INT_ST: u1,
	reserved0: u14,
};

const I2C0_SDA_HOLD = packed struct {
	/// reg_sda_hold_time
	TIME: u9,
	reserved0: u23,
};

const I2C0_SDA_SAMPLE = packed struct {
	/// reg_sda_sample_time
	TIME: u9,
	reserved0: u23,
};

const I2C0_SCL_HIGH_PERIOD = packed struct {
	/// reg_scl_high_period
	SCL_HIGH_PERIOD: u9,
	/// reg_scl_wait_high_period
	SCL_WAIT_HIGH_PERIOD: u7,
	reserved0: u16,
};

const I2C0_SCL_START_HOLD = packed struct {
	/// reg_scl_start_hold_time
	TIME: u9,
	reserved0: u23,
};

const I2C0_SCL_RSTART_SETUP = packed struct {
	/// reg_scl_rstart_setup_time
	TIME: u9,
	reserved0: u23,
};

const I2C0_SCL_STOP_HOLD = packed struct {
	/// reg_scl_stop_hold_time
	TIME: u9,
	reserved0: u23,
};

const I2C0_SCL_STOP_SETUP = packed struct {
	/// reg_scl_stop_setup_time
	TIME: u9,
	reserved0: u23,
};

const I2C0_FILTER_CFG = packed struct {
	/// reg_scl_filter_thres
	SCL_FILTER_THRES: u4,
	/// reg_sda_filter_thres
	SDA_FILTER_THRES: u4,
	/// reg_scl_filter_en
	SCL_FILTER_EN: u1,
	/// reg_sda_filter_en
	SDA_FILTER_EN: u1,
	reserved0: u22,
};

const I2C0_CLK_CONF = packed struct {
	/// reg_sclk_div_num
	SCLK_DIV_NUM: u8,
	/// reg_sclk_div_a
	SCLK_DIV_A: u6,
	/// reg_sclk_div_b
	SCLK_DIV_B: u6,
	/// reg_sclk_sel
	SCLK_SEL: u1,
	/// reg_sclk_active
	SCLK_ACTIVE: u1,
	reserved0: u10,
};

const I2C0_COMDN = packed struct {
	/// reg_command
	COMMAND: u14,
	reserved0: u17,
	/// reg_command_done
	COMMAND_DONE: u1,
};

const I2C0_SCL_ST_TIME_OUT = packed struct {
	/// reg_scl_st_to_regno more than 23
	SCL_ST_TO_I2C: u5,
	reserved0: u27,
};

const I2C0_SCL_MAIN_ST_TIME_OUT = packed struct {
	/// reg_scl_main_st_to_regno more than 23
	SCL_MAIN_ST_TO_I2C: u5,
	reserved0: u27,
};

const I2C0_SCL_SP_CONF = packed struct {
	/// reg_scl_rst_slv_en
	SCL_RST_SLV_EN: u1,
	/// reg_scl_rst_slv_num
	SCL_RST_SLV_NUM: u5,
	/// reg_scl_pd_en
	SCL_PD_EN: u1,
	/// reg_sda_pd_en
	SDA_PD_EN: u1,
	reserved0: u24,
};

const I2C0_SCL_STRETCH_CONF = packed struct {
	/// reg_stretch_protect_num
	STRETCH_PROTECT_NUM: u10,
	/// reg_slave_scl_stretch_en
	SLAVE_SCL_STRETCH_EN: u1,
	/// reg_slave_scl_stretch_clr
	SLAVE_SCL_STRETCH_CLR: u1,
	/// reg_slave_byte_ack_ctl_en
	SLAVE_BYTE_ACK_CTL_EN: u1,
	/// reg_slave_byte_ack_lvl
	SLAVE_BYTE_ACK_LVL: u1,
	reserved0: u18,
};

const I2C0_DATE = packed struct {
	/// reg_date
	DATE: u32,
};

const I2C0_TXFIFO_START_ADDR = packed struct {
	/// reg_txfifo_start_addr.
	TXFIFO_START_ADDR: u32,
};

const I2C0_RXFIFO_START_ADDR = packed struct {
	/// reg_rxfifo_start_addr.
	RXFIFO_START_ADDR: u32,
};

//Peripheral type
const I2C0 = struct {
	/// I2C_SCL_LOW_PERIOD_REG
	SCL_LOW_PERIOD: *volatile Register(I2C0_SCL_LOW_PERIOD),
	/// I2C_CTR_REG
	CTR: *volatile Register(I2C0_CTR),
	/// I2C_SR_REG
	SR: *volatile Register(I2C0_SR),
	/// I2C_TO_REG
	TO: *volatile Register(I2C0_TO),
	/// I2C_SLAVE_ADDR_REG
	SLAVE_ADDR: *volatile Register(I2C0_SLAVE_ADDR),
	/// I2C_FIFO_ST_REG
	FIFO_ST: *volatile Register(I2C0_FIFO_ST),
	/// I2C_FIFO_CONF_REG
	FIFO_CONF: *volatile Register(I2C0_FIFO_CONF),
	/// I2C_FIFO_DATA_REG
	DATA: *volatile Register(I2C0_DATA),
	/// I2C_INT_RAW_REG
	INT_RAW: *volatile Register(I2C0_INT_RAW),
	/// I2C_INT_CLR_REG
	INT_CLR: *volatile Register(I2C0_INT_CLR),
	/// I2C_INT_ENA_REG
	INT_ENA: *volatile Register(I2C0_INT_ENA),
	/// I2C_INT_STATUS_REG
	INT_STATUS: *volatile Register(I2C0_INT_STATUS),
	/// I2C_SDA_HOLD_REG
	SDA_HOLD: *volatile Register(I2C0_SDA_HOLD),
	/// I2C_SDA_SAMPLE_REG
	SDA_SAMPLE: *volatile Register(I2C0_SDA_SAMPLE),
	/// I2C_SCL_HIGH_PERIOD_REG
	SCL_HIGH_PERIOD: *volatile Register(I2C0_SCL_HIGH_PERIOD),
	/// I2C_SCL_START_HOLD_REG
	SCL_START_HOLD: *volatile Register(I2C0_SCL_START_HOLD),
	/// I2C_SCL_RSTART_SETUP_REG
	SCL_RSTART_SETUP: *volatile Register(I2C0_SCL_RSTART_SETUP),
	/// I2C_SCL_STOP_HOLD_REG
	SCL_STOP_HOLD: *volatile Register(I2C0_SCL_STOP_HOLD),
	/// I2C_SCL_STOP_SETUP_REG
	SCL_STOP_SETUP: *volatile Register(I2C0_SCL_STOP_SETUP),
	/// I2C_FILTER_CFG_REG
	FILTER_CFG: *volatile Register(I2C0_FILTER_CFG),
	/// I2C_CLK_CONF_REG
	CLK_CONF: *volatile Register(I2C0_CLK_CONF),
	/// I2C_COMD0_REG
	COMD0: *volatile Register(I2C0_COMDN),
	/// I2C_COMD1_REG
	COMD1: *volatile Register(I2C0_COMDN),
	/// I2C_COMD2_REG
	COMD2: *volatile Register(I2C0_COMDN),
	/// I2C_COMD3_REG
	COMD3: *volatile Register(I2C0_COMDN),
	/// I2C_COMD4_REG
	COMD4: *volatile Register(I2C0_COMDN),
	/// I2C_COMD5_REG
	COMD5: *volatile Register(I2C0_COMDN),
	/// I2C_COMD6_REG
	COMD6: *volatile Register(I2C0_COMDN),
	/// I2C_COMD7_REG
	COMD7: *volatile Register(I2C0_COMDN),
	/// I2C_SCL_ST_TIME_OUT_REG
	SCL_ST_TIME_OUT: *volatile Register(I2C0_SCL_ST_TIME_OUT),
	/// I2C_SCL_MAIN_ST_TIME_OUT_REG
	SCL_MAIN_ST_TIME_OUT: *volatile Register(I2C0_SCL_MAIN_ST_TIME_OUT),
	/// I2C_SCL_SP_CONF_REG
	SCL_SP_CONF: *volatile Register(I2C0_SCL_SP_CONF),
	/// I2C_SCL_STRETCH_CONF_REG
	SCL_STRETCH_CONF: *volatile Register(I2C0_SCL_STRETCH_CONF),
	/// I2C_DATE_REG
	DATE: *volatile Register(I2C0_DATE),
	/// I2C_TXFIFO_START_ADDR_REG
	TXFIFO_START_ADDR: *volatile Register(I2C0_TXFIFO_START_ADDR),
	/// I2C_RXFIFO_START_ADDR_REG
	RXFIFO_START_ADDR: *volatile Register(I2C0_RXFIFO_START_ADDR),
};

// Peripheral instance
const I2C0_instance = I2C0 {
	.SCL_LOW_PERIOD = @ptrFromInt(0x60013000),
	.CTR = @ptrFromInt(0x60013004),
	.SR = @ptrFromInt(0x60013008),
	.TO = @ptrFromInt(0x6001300c),
	.SLAVE_ADDR = @ptrFromInt(0x60013010),
	.FIFO_ST = @ptrFromInt(0x60013014),
	.FIFO_CONF = @ptrFromInt(0x60013018),
	.DATA = @ptrFromInt(0x6001301c),
	.INT_RAW = @ptrFromInt(0x60013020),
	.INT_CLR = @ptrFromInt(0x60013024),
	.INT_ENA = @ptrFromInt(0x60013028),
	.INT_STATUS = @ptrFromInt(0x6001302c),
	.SDA_HOLD = @ptrFromInt(0x60013030),
	.SDA_SAMPLE = @ptrFromInt(0x60013034),
	.SCL_HIGH_PERIOD = @ptrFromInt(0x60013038),
	.SCL_START_HOLD = @ptrFromInt(0x60013040),
	.SCL_RSTART_SETUP = @ptrFromInt(0x60013044),
	.SCL_STOP_HOLD = @ptrFromInt(0x60013048),
	.SCL_STOP_SETUP = @ptrFromInt(0x6001304c),
	.FILTER_CFG = @ptrFromInt(0x60013050),
	.CLK_CONF = @ptrFromInt(0x60013054),
	.COMD0 = @ptrFromInt(0x60013058),
	.COMD1 = @ptrFromInt(0x60013058),
	.COMD2 = @ptrFromInt(0x60013058),
	.COMD3 = @ptrFromInt(0x60013058),
	.COMD4 = @ptrFromInt(0x60013058),
	.COMD5 = @ptrFromInt(0x60013058),
	.COMD6 = @ptrFromInt(0x60013058),
	.COMD7 = @ptrFromInt(0x60013058),
	.SCL_ST_TIME_OUT = @ptrFromInt(0x60013078),
	.SCL_MAIN_ST_TIME_OUT = @ptrFromInt(0x6001307c),
	.SCL_SP_CONF = @ptrFromInt(0x60013080),
	.SCL_STRETCH_CONF = @ptrFromInt(0x60013084),
	.DATE = @ptrFromInt(0x600130f8),
	.TXFIFO_START_ADDR = @ptrFromInt(0x60013100),
	.RXFIFO_START_ADDR = @ptrFromInt(0x60013180),
};

const I2S0_INT_RAW = packed struct {
	/// The raw interrupt status bit  for the i2s_rx_done_int interrupt
	RX_DONE_INT_RAW: u1,
	/// The raw interrupt status bit  for the i2s_tx_done_int interrupt
	TX_DONE_INT_RAW: u1,
	/// The raw interrupt status bit  for the i2s_rx_hung_int interrupt
	RX_HUNG_INT_RAW: u1,
	/// The raw interrupt status bit  for the i2s_tx_hung_int interrupt
	TX_HUNG_INT_RAW: u1,
	reserved0: u28,
};

const I2S0_INT_ST = packed struct {
	/// The masked interrupt status bit  for the i2s_rx_done_int interrupt
	RX_DONE_INT_ST: u1,
	/// The masked interrupt status bit  for the i2s_tx_done_int interrupt
	TX_DONE_INT_ST: u1,
	/// The masked interrupt status bit  for the i2s_rx_hung_int interrupt
	RX_HUNG_INT_ST: u1,
	/// The masked interrupt status bit  for the i2s_tx_hung_int interrupt
	TX_HUNG_INT_ST: u1,
	reserved0: u28,
};

const I2S0_INT_ENA = packed struct {
	/// The interrupt enable bit  for the i2s_rx_done_int interrupt
	RX_DONE_INT_ENA: u1,
	/// The interrupt enable bit  for the i2s_tx_done_int interrupt
	TX_DONE_INT_ENA: u1,
	/// The interrupt enable bit  for the i2s_rx_hung_int interrupt
	RX_HUNG_INT_ENA: u1,
	/// The interrupt enable bit  for the i2s_tx_hung_int interrupt
	TX_HUNG_INT_ENA: u1,
	reserved0: u28,
};

const I2S0_INT_CLR = packed struct {
	/// Set this bit to clear the i2s_rx_done_int interrupt
	RX_DONE_INT_CLR: u1,
	/// Set this bit to clear the i2s_tx_done_int interrupt
	TX_DONE_INT_CLR: u1,
	/// Set this bit to clear the i2s_rx_hung_int interrupt
	RX_HUNG_INT_CLR: u1,
	/// Set this bit to clear the i2s_tx_hung_int interrupt
	TX_HUNG_INT_CLR: u1,
	reserved0: u28,
};

const I2S0_RX_CONF = packed struct {
	/// Set this bit to reset receiver
	RX_RESET: u1,
	/// Set this bit to reset Rx AFIFO
	RX_FIFO_RESET: u1,
	/// Set this bit to start receiving data
	RX_START: u1,
	/// Set this bit to enable slave receiver mode
	RX_SLAVE_MOD: u1,
	reserved0: u1,
	/// Set this bit to enable receiver  in mono mode
	RX_MONO: u1,
	reserved1: u1,
	/// I2S Rx byte endian, 1: low addr value to high addr. 0: low addr with low addr value.
	RX_BIG_ENDIAN: u1,
	/// Set 1 to update I2S RX registers from APB clock domain to I2S RX clock domain. This bit will be cleared by hardware after update register done.
	RX_UPDATE: u1,
	/// 1: The first channel data value is valid in I2S RX mono mode.   0: The second channel data value is valid in I2S RX mono mode.
	RX_MONO_FST_VLD: u1,
	/// I2S RX compress/decompress configuration bit. & 0 (atol): A-Law decompress, 1 (ltoa) : A-Law compress, 2 (utol) : u-Law decompress, 3 (ltou) : u-Law compress. &
	RX_PCM_CONF: u2,
	/// Set this bit to bypass Compress/Decompress module for received data.
	RX_PCM_BYPASS: u1,
	/// 0  : I2S Rx only stop when reg_rx_start is cleared.   1: Stop when reg_rx_start is 0 or in_suc_eof is 1.   2:  Stop I2S RX when reg_rx_start is 0 or RX FIFO is full.
	RX_STOP_MODE: u2,
	/// 1: I2S RX left alignment mode. 0: I2S RX right alignment mode.
	RX_LEFT_ALIGN: u1,
	/// 1: store 24 channel bits to 32 bits. 0:store 24 channel bits to 24 bits.
	RX_24_FILL_EN: u1,
	/// 0: WS should be 0 when receiving left channel data, and WS is 1in right channel.  1: WS should be 1 when receiving left channel data, and WS is 0in right channel.
	RX_WS_IDLE_POL: u1,
	/// I2S Rx bit endian. 1:small endian, the LSB is received first. 0:big endian, the MSB is received first.
	RX_BIT_ORDER: u1,
	/// 1: Enable I2S TDM Rx mode . 0: Disable.
	RX_TDM_EN: u1,
	/// 1: Enable I2S PDM Rx mode . 0: Disable.
	RX_PDM_EN: u1,
	reserved2: u11,
};

const I2S0_TX_CONF = packed struct {
	/// Set this bit to reset transmitter
	TX_RESET: u1,
	/// Set this bit to reset Tx AFIFO
	TX_FIFO_RESET: u1,
	/// Set this bit to start transmitting data
	TX_START: u1,
	/// Set this bit to enable slave transmitter mode
	TX_SLAVE_MOD: u1,
	reserved0: u1,
	/// Set this bit to enable transmitter in mono mode
	TX_MONO: u1,
	/// 1: The value of Left channel data is equal to the value of right channel data in I2S TX mono mode or TDM channel select mode. 0: The invalid channel data is reg_i2s_single_data in I2S TX mono mode or TDM channel select mode.
	TX_CHAN_EQUAL: u1,
	/// I2S Tx byte endian, 1: low addr value to high addr.  0: low addr with low addr value.
	TX_BIG_ENDIAN: u1,
	/// Set 1 to update I2S TX registers from APB clock domain to I2S TX clock domain. This bit will be cleared by hardware after update register done.
	TX_UPDATE: u1,
	/// 1: The first channel data value is valid in I2S TX mono mode.   0: The second channel data value is valid in I2S TX mono mode.
	TX_MONO_FST_VLD: u1,
	/// I2S TX compress/decompress configuration bit. & 0 (atol): A-Law decompress, 1 (ltoa) : A-Law compress, 2 (utol) : u-Law decompress, 3 (ltou) : u-Law compress. &
	TX_PCM_CONF: u2,
	/// Set this bit to bypass  Compress/Decompress module for transmitted data.
	TX_PCM_BYPASS: u1,
	/// Set this bit to stop disable output BCK signal and WS signal when tx FIFO is emtpy
	TX_STOP_EN: u1,
	reserved1: u1,
	/// 1: I2S TX left alignment mode. 0: I2S TX right alignment mode.
	TX_LEFT_ALIGN: u1,
	/// 1: Sent 32 bits in 24 channel bits mode. 0: Sent 24 bits in 24 channel bits mode
	TX_24_FILL_EN: u1,
	/// 0: WS should be 0 when sending left channel data, and WS is 1in right channel.  1: WS should be 1 when sending left channel data, and WS is 0in right channel.
	TX_WS_IDLE_POL: u1,
	/// I2S Tx bit endian. 1:small endian, the LSB is sent first. 0:big endian, the MSB is sent first.
	TX_BIT_ORDER: u1,
	/// 1: Enable I2S TDM Tx mode . 0: Disable.
	TX_TDM_EN: u1,
	/// 1: Enable I2S PDM Tx mode . 0: Disable.
	TX_PDM_EN: u1,
	reserved2: u3,
	/// I2S transmitter channel mode configuration bits.
	TX_CHAN_MOD: u3,
	/// Enable signal loop back mode with transmitter module and receiver module sharing the same WS and BCK signals.
	SIG_LOOPBACK: u1,
	reserved3: u4,
};

const I2S0_RX_CONF1 = packed struct {
	/// The width of rx_ws_out in TDM mode is (I2S_RX_TDM_WS_WIDTH[6:0] +1) * T_bck
	RX_TDM_WS_WIDTH: u7,
	/// Bit clock configuration bits in receiver mode.
	RX_BCK_DIV_NUM: u6,
	/// Set the bits to configure the valid data bit length of I2S receiver channel. 7: all the valid channel data is in 8-bit-mode. 15: all the valid channel data is in 16-bit-mode. 23: all the valid channel data is in 24-bit-mode. 31:all the valid channel data is in 32-bit-mode.
	RX_BITS_MOD: u5,
	/// I2S Rx half sample bits -1.
	RX_HALF_SAMPLE_BITS: u6,
	/// The Rx bit number for each channel minus 1in TDM mode.
	RX_TDM_CHAN_BITS: u5,
	/// Set this bit to enable receiver in Phillips standard mode
	RX_MSB_SHIFT: u1,
	reserved0: u2,
};

const I2S0_TX_CONF1 = packed struct {
	/// The width of tx_ws_out in TDM mode is (I2S_TX_TDM_WS_WIDTH[6:0] +1) * T_bck
	TX_TDM_WS_WIDTH: u7,
	/// Bit clock configuration bits in transmitter mode.
	TX_BCK_DIV_NUM: u6,
	/// Set the bits to configure the valid data bit length of I2S transmitter channel. 7: all the valid channel data is in 8-bit-mode. 15: all the valid channel data is in 16-bit-mode. 23: all the valid channel data is in 24-bit-mode. 31:all the valid channel data is in 32-bit-mode.
	TX_BITS_MOD: u5,
	/// I2S Tx half sample bits -1.
	TX_HALF_SAMPLE_BITS: u6,
	/// The Tx bit number for each channel minus 1in TDM mode.
	TX_TDM_CHAN_BITS: u5,
	/// Set this bit to enable transmitter in Phillips standard mode
	TX_MSB_SHIFT: u1,
	/// 1: BCK is not delayed to generate pos/neg edge in master mode. 0: BCK is delayed to generate pos/neg edge in master mode.
	TX_BCK_NO_DLY: u1,
	reserved0: u1,
};

const I2S0_RX_CLKM_CONF = packed struct {
	/// Integral I2S clock divider value
	RX_CLKM_DIV_NUM: u8,
	reserved0: u18,
	/// I2S Rx module clock enable signal.
	RX_CLK_ACTIVE: u1,
	/// Select I2S Rx module source clock. 0: no clock. 1: APLL. 2: CLK160. 3: I2S_MCLK_in.
	RX_CLK_SEL: u2,
	/// 0: UseI2S Tx module clock as I2S_MCLK_OUT.  1: UseI2S Rx module clock as I2S_MCLK_OUT.
	MCLK_SEL: u1,
	reserved1: u2,
};

const I2S0_TX_CLKM_CONF = packed struct {
	/// Integral I2S TX clock divider value. f_I2S_CLK = f_I2S_CLK_S/(N+b/a). There will be (a-b) * n-div and b * (n+1)-div.  So the average combination will be:  for b <= a/2, z * [x * n-div + (n+1)-div] + y * n-div. For b > a/2, z * [n-div + x * (n+1)-div] + y * (n+1)-div.
	TX_CLKM_DIV_NUM: u8,
	reserved0: u18,
	/// I2S Tx module clock enable signal.
	TX_CLK_ACTIVE: u1,
	/// Select I2S Tx module source clock. 0: XTAL clock. 1: APLL. 2: CLK160. 3: I2S_MCLK_in.
	TX_CLK_SEL: u2,
	/// Set this bit to enable clk gate
	CLK_EN: u1,
	reserved1: u2,
};

const I2S0_RX_CLKM_DIV_CONF = packed struct {
	/// For b <= a/2, the value of I2S_RX_CLKM_DIV_Z is b. For b > a/2, the value of I2S_RX_CLKM_DIV_Z is (a-b).
	RX_CLKM_DIV_Z: u9,
	/// For b <= a/2, the value of I2S_RX_CLKM_DIV_Y is (a%b) . For b > a/2, the value of I2S_RX_CLKM_DIV_Y is (a%(a-b)).
	RX_CLKM_DIV_Y: u9,
	/// For b <= a/2, the value of I2S_RX_CLKM_DIV_X is (a/b) - 1. For b > a/2, the value of I2S_RX_CLKM_DIV_X is (a/(a-b)) - 1.
	RX_CLKM_DIV_X: u9,
	/// For b <= a/2, the value of I2S_RX_CLKM_DIV_YN1 is 0 . For b > a/2, the value of I2S_RX_CLKM_DIV_YN1 is 1.
	RX_CLKM_DIV_YN1: u1,
	reserved0: u4,
};

const I2S0_TX_CLKM_DIV_CONF = packed struct {
	/// For b <= a/2, the value of I2S_TX_CLKM_DIV_Z is b. For b > a/2, the value of I2S_TX_CLKM_DIV_Z is (a-b).
	TX_CLKM_DIV_Z: u9,
	/// For b <= a/2, the value of I2S_TX_CLKM_DIV_Y is (a%b) . For b > a/2, the value of I2S_TX_CLKM_DIV_Y is (a%(a-b)).
	TX_CLKM_DIV_Y: u9,
	/// For b <= a/2, the value of I2S_TX_CLKM_DIV_X is (a/b) - 1. For b > a/2, the value of I2S_TX_CLKM_DIV_X is (a/(a-b)) - 1.
	TX_CLKM_DIV_X: u9,
	/// For b <= a/2, the value of I2S_TX_CLKM_DIV_YN1 is 0 . For b > a/2, the value of I2S_TX_CLKM_DIV_YN1 is 1.
	TX_CLKM_DIV_YN1: u1,
	reserved0: u4,
};

const I2S0_TX_PCM2PDM_CONF = packed struct {
	/// I2S TX PDM bypass hp filter or not. The option has been removed.
	TX_PDM_HP_BYPASS: u1,
	/// I2S TX PDM OSR2 value
	TX_PDM_SINC_OSR2: u4,
	/// I2S TX PDM prescale for sigmadelta
	TX_PDM_PRESCALE: u8,
	/// I2S TX PDM sigmadelta scale shift number: 0:/2 , 1:x1 , 2:x2 , 3: x4
	TX_PDM_HP_IN_SHIFT: u2,
	/// I2S TX PDM sigmadelta scale shift number: 0:/2 , 1:x1 , 2:x2 , 3: x4
	TX_PDM_LP_IN_SHIFT: u2,
	/// I2S TX PDM sigmadelta scale shift number: 0:/2 , 1:x1 , 2:x2 , 3: x4
	TX_PDM_SINC_IN_SHIFT: u2,
	/// I2S TX PDM sigmadelta scale shift number: 0:/2 , 1:x1 , 2:x2 , 3: x4
	TX_PDM_SIGMADELTA_IN_SHIFT: u2,
	/// I2S TX PDM sigmadelta dither2 value
	TX_PDM_SIGMADELTA_DITHER2: u1,
	/// I2S TX PDM sigmadelta dither value
	TX_PDM_SIGMADELTA_DITHER: u1,
	/// I2S TX PDM dac mode enable
	TX_PDM_DAC_2OUT_EN: u1,
	/// I2S TX PDM dac 2channel enable
	TX_PDM_DAC_MODE_EN: u1,
	/// I2S TX PDM Converter enable
	PCM2PDM_CONV_EN: u1,
	reserved0: u6,
};

const I2S0_TX_PCM2PDM_CONF1 = packed struct {
	/// I2S TX PDM Fp
	TX_PDM_FP: u10,
	/// I2S TX PDM Fs
	TX_PDM_FS: u10,
	/// The fourth parameter of PDM TX IIR_HP filter stage 2 is (504 + I2S_TX_IIR_HP_MULT12_5[2:0])
	TX_IIR_HP_MULT12_5: u3,
	/// The fourth parameter of PDM TX IIR_HP filter stage 1 is (504 + I2S_TX_IIR_HP_MULT12_0[2:0])
	TX_IIR_HP_MULT12_0: u3,
	reserved0: u6,
};

const I2S0_RX_TDM_CTRL = packed struct {
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 0. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN0_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 1. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN1_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 2. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN2_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 3. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN3_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 4. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN4_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 5. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN5_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 6. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN6_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM or PDM channel 7. 0:  Disable, just input 0 in this channel.
	RX_TDM_PDM_CHAN7_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 8. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN8_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 9. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN9_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 10. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN10_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 11. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN11_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 12. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN12_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 13. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN13_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 14. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN14_EN: u1,
	/// 1: Enable the valid data input of I2S RX TDM channel 15. 0:  Disable, just input 0 in this channel.
	RX_TDM_CHAN15_EN: u1,
	/// The total channel number of I2S TX TDM mode.
	RX_TDM_TOT_CHAN_NUM: u4,
	reserved0: u12,
};

const I2S0_TX_TDM_CTRL = packed struct {
	/// 1: Enable the valid data output of I2S TX TDM channel 0. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN0_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 1. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN1_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 2. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN2_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 3. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN3_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 4. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN4_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 5. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN5_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 6. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN6_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 7. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN7_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 8. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN8_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 9. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN9_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 10. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN10_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 11. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN11_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 12. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN12_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 13. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN13_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 14. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN14_EN: u1,
	/// 1: Enable the valid data output of I2S TX TDM channel 15. 0:  Disable, just output 0 in this channel.
	TX_TDM_CHAN15_EN: u1,
	/// The total channel number of I2S TX TDM mode.
	TX_TDM_TOT_CHAN_NUM: u4,
	/// When DMA TX buffer stores the data of (REG_TX_TDM_TOT_CHAN_NUM + 1)  channels, and only the data of the enabled channels is sent, then this bit should be set. Clear it when all the data stored in DMA TX buffer is for enabled channels.
	TX_TDM_SKIP_MSK_EN: u1,
	reserved0: u11,
};

const I2S0_RX_TIMING = packed struct {
	/// The delay mode of I2S Rx SD input signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	RX_SD_IN_DM: u2,
	reserved0: u14,
	/// The delay mode of I2S Rx WS output signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	RX_WS_OUT_DM: u2,
	reserved1: u2,
	/// The delay mode of I2S Rx BCK output signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	RX_BCK_OUT_DM: u2,
	reserved2: u2,
	/// The delay mode of I2S Rx WS input signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	RX_WS_IN_DM: u2,
	reserved3: u2,
	/// The delay mode of I2S Rx BCK input signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	RX_BCK_IN_DM: u2,
	reserved4: u2,
};

const I2S0_TX_TIMING = packed struct {
	/// The delay mode of I2S TX SD output signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	TX_SD_OUT_DM: u2,
	reserved0: u2,
	/// The delay mode of I2S TX SD1 output signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	TX_SD1_OUT_DM: u2,
	reserved1: u10,
	/// The delay mode of I2S TX WS output signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	TX_WS_OUT_DM: u2,
	reserved2: u2,
	/// The delay mode of I2S TX BCK output signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	TX_BCK_OUT_DM: u2,
	reserved3: u2,
	/// The delay mode of I2S TX WS input signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	TX_WS_IN_DM: u2,
	reserved4: u2,
	/// The delay mode of I2S TX BCK input signal. 0: bypass. 1: delay by pos edge.  2: delay by neg edge. 3: not used.
	TX_BCK_IN_DM: u2,
	reserved5: u2,
};

const I2S0_LC_HUNG_CONF = packed struct {
	/// the i2s_tx_hung_int interrupt or the i2s_rx_hung_int interrupt will be triggered when fifo hung counter is equal to this value
	LC_FIFO_TIMEOUT: u8,
	/// The bits are used to scale tick counter threshold. The tick counter is reset when counter value >= 88000/2^i2s_lc_fifo_timeout_shift
	LC_FIFO_TIMEOUT_SHIFT: u3,
	/// The enable bit for FIFO timeout
	LC_FIFO_TIMEOUT_ENA: u1,
	reserved0: u20,
};

const I2S0_RXEOF_NUM = packed struct {
	/// The receive data bit length is (I2S_RX_BITS_MOD[4:0] + 1) * (REG_RX_EOF_NUM[11:0] + 1) . It will trigger in_suc_eof interrupt in the configured DMA RX channel.
	RX_EOF_NUM: u12,
	reserved0: u20,
};

const I2S0_CONF_SIGLE_DATA = packed struct {
	/// The configured constant channel data to be sent out.
	SINGLE_DATA: u32,
};

const I2S0_STATE = packed struct {
	/// 1: i2s_tx is idle state. 0: i2s_tx is working.
	TX_IDLE: u1,
	reserved0: u31,
};

const I2S0_DATE = packed struct {
	/// I2S version control register
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const I2S0 = struct {
	/// I2S interrupt raw register, valid in level.
	INT_RAW: *volatile Register(I2S0_INT_RAW),
	/// I2S interrupt status register.
	INT_ST: *volatile Register(I2S0_INT_ST),
	/// I2S interrupt enable register.
	INT_ENA: *volatile Register(I2S0_INT_ENA),
	/// I2S interrupt clear register.
	INT_CLR: *volatile Register(I2S0_INT_CLR),
	/// I2S RX configure register
	RX_CONF: *volatile Register(I2S0_RX_CONF),
	/// I2S TX configure register
	TX_CONF: *volatile Register(I2S0_TX_CONF),
	/// I2S RX configure register 1
	RX_CONF1: *volatile Register(I2S0_RX_CONF1),
	/// I2S TX configure register 1
	TX_CONF1: *volatile Register(I2S0_TX_CONF1),
	/// I2S RX clock configure register
	RX_CLKM_CONF: *volatile Register(I2S0_RX_CLKM_CONF),
	/// I2S TX clock configure register
	TX_CLKM_CONF: *volatile Register(I2S0_TX_CLKM_CONF),
	/// I2S RX module clock divider configure register
	RX_CLKM_DIV_CONF: *volatile Register(I2S0_RX_CLKM_DIV_CONF),
	/// I2S TX module clock divider configure register
	TX_CLKM_DIV_CONF: *volatile Register(I2S0_TX_CLKM_DIV_CONF),
	/// I2S TX PCM2PDM configuration register
	TX_PCM2PDM_CONF: *volatile Register(I2S0_TX_PCM2PDM_CONF),
	/// I2S TX PCM2PDM configuration register
	TX_PCM2PDM_CONF1: *volatile Register(I2S0_TX_PCM2PDM_CONF1),
	/// I2S TX TDM mode control register
	RX_TDM_CTRL: *volatile Register(I2S0_RX_TDM_CTRL),
	/// I2S TX TDM mode control register
	TX_TDM_CTRL: *volatile Register(I2S0_TX_TDM_CTRL),
	/// I2S RX timing control register
	RX_TIMING: *volatile Register(I2S0_RX_TIMING),
	/// I2S TX timing control register
	TX_TIMING: *volatile Register(I2S0_TX_TIMING),
	/// I2S HUNG configure register.
	LC_HUNG_CONF: *volatile Register(I2S0_LC_HUNG_CONF),
	/// I2S RX data number control register.
	RXEOF_NUM: *volatile Register(I2S0_RXEOF_NUM),
	/// I2S signal data register
	CONF_SIGLE_DATA: *volatile Register(I2S0_CONF_SIGLE_DATA),
	/// I2S TX status register
	STATE: *volatile Register(I2S0_STATE),
	/// Version control register
	DATE: *volatile Register(I2S0_DATE),
};

// Peripheral instance
const I2S0_instance = I2S0 {
	.INT_RAW = @ptrFromInt(0x6002d00c),
	.INT_ST = @ptrFromInt(0x6002d010),
	.INT_ENA = @ptrFromInt(0x6002d014),
	.INT_CLR = @ptrFromInt(0x6002d018),
	.RX_CONF = @ptrFromInt(0x6002d020),
	.TX_CONF = @ptrFromInt(0x6002d024),
	.RX_CONF1 = @ptrFromInt(0x6002d028),
	.TX_CONF1 = @ptrFromInt(0x6002d02c),
	.RX_CLKM_CONF = @ptrFromInt(0x6002d030),
	.TX_CLKM_CONF = @ptrFromInt(0x6002d034),
	.RX_CLKM_DIV_CONF = @ptrFromInt(0x6002d038),
	.TX_CLKM_DIV_CONF = @ptrFromInt(0x6002d03c),
	.TX_PCM2PDM_CONF = @ptrFromInt(0x6002d040),
	.TX_PCM2PDM_CONF1 = @ptrFromInt(0x6002d044),
	.RX_TDM_CTRL = @ptrFromInt(0x6002d050),
	.TX_TDM_CTRL = @ptrFromInt(0x6002d054),
	.RX_TIMING = @ptrFromInt(0x6002d058),
	.TX_TIMING = @ptrFromInt(0x6002d05c),
	.LC_HUNG_CONF = @ptrFromInt(0x6002d060),
	.RXEOF_NUM = @ptrFromInt(0x6002d064),
	.CONF_SIGLE_DATA = @ptrFromInt(0x6002d068),
	.STATE = @ptrFromInt(0x6002d06c),
	.DATE = @ptrFromInt(0x6002d080),
};

const INTERRUPT_CORE0_MAC_INTR_MAP = packed struct {
	/// core0_mac_intr_map
	MAC_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_MAC_NMI_MAP = packed struct {
	/// reg_core0_mac_nmi_map
	MAC_NMI_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_PWR_INTR_MAP = packed struct {
	/// reg_core0_pwr_intr_map
	PWR_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_BB_INT_MAP = packed struct {
	/// reg_core0_bb_int_map
	BB_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_BT_MAC_INT_MAP = packed struct {
	/// reg_core0_bt_mac_int_map
	BT_MAC_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_BT_BB_INT_MAP = packed struct {
	/// reg_core0_bt_bb_int_map
	BT_BB_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_BT_BB_NMI_MAP = packed struct {
	/// reg_core0_bt_bb_nmi_map
	BT_BB_NMI_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_RWBT_IRQ_MAP = packed struct {
	/// reg_core0_rwbt_irq_map
	RWBT_IRQ_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_RWBLE_IRQ_MAP = packed struct {
	/// reg_core0_rwble_irq_map
	RWBLE_IRQ_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_RWBT_NMI_MAP = packed struct {
	/// reg_core0_rwbt_nmi_map
	RWBT_NMI_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_RWBLE_NMI_MAP = packed struct {
	/// reg_core0_rwble_nmi_map
	RWBLE_NMI_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_I2C_MST_INT_MAP = packed struct {
	/// reg_core0_i2c_mst_int_map
	I2C_MST_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SLC0_INTR_MAP = packed struct {
	/// reg_core0_slc0_intr_map
	SLC0_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SLC1_INTR_MAP = packed struct {
	/// reg_core0_slc1_intr_map
	SLC1_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_APB_CTRL_INTR_MAP = packed struct {
	/// reg_core0_apb_ctrl_intr_map
	APB_CTRL_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_UHCI0_INTR_MAP = packed struct {
	/// reg_core0_uhci0_intr_map
	UHCI0_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_GPIO_INTERRUPT_PRO_MAP = packed struct {
	/// reg_core0_gpio_interrupt_pro_map
	GPIO_INTERRUPT_PRO_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_GPIO_INTERRUPT_PRO_NMI_MAP = packed struct {
	/// reg_core0_gpio_interrupt_pro_nmi_map
	GPIO_INTERRUPT_PRO_NMI_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SPI_INTR_1_MAP = packed struct {
	/// reg_core0_spi_intr_1_map
	SPI_INTR_1_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SPI_INTR_2_MAP = packed struct {
	/// reg_core0_spi_intr_2_map
	SPI_INTR_2_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_I2S1_INT_MAP = packed struct {
	/// reg_core0_i2s1_int_map
	I2S1_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_UART_INTR_MAP = packed struct {
	/// reg_core0_uart_intr_map
	UART_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_UART1_INTR_MAP = packed struct {
	/// reg_core0_uart1_intr_map
	UART1_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_LEDC_INT_MAP = packed struct {
	/// reg_core0_ledc_int_map
	LEDC_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_EFUSE_INT_MAP = packed struct {
	/// reg_core0_efuse_int_map
	EFUSE_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CAN_INT_MAP = packed struct {
	/// reg_core0_can_int_map
	CAN_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_USB_INTR_MAP = packed struct {
	/// reg_core0_usb_intr_map
	USB_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_RTC_CORE_INTR_MAP = packed struct {
	/// reg_core0_rtc_core_intr_map
	RTC_CORE_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_RMT_INTR_MAP = packed struct {
	/// reg_core0_rmt_intr_map
	RMT_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_I2C_EXT0_INTR_MAP = packed struct {
	/// reg_core0_i2c_ext0_intr_map
	I2C_EXT0_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_TIMER_INT1_MAP = packed struct {
	/// reg_core0_timer_int1_map
	TIMER_INT1_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_TIMER_INT2_MAP = packed struct {
	/// reg_core0_timer_int2_map
	TIMER_INT2_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_TG_T0_INT_MAP = packed struct {
	/// reg_core0_tg_t0_int_map
	TG_T0_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_TG_WDT_INT_MAP = packed struct {
	/// reg_core0_tg_wdt_int_map
	TG_WDT_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_TG1_T0_INT_MAP = packed struct {
	/// reg_core0_tg1_t0_int_map
	TG1_T0_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_TG1_WDT_INT_MAP = packed struct {
	/// reg_core0_tg1_wdt_int_map
	TG1_WDT_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CACHE_IA_INT_MAP = packed struct {
	/// reg_core0_cache_ia_int_map
	CACHE_IA_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SYSTIMER_TARGET0_INT_MAP = packed struct {
	/// reg_core0_systimer_target0_int_map
	SYSTIMER_TARGET0_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SYSTIMER_TARGET1_INT_MAP = packed struct {
	/// reg_core0_systimer_target1_int_map
	SYSTIMER_TARGET1_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SYSTIMER_TARGET2_INT_MAP = packed struct {
	/// reg_core0_systimer_target2_int_map
	SYSTIMER_TARGET2_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SPI_MEM_REJECT_INTR_MAP = packed struct {
	/// reg_core0_spi_mem_reject_intr_map
	SPI_MEM_REJECT_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_ICACHE_PRELOAD_INT_MAP = packed struct {
	/// reg_core0_icache_preload_int_map
	ICACHE_PRELOAD_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_ICACHE_SYNC_INT_MAP = packed struct {
	/// reg_core0_icache_sync_int_map
	ICACHE_SYNC_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_APB_ADC_INT_MAP = packed struct {
	/// reg_core0_apb_adc_int_map
	APB_ADC_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_DMA_CH0_INT_MAP = packed struct {
	/// reg_core0_dma_ch0_int_map
	DMA_CH0_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_DMA_CH1_INT_MAP = packed struct {
	/// reg_core0_dma_ch1_int_map
	DMA_CH1_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_DMA_CH2_INT_MAP = packed struct {
	/// reg_core0_dma_ch2_int_map
	DMA_CH2_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_RSA_INT_MAP = packed struct {
	/// reg_core0_rsa_int_map
	RSA_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_AES_INT_MAP = packed struct {
	/// reg_core0_aes_int_map
	AES_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_SHA_INT_MAP = packed struct {
	/// reg_core0_sha_int_map
	SHA_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CPU_INTR_FROM_CPU_0_MAP = packed struct {
	/// reg_core0_cpu_intr_from_cpu_0_map
	CPU_INTR_FROM_CPU_0_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CPU_INTR_FROM_CPU_1_MAP = packed struct {
	/// reg_core0_cpu_intr_from_cpu_1_map
	CPU_INTR_FROM_CPU_1_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CPU_INTR_FROM_CPU_2_MAP = packed struct {
	/// reg_core0_cpu_intr_from_cpu_2_map
	CPU_INTR_FROM_CPU_2_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CPU_INTR_FROM_CPU_3_MAP = packed struct {
	/// reg_core0_cpu_intr_from_cpu_3_map
	CPU_INTR_FROM_CPU_3_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_ASSIST_DEBUG_INTR_MAP = packed struct {
	/// reg_core0_assist_debug_intr_map
	ASSIST_DEBUG_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_DMA_APBPERI_PMS_MONITOR_VIOLATE_INTR_MAP = packed struct {
	/// reg_core0_dma_apbperi_pms_monitor_violate_intr_map
	DMA_APBPERI_PMS_MONITOR_VIOLATE_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CORE_0_IRAM0_PMS_MONITOR_VIOLATE_INTR_MAP = packed struct {
	/// reg_core0_core_0_iram0_pms_monitor_violate_intr_map
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CORE_0_DRAM0_PMS_MONITOR_VIOLATE_INTR_MAP = packed struct {
	/// reg_core0_core_0_dram0_pms_monitor_violate_intr_map
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CORE_0_PIF_PMS_MONITOR_VIOLATE_INTR_MAP = packed struct {
	/// reg_core0_core_0_pif_pms_monitor_violate_intr_map
	CORE_0_PIF_PMS_MONITOR_VIOLATE_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CORE_0_PIF_PMS_MONITOR_VIOLATE_SIZE_INTR_MAP = packed struct {
	/// reg_core0_core_0_pif_pms_monitor_violate_size_intr_map
	CORE_0_PIF_PMS_MONITOR_VIOLATE_SIZE_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_BACKUP_PMS_VIOLATE_INTR_MAP = packed struct {
	/// reg_core0_backup_pms_violate_intr_map
	BACKUP_PMS_VIOLATE_INTR_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_CACHE_CORE0_ACS_INT_MAP = packed struct {
	/// reg_core0_cache_core0_acs_int_map
	CACHE_CORE0_ACS_INT_MAP: u5,
	reserved0: u27,
};

const INTERRUPT_CORE0_INTR_STATUS_REG_0 = packed struct {
	/// reg_core0_intr_status_0
	INTR_STATUS_0: u32,
};

const INTERRUPT_CORE0_INTR_STATUS_REG_1 = packed struct {
	/// reg_core0_intr_status_1
	INTR_STATUS_1: u32,
};

const INTERRUPT_CORE0_CLOCK_GATE = packed struct {
	/// reg_core0_reg_clk_en
	REG_CLK_EN: u1,
	reserved0: u31,
};

const INTERRUPT_CORE0_CPU_INT_ENABLE = packed struct {
	/// reg_core0_cpu_int_enable
	CPU_INT_ENABLE: u32,
};

const INTERRUPT_CORE0_CPU_INT_TYPE = packed struct {
	/// reg_core0_cpu_int_type
	CPU_INT_TYPE: u32,
};

const INTERRUPT_CORE0_CPU_INT_CLEAR = packed struct {
	/// reg_core0_cpu_int_clear
	CPU_INT_CLEAR: u32,
};

const INTERRUPT_CORE0_CPU_INT_EIP_STATUS = packed struct {
	/// reg_core0_cpu_int_eip_status
	CPU_INT_EIP_STATUS: u32,
};

const INTERRUPT_CORE0_CPU_INT_PRI_0 = packed struct {
	/// reg_core0_cpu_pri_0_map
	CPU_PRI_0_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_1 = packed struct {
	/// reg_core0_cpu_pri_1_map
	CPU_PRI_1_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_2 = packed struct {
	/// reg_core0_cpu_pri_2_map
	CPU_PRI_2_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_3 = packed struct {
	/// reg_core0_cpu_pri_3_map
	CPU_PRI_3_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_4 = packed struct {
	/// reg_core0_cpu_pri_4_map
	CPU_PRI_4_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_5 = packed struct {
	/// reg_core0_cpu_pri_5_map
	CPU_PRI_5_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_6 = packed struct {
	/// reg_core0_cpu_pri_6_map
	CPU_PRI_6_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_7 = packed struct {
	/// reg_core0_cpu_pri_7_map
	CPU_PRI_7_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_8 = packed struct {
	/// reg_core0_cpu_pri_8_map
	CPU_PRI_8_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_9 = packed struct {
	/// reg_core0_cpu_pri_9_map
	CPU_PRI_9_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_10 = packed struct {
	/// reg_core0_cpu_pri_10_map
	CPU_PRI_10_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_11 = packed struct {
	/// reg_core0_cpu_pri_11_map
	CPU_PRI_11_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_12 = packed struct {
	/// reg_core0_cpu_pri_12_map
	CPU_PRI_12_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_13 = packed struct {
	/// reg_core0_cpu_pri_13_map
	CPU_PRI_13_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_14 = packed struct {
	/// reg_core0_cpu_pri_14_map
	CPU_PRI_14_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_15 = packed struct {
	/// reg_core0_cpu_pri_15_map
	CPU_PRI_15_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_16 = packed struct {
	/// reg_core0_cpu_pri_16_map
	CPU_PRI_16_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_17 = packed struct {
	/// reg_core0_cpu_pri_17_map
	CPU_PRI_17_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_18 = packed struct {
	/// reg_core0_cpu_pri_18_map
	CPU_PRI_18_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_19 = packed struct {
	/// reg_core0_cpu_pri_19_map
	CPU_PRI_19_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_20 = packed struct {
	/// reg_core0_cpu_pri_20_map
	CPU_PRI_20_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_21 = packed struct {
	/// reg_core0_cpu_pri_21_map
	CPU_PRI_21_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_22 = packed struct {
	/// reg_core0_cpu_pri_22_map
	CPU_PRI_22_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_23 = packed struct {
	/// reg_core0_cpu_pri_23_map
	CPU_PRI_23_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_24 = packed struct {
	/// reg_core0_cpu_pri_24_map
	CPU_PRI_24_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_25 = packed struct {
	/// reg_core0_cpu_pri_25_map
	CPU_PRI_25_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_26 = packed struct {
	/// reg_core0_cpu_pri_26_map
	CPU_PRI_26_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_27 = packed struct {
	/// reg_core0_cpu_pri_27_map
	CPU_PRI_27_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_28 = packed struct {
	/// reg_core0_cpu_pri_28_map
	CPU_PRI_28_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_29 = packed struct {
	/// reg_core0_cpu_pri_29_map
	CPU_PRI_29_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_30 = packed struct {
	/// reg_core0_cpu_pri_30_map
	CPU_PRI_30_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_PRI_31 = packed struct {
	/// reg_core0_cpu_pri_31_map
	CPU_PRI_31_MAP: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_CPU_INT_THRESH = packed struct {
	/// reg_core0_cpu_int_thresh
	CPU_INT_THRESH: u4,
	reserved0: u28,
};

const INTERRUPT_CORE0_INTERRUPT_REG_DATE = packed struct {
	/// reg_core0_interrupt_reg_date
	INTERRUPT_REG_DATE: u28,
	reserved0: u4,
};

//Peripheral type
const INTERRUPT_CORE0 = struct {
	/// mac intr map register
	MAC_INTR_MAP: *volatile Register(INTERRUPT_CORE0_MAC_INTR_MAP),
	/// mac nmi_intr map register
	MAC_NMI_MAP: *volatile Register(INTERRUPT_CORE0_MAC_NMI_MAP),
	/// pwr intr map register
	PWR_INTR_MAP: *volatile Register(INTERRUPT_CORE0_PWR_INTR_MAP),
	/// bb intr map register
	BB_INT_MAP: *volatile Register(INTERRUPT_CORE0_BB_INT_MAP),
	/// bt intr map register
	BT_MAC_INT_MAP: *volatile Register(INTERRUPT_CORE0_BT_MAC_INT_MAP),
	/// bb_bt intr map register
	BT_BB_INT_MAP: *volatile Register(INTERRUPT_CORE0_BT_BB_INT_MAP),
	/// bb_bt_nmi intr map register
	BT_BB_NMI_MAP: *volatile Register(INTERRUPT_CORE0_BT_BB_NMI_MAP),
	/// rwbt intr map register
	RWBT_IRQ_MAP: *volatile Register(INTERRUPT_CORE0_RWBT_IRQ_MAP),
	/// rwble intr map register
	RWBLE_IRQ_MAP: *volatile Register(INTERRUPT_CORE0_RWBLE_IRQ_MAP),
	/// rwbt_nmi intr map register
	RWBT_NMI_MAP: *volatile Register(INTERRUPT_CORE0_RWBT_NMI_MAP),
	/// rwble_nmi intr map register
	RWBLE_NMI_MAP: *volatile Register(INTERRUPT_CORE0_RWBLE_NMI_MAP),
	/// i2c intr map register
	I2C_MST_INT_MAP: *volatile Register(INTERRUPT_CORE0_I2C_MST_INT_MAP),
	/// slc0 intr map register
	SLC0_INTR_MAP: *volatile Register(INTERRUPT_CORE0_SLC0_INTR_MAP),
	/// slc1 intr map register
	SLC1_INTR_MAP: *volatile Register(INTERRUPT_CORE0_SLC1_INTR_MAP),
	/// apb_ctrl intr map register
	APB_CTRL_INTR_MAP: *volatile Register(INTERRUPT_CORE0_APB_CTRL_INTR_MAP),
	/// uchi0 intr map register
	UHCI0_INTR_MAP: *volatile Register(INTERRUPT_CORE0_UHCI0_INTR_MAP),
	/// gpio intr map register
	GPIO_INTERRUPT_PRO_MAP: *volatile Register(INTERRUPT_CORE0_GPIO_INTERRUPT_PRO_MAP),
	/// gpio_pro intr map register
	GPIO_INTERRUPT_PRO_NMI_MAP: *volatile Register(INTERRUPT_CORE0_GPIO_INTERRUPT_PRO_NMI_MAP),
	/// gpio_pro_nmi intr map register
	SPI_INTR_1_MAP: *volatile Register(INTERRUPT_CORE0_SPI_INTR_1_MAP),
	/// spi1 intr map register
	SPI_INTR_2_MAP: *volatile Register(INTERRUPT_CORE0_SPI_INTR_2_MAP),
	/// spi2 intr map register
	I2S1_INT_MAP: *volatile Register(INTERRUPT_CORE0_I2S1_INT_MAP),
	/// i2s1 intr map register
	UART_INTR_MAP: *volatile Register(INTERRUPT_CORE0_UART_INTR_MAP),
	/// uart1 intr map register
	UART1_INTR_MAP: *volatile Register(INTERRUPT_CORE0_UART1_INTR_MAP),
	/// ledc intr map register
	LEDC_INT_MAP: *volatile Register(INTERRUPT_CORE0_LEDC_INT_MAP),
	/// efuse intr map register
	EFUSE_INT_MAP: *volatile Register(INTERRUPT_CORE0_EFUSE_INT_MAP),
	/// can intr map register
	CAN_INT_MAP: *volatile Register(INTERRUPT_CORE0_CAN_INT_MAP),
	/// usb intr map register
	USB_INTR_MAP: *volatile Register(INTERRUPT_CORE0_USB_INTR_MAP),
	/// rtc intr map register
	RTC_CORE_INTR_MAP: *volatile Register(INTERRUPT_CORE0_RTC_CORE_INTR_MAP),
	/// rmt intr map register
	RMT_INTR_MAP: *volatile Register(INTERRUPT_CORE0_RMT_INTR_MAP),
	/// i2c intr map register
	I2C_EXT0_INTR_MAP: *volatile Register(INTERRUPT_CORE0_I2C_EXT0_INTR_MAP),
	/// timer1 intr map register
	TIMER_INT1_MAP: *volatile Register(INTERRUPT_CORE0_TIMER_INT1_MAP),
	/// timer2 intr map register
	TIMER_INT2_MAP: *volatile Register(INTERRUPT_CORE0_TIMER_INT2_MAP),
	/// tg to intr map register
	TG_T0_INT_MAP: *volatile Register(INTERRUPT_CORE0_TG_T0_INT_MAP),
	/// tg wdt intr map register
	TG_WDT_INT_MAP: *volatile Register(INTERRUPT_CORE0_TG_WDT_INT_MAP),
	/// tg1 to intr map register
	TG1_T0_INT_MAP: *volatile Register(INTERRUPT_CORE0_TG1_T0_INT_MAP),
	/// tg1 wdt intr map register
	TG1_WDT_INT_MAP: *volatile Register(INTERRUPT_CORE0_TG1_WDT_INT_MAP),
	/// cache ia intr map register
	CACHE_IA_INT_MAP: *volatile Register(INTERRUPT_CORE0_CACHE_IA_INT_MAP),
	/// systimer intr map register
	SYSTIMER_TARGET0_INT_MAP: *volatile Register(INTERRUPT_CORE0_SYSTIMER_TARGET0_INT_MAP),
	/// systimer target1 intr map register
	SYSTIMER_TARGET1_INT_MAP: *volatile Register(INTERRUPT_CORE0_SYSTIMER_TARGET1_INT_MAP),
	/// systimer target2 intr map register
	SYSTIMER_TARGET2_INT_MAP: *volatile Register(INTERRUPT_CORE0_SYSTIMER_TARGET2_INT_MAP),
	/// spi mem reject intr map register
	SPI_MEM_REJECT_INTR_MAP: *volatile Register(INTERRUPT_CORE0_SPI_MEM_REJECT_INTR_MAP),
	/// icache perload intr map register
	ICACHE_PRELOAD_INT_MAP: *volatile Register(INTERRUPT_CORE0_ICACHE_PRELOAD_INT_MAP),
	/// icache sync intr map register
	ICACHE_SYNC_INT_MAP: *volatile Register(INTERRUPT_CORE0_ICACHE_SYNC_INT_MAP),
	/// adc intr map register
	APB_ADC_INT_MAP: *volatile Register(INTERRUPT_CORE0_APB_ADC_INT_MAP),
	/// dma ch0 intr map register
	DMA_CH0_INT_MAP: *volatile Register(INTERRUPT_CORE0_DMA_CH0_INT_MAP),
	/// dma ch1 intr map register
	DMA_CH1_INT_MAP: *volatile Register(INTERRUPT_CORE0_DMA_CH1_INT_MAP),
	/// dma ch2 intr map register
	DMA_CH2_INT_MAP: *volatile Register(INTERRUPT_CORE0_DMA_CH2_INT_MAP),
	/// rsa intr map register
	RSA_INT_MAP: *volatile Register(INTERRUPT_CORE0_RSA_INT_MAP),
	/// aes intr map register
	AES_INT_MAP: *volatile Register(INTERRUPT_CORE0_AES_INT_MAP),
	/// sha intr map register
	SHA_INT_MAP: *volatile Register(INTERRUPT_CORE0_SHA_INT_MAP),
	/// cpu from cpu 0 intr map register
	CPU_INTR_FROM_CPU_0_MAP: *volatile Register(INTERRUPT_CORE0_CPU_INTR_FROM_CPU_0_MAP),
	/// cpu from cpu 0 intr map register
	CPU_INTR_FROM_CPU_1_MAP: *volatile Register(INTERRUPT_CORE0_CPU_INTR_FROM_CPU_1_MAP),
	/// cpu from cpu 1 intr map register
	CPU_INTR_FROM_CPU_2_MAP: *volatile Register(INTERRUPT_CORE0_CPU_INTR_FROM_CPU_2_MAP),
	/// cpu from cpu 3 intr map register
	CPU_INTR_FROM_CPU_3_MAP: *volatile Register(INTERRUPT_CORE0_CPU_INTR_FROM_CPU_3_MAP),
	/// assist debug intr map register
	ASSIST_DEBUG_INTR_MAP: *volatile Register(INTERRUPT_CORE0_ASSIST_DEBUG_INTR_MAP),
	/// dma pms violatile intr map register
	DMA_APBPERI_PMS_MONITOR_VIOLATE_INTR_MAP: *volatile Register(INTERRUPT_CORE0_DMA_APBPERI_PMS_MONITOR_VIOLATE_INTR_MAP),
	/// iram0 pms violatile intr map register
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_INTR_MAP: *volatile Register(INTERRUPT_CORE0_CORE_0_IRAM0_PMS_MONITOR_VIOLATE_INTR_MAP),
	/// mac intr map register
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_INTR_MAP: *volatile Register(INTERRUPT_CORE0_CORE_0_DRAM0_PMS_MONITOR_VIOLATE_INTR_MAP),
	/// mac intr map register
	CORE_0_PIF_PMS_MONITOR_VIOLATE_INTR_MAP: *volatile Register(INTERRUPT_CORE0_CORE_0_PIF_PMS_MONITOR_VIOLATE_INTR_MAP),
	/// mac intr map register
	CORE_0_PIF_PMS_MONITOR_VIOLATE_SIZE_INTR_MAP: *volatile Register(INTERRUPT_CORE0_CORE_0_PIF_PMS_MONITOR_VIOLATE_SIZE_INTR_MAP),
	/// mac intr map register
	BACKUP_PMS_VIOLATE_INTR_MAP: *volatile Register(INTERRUPT_CORE0_BACKUP_PMS_VIOLATE_INTR_MAP),
	/// mac intr map register
	CACHE_CORE0_ACS_INT_MAP: *volatile Register(INTERRUPT_CORE0_CACHE_CORE0_ACS_INT_MAP),
	/// mac intr map register
	INTR_STATUS_REG_0: *volatile Register(INTERRUPT_CORE0_INTR_STATUS_REG_0),
	/// mac intr map register
	INTR_STATUS_REG_1: *volatile Register(INTERRUPT_CORE0_INTR_STATUS_REG_1),
	/// mac intr map register
	CLOCK_GATE: *volatile Register(INTERRUPT_CORE0_CLOCK_GATE),
	/// mac intr map register
	CPU_INT_ENABLE: *volatile Register(INTERRUPT_CORE0_CPU_INT_ENABLE),
	/// mac intr map register
	CPU_INT_TYPE: *volatile Register(INTERRUPT_CORE0_CPU_INT_TYPE),
	/// mac intr map register
	CPU_INT_CLEAR: *volatile Register(INTERRUPT_CORE0_CPU_INT_CLEAR),
	/// mac intr map register
	CPU_INT_EIP_STATUS: *volatile Register(INTERRUPT_CORE0_CPU_INT_EIP_STATUS),
	/// mac intr map register
	CPU_INT_PRI_0: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_0),
	/// mac intr map register
	CPU_INT_PRI_1: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_1),
	/// mac intr map register
	CPU_INT_PRI_2: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_2),
	/// mac intr map register
	CPU_INT_PRI_3: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_3),
	/// mac intr map register
	CPU_INT_PRI_4: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_4),
	/// mac intr map register
	CPU_INT_PRI_5: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_5),
	/// mac intr map register
	CPU_INT_PRI_6: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_6),
	/// mac intr map register
	CPU_INT_PRI_7: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_7),
	/// mac intr map register
	CPU_INT_PRI_8: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_8),
	/// mac intr map register
	CPU_INT_PRI_9: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_9),
	/// mac intr map register
	CPU_INT_PRI_10: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_10),
	/// mac intr map register
	CPU_INT_PRI_11: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_11),
	/// mac intr map register
	CPU_INT_PRI_12: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_12),
	/// mac intr map register
	CPU_INT_PRI_13: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_13),
	/// mac intr map register
	CPU_INT_PRI_14: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_14),
	/// mac intr map register
	CPU_INT_PRI_15: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_15),
	/// mac intr map register
	CPU_INT_PRI_16: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_16),
	/// mac intr map register
	CPU_INT_PRI_17: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_17),
	/// mac intr map register
	CPU_INT_PRI_18: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_18),
	/// mac intr map register
	CPU_INT_PRI_19: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_19),
	/// mac intr map register
	CPU_INT_PRI_20: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_20),
	/// mac intr map register
	CPU_INT_PRI_21: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_21),
	/// mac intr map register
	CPU_INT_PRI_22: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_22),
	/// mac intr map register
	CPU_INT_PRI_23: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_23),
	/// mac intr map register
	CPU_INT_PRI_24: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_24),
	/// mac intr map register
	CPU_INT_PRI_25: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_25),
	/// mac intr map register
	CPU_INT_PRI_26: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_26),
	/// mac intr map register
	CPU_INT_PRI_27: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_27),
	/// mac intr map register
	CPU_INT_PRI_28: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_28),
	/// mac intr map register
	CPU_INT_PRI_29: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_29),
	/// mac intr map register
	CPU_INT_PRI_30: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_30),
	/// mac intr map register
	CPU_INT_PRI_31: *volatile Register(INTERRUPT_CORE0_CPU_INT_PRI_31),
	/// mac intr map register
	CPU_INT_THRESH: *volatile Register(INTERRUPT_CORE0_CPU_INT_THRESH),
	/// mac intr map register
	INTERRUPT_REG_DATE: *volatile Register(INTERRUPT_CORE0_INTERRUPT_REG_DATE),
};

// Peripheral instance
const INTERRUPT_CORE0_instance = INTERRUPT_CORE0 {
	.MAC_INTR_MAP = @ptrFromInt(0x600c2000),
	.MAC_NMI_MAP = @ptrFromInt(0x600c2004),
	.PWR_INTR_MAP = @ptrFromInt(0x600c2008),
	.BB_INT_MAP = @ptrFromInt(0x600c200c),
	.BT_MAC_INT_MAP = @ptrFromInt(0x600c2010),
	.BT_BB_INT_MAP = @ptrFromInt(0x600c2014),
	.BT_BB_NMI_MAP = @ptrFromInt(0x600c2018),
	.RWBT_IRQ_MAP = @ptrFromInt(0x600c201c),
	.RWBLE_IRQ_MAP = @ptrFromInt(0x600c2020),
	.RWBT_NMI_MAP = @ptrFromInt(0x600c2024),
	.RWBLE_NMI_MAP = @ptrFromInt(0x600c2028),
	.I2C_MST_INT_MAP = @ptrFromInt(0x600c202c),
	.SLC0_INTR_MAP = @ptrFromInt(0x600c2030),
	.SLC1_INTR_MAP = @ptrFromInt(0x600c2034),
	.APB_CTRL_INTR_MAP = @ptrFromInt(0x600c2038),
	.UHCI0_INTR_MAP = @ptrFromInt(0x600c203c),
	.GPIO_INTERRUPT_PRO_MAP = @ptrFromInt(0x600c2040),
	.GPIO_INTERRUPT_PRO_NMI_MAP = @ptrFromInt(0x600c2044),
	.SPI_INTR_1_MAP = @ptrFromInt(0x600c2048),
	.SPI_INTR_2_MAP = @ptrFromInt(0x600c204c),
	.I2S1_INT_MAP = @ptrFromInt(0x600c2050),
	.UART_INTR_MAP = @ptrFromInt(0x600c2054),
	.UART1_INTR_MAP = @ptrFromInt(0x600c2058),
	.LEDC_INT_MAP = @ptrFromInt(0x600c205c),
	.EFUSE_INT_MAP = @ptrFromInt(0x600c2060),
	.CAN_INT_MAP = @ptrFromInt(0x600c2064),
	.USB_INTR_MAP = @ptrFromInt(0x600c2068),
	.RTC_CORE_INTR_MAP = @ptrFromInt(0x600c206c),
	.RMT_INTR_MAP = @ptrFromInt(0x600c2070),
	.I2C_EXT0_INTR_MAP = @ptrFromInt(0x600c2074),
	.TIMER_INT1_MAP = @ptrFromInt(0x600c2078),
	.TIMER_INT2_MAP = @ptrFromInt(0x600c207c),
	.TG_T0_INT_MAP = @ptrFromInt(0x600c2080),
	.TG_WDT_INT_MAP = @ptrFromInt(0x600c2084),
	.TG1_T0_INT_MAP = @ptrFromInt(0x600c2088),
	.TG1_WDT_INT_MAP = @ptrFromInt(0x600c208c),
	.CACHE_IA_INT_MAP = @ptrFromInt(0x600c2090),
	.SYSTIMER_TARGET0_INT_MAP = @ptrFromInt(0x600c2094),
	.SYSTIMER_TARGET1_INT_MAP = @ptrFromInt(0x600c2098),
	.SYSTIMER_TARGET2_INT_MAP = @ptrFromInt(0x600c209c),
	.SPI_MEM_REJECT_INTR_MAP = @ptrFromInt(0x600c20a0),
	.ICACHE_PRELOAD_INT_MAP = @ptrFromInt(0x600c20a4),
	.ICACHE_SYNC_INT_MAP = @ptrFromInt(0x600c20a8),
	.APB_ADC_INT_MAP = @ptrFromInt(0x600c20ac),
	.DMA_CH0_INT_MAP = @ptrFromInt(0x600c20b0),
	.DMA_CH1_INT_MAP = @ptrFromInt(0x600c20b4),
	.DMA_CH2_INT_MAP = @ptrFromInt(0x600c20b8),
	.RSA_INT_MAP = @ptrFromInt(0x600c20bc),
	.AES_INT_MAP = @ptrFromInt(0x600c20c0),
	.SHA_INT_MAP = @ptrFromInt(0x600c20c4),
	.CPU_INTR_FROM_CPU_0_MAP = @ptrFromInt(0x600c20c8),
	.CPU_INTR_FROM_CPU_1_MAP = @ptrFromInt(0x600c20cc),
	.CPU_INTR_FROM_CPU_2_MAP = @ptrFromInt(0x600c20d0),
	.CPU_INTR_FROM_CPU_3_MAP = @ptrFromInt(0x600c20d4),
	.ASSIST_DEBUG_INTR_MAP = @ptrFromInt(0x600c20d8),
	.DMA_APBPERI_PMS_MONITOR_VIOLATE_INTR_MAP = @ptrFromInt(0x600c20dc),
	.CORE_0_IRAM0_PMS_MONITOR_VIOLATE_INTR_MAP = @ptrFromInt(0x600c20e0),
	.CORE_0_DRAM0_PMS_MONITOR_VIOLATE_INTR_MAP = @ptrFromInt(0x600c20e4),
	.CORE_0_PIF_PMS_MONITOR_VIOLATE_INTR_MAP = @ptrFromInt(0x600c20e8),
	.CORE_0_PIF_PMS_MONITOR_VIOLATE_SIZE_INTR_MAP = @ptrFromInt(0x600c20ec),
	.BACKUP_PMS_VIOLATE_INTR_MAP = @ptrFromInt(0x600c20f0),
	.CACHE_CORE0_ACS_INT_MAP = @ptrFromInt(0x600c20f4),
	.INTR_STATUS_REG_0 = @ptrFromInt(0x600c20f8),
	.INTR_STATUS_REG_1 = @ptrFromInt(0x600c20fc),
	.CLOCK_GATE = @ptrFromInt(0x600c2100),
	.CPU_INT_ENABLE = @ptrFromInt(0x600c2104),
	.CPU_INT_TYPE = @ptrFromInt(0x600c2108),
	.CPU_INT_CLEAR = @ptrFromInt(0x600c210c),
	.CPU_INT_EIP_STATUS = @ptrFromInt(0x600c2110),
	.CPU_INT_PRI_0 = @ptrFromInt(0x600c2114),
	.CPU_INT_PRI_1 = @ptrFromInt(0x600c2118),
	.CPU_INT_PRI_2 = @ptrFromInt(0x600c211c),
	.CPU_INT_PRI_3 = @ptrFromInt(0x600c2120),
	.CPU_INT_PRI_4 = @ptrFromInt(0x600c2124),
	.CPU_INT_PRI_5 = @ptrFromInt(0x600c2128),
	.CPU_INT_PRI_6 = @ptrFromInt(0x600c212c),
	.CPU_INT_PRI_7 = @ptrFromInt(0x600c2130),
	.CPU_INT_PRI_8 = @ptrFromInt(0x600c2134),
	.CPU_INT_PRI_9 = @ptrFromInt(0x600c2138),
	.CPU_INT_PRI_10 = @ptrFromInt(0x600c213c),
	.CPU_INT_PRI_11 = @ptrFromInt(0x600c2140),
	.CPU_INT_PRI_12 = @ptrFromInt(0x600c2144),
	.CPU_INT_PRI_13 = @ptrFromInt(0x600c2148),
	.CPU_INT_PRI_14 = @ptrFromInt(0x600c214c),
	.CPU_INT_PRI_15 = @ptrFromInt(0x600c2150),
	.CPU_INT_PRI_16 = @ptrFromInt(0x600c2154),
	.CPU_INT_PRI_17 = @ptrFromInt(0x600c2158),
	.CPU_INT_PRI_18 = @ptrFromInt(0x600c215c),
	.CPU_INT_PRI_19 = @ptrFromInt(0x600c2160),
	.CPU_INT_PRI_20 = @ptrFromInt(0x600c2164),
	.CPU_INT_PRI_21 = @ptrFromInt(0x600c2168),
	.CPU_INT_PRI_22 = @ptrFromInt(0x600c216c),
	.CPU_INT_PRI_23 = @ptrFromInt(0x600c2170),
	.CPU_INT_PRI_24 = @ptrFromInt(0x600c2174),
	.CPU_INT_PRI_25 = @ptrFromInt(0x600c2178),
	.CPU_INT_PRI_26 = @ptrFromInt(0x600c217c),
	.CPU_INT_PRI_27 = @ptrFromInt(0x600c2180),
	.CPU_INT_PRI_28 = @ptrFromInt(0x600c2184),
	.CPU_INT_PRI_29 = @ptrFromInt(0x600c2188),
	.CPU_INT_PRI_30 = @ptrFromInt(0x600c218c),
	.CPU_INT_PRI_31 = @ptrFromInt(0x600c2190),
	.CPU_INT_THRESH = @ptrFromInt(0x600c2194),
	.INTERRUPT_REG_DATE = @ptrFromInt(0x600c27fc),
};

const IO_MUX_PIN_CTRL = packed struct {
	/// If you want to output clock for I2S to CLK_OUT_out1, set this register to 0x0. CLK_OUT_out1 can be found in peripheral output signals.
	CLK_OUT1: u4,
	/// If you want to output clock for I2S to CLK_OUT_out2, set this register to 0x0. CLK_OUT_out2 can be found in peripheral output signals.
	CLK_OUT2: u4,
	/// If you want to output clock for I2S to CLK_OUT_out3, set this register to 0x0. CLK_OUT_out3 can be found in peripheral output signals.
	CLK_OUT3: u4,
	reserved0: u20,
};

const IO_MUX_GPION = packed struct {
	/// Output enable of the pad in sleep mode. 1: output enabled; 0: output disabled.
	MCU_OE: u1,
	/// Sleep mode selection of this pad. Set to 1 to put the pad in pad mode.
	SLP_SEL: u1,
	/// Pull-down enable of the pad in sleep mode. 1: internal pull-down enabled; 0: internal pull-down disabled.
	MCU_WPD: u1,
	/// Pull-up enable of the pad during sleep mode. 1: internal pull-up enabled; 0: internal pull-up disabled.
	MCU_WPU: u1,
	/// Input enable of the pad during sleep mode. 1: input enabled; 0: input disabled.
	MCU_IE: u1,
	reserved0: u2,
	/// Pull-down enable of the pad. 1: internal pull-down enabled; 0: internal pull-down disabled.
	FUN_WPD: u1,
	/// Pull-up enable of the pad. 1: internal pull-up enabled; 0: internal pull-up disabled.
	FUN_WPU: u1,
	/// Input enable of the pad. 1: input enabled; 0: input disabled.
	FUN_IE: u1,
	/// Select the drive strength of the pad. 0: ~5 mA; 1: ~10mA; 2: ~20mA; 3: ~40mA.
	FUN_DRV: u2,
	/// Select IO MUX function for this signal. 0: Select Function 1; 1: Select Function 2; etc.
	MCU_SEL: u3,
	/// Enable filter for pin input signals. 1: Filter enabled; 2: Filter disabled.
	FILTER_EN: u1,
	reserved1: u16,
};

const IO_MUX_DATE = packed struct {
	/// Version control register
	REG_DATE: u28,
	reserved0: u4,
};

//Peripheral type
const IO_MUX = struct {
	/// Clock Output Configuration Register
	PIN_CTRL: *volatile Register(IO_MUX_PIN_CTRL),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO0: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO1: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO2: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO3: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO4: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO5: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO6: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO7: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO8: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO9: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO10: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO11: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO12: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO13: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO14: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO15: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO16: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO17: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO18: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO19: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO20: *volatile Register(IO_MUX_GPION),
	/// IO MUX Configure Register for pad XTAL_32K_P
	GPIO21: *volatile Register(IO_MUX_GPION),
	/// IO MUX Version Control Register
	DATE: *volatile Register(IO_MUX_DATE),
};

// Peripheral instance
const IO_MUX_instance = IO_MUX {
	.PIN_CTRL = @ptrFromInt(0x60009000),
	.GPIO0 = @ptrFromInt(0x60009004),
	.GPIO1 = @ptrFromInt(0x60009004),
	.GPIO2 = @ptrFromInt(0x60009004),
	.GPIO3 = @ptrFromInt(0x60009004),
	.GPIO4 = @ptrFromInt(0x60009004),
	.GPIO5 = @ptrFromInt(0x60009004),
	.GPIO6 = @ptrFromInt(0x60009004),
	.GPIO7 = @ptrFromInt(0x60009004),
	.GPIO8 = @ptrFromInt(0x60009004),
	.GPIO9 = @ptrFromInt(0x60009004),
	.GPIO10 = @ptrFromInt(0x60009004),
	.GPIO11 = @ptrFromInt(0x60009004),
	.GPIO12 = @ptrFromInt(0x60009004),
	.GPIO13 = @ptrFromInt(0x60009004),
	.GPIO14 = @ptrFromInt(0x60009004),
	.GPIO15 = @ptrFromInt(0x60009004),
	.GPIO16 = @ptrFromInt(0x60009004),
	.GPIO17 = @ptrFromInt(0x60009004),
	.GPIO18 = @ptrFromInt(0x60009004),
	.GPIO19 = @ptrFromInt(0x60009004),
	.GPIO20 = @ptrFromInt(0x60009004),
	.GPIO21 = @ptrFromInt(0x60009004),
	.DATE = @ptrFromInt(0x600090fc),
};

const LEDC_CHN_CONF0 = packed struct {
	/// reg_timer_sel_lsch0.
	TIMER_SEL: u2,
	/// reg_sig_out_en_lsch0.
	SIG_OUT_EN: u1,
	/// reg_idle_lv_lsch0.
	IDLE_LV: u1,
	/// reg_para_up_lsch0.
	PARA_UP: u1,
	/// reg_ovf_num_lsch0.
	OVF_NUM: u10,
	/// reg_ovf_cnt_en_lsch0.
	OVF_CNT_EN: u1,
	/// reg_ovf_cnt_reset_lsch0.
	OVF_CNT_RESET: u1,
	reserved0: u15,
};

const LEDC_CHN_HPOINT = packed struct {
	/// reg_hpoint_lsch0.
	HPOINT: u14,
	reserved0: u18,
};

const LEDC_CHN_DUTY = packed struct {
	/// reg_duty_lsch0.
	DUTY: u19,
	reserved0: u13,
};

const LEDC_CHN_CONF1 = packed struct {
	/// reg_duty_scale_lsch0.
	DUTY_SCALE: u10,
	/// reg_duty_cycle_lsch0.
	DUTY_CYCLE: u10,
	/// reg_duty_num_lsch0.
	DUTY_NUM: u10,
	/// reg_duty_inc_lsch0.
	DUTY_INC: u1,
	/// reg_duty_start_lsch0.
	DUTY_START: u1,
};

const LEDC_CHN_DUTY_R = packed struct {
	/// reg_duty_lsch0_r.
	DUTY_R: u19,
	reserved0: u13,
};

const LEDC_TIMERN_CONF = packed struct {
	/// reg_lstimer0_duty_res.
	DUTY_RES: u4,
	/// reg_clk_div_lstimer0.
	CLK_DIV: u18,
	/// reg_lstimer0_pause.
	PAUSE: u1,
	/// reg_lstimer0_rst.
	RST: u1,
	/// reg_tick_sel_lstimer0.
	TICK_SEL: u1,
	/// reg_lstimer0_para_up.
	PARA_UP: u1,
	reserved0: u6,
};

const LEDC_TIMERN_VALUE = packed struct {
	/// reg_lstimer0_cnt.
	CNT: u14,
	reserved0: u18,
};

const LEDC_INT_RAW = packed struct {
	/// reg_lstimer0_ovf_int_raw.
	LSTIMER0_OVF_INT_RAW: u1,
	/// reg_lstimer1_ovf_int_raw.
	LSTIMER1_OVF_INT_RAW: u1,
	/// reg_lstimer2_ovf_int_raw.
	LSTIMER2_OVF_INT_RAW: u1,
	/// reg_lstimer3_ovf_int_raw.
	LSTIMER3_OVF_INT_RAW: u1,
	/// reg_duty_chng_end_lsch0_int_raw.
	DUTY_CHNG_END_LSCH0_INT_RAW: u1,
	/// reg_duty_chng_end_lsch1_int_raw.
	DUTY_CHNG_END_LSCH1_INT_RAW: u1,
	/// reg_duty_chng_end_lsch2_int_raw.
	DUTY_CHNG_END_LSCH2_INT_RAW: u1,
	/// reg_duty_chng_end_lsch3_int_raw.
	DUTY_CHNG_END_LSCH3_INT_RAW: u1,
	/// reg_duty_chng_end_lsch4_int_raw.
	DUTY_CHNG_END_LSCH4_INT_RAW: u1,
	/// reg_duty_chng_end_lsch5_int_raw.
	DUTY_CHNG_END_LSCH5_INT_RAW: u1,
	/// reg_ovf_cnt_lsch0_int_raw.
	OVF_CNT_LSCH0_INT_RAW: u1,
	/// reg_ovf_cnt_lsch1_int_raw.
	OVF_CNT_LSCH1_INT_RAW: u1,
	/// reg_ovf_cnt_lsch2_int_raw.
	OVF_CNT_LSCH2_INT_RAW: u1,
	/// reg_ovf_cnt_lsch3_int_raw.
	OVF_CNT_LSCH3_INT_RAW: u1,
	/// reg_ovf_cnt_lsch4_int_raw.
	OVF_CNT_LSCH4_INT_RAW: u1,
	/// reg_ovf_cnt_lsch5_int_raw.
	OVF_CNT_LSCH5_INT_RAW: u1,
	reserved0: u16,
};

const LEDC_INT_ST = packed struct {
	/// reg_lstimer0_ovf_int_st.
	LSTIMER0_OVF_INT_ST: u1,
	/// reg_lstimer1_ovf_int_st.
	LSTIMER1_OVF_INT_ST: u1,
	/// reg_lstimer2_ovf_int_st.
	LSTIMER2_OVF_INT_ST: u1,
	/// reg_lstimer3_ovf_int_st.
	LSTIMER3_OVF_INT_ST: u1,
	/// reg_duty_chng_end_lsch0_int_st.
	DUTY_CHNG_END_LSCH0_INT_ST: u1,
	/// reg_duty_chng_end_lsch1_int_st.
	DUTY_CHNG_END_LSCH1_INT_ST: u1,
	/// reg_duty_chng_end_lsch2_int_st.
	DUTY_CHNG_END_LSCH2_INT_ST: u1,
	/// reg_duty_chng_end_lsch3_int_st.
	DUTY_CHNG_END_LSCH3_INT_ST: u1,
	/// reg_duty_chng_end_lsch4_int_st.
	DUTY_CHNG_END_LSCH4_INT_ST: u1,
	/// reg_duty_chng_end_lsch5_int_st.
	DUTY_CHNG_END_LSCH5_INT_ST: u1,
	/// reg_ovf_cnt_lsch0_int_st.
	OVF_CNT_LSCH0_INT_ST: u1,
	/// reg_ovf_cnt_lsch1_int_st.
	OVF_CNT_LSCH1_INT_ST: u1,
	/// reg_ovf_cnt_lsch2_int_st.
	OVF_CNT_LSCH2_INT_ST: u1,
	/// reg_ovf_cnt_lsch3_int_st.
	OVF_CNT_LSCH3_INT_ST: u1,
	/// reg_ovf_cnt_lsch4_int_st.
	OVF_CNT_LSCH4_INT_ST: u1,
	/// reg_ovf_cnt_lsch5_int_st.
	OVF_CNT_LSCH5_INT_ST: u1,
	reserved0: u16,
};

const LEDC_INT_ENA = packed struct {
	/// reg_lstimer0_ovf_int_ena.
	LSTIMER0_OVF_INT_ENA: u1,
	/// reg_lstimer1_ovf_int_ena.
	LSTIMER1_OVF_INT_ENA: u1,
	/// reg_lstimer2_ovf_int_ena.
	LSTIMER2_OVF_INT_ENA: u1,
	/// reg_lstimer3_ovf_int_ena.
	LSTIMER3_OVF_INT_ENA: u1,
	/// reg_duty_chng_end_lsch0_int_ena.
	DUTY_CHNG_END_LSCH0_INT_ENA: u1,
	/// reg_duty_chng_end_lsch1_int_ena.
	DUTY_CHNG_END_LSCH1_INT_ENA: u1,
	/// reg_duty_chng_end_lsch2_int_ena.
	DUTY_CHNG_END_LSCH2_INT_ENA: u1,
	/// reg_duty_chng_end_lsch3_int_ena.
	DUTY_CHNG_END_LSCH3_INT_ENA: u1,
	/// reg_duty_chng_end_lsch4_int_ena.
	DUTY_CHNG_END_LSCH4_INT_ENA: u1,
	/// reg_duty_chng_end_lsch5_int_ena.
	DUTY_CHNG_END_LSCH5_INT_ENA: u1,
	/// reg_ovf_cnt_lsch0_int_ena.
	OVF_CNT_LSCH0_INT_ENA: u1,
	/// reg_ovf_cnt_lsch1_int_ena.
	OVF_CNT_LSCH1_INT_ENA: u1,
	/// reg_ovf_cnt_lsch2_int_ena.
	OVF_CNT_LSCH2_INT_ENA: u1,
	/// reg_ovf_cnt_lsch3_int_ena.
	OVF_CNT_LSCH3_INT_ENA: u1,
	/// reg_ovf_cnt_lsch4_int_ena.
	OVF_CNT_LSCH4_INT_ENA: u1,
	/// reg_ovf_cnt_lsch5_int_ena.
	OVF_CNT_LSCH5_INT_ENA: u1,
	reserved0: u16,
};

const LEDC_INT_CLR = packed struct {
	/// reg_lstimer0_ovf_int_clr.
	LSTIMER0_OVF_INT_CLR: u1,
	/// reg_lstimer1_ovf_int_clr.
	LSTIMER1_OVF_INT_CLR: u1,
	/// reg_lstimer2_ovf_int_clr.
	LSTIMER2_OVF_INT_CLR: u1,
	/// reg_lstimer3_ovf_int_clr.
	LSTIMER3_OVF_INT_CLR: u1,
	/// reg_duty_chng_end_lsch0_int_clr.
	DUTY_CHNG_END_LSCH0_INT_CLR: u1,
	/// reg_duty_chng_end_lsch1_int_clr.
	DUTY_CHNG_END_LSCH1_INT_CLR: u1,
	/// reg_duty_chng_end_lsch2_int_clr.
	DUTY_CHNG_END_LSCH2_INT_CLR: u1,
	/// reg_duty_chng_end_lsch3_int_clr.
	DUTY_CHNG_END_LSCH3_INT_CLR: u1,
	/// reg_duty_chng_end_lsch4_int_clr.
	DUTY_CHNG_END_LSCH4_INT_CLR: u1,
	/// reg_duty_chng_end_lsch5_int_clr.
	DUTY_CHNG_END_LSCH5_INT_CLR: u1,
	/// reg_ovf_cnt_lsch0_int_clr.
	OVF_CNT_LSCH0_INT_CLR: u1,
	/// reg_ovf_cnt_lsch1_int_clr.
	OVF_CNT_LSCH1_INT_CLR: u1,
	/// reg_ovf_cnt_lsch2_int_clr.
	OVF_CNT_LSCH2_INT_CLR: u1,
	/// reg_ovf_cnt_lsch3_int_clr.
	OVF_CNT_LSCH3_INT_CLR: u1,
	/// reg_ovf_cnt_lsch4_int_clr.
	OVF_CNT_LSCH4_INT_CLR: u1,
	/// reg_ovf_cnt_lsch5_int_clr.
	OVF_CNT_LSCH5_INT_CLR: u1,
	reserved0: u16,
};

const LEDC_CONF = packed struct {
	/// reg_apb_clk_sel.
	APB_CLK_SEL: u2,
	reserved0: u29,
	/// reg_clk_en.
	CLK_EN: u1,
};

const LEDC_DATE = packed struct {
	/// reg_ledc_date.
	LEDC_DATE: u32,
};

//Peripheral type
const LEDC = struct {
	/// LEDC_LSCH0_CONF0.
	CH0_CONF0: *volatile Register(LEDC_CHN_CONF0),
	/// LEDC_LSCH1_CONF1.
	CH1_CONF0: *volatile Register(LEDC_CHN_CONF0),
	/// LEDC_LSCH2_CONF2.
	CH2_CONF0: *volatile Register(LEDC_CHN_CONF0),
	/// LEDC_LSCH3_CONF3.
	CH3_CONF0: *volatile Register(LEDC_CHN_CONF0),
	/// LEDC_LSCH4_CONF4.
	CH4_CONF0: *volatile Register(LEDC_CHN_CONF0),
	/// LEDC_LSCH5_CONF5.
	CH5_CONF0: *volatile Register(LEDC_CHN_CONF0),
	/// LEDC_LSCH0_HPOINT.
	CH0_HPOINT: *volatile Register(LEDC_CHN_HPOINT),
	/// LEDC_LSCH1_HPOINT.
	CH1_HPOINT: *volatile Register(LEDC_CHN_HPOINT),
	/// LEDC_LSCH2_HPOINT.
	CH2_HPOINT: *volatile Register(LEDC_CHN_HPOINT),
	/// LEDC_LSCH3_HPOINT.
	CH3_HPOINT: *volatile Register(LEDC_CHN_HPOINT),
	/// LEDC_LSCH4_HPOINT.
	CH4_HPOINT: *volatile Register(LEDC_CHN_HPOINT),
	/// LEDC_LSCH5_HPOINT.
	CH5_HPOINT: *volatile Register(LEDC_CHN_HPOINT),
	/// LEDC_LSCH0_DUTY.
	CH0_DUTY: *volatile Register(LEDC_CHN_DUTY),
	/// LEDC_LSCH1_DUTY.
	CH1_DUTY: *volatile Register(LEDC_CHN_DUTY),
	/// LEDC_LSCH2_DUTY.
	CH2_DUTY: *volatile Register(LEDC_CHN_DUTY),
	/// LEDC_LSCH3_DUTY.
	CH3_DUTY: *volatile Register(LEDC_CHN_DUTY),
	/// LEDC_LSCH4_DUTY.
	CH4_DUTY: *volatile Register(LEDC_CHN_DUTY),
	/// LEDC_LSCH5_DUTY.
	CH5_DUTY: *volatile Register(LEDC_CHN_DUTY),
	/// LEDC_LSCH0_CONF1.
	CH0_CONF1: *volatile Register(LEDC_CHN_CONF1),
	/// LEDC_LSCH1_CONF1.
	CH1_CONF1: *volatile Register(LEDC_CHN_CONF1),
	/// LEDC_LSCH2_CONF1.
	CH2_CONF1: *volatile Register(LEDC_CHN_CONF1),
	/// LEDC_LSCH3_CONF1.
	CH3_CONF1: *volatile Register(LEDC_CHN_CONF1),
	/// LEDC_LSCH4_CONF1.
	CH4_CONF1: *volatile Register(LEDC_CHN_CONF1),
	/// LEDC_LSCH5_CONF1.
	CH5_CONF1: *volatile Register(LEDC_CHN_CONF1),
	/// LEDC_LSCH0_DUTY_R.
	CH0_DUTY_R: *volatile Register(LEDC_CHN_DUTY_R),
	/// LEDC_LSCH1_DUTY_R.
	CH1_DUTY_R: *volatile Register(LEDC_CHN_DUTY_R),
	/// LEDC_LSCH2_DUTY_R.
	CH2_DUTY_R: *volatile Register(LEDC_CHN_DUTY_R),
	/// LEDC_LSCH3_DUTY_R.
	CH3_DUTY_R: *volatile Register(LEDC_CHN_DUTY_R),
	/// LEDC_LSCH4_DUTY_R.
	CH4_DUTY_R: *volatile Register(LEDC_CHN_DUTY_R),
	/// LEDC_LSCH5_DUTY_R.
	CH5_DUTY_R: *volatile Register(LEDC_CHN_DUTY_R),
	/// LEDC_LSTIMER0_CONF.
	TIMER0_CONF: *volatile Register(LEDC_TIMERN_CONF),
	/// LEDC_LSTIMER1_CONF.
	TIMER1_CONF: *volatile Register(LEDC_TIMERN_CONF),
	/// LEDC_LSTIMER2_CONF.
	TIMER2_CONF: *volatile Register(LEDC_TIMERN_CONF),
	/// LEDC_LSTIMER3_CONF.
	TIMER3_CONF: *volatile Register(LEDC_TIMERN_CONF),
	/// LEDC_LSTIMER0_VALUE.
	TIMER0_VALUE: *volatile Register(LEDC_TIMERN_VALUE),
	/// LEDC_LSTIMER1_VALUE.
	TIMER1_VALUE: *volatile Register(LEDC_TIMERN_VALUE),
	/// LEDC_LSTIMER2_VALUE.
	TIMER2_VALUE: *volatile Register(LEDC_TIMERN_VALUE),
	/// LEDC_LSTIMER3_VALUE.
	TIMER3_VALUE: *volatile Register(LEDC_TIMERN_VALUE),
	/// LEDC_INT_RAW.
	INT_RAW: *volatile Register(LEDC_INT_RAW),
	/// LEDC_INT_ST.
	INT_ST: *volatile Register(LEDC_INT_ST),
	/// LEDC_INT_ENA.
	INT_ENA: *volatile Register(LEDC_INT_ENA),
	/// LEDC_INT_CLR.
	INT_CLR: *volatile Register(LEDC_INT_CLR),
	/// LEDC_CONF.
	CONF: *volatile Register(LEDC_CONF),
	/// LEDC_DATE.
	DATE: *volatile Register(LEDC_DATE),
};

// Peripheral instance
const LEDC_instance = LEDC {
	.CH0_CONF0 = @ptrFromInt(0x60019000),
	.CH1_CONF0 = @ptrFromInt(0x60019000),
	.CH2_CONF0 = @ptrFromInt(0x60019000),
	.CH3_CONF0 = @ptrFromInt(0x60019000),
	.CH4_CONF0 = @ptrFromInt(0x60019000),
	.CH5_CONF0 = @ptrFromInt(0x60019000),
	.CH0_HPOINT = @ptrFromInt(0x60019004),
	.CH1_HPOINT = @ptrFromInt(0x60019004),
	.CH2_HPOINT = @ptrFromInt(0x60019004),
	.CH3_HPOINT = @ptrFromInt(0x60019004),
	.CH4_HPOINT = @ptrFromInt(0x60019004),
	.CH5_HPOINT = @ptrFromInt(0x60019004),
	.CH0_DUTY = @ptrFromInt(0x60019008),
	.CH1_DUTY = @ptrFromInt(0x60019008),
	.CH2_DUTY = @ptrFromInt(0x60019008),
	.CH3_DUTY = @ptrFromInt(0x60019008),
	.CH4_DUTY = @ptrFromInt(0x60019008),
	.CH5_DUTY = @ptrFromInt(0x60019008),
	.CH0_CONF1 = @ptrFromInt(0x6001900c),
	.CH1_CONF1 = @ptrFromInt(0x6001900c),
	.CH2_CONF1 = @ptrFromInt(0x6001900c),
	.CH3_CONF1 = @ptrFromInt(0x6001900c),
	.CH4_CONF1 = @ptrFromInt(0x6001900c),
	.CH5_CONF1 = @ptrFromInt(0x6001900c),
	.CH0_DUTY_R = @ptrFromInt(0x60019010),
	.CH1_DUTY_R = @ptrFromInt(0x60019010),
	.CH2_DUTY_R = @ptrFromInt(0x60019010),
	.CH3_DUTY_R = @ptrFromInt(0x60019010),
	.CH4_DUTY_R = @ptrFromInt(0x60019010),
	.CH5_DUTY_R = @ptrFromInt(0x60019010),
	.TIMER0_CONF = @ptrFromInt(0x600190a0),
	.TIMER1_CONF = @ptrFromInt(0x600190a0),
	.TIMER2_CONF = @ptrFromInt(0x600190a0),
	.TIMER3_CONF = @ptrFromInt(0x600190a0),
	.TIMER0_VALUE = @ptrFromInt(0x600190a4),
	.TIMER1_VALUE = @ptrFromInt(0x600190a4),
	.TIMER2_VALUE = @ptrFromInt(0x600190a4),
	.TIMER3_VALUE = @ptrFromInt(0x600190a4),
	.INT_RAW = @ptrFromInt(0x600190c0),
	.INT_ST = @ptrFromInt(0x600190c4),
	.INT_ENA = @ptrFromInt(0x600190c8),
	.INT_CLR = @ptrFromInt(0x600190cc),
	.CONF = @ptrFromInt(0x600190d0),
	.DATE = @ptrFromInt(0x600190fc),
};

const RMT_CHNDATA = packed struct {
	/// Reserved.
	DATA: u32,
};

const RMT_CHN_TX_CONF0 = packed struct {
	/// reg_tx_start_ch0.
	TX_START: u1,
	/// reg_mem_rd_rst_ch0.
	MEM_RD_RST: u1,
	/// reg_apb_mem_rst_ch0.
	APB_MEM_RST: u1,
	/// reg_tx_conti_mode_ch0.
	TX_CONTI_MODE: u1,
	/// reg_mem_tx_wrap_en_ch0.
	MEM_TX_WRAP_EN: u1,
	/// reg_idle_out_lv_ch0.
	IDLE_OUT_LV: u1,
	/// reg_idle_out_en_ch0.
	IDLE_OUT_EN: u1,
	/// reg_tx_stop_ch0.
	TX_STOP: u1,
	/// reg_div_cnt_ch0.
	DIV_CNT: u8,
	/// reg_mem_size_ch0.
	MEM_SIZE: u3,
	reserved0: u1,
	/// reg_carrier_eff_en_ch0.
	CARRIER_EFF_EN: u1,
	/// reg_carrier_en_ch0.
	CARRIER_EN: u1,
	/// reg_carrier_out_lv_ch0.
	CARRIER_OUT_LV: u1,
	/// reg_afifo_rst_ch0.
	AFIFO_RST: u1,
	/// reg_reg_conf_update_ch0.
	CONF_UPDATE: u1,
	reserved1: u7,
};

const RMT_CHN_RX_CONF0 = packed struct {
	/// reg_div_cnt_ch2.
	DIV_CNT: u8,
	/// reg_idle_thres_ch2.
	IDLE_THRES: u15,
	/// reg_mem_size_ch2.
	MEM_SIZE: u3,
	reserved0: u2,
	/// reg_carrier_en_ch2.
	CARRIER_EN: u1,
	/// reg_carrier_out_lv_ch2.
	CARRIER_OUT_LV: u1,
	reserved1: u2,
};

const RMT_CHN_RX_CONF1 = packed struct {
	/// reg_rx_en_ch2.
	RX_EN: u1,
	/// reg_mem_wr_rst_ch2.
	MEM_WR_RST: u1,
	/// reg_apb_mem_rst_ch2.
	APB_MEM_RST: u1,
	/// reg_mem_owner_ch2.
	MEM_OWNER: u1,
	/// reg_rx_filter_en_ch2.
	RX_FILTER_EN: u1,
	/// reg_rx_filter_thres_ch2.
	RX_FILTER_THRES: u8,
	/// reg_mem_rx_wrap_en_ch2.
	MEM_RX_WRAP_EN: u1,
	/// reg_afifo_rst_ch2.
	AFIFO_RST: u1,
	/// reg_conf_update_ch2.
	CONF_UPDATE: u1,
	reserved0: u16,
};

const RMT_CHN_TX_STATUS = packed struct {
	/// reg_mem_raddr_ex_ch0.
	MEM_RADDR_EX: u9,
	/// reg_state_ch0.
	STATE: u3,
	/// reg_apb_mem_waddr_ch0.
	APB_MEM_WADDR: u9,
	/// reg_apb_mem_rd_err_ch0.
	APB_MEM_RD_ERR: u1,
	/// reg_mem_empty_ch0.
	MEM_EMPTY: u1,
	/// reg_apb_mem_wr_err_ch0.
	APB_MEM_WR_ERR: u1,
	/// reg_apb_mem_raddr_ch0.
	APB_MEM_RADDR: u8,
};

const RMT_CHN_RX_STATUS = packed struct {
	/// reg_mem_waddr_ex_ch2.
	MEM_WADDR_EX: u9,
	reserved0: u3,
	/// reg_apb_mem_raddr_ch2.
	APB_MEM_RADDR: u9,
	reserved1: u1,
	/// reg_state_ch2.
	STATE: u3,
	/// reg_mem_owner_err_ch2.
	MEM_OWNER_ERR: u1,
	/// reg_mem_full_ch2.
	MEM_FULL: u1,
	/// reg_apb_mem_rd_err_ch2.
	APB_MEM_RD_ERR: u1,
	reserved2: u4,
};

const RMT_INT_RAW = packed struct {
	/// reg_ch0_tx_end_int_raw.
	CH0_TX_END: u1,
	/// reg_ch1_tx_end_int_raw.
	CH1_TX_END: u1,
	/// reg_ch2_rx_end_int_raw.
	CH0_RX_END: u1,
	/// reg_ch2_rx_end_int_raw.
	CH1_RX_END: u1,
	/// reg_ch0_err_int_raw.
	CH0_TX_ERR: u1,
	/// reg_ch1_err_int_raw.
	CH1_TX_ERR: u1,
	/// reg_ch2_err_int_raw.
	CH0_RX_ERR: u1,
	/// reg_ch2_err_int_raw.
	CH1_RX_ERR: u1,
	/// reg_ch0_tx_thr_event_int_raw.
	CH0_TX_THR_EVENT: u1,
	/// reg_ch1_tx_thr_event_int_raw.
	CH1_TX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_raw.
	CH0_RX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_raw.
	CH1_RX_THR_EVENT: u1,
	/// reg_ch0_tx_loop_int_raw.
	CH0_TX_LOOP: u1,
	/// reg_ch1_tx_loop_int_raw.
	CH1_TX_LOOP: u1,
	reserved0: u18,
};

const RMT_INT_ST = packed struct {
	/// reg_ch0_tx_end_int_st.
	CH0_TX_END: u1,
	/// reg_ch1_tx_end_int_st.
	CH1_TX_END: u1,
	/// reg_ch2_rx_end_int_st.
	CH0_RX_END: u1,
	/// reg_ch2_rx_end_int_st.
	CH1_RX_END: u1,
	/// reg_ch0_err_int_st.
	CH0_TX_ERR: u1,
	/// reg_ch1_err_int_st.
	CH1_TX_ERR: u1,
	/// reg_ch2_err_int_st.
	CH0_RX_ERR: u1,
	/// reg_ch2_err_int_st.
	CH1_RX_ERR: u1,
	/// reg_ch0_tx_thr_event_int_st.
	CH0_TX_THR_EVENT: u1,
	/// reg_ch1_tx_thr_event_int_st.
	CH1_TX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_st.
	CH0_RX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_st.
	CH1_RX_THR_EVENT: u1,
	/// reg_ch0_tx_loop_int_st.
	CH0_TX_LOOP: u1,
	/// reg_ch1_tx_loop_int_st.
	CH1_TX_LOOP: u1,
	reserved0: u18,
};

const RMT_INT_ENA = packed struct {
	/// reg_ch0_tx_end_int_ena.
	CH0_TX_END: u1,
	/// reg_ch1_tx_end_int_ena.
	CH1_TX_END: u1,
	/// reg_ch2_rx_end_int_ena.
	CH0_RX_END: u1,
	/// reg_ch2_rx_end_int_ena.
	CH1_RX_END: u1,
	/// reg_ch0_err_int_ena.
	CH0_TX_ERR: u1,
	/// reg_ch1_err_int_ena.
	CH1_TX_ERR: u1,
	/// reg_ch2_err_int_ena.
	CH0_RX_ERR: u1,
	/// reg_ch2_err_int_ena.
	CH1_RX_ERR: u1,
	/// reg_ch0_tx_thr_event_int_ena.
	CH0_TX_THR_EVENT: u1,
	/// reg_ch1_tx_thr_event_int_ena.
	CH1_TX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_ena.
	CH0_RX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_ena.
	CH1_RX_THR_EVENT: u1,
	/// reg_ch0_tx_loop_int_ena.
	CH0_TX_LOOP: u1,
	/// reg_ch1_tx_loop_int_ena.
	CH1_TX_LOOP: u1,
	reserved0: u18,
};

const RMT_INT_CLR = packed struct {
	/// reg_ch0_tx_end_int_clr.
	CH0_TX_END: u1,
	/// reg_ch1_tx_end_int_clr.
	CH1_TX_END: u1,
	/// reg_ch2_rx_end_int_clr.
	CH0_RX_END: u1,
	/// reg_ch2_rx_end_int_clr.
	CH1_RX_END: u1,
	/// reg_ch0_err_int_clr.
	CH0_TX_ERR: u1,
	/// reg_ch1_err_int_clr.
	CH1_TX_ERR: u1,
	/// reg_ch2_err_int_clr.
	CH0_RX_ERR: u1,
	/// reg_ch2_err_int_clr.
	CH1_RX_ERR: u1,
	/// reg_ch0_tx_thr_event_int_clr.
	CH0_TX_THR_EVENT: u1,
	/// reg_ch1_tx_thr_event_int_clr.
	CH1_TX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_clr.
	CH0_RX_THR_EVENT: u1,
	/// reg_ch2_rx_thr_event_int_clr.
	CH1_RX_THR_EVENT: u1,
	/// reg_ch0_tx_loop_int_clr.
	CH0_TX_LOOP: u1,
	/// reg_ch1_tx_loop_int_clr.
	CH1_TX_LOOP: u1,
	reserved0: u18,
};

const RMT_CHNCARRIER_DUTY = packed struct {
	/// reg_carrier_low_ch0.
	CARRIER_LOW: u16,
	/// reg_carrier_high_ch0.
	CARRIER_HIGH: u16,
};

const RMT_CHN_RX_CARRIER_RM = packed struct {
	/// reg_carrier_low_thres_ch2.
	CARRIER_LOW_THRES: u16,
	/// reg_carrier_high_thres_ch2.
	CARRIER_HIGH_THRES: u16,
};

const RMT_CHN_TX_LIM = packed struct {
	/// reg_rmt_tx_lim_ch0.
	TX_LIM: u9,
	/// reg_rmt_tx_loop_num_ch0.
	TX_LOOP_NUM: u10,
	/// reg_rmt_tx_loop_cnt_en_ch0.
	TX_LOOP_CNT_EN: u1,
	/// reg_loop_count_reset_ch0.
	LOOP_COUNT_RESET: u1,
	reserved0: u11,
};

const RMT_CHN_RX_LIM = packed struct {
	/// reg_rmt_rx_lim_ch2.
	RX_LIM: u9,
	reserved0: u23,
};

const RMT_SYS_CONF = packed struct {
	/// reg_apb_fifo_mask.
	APB_FIFO_MASK: u1,
	/// reg_mem_clk_force_on.
	MEM_CLK_FORCE_ON: u1,
	/// reg_rmt_mem_force_pd.
	MEM_FORCE_PD: u1,
	/// reg_rmt_mem_force_pu.
	MEM_FORCE_PU: u1,
	/// reg_rmt_sclk_div_num.
	SCLK_DIV_NUM: u8,
	/// reg_rmt_sclk_div_a.
	SCLK_DIV_A: u6,
	/// reg_rmt_sclk_div_b.
	SCLK_DIV_B: u6,
	/// reg_rmt_sclk_sel.
	SCLK_SEL: u2,
	/// reg_rmt_sclk_active.
	SCLK_ACTIVE: u1,
	reserved0: u4,
	/// reg_clk_en.
	CLK_EN: u1,
};

const RMT_TX_SIM = packed struct {
	/// reg_rmt_tx_sim_ch0.
	TX_SIM_CH0: u1,
	/// reg_rmt_tx_sim_ch1.
	TX_SIM_CH1: u1,
	/// reg_rmt_tx_sim_en.
	TX_SIM_EN: u1,
	reserved0: u29,
};

const RMT_REF_CNT_RST = packed struct {
	/// reg_ref_cnt_rst_ch0.
	CH0: u1,
	/// reg_ref_cnt_rst_ch1.
	CH1: u1,
	/// reg_ref_cnt_rst_ch2.
	CH2: u1,
	/// reg_ref_cnt_rst_ch3.
	CH3: u1,
	reserved0: u28,
};

const RMT_DATE = packed struct {
	/// reg_rmt_date.
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const RMT = struct {
	/// RMT_CH0DATA_REG.
	CH0DATA: *volatile Register(RMT_CHNDATA),
	/// RMT_CH1DATA_REG.
	CH1DATA: *volatile Register(RMT_CHNDATA),
	/// RMT_CH2DATA_REG.
	CH2DATA: *volatile Register(RMT_CHNDATA),
	/// RMT_CH3DATA_REG.
	CH3DATA: *volatile Register(RMT_CHNDATA),
	/// RMT_CH0CONF0_REG.
	CH0_TX_CONF0: *volatile Register(RMT_CHN_TX_CONF0),
	/// RMT_CH1CONF1_REG.
	CH1_TX_CONF0: *volatile Register(RMT_CHN_TX_CONF0),
	/// RMT_CH2CONF0_REG.
	CH0_RX_CONF0: *volatile Register(RMT_CHN_RX_CONF0),
	/// RMT_CH2CONF0_REG.
	CH1_RX_CONF0: *volatile Register(RMT_CHN_RX_CONF0),
	/// RMT_CH2CONF1_REG.
	CH0_RX_CONF1: *volatile Register(RMT_CHN_RX_CONF1),
	/// RMT_CH2CONF1_REG.
	CH1_RX_CONF1: *volatile Register(RMT_CHN_RX_CONF1),
	/// RMT_CH0STATUS_REG.
	CH0_TX_STATUS: *volatile Register(RMT_CHN_TX_STATUS),
	/// RMT_CH1STATUS_REG.
	CH1_TX_STATUS: *volatile Register(RMT_CHN_TX_STATUS),
	/// RMT_CH2STATUS_REG.
	CH0_RX_STATUS: *volatile Register(RMT_CHN_RX_STATUS),
	/// RMT_CH2STATUS_REG.
	CH1_RX_STATUS: *volatile Register(RMT_CHN_RX_STATUS),
	/// RMT_INT_RAW_REG.
	INT_RAW: *volatile Register(RMT_INT_RAW),
	/// RMT_INT_ST_REG.
	INT_ST: *volatile Register(RMT_INT_ST),
	/// RMT_INT_ENA_REG.
	INT_ENA: *volatile Register(RMT_INT_ENA),
	/// RMT_INT_CLR_REG.
	INT_CLR: *volatile Register(RMT_INT_CLR),
	/// RMT_CH0CARRIER_DUTY_REG.
	CH0CARRIER_DUTY: *volatile Register(RMT_CHNCARRIER_DUTY),
	/// RMT_CH1CARRIER_DUTY_REG.
	CH1CARRIER_DUTY: *volatile Register(RMT_CHNCARRIER_DUTY),
	/// RMT_CH2_RX_CARRIER_RM_REG.
	CH0_RX_CARRIER_RM: *volatile Register(RMT_CHN_RX_CARRIER_RM),
	/// RMT_CH2_RX_CARRIER_RM_REG.
	CH1_RX_CARRIER_RM: *volatile Register(RMT_CHN_RX_CARRIER_RM),
	/// RMT_CH0_TX_LIM_REG.
	CH0_TX_LIM: *volatile Register(RMT_CHN_TX_LIM),
	/// RMT_CH1_TX_LIM_REG.
	CH1_TX_LIM: *volatile Register(RMT_CHN_TX_LIM),
	/// RMT_CH2_RX_LIM_REG.
	CH0_RX_LIM: *volatile Register(RMT_CHN_RX_LIM),
	/// RMT_CH2_RX_LIM_REG.
	CH1_RX_LIM: *volatile Register(RMT_CHN_RX_LIM),
	/// RMT_SYS_CONF_REG.
	SYS_CONF: *volatile Register(RMT_SYS_CONF),
	/// RMT_TX_SIM_REG.
	TX_SIM: *volatile Register(RMT_TX_SIM),
	/// RMT_REF_CNT_RST_REG.
	REF_CNT_RST: *volatile Register(RMT_REF_CNT_RST),
	/// RMT_DATE_REG.
	DATE: *volatile Register(RMT_DATE),
};

// Peripheral instance
const RMT_instance = RMT {
	.CH0DATA = @ptrFromInt(0x60016000),
	.CH1DATA = @ptrFromInt(0x60016000),
	.CH2DATA = @ptrFromInt(0x60016000),
	.CH3DATA = @ptrFromInt(0x60016000),
	.CH0_TX_CONF0 = @ptrFromInt(0x60016010),
	.CH1_TX_CONF0 = @ptrFromInt(0x60016010),
	.CH0_RX_CONF0 = @ptrFromInt(0x60016018),
	.CH1_RX_CONF0 = @ptrFromInt(0x60016018),
	.CH0_RX_CONF1 = @ptrFromInt(0x6001601c),
	.CH1_RX_CONF1 = @ptrFromInt(0x6001601c),
	.CH0_TX_STATUS = @ptrFromInt(0x60016028),
	.CH1_TX_STATUS = @ptrFromInt(0x60016028),
	.CH0_RX_STATUS = @ptrFromInt(0x60016030),
	.CH1_RX_STATUS = @ptrFromInt(0x60016030),
	.INT_RAW = @ptrFromInt(0x60016038),
	.INT_ST = @ptrFromInt(0x6001603c),
	.INT_ENA = @ptrFromInt(0x60016040),
	.INT_CLR = @ptrFromInt(0x60016044),
	.CH0CARRIER_DUTY = @ptrFromInt(0x60016048),
	.CH1CARRIER_DUTY = @ptrFromInt(0x60016048),
	.CH0_RX_CARRIER_RM = @ptrFromInt(0x60016050),
	.CH1_RX_CARRIER_RM = @ptrFromInt(0x60016050),
	.CH0_TX_LIM = @ptrFromInt(0x60016058),
	.CH1_TX_LIM = @ptrFromInt(0x60016058),
	.CH0_RX_LIM = @ptrFromInt(0x60016060),
	.CH1_RX_LIM = @ptrFromInt(0x60016060),
	.SYS_CONF = @ptrFromInt(0x60016068),
	.TX_SIM = @ptrFromInt(0x6001606c),
	.REF_CNT_RST = @ptrFromInt(0x60016070),
	.DATE = @ptrFromInt(0x600160cc),
};

const RNG_DATA = packed struct {
	reserved0: u32,
};

//Peripheral type
const RNG = struct {
	/// Random number data
	DATA: *volatile Register(RNG_DATA),
};

// Peripheral instance
const RNG_instance = RNG {
	.DATA = @ptrFromInt(0x600260b0),
};

const RSA_M_MEMN = packed struct {
	reserved0: u32,
};

const RSA_Z_MEMN = packed struct {
	reserved0: u32,
};

const RSA_Y_MEMN = packed struct {
	reserved0: u32,
};

const RSA_X_MEMN = packed struct {
	reserved0: u32,
};

const RSA_M_PRIME = packed struct {
	/// Those bits stores m'
	M_PRIME: u32,
};

const RSA_MODE = packed struct {
	/// rsa mode (rsa length).
	MODE: u7,
	reserved0: u25,
};

const RSA_QUERY_CLEAN = packed struct {
	/// query clean
	QUERY_CLEAN: u1,
	reserved0: u31,
};

const RSA_SET_START_MODEXP = packed struct {
	/// start modular exponentiation
	SET_START_MODEXP: u1,
	reserved0: u31,
};

const RSA_SET_START_MODMULT = packed struct {
	/// start modular multiplication
	SET_START_MODMULT: u1,
	reserved0: u31,
};

const RSA_SET_START_MULT = packed struct {
	/// start multiplicaiton
	SET_START_MULT: u1,
	reserved0: u31,
};

const RSA_QUERY_IDLE = packed struct {
	/// query rsa idle. 1'b0: busy, 1'b1: idle
	QUERY_IDLE: u1,
	reserved0: u31,
};

const RSA_INT_CLR = packed struct {
	/// set this bit to clear RSA interrupt.
	CLEAR_INTERRUPT: u1,
	reserved0: u31,
};

const RSA_CONSTANT_TIME = packed struct {
	/// Configure this bit to 0 for acceleration. 0: with acceleration, 1: without acceleration(defalut).
	CONSTANT_TIME: u1,
	reserved0: u31,
};

const RSA_SEARCH_ENABLE = packed struct {
	/// Configure this bit to 1 for acceleration. 1: with acceleration, 0: without acceleration(default). This option should be used together with RSA_SEARCH_POS.
	SEARCH_ENABLE: u1,
	reserved0: u31,
};

const RSA_SEARCH_POS = packed struct {
	/// Configure this field to set search position. This field should be used together with RSA_SEARCH_ENABLE. The field is only meaningful when RSA_SEARCH_ENABLE is high.
	SEARCH_POS: u12,
	reserved0: u20,
};

const RSA_INT_ENA = packed struct {
	/// Set this bit to enable interrupt that occurs when rsa calculation is done. 1'b0: disable, 1'b1: enable(default).
	INT_ENA: u1,
	reserved0: u31,
};

const RSA_DATE = packed struct {
	/// rsa version information
	DATE: u30,
	reserved0: u2,
};

//Peripheral type
const RSA = struct {
	/// The memory that stores M
	M_MEM0: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM1: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM2: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM3: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM4: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM5: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM6: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM7: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM8: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM9: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM10: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM11: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM12: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM13: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM14: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM15: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM16: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM17: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM18: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM19: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM20: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM21: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM22: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM23: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM24: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM25: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM26: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM27: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM28: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM29: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM30: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM31: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM32: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM33: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM34: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM35: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM36: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM37: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM38: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM39: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM40: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM41: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM42: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM43: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM44: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM45: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM46: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM47: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM48: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM49: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM50: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM51: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM52: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM53: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM54: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM55: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM56: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM57: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM58: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM59: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM60: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM61: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM62: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM63: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM64: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM65: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM66: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM67: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM68: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM69: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM70: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM71: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM72: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM73: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM74: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM75: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM76: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM77: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM78: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM79: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM80: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM81: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM82: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM83: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM84: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM85: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM86: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM87: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM88: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM89: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM90: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM91: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM92: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM93: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM94: *volatile Register(RSA_M_MEMN),
	/// The memory that stores M
	M_MEM95: *volatile Register(RSA_M_MEMN),
	/// The memory that stores Z
	Z_MEM0: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM1: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM2: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM3: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM4: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM5: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM6: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM7: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM8: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM9: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM10: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM11: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM12: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM13: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM14: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM15: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM16: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM17: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM18: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM19: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM20: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM21: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM22: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM23: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM24: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM25: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM26: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM27: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM28: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM29: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM30: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM31: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM32: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM33: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM34: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM35: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM36: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM37: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM38: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM39: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM40: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM41: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM42: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM43: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM44: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM45: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM46: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM47: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM48: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM49: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM50: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM51: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM52: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM53: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM54: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM55: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM56: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM57: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM58: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM59: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM60: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM61: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM62: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM63: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM64: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM65: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM66: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM67: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM68: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM69: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM70: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM71: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM72: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM73: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM74: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM75: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM76: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM77: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM78: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM79: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM80: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM81: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM82: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM83: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM84: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM85: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM86: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM87: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM88: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM89: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM90: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM91: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM92: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM93: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM94: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Z
	Z_MEM95: *volatile Register(RSA_Z_MEMN),
	/// The memory that stores Y
	Y_MEM0: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM1: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM2: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM3: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM4: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM5: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM6: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM7: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM8: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM9: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM10: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM11: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM12: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM13: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM14: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM15: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM16: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM17: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM18: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM19: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM20: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM21: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM22: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM23: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM24: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM25: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM26: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM27: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM28: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM29: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM30: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM31: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM32: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM33: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM34: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM35: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM36: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM37: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM38: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM39: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM40: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM41: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM42: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM43: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM44: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM45: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM46: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM47: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM48: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM49: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM50: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM51: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM52: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM53: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM54: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM55: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM56: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM57: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM58: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM59: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM60: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM61: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM62: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM63: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM64: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM65: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM66: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM67: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM68: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM69: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM70: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM71: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM72: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM73: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM74: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM75: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM76: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM77: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM78: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM79: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM80: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM81: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM82: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM83: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM84: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM85: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM86: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM87: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM88: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM89: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM90: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM91: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM92: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM93: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM94: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores Y
	Y_MEM95: *volatile Register(RSA_Y_MEMN),
	/// The memory that stores X
	X_MEM0: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM1: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM2: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM3: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM4: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM5: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM6: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM7: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM8: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM9: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM10: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM11: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM12: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM13: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM14: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM15: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM16: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM17: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM18: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM19: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM20: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM21: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM22: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM23: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM24: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM25: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM26: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM27: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM28: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM29: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM30: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM31: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM32: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM33: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM34: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM35: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM36: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM37: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM38: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM39: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM40: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM41: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM42: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM43: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM44: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM45: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM46: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM47: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM48: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM49: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM50: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM51: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM52: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM53: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM54: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM55: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM56: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM57: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM58: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM59: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM60: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM61: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM62: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM63: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM64: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM65: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM66: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM67: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM68: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM69: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM70: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM71: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM72: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM73: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM74: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM75: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM76: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM77: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM78: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM79: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM80: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM81: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM82: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM83: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM84: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM85: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM86: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM87: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM88: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM89: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM90: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM91: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM92: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM93: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM94: *volatile Register(RSA_X_MEMN),
	/// The memory that stores X
	X_MEM95: *volatile Register(RSA_X_MEMN),
	/// RSA M_prime register
	M_PRIME: *volatile Register(RSA_M_PRIME),
	/// RSA mode register
	MODE: *volatile Register(RSA_MODE),
	/// RSA query clean register
	QUERY_CLEAN: *volatile Register(RSA_QUERY_CLEAN),
	/// RSA modular exponentiation trigger register.
	SET_START_MODEXP: *volatile Register(RSA_SET_START_MODEXP),
	/// RSA modular multiplication trigger register.
	SET_START_MODMULT: *volatile Register(RSA_SET_START_MODMULT),
	/// RSA normal multiplication trigger register.
	SET_START_MULT: *volatile Register(RSA_SET_START_MULT),
	/// RSA query idle register
	QUERY_IDLE: *volatile Register(RSA_QUERY_IDLE),
	/// RSA interrupt clear register
	INT_CLR: *volatile Register(RSA_INT_CLR),
	/// RSA constant time option register
	CONSTANT_TIME: *volatile Register(RSA_CONSTANT_TIME),
	/// RSA search option
	SEARCH_ENABLE: *volatile Register(RSA_SEARCH_ENABLE),
	/// RSA search position configure register
	SEARCH_POS: *volatile Register(RSA_SEARCH_POS),
	/// RSA interrupt enable register
	INT_ENA: *volatile Register(RSA_INT_ENA),
	/// RSA version control register
	DATE: *volatile Register(RSA_DATE),
};

// Peripheral instance
const RSA_instance = RSA {
	.M_MEM0 = @ptrFromInt(0x6003c000),
	.M_MEM1 = @ptrFromInt(0x6003c000),
	.M_MEM2 = @ptrFromInt(0x6003c000),
	.M_MEM3 = @ptrFromInt(0x6003c000),
	.M_MEM4 = @ptrFromInt(0x6003c000),
	.M_MEM5 = @ptrFromInt(0x6003c000),
	.M_MEM6 = @ptrFromInt(0x6003c000),
	.M_MEM7 = @ptrFromInt(0x6003c000),
	.M_MEM8 = @ptrFromInt(0x6003c000),
	.M_MEM9 = @ptrFromInt(0x6003c000),
	.M_MEM10 = @ptrFromInt(0x6003c000),
	.M_MEM11 = @ptrFromInt(0x6003c000),
	.M_MEM12 = @ptrFromInt(0x6003c000),
	.M_MEM13 = @ptrFromInt(0x6003c000),
	.M_MEM14 = @ptrFromInt(0x6003c000),
	.M_MEM15 = @ptrFromInt(0x6003c000),
	.M_MEM16 = @ptrFromInt(0x6003c000),
	.M_MEM17 = @ptrFromInt(0x6003c000),
	.M_MEM18 = @ptrFromInt(0x6003c000),
	.M_MEM19 = @ptrFromInt(0x6003c000),
	.M_MEM20 = @ptrFromInt(0x6003c000),
	.M_MEM21 = @ptrFromInt(0x6003c000),
	.M_MEM22 = @ptrFromInt(0x6003c000),
	.M_MEM23 = @ptrFromInt(0x6003c000),
	.M_MEM24 = @ptrFromInt(0x6003c000),
	.M_MEM25 = @ptrFromInt(0x6003c000),
	.M_MEM26 = @ptrFromInt(0x6003c000),
	.M_MEM27 = @ptrFromInt(0x6003c000),
	.M_MEM28 = @ptrFromInt(0x6003c000),
	.M_MEM29 = @ptrFromInt(0x6003c000),
	.M_MEM30 = @ptrFromInt(0x6003c000),
	.M_MEM31 = @ptrFromInt(0x6003c000),
	.M_MEM32 = @ptrFromInt(0x6003c000),
	.M_MEM33 = @ptrFromInt(0x6003c000),
	.M_MEM34 = @ptrFromInt(0x6003c000),
	.M_MEM35 = @ptrFromInt(0x6003c000),
	.M_MEM36 = @ptrFromInt(0x6003c000),
	.M_MEM37 = @ptrFromInt(0x6003c000),
	.M_MEM38 = @ptrFromInt(0x6003c000),
	.M_MEM39 = @ptrFromInt(0x6003c000),
	.M_MEM40 = @ptrFromInt(0x6003c000),
	.M_MEM41 = @ptrFromInt(0x6003c000),
	.M_MEM42 = @ptrFromInt(0x6003c000),
	.M_MEM43 = @ptrFromInt(0x6003c000),
	.M_MEM44 = @ptrFromInt(0x6003c000),
	.M_MEM45 = @ptrFromInt(0x6003c000),
	.M_MEM46 = @ptrFromInt(0x6003c000),
	.M_MEM47 = @ptrFromInt(0x6003c000),
	.M_MEM48 = @ptrFromInt(0x6003c000),
	.M_MEM49 = @ptrFromInt(0x6003c000),
	.M_MEM50 = @ptrFromInt(0x6003c000),
	.M_MEM51 = @ptrFromInt(0x6003c000),
	.M_MEM52 = @ptrFromInt(0x6003c000),
	.M_MEM53 = @ptrFromInt(0x6003c000),
	.M_MEM54 = @ptrFromInt(0x6003c000),
	.M_MEM55 = @ptrFromInt(0x6003c000),
	.M_MEM56 = @ptrFromInt(0x6003c000),
	.M_MEM57 = @ptrFromInt(0x6003c000),
	.M_MEM58 = @ptrFromInt(0x6003c000),
	.M_MEM59 = @ptrFromInt(0x6003c000),
	.M_MEM60 = @ptrFromInt(0x6003c000),
	.M_MEM61 = @ptrFromInt(0x6003c000),
	.M_MEM62 = @ptrFromInt(0x6003c000),
	.M_MEM63 = @ptrFromInt(0x6003c000),
	.M_MEM64 = @ptrFromInt(0x6003c000),
	.M_MEM65 = @ptrFromInt(0x6003c000),
	.M_MEM66 = @ptrFromInt(0x6003c000),
	.M_MEM67 = @ptrFromInt(0x6003c000),
	.M_MEM68 = @ptrFromInt(0x6003c000),
	.M_MEM69 = @ptrFromInt(0x6003c000),
	.M_MEM70 = @ptrFromInt(0x6003c000),
	.M_MEM71 = @ptrFromInt(0x6003c000),
	.M_MEM72 = @ptrFromInt(0x6003c000),
	.M_MEM73 = @ptrFromInt(0x6003c000),
	.M_MEM74 = @ptrFromInt(0x6003c000),
	.M_MEM75 = @ptrFromInt(0x6003c000),
	.M_MEM76 = @ptrFromInt(0x6003c000),
	.M_MEM77 = @ptrFromInt(0x6003c000),
	.M_MEM78 = @ptrFromInt(0x6003c000),
	.M_MEM79 = @ptrFromInt(0x6003c000),
	.M_MEM80 = @ptrFromInt(0x6003c000),
	.M_MEM81 = @ptrFromInt(0x6003c000),
	.M_MEM82 = @ptrFromInt(0x6003c000),
	.M_MEM83 = @ptrFromInt(0x6003c000),
	.M_MEM84 = @ptrFromInt(0x6003c000),
	.M_MEM85 = @ptrFromInt(0x6003c000),
	.M_MEM86 = @ptrFromInt(0x6003c000),
	.M_MEM87 = @ptrFromInt(0x6003c000),
	.M_MEM88 = @ptrFromInt(0x6003c000),
	.M_MEM89 = @ptrFromInt(0x6003c000),
	.M_MEM90 = @ptrFromInt(0x6003c000),
	.M_MEM91 = @ptrFromInt(0x6003c000),
	.M_MEM92 = @ptrFromInt(0x6003c000),
	.M_MEM93 = @ptrFromInt(0x6003c000),
	.M_MEM94 = @ptrFromInt(0x6003c000),
	.M_MEM95 = @ptrFromInt(0x6003c000),
	.Z_MEM0 = @ptrFromInt(0x6003c200),
	.Z_MEM1 = @ptrFromInt(0x6003c200),
	.Z_MEM2 = @ptrFromInt(0x6003c200),
	.Z_MEM3 = @ptrFromInt(0x6003c200),
	.Z_MEM4 = @ptrFromInt(0x6003c200),
	.Z_MEM5 = @ptrFromInt(0x6003c200),
	.Z_MEM6 = @ptrFromInt(0x6003c200),
	.Z_MEM7 = @ptrFromInt(0x6003c200),
	.Z_MEM8 = @ptrFromInt(0x6003c200),
	.Z_MEM9 = @ptrFromInt(0x6003c200),
	.Z_MEM10 = @ptrFromInt(0x6003c200),
	.Z_MEM11 = @ptrFromInt(0x6003c200),
	.Z_MEM12 = @ptrFromInt(0x6003c200),
	.Z_MEM13 = @ptrFromInt(0x6003c200),
	.Z_MEM14 = @ptrFromInt(0x6003c200),
	.Z_MEM15 = @ptrFromInt(0x6003c200),
	.Z_MEM16 = @ptrFromInt(0x6003c200),
	.Z_MEM17 = @ptrFromInt(0x6003c200),
	.Z_MEM18 = @ptrFromInt(0x6003c200),
	.Z_MEM19 = @ptrFromInt(0x6003c200),
	.Z_MEM20 = @ptrFromInt(0x6003c200),
	.Z_MEM21 = @ptrFromInt(0x6003c200),
	.Z_MEM22 = @ptrFromInt(0x6003c200),
	.Z_MEM23 = @ptrFromInt(0x6003c200),
	.Z_MEM24 = @ptrFromInt(0x6003c200),
	.Z_MEM25 = @ptrFromInt(0x6003c200),
	.Z_MEM26 = @ptrFromInt(0x6003c200),
	.Z_MEM27 = @ptrFromInt(0x6003c200),
	.Z_MEM28 = @ptrFromInt(0x6003c200),
	.Z_MEM29 = @ptrFromInt(0x6003c200),
	.Z_MEM30 = @ptrFromInt(0x6003c200),
	.Z_MEM31 = @ptrFromInt(0x6003c200),
	.Z_MEM32 = @ptrFromInt(0x6003c200),
	.Z_MEM33 = @ptrFromInt(0x6003c200),
	.Z_MEM34 = @ptrFromInt(0x6003c200),
	.Z_MEM35 = @ptrFromInt(0x6003c200),
	.Z_MEM36 = @ptrFromInt(0x6003c200),
	.Z_MEM37 = @ptrFromInt(0x6003c200),
	.Z_MEM38 = @ptrFromInt(0x6003c200),
	.Z_MEM39 = @ptrFromInt(0x6003c200),
	.Z_MEM40 = @ptrFromInt(0x6003c200),
	.Z_MEM41 = @ptrFromInt(0x6003c200),
	.Z_MEM42 = @ptrFromInt(0x6003c200),
	.Z_MEM43 = @ptrFromInt(0x6003c200),
	.Z_MEM44 = @ptrFromInt(0x6003c200),
	.Z_MEM45 = @ptrFromInt(0x6003c200),
	.Z_MEM46 = @ptrFromInt(0x6003c200),
	.Z_MEM47 = @ptrFromInt(0x6003c200),
	.Z_MEM48 = @ptrFromInt(0x6003c200),
	.Z_MEM49 = @ptrFromInt(0x6003c200),
	.Z_MEM50 = @ptrFromInt(0x6003c200),
	.Z_MEM51 = @ptrFromInt(0x6003c200),
	.Z_MEM52 = @ptrFromInt(0x6003c200),
	.Z_MEM53 = @ptrFromInt(0x6003c200),
	.Z_MEM54 = @ptrFromInt(0x6003c200),
	.Z_MEM55 = @ptrFromInt(0x6003c200),
	.Z_MEM56 = @ptrFromInt(0x6003c200),
	.Z_MEM57 = @ptrFromInt(0x6003c200),
	.Z_MEM58 = @ptrFromInt(0x6003c200),
	.Z_MEM59 = @ptrFromInt(0x6003c200),
	.Z_MEM60 = @ptrFromInt(0x6003c200),
	.Z_MEM61 = @ptrFromInt(0x6003c200),
	.Z_MEM62 = @ptrFromInt(0x6003c200),
	.Z_MEM63 = @ptrFromInt(0x6003c200),
	.Z_MEM64 = @ptrFromInt(0x6003c200),
	.Z_MEM65 = @ptrFromInt(0x6003c200),
	.Z_MEM66 = @ptrFromInt(0x6003c200),
	.Z_MEM67 = @ptrFromInt(0x6003c200),
	.Z_MEM68 = @ptrFromInt(0x6003c200),
	.Z_MEM69 = @ptrFromInt(0x6003c200),
	.Z_MEM70 = @ptrFromInt(0x6003c200),
	.Z_MEM71 = @ptrFromInt(0x6003c200),
	.Z_MEM72 = @ptrFromInt(0x6003c200),
	.Z_MEM73 = @ptrFromInt(0x6003c200),
	.Z_MEM74 = @ptrFromInt(0x6003c200),
	.Z_MEM75 = @ptrFromInt(0x6003c200),
	.Z_MEM76 = @ptrFromInt(0x6003c200),
	.Z_MEM77 = @ptrFromInt(0x6003c200),
	.Z_MEM78 = @ptrFromInt(0x6003c200),
	.Z_MEM79 = @ptrFromInt(0x6003c200),
	.Z_MEM80 = @ptrFromInt(0x6003c200),
	.Z_MEM81 = @ptrFromInt(0x6003c200),
	.Z_MEM82 = @ptrFromInt(0x6003c200),
	.Z_MEM83 = @ptrFromInt(0x6003c200),
	.Z_MEM84 = @ptrFromInt(0x6003c200),
	.Z_MEM85 = @ptrFromInt(0x6003c200),
	.Z_MEM86 = @ptrFromInt(0x6003c200),
	.Z_MEM87 = @ptrFromInt(0x6003c200),
	.Z_MEM88 = @ptrFromInt(0x6003c200),
	.Z_MEM89 = @ptrFromInt(0x6003c200),
	.Z_MEM90 = @ptrFromInt(0x6003c200),
	.Z_MEM91 = @ptrFromInt(0x6003c200),
	.Z_MEM92 = @ptrFromInt(0x6003c200),
	.Z_MEM93 = @ptrFromInt(0x6003c200),
	.Z_MEM94 = @ptrFromInt(0x6003c200),
	.Z_MEM95 = @ptrFromInt(0x6003c200),
	.Y_MEM0 = @ptrFromInt(0x6003c400),
	.Y_MEM1 = @ptrFromInt(0x6003c400),
	.Y_MEM2 = @ptrFromInt(0x6003c400),
	.Y_MEM3 = @ptrFromInt(0x6003c400),
	.Y_MEM4 = @ptrFromInt(0x6003c400),
	.Y_MEM5 = @ptrFromInt(0x6003c400),
	.Y_MEM6 = @ptrFromInt(0x6003c400),
	.Y_MEM7 = @ptrFromInt(0x6003c400),
	.Y_MEM8 = @ptrFromInt(0x6003c400),
	.Y_MEM9 = @ptrFromInt(0x6003c400),
	.Y_MEM10 = @ptrFromInt(0x6003c400),
	.Y_MEM11 = @ptrFromInt(0x6003c400),
	.Y_MEM12 = @ptrFromInt(0x6003c400),
	.Y_MEM13 = @ptrFromInt(0x6003c400),
	.Y_MEM14 = @ptrFromInt(0x6003c400),
	.Y_MEM15 = @ptrFromInt(0x6003c400),
	.Y_MEM16 = @ptrFromInt(0x6003c400),
	.Y_MEM17 = @ptrFromInt(0x6003c400),
	.Y_MEM18 = @ptrFromInt(0x6003c400),
	.Y_MEM19 = @ptrFromInt(0x6003c400),
	.Y_MEM20 = @ptrFromInt(0x6003c400),
	.Y_MEM21 = @ptrFromInt(0x6003c400),
	.Y_MEM22 = @ptrFromInt(0x6003c400),
	.Y_MEM23 = @ptrFromInt(0x6003c400),
	.Y_MEM24 = @ptrFromInt(0x6003c400),
	.Y_MEM25 = @ptrFromInt(0x6003c400),
	.Y_MEM26 = @ptrFromInt(0x6003c400),
	.Y_MEM27 = @ptrFromInt(0x6003c400),
	.Y_MEM28 = @ptrFromInt(0x6003c400),
	.Y_MEM29 = @ptrFromInt(0x6003c400),
	.Y_MEM30 = @ptrFromInt(0x6003c400),
	.Y_MEM31 = @ptrFromInt(0x6003c400),
	.Y_MEM32 = @ptrFromInt(0x6003c400),
	.Y_MEM33 = @ptrFromInt(0x6003c400),
	.Y_MEM34 = @ptrFromInt(0x6003c400),
	.Y_MEM35 = @ptrFromInt(0x6003c400),
	.Y_MEM36 = @ptrFromInt(0x6003c400),
	.Y_MEM37 = @ptrFromInt(0x6003c400),
	.Y_MEM38 = @ptrFromInt(0x6003c400),
	.Y_MEM39 = @ptrFromInt(0x6003c400),
	.Y_MEM40 = @ptrFromInt(0x6003c400),
	.Y_MEM41 = @ptrFromInt(0x6003c400),
	.Y_MEM42 = @ptrFromInt(0x6003c400),
	.Y_MEM43 = @ptrFromInt(0x6003c400),
	.Y_MEM44 = @ptrFromInt(0x6003c400),
	.Y_MEM45 = @ptrFromInt(0x6003c400),
	.Y_MEM46 = @ptrFromInt(0x6003c400),
	.Y_MEM47 = @ptrFromInt(0x6003c400),
	.Y_MEM48 = @ptrFromInt(0x6003c400),
	.Y_MEM49 = @ptrFromInt(0x6003c400),
	.Y_MEM50 = @ptrFromInt(0x6003c400),
	.Y_MEM51 = @ptrFromInt(0x6003c400),
	.Y_MEM52 = @ptrFromInt(0x6003c400),
	.Y_MEM53 = @ptrFromInt(0x6003c400),
	.Y_MEM54 = @ptrFromInt(0x6003c400),
	.Y_MEM55 = @ptrFromInt(0x6003c400),
	.Y_MEM56 = @ptrFromInt(0x6003c400),
	.Y_MEM57 = @ptrFromInt(0x6003c400),
	.Y_MEM58 = @ptrFromInt(0x6003c400),
	.Y_MEM59 = @ptrFromInt(0x6003c400),
	.Y_MEM60 = @ptrFromInt(0x6003c400),
	.Y_MEM61 = @ptrFromInt(0x6003c400),
	.Y_MEM62 = @ptrFromInt(0x6003c400),
	.Y_MEM63 = @ptrFromInt(0x6003c400),
	.Y_MEM64 = @ptrFromInt(0x6003c400),
	.Y_MEM65 = @ptrFromInt(0x6003c400),
	.Y_MEM66 = @ptrFromInt(0x6003c400),
	.Y_MEM67 = @ptrFromInt(0x6003c400),
	.Y_MEM68 = @ptrFromInt(0x6003c400),
	.Y_MEM69 = @ptrFromInt(0x6003c400),
	.Y_MEM70 = @ptrFromInt(0x6003c400),
	.Y_MEM71 = @ptrFromInt(0x6003c400),
	.Y_MEM72 = @ptrFromInt(0x6003c400),
	.Y_MEM73 = @ptrFromInt(0x6003c400),
	.Y_MEM74 = @ptrFromInt(0x6003c400),
	.Y_MEM75 = @ptrFromInt(0x6003c400),
	.Y_MEM76 = @ptrFromInt(0x6003c400),
	.Y_MEM77 = @ptrFromInt(0x6003c400),
	.Y_MEM78 = @ptrFromInt(0x6003c400),
	.Y_MEM79 = @ptrFromInt(0x6003c400),
	.Y_MEM80 = @ptrFromInt(0x6003c400),
	.Y_MEM81 = @ptrFromInt(0x6003c400),
	.Y_MEM82 = @ptrFromInt(0x6003c400),
	.Y_MEM83 = @ptrFromInt(0x6003c400),
	.Y_MEM84 = @ptrFromInt(0x6003c400),
	.Y_MEM85 = @ptrFromInt(0x6003c400),
	.Y_MEM86 = @ptrFromInt(0x6003c400),
	.Y_MEM87 = @ptrFromInt(0x6003c400),
	.Y_MEM88 = @ptrFromInt(0x6003c400),
	.Y_MEM89 = @ptrFromInt(0x6003c400),
	.Y_MEM90 = @ptrFromInt(0x6003c400),
	.Y_MEM91 = @ptrFromInt(0x6003c400),
	.Y_MEM92 = @ptrFromInt(0x6003c400),
	.Y_MEM93 = @ptrFromInt(0x6003c400),
	.Y_MEM94 = @ptrFromInt(0x6003c400),
	.Y_MEM95 = @ptrFromInt(0x6003c400),
	.X_MEM0 = @ptrFromInt(0x6003c600),
	.X_MEM1 = @ptrFromInt(0x6003c600),
	.X_MEM2 = @ptrFromInt(0x6003c600),
	.X_MEM3 = @ptrFromInt(0x6003c600),
	.X_MEM4 = @ptrFromInt(0x6003c600),
	.X_MEM5 = @ptrFromInt(0x6003c600),
	.X_MEM6 = @ptrFromInt(0x6003c600),
	.X_MEM7 = @ptrFromInt(0x6003c600),
	.X_MEM8 = @ptrFromInt(0x6003c600),
	.X_MEM9 = @ptrFromInt(0x6003c600),
	.X_MEM10 = @ptrFromInt(0x6003c600),
	.X_MEM11 = @ptrFromInt(0x6003c600),
	.X_MEM12 = @ptrFromInt(0x6003c600),
	.X_MEM13 = @ptrFromInt(0x6003c600),
	.X_MEM14 = @ptrFromInt(0x6003c600),
	.X_MEM15 = @ptrFromInt(0x6003c600),
	.X_MEM16 = @ptrFromInt(0x6003c600),
	.X_MEM17 = @ptrFromInt(0x6003c600),
	.X_MEM18 = @ptrFromInt(0x6003c600),
	.X_MEM19 = @ptrFromInt(0x6003c600),
	.X_MEM20 = @ptrFromInt(0x6003c600),
	.X_MEM21 = @ptrFromInt(0x6003c600),
	.X_MEM22 = @ptrFromInt(0x6003c600),
	.X_MEM23 = @ptrFromInt(0x6003c600),
	.X_MEM24 = @ptrFromInt(0x6003c600),
	.X_MEM25 = @ptrFromInt(0x6003c600),
	.X_MEM26 = @ptrFromInt(0x6003c600),
	.X_MEM27 = @ptrFromInt(0x6003c600),
	.X_MEM28 = @ptrFromInt(0x6003c600),
	.X_MEM29 = @ptrFromInt(0x6003c600),
	.X_MEM30 = @ptrFromInt(0x6003c600),
	.X_MEM31 = @ptrFromInt(0x6003c600),
	.X_MEM32 = @ptrFromInt(0x6003c600),
	.X_MEM33 = @ptrFromInt(0x6003c600),
	.X_MEM34 = @ptrFromInt(0x6003c600),
	.X_MEM35 = @ptrFromInt(0x6003c600),
	.X_MEM36 = @ptrFromInt(0x6003c600),
	.X_MEM37 = @ptrFromInt(0x6003c600),
	.X_MEM38 = @ptrFromInt(0x6003c600),
	.X_MEM39 = @ptrFromInt(0x6003c600),
	.X_MEM40 = @ptrFromInt(0x6003c600),
	.X_MEM41 = @ptrFromInt(0x6003c600),
	.X_MEM42 = @ptrFromInt(0x6003c600),
	.X_MEM43 = @ptrFromInt(0x6003c600),
	.X_MEM44 = @ptrFromInt(0x6003c600),
	.X_MEM45 = @ptrFromInt(0x6003c600),
	.X_MEM46 = @ptrFromInt(0x6003c600),
	.X_MEM47 = @ptrFromInt(0x6003c600),
	.X_MEM48 = @ptrFromInt(0x6003c600),
	.X_MEM49 = @ptrFromInt(0x6003c600),
	.X_MEM50 = @ptrFromInt(0x6003c600),
	.X_MEM51 = @ptrFromInt(0x6003c600),
	.X_MEM52 = @ptrFromInt(0x6003c600),
	.X_MEM53 = @ptrFromInt(0x6003c600),
	.X_MEM54 = @ptrFromInt(0x6003c600),
	.X_MEM55 = @ptrFromInt(0x6003c600),
	.X_MEM56 = @ptrFromInt(0x6003c600),
	.X_MEM57 = @ptrFromInt(0x6003c600),
	.X_MEM58 = @ptrFromInt(0x6003c600),
	.X_MEM59 = @ptrFromInt(0x6003c600),
	.X_MEM60 = @ptrFromInt(0x6003c600),
	.X_MEM61 = @ptrFromInt(0x6003c600),
	.X_MEM62 = @ptrFromInt(0x6003c600),
	.X_MEM63 = @ptrFromInt(0x6003c600),
	.X_MEM64 = @ptrFromInt(0x6003c600),
	.X_MEM65 = @ptrFromInt(0x6003c600),
	.X_MEM66 = @ptrFromInt(0x6003c600),
	.X_MEM67 = @ptrFromInt(0x6003c600),
	.X_MEM68 = @ptrFromInt(0x6003c600),
	.X_MEM69 = @ptrFromInt(0x6003c600),
	.X_MEM70 = @ptrFromInt(0x6003c600),
	.X_MEM71 = @ptrFromInt(0x6003c600),
	.X_MEM72 = @ptrFromInt(0x6003c600),
	.X_MEM73 = @ptrFromInt(0x6003c600),
	.X_MEM74 = @ptrFromInt(0x6003c600),
	.X_MEM75 = @ptrFromInt(0x6003c600),
	.X_MEM76 = @ptrFromInt(0x6003c600),
	.X_MEM77 = @ptrFromInt(0x6003c600),
	.X_MEM78 = @ptrFromInt(0x6003c600),
	.X_MEM79 = @ptrFromInt(0x6003c600),
	.X_MEM80 = @ptrFromInt(0x6003c600),
	.X_MEM81 = @ptrFromInt(0x6003c600),
	.X_MEM82 = @ptrFromInt(0x6003c600),
	.X_MEM83 = @ptrFromInt(0x6003c600),
	.X_MEM84 = @ptrFromInt(0x6003c600),
	.X_MEM85 = @ptrFromInt(0x6003c600),
	.X_MEM86 = @ptrFromInt(0x6003c600),
	.X_MEM87 = @ptrFromInt(0x6003c600),
	.X_MEM88 = @ptrFromInt(0x6003c600),
	.X_MEM89 = @ptrFromInt(0x6003c600),
	.X_MEM90 = @ptrFromInt(0x6003c600),
	.X_MEM91 = @ptrFromInt(0x6003c600),
	.X_MEM92 = @ptrFromInt(0x6003c600),
	.X_MEM93 = @ptrFromInt(0x6003c600),
	.X_MEM94 = @ptrFromInt(0x6003c600),
	.X_MEM95 = @ptrFromInt(0x6003c600),
	.M_PRIME = @ptrFromInt(0x6003c800),
	.MODE = @ptrFromInt(0x6003c804),
	.QUERY_CLEAN = @ptrFromInt(0x6003c808),
	.SET_START_MODEXP = @ptrFromInt(0x6003c80c),
	.SET_START_MODMULT = @ptrFromInt(0x6003c810),
	.SET_START_MULT = @ptrFromInt(0x6003c814),
	.QUERY_IDLE = @ptrFromInt(0x6003c818),
	.INT_CLR = @ptrFromInt(0x6003c81c),
	.CONSTANT_TIME = @ptrFromInt(0x6003c820),
	.SEARCH_ENABLE = @ptrFromInt(0x6003c824),
	.SEARCH_POS = @ptrFromInt(0x6003c828),
	.INT_ENA = @ptrFromInt(0x6003c82c),
	.DATE = @ptrFromInt(0x6003c830),
};

const RTC_CNTL_OPTIONS0 = packed struct {
	/// {reg_sw_stall_appcpu_c1[5:0],  reg_sw_stall_appcpu_c0[1:0]} == 0x86 will stall APP CPU
	SW_STALL_APPCPU_C0: u2,
	/// {reg_sw_stall_procpu_c1[5:0],  reg_sw_stall_procpu_c0[1:0]} == 0x86 will stall PRO CPU
	SW_STALL_PROCPU_C0: u2,
	/// APP CPU SW reset
	SW_APPCPU_RST: u1,
	/// PRO CPU SW reset
	SW_PROCPU_RST: u1,
	/// BB_I2C force power down
	BB_I2C_FORCE_PD: u1,
	/// BB_I2C force power up
	BB_I2C_FORCE_PU: u1,
	/// BB_PLL _I2C force power down
	BBPLL_I2C_FORCE_PD: u1,
	/// BB_PLL_I2C force power up
	BBPLL_I2C_FORCE_PU: u1,
	/// BB_PLL force power down
	BBPLL_FORCE_PD: u1,
	/// BB_PLL force power up
	BBPLL_FORCE_PU: u1,
	/// crystall force power down
	XTL_FORCE_PD: u1,
	/// crystall force power up
	XTL_FORCE_PU: u1,
	/// wait bias_sleep and current source wakeup
	XTL_EN_WAIT: u4,
	reserved0: u2,
	/// analog configure
	XTL_EXT_CTR_SEL: u3,
	/// analog configure
	XTL_FORCE_ISO: u1,
	/// analog configure
	PLL_FORCE_ISO: u1,
	/// analog configure
	ANALOG_FORCE_ISO: u1,
	/// analog configure
	XTL_FORCE_NOISO: u1,
	/// analog configure
	PLL_FORCE_NOISO: u1,
	/// analog configure
	ANALOG_FORCE_NOISO: u1,
	/// digital wrap force reset in deep sleep
	DG_WRAP_FORCE_RST: u1,
	/// digital core force no reset in deep sleep
	DG_WRAP_FORCE_NORST: u1,
	/// SW system reset
	SW_SYS_RST: u1,
};

const RTC_CNTL_SLP_TIMER0 = packed struct {
	/// configure the  sleep time
	SLP_VAL_LO: u32,
};

const RTC_CNTL_SLP_TIMER1 = packed struct {
	/// RTC sleep timer high 16 bits
	SLP_VAL_HI: u16,
	/// timer alarm enable bit
	MAIN_TIMER_ALARM_EN: u1,
	reserved0: u15,
};

const RTC_CNTL_TIME_UPDATE = packed struct {
	reserved0: u27,
	/// Enable to record system stall time
	TIMER_SYS_STALL: u1,
	/// Enable to record 40M XTAL OFF time
	TIMER_XTL_OFF: u1,
	/// enable to record system reset time
	TIMER_SYS_RST: u1,
	reserved1: u1,
	/// Set 1: to update register with RTC timer
	TIME_UPDATE: u1,
};

const RTC_CNTL_TIME_LOW0 = packed struct {
	/// RTC timer low 32 bits
	TIMER_VALUE0_LOW: u32,
};

const RTC_CNTL_TIME_HIGH0 = packed struct {
	/// RTC timer high 16 bits
	TIMER_VALUE0_HIGH: u16,
	reserved0: u16,
};

const RTC_CNTL_STATE0 = packed struct {
	/// rtc software interrupt to main cpu
	SW_CPU_INT: u1,
	/// clear rtc sleep reject cause
	SLP_REJECT_CAUSE_CLR: u1,
	reserved0: u20,
	/// 1: APB to RTC using bridge
	APB2RTC_BRIDGE_SEL: u1,
	reserved1: u5,
	/// SDIO active indication
	SDIO_ACTIVE_IND: u1,
	/// leep wakeup bit
	SLP_WAKEUP: u1,
	/// leep reject bit
	SLP_REJECT: u1,
	/// sleep enable bit
	SLEEP_EN: u1,
};

const RTC_CNTL_TIMER1 = packed struct {
	/// CPU stall enable bit
	CPU_STALL_EN: u1,
	/// CPU stall wait cycles in fast_clk_rtc
	CPU_STALL_WAIT: u5,
	/// CK8M wait cycles in slow_clk_rtc
	CK8M_WAIT: u8,
	/// XTAL wait cycles in slow_clk_rtc
	XTL_BUF_WAIT: u10,
	/// PLL wait cycles in slow_clk_rtc
	PLL_BUF_WAIT: u8,
};

const RTC_CNTL_TIMER2 = packed struct {
	reserved0: u24,
	/// minimal cycles in slow_clk_rtc for CK8M in power down state
	MIN_TIME_CK8M_OFF: u8,
};

const RTC_CNTL_TIMER3 = packed struct {
	/// wifi power domain wakeup time
	WIFI_WAIT_TIMER: u9,
	/// wifi power domain power on time
	WIFI_POWERUP_TIMER: u7,
	/// bt power domain wakeup time
	BT_WAIT_TIMER: u9,
	/// bt power domain power on time
	BT_POWERUP_TIMER: u7,
};

const RTC_CNTL_TIMER4 = packed struct {
	/// cpu top power domain wakeup time
	CPU_TOP_WAIT_TIMER: u9,
	/// cpu top power domain power on time
	CPU_TOP_POWERUP_TIMER: u7,
	/// digital wrap power domain wakeup time
	DG_WRAP_WAIT_TIMER: u9,
	/// digital wrap power domain power on time
	DG_WRAP_POWERUP_TIMER: u7,
};

const RTC_CNTL_TIMER5 = packed struct {
	reserved0: u8,
	/// minimal sleep cycles in slow_clk_rtc
	MIN_SLP_VAL: u8,
	reserved1: u16,
};

const RTC_CNTL_TIMER6 = packed struct {
	reserved0: u16,
	/// digital peri power domain wakeup time
	DG_PERI_WAIT_TIMER: u9,
	/// digital peri power domain power on time
	DG_PERI_POWERUP_TIMER: u7,
};

const RTC_CNTL_ANA_CONF = packed struct {
	reserved0: u18,
	/// force no bypass i2c power on reset
	RESET_POR_FORCE_PD: u1,
	/// force bypass i2c power on reset
	RESET_POR_FORCE_PU: u1,
	/// enable glitch reset
	GLITCH_RST_EN: u1,
	reserved1: u1,
	/// PLLA force power up
	SAR_I2C_PU: u1,
	/// PLLA force power down
	PLLA_FORCE_PD: u1,
	/// PLLA force power up
	PLLA_FORCE_PU: u1,
	/// start BBPLL calibration during sleep
	BBPLL_CAL_SLP_START: u1,
	/// 1: PVTMON power up
	PVTMON_PU: u1,
	/// 1: TXRF_I2C power up
	TXRF_I2C_PU: u1,
	/// 1: RFRX_PBUS power up
	RFRX_PBUS_PU: u1,
	reserved2: u1,
	/// 1: CKGEN_I2C power up
	CKGEN_I2C_PU: u1,
	/// power up pll i2c
	PLL_I2C_PU: u1,
};

const RTC_CNTL_RESET_STATE = packed struct {
	/// reset cause of PRO CPU
	RESET_CAUSE_PROCPU: u6,
	/// reset cause of APP CPU
	RESET_CAUSE_APPCPU: u6,
	/// APP CPU state vector sel
	STAT_VECTOR_SEL_APPCPU: u1,
	/// PRO CPU state vector sel
	STAT_VECTOR_SEL_PROCPU: u1,
	/// PRO CPU reset_flag
	ALL_RESET_FLAG_PROCPU: u1,
	/// APP CPU reset flag
	ALL_RESET_FLAG_APPCPU: u1,
	/// clear PRO CPU reset_flag
	ALL_RESET_FLAG_CLR_PROCPU: u1,
	/// clear APP CPU reset flag
	ALL_RESET_FLAG_CLR_APPCPU: u1,
	/// APPCPU OcdHaltOnReset
	OCD_HALT_ON_RESET_APPCPU: u1,
	/// PROCPU OcdHaltOnReset
	OCD_HALT_ON_RESET_PROCPU: u1,
	/// configure jtag reset configure
	JTAG_RESET_FLAG_PROCPU: u1,
	/// configure jtag reset configure
	JTAG_RESET_FLAG_APPCPU: u1,
	/// configure jtag reset configure
	JTAG_RESET_FLAG_CLR_PROCPU: u1,
	/// configure jtag reset configure
	JTAG_RESET_FLAG_CLR_APPCPU: u1,
	/// configure dreset configure
	DRESET_MASK_APPCPU: u1,
	/// configure dreset configure
	DRESET_MASK_PROCPU: u1,
	reserved0: u6,
};

const RTC_CNTL_WAKEUP_STATE = packed struct {
	reserved0: u15,
	/// wakeup enable bitmap
	WAKEUP_ENA: u17,
};

const RTC_CNTL_INT_ENA_RTC = packed struct {
	/// enable sleep wakeup interrupt
	SLP_WAKEUP_INT_ENA: u1,
	/// enable sleep reject interrupt
	SLP_REJECT_INT_ENA: u1,
	reserved0: u1,
	/// enable RTC WDT interrupt
	WDT_INT_ENA: u1,
	reserved1: u5,
	/// enable brown out interrupt
	BROWN_OUT_INT_ENA: u1,
	/// enable RTC main timer interrupt
	MAIN_TIMER_INT_ENA: u1,
	reserved2: u4,
	/// enable super watch dog interrupt
	SWD_INT_ENA: u1,
	/// enable xtal32k_dead  interrupt
	XTAL32K_DEAD_INT_ENA: u1,
	reserved3: u2,
	/// enbale gitch det interrupt
	GLITCH_DET_INT_ENA: u1,
	/// enbale bbpll cal end interrupt
	BBPLL_CAL_INT_ENA: u1,
	reserved4: u11,
};

const RTC_CNTL_INT_RAW_RTC = packed struct {
	/// sleep wakeup interrupt raw
	SLP_WAKEUP_INT_RAW: u1,
	/// sleep reject interrupt raw
	SLP_REJECT_INT_RAW: u1,
	reserved0: u1,
	/// RTC WDT interrupt raw
	WDT_INT_RAW: u1,
	reserved1: u5,
	/// brown out interrupt raw
	BROWN_OUT_INT_RAW: u1,
	/// RTC main timer interrupt raw
	MAIN_TIMER_INT_RAW: u1,
	reserved2: u4,
	/// super watch dog interrupt raw
	SWD_INT_RAW: u1,
	/// xtal32k dead detection interrupt raw
	XTAL32K_DEAD_INT_RAW: u1,
	reserved3: u2,
	/// glitch_det_interrupt_raw
	GLITCH_DET_INT_RAW: u1,
	/// bbpll cal end interrupt state
	BBPLL_CAL_INT_RAW: u1,
	reserved4: u11,
};

const RTC_CNTL_INT_ST_RTC = packed struct {
	/// sleep wakeup interrupt state
	SLP_WAKEUP_INT_ST: u1,
	/// sleep reject interrupt state
	SLP_REJECT_INT_ST: u1,
	reserved0: u1,
	/// RTC WDT interrupt state
	WDT_INT_ST: u1,
	reserved1: u5,
	/// brown out interrupt state
	BROWN_OUT_INT_ST: u1,
	/// RTC main timer interrupt state
	MAIN_TIMER_INT_ST: u1,
	reserved2: u4,
	/// super watch dog interrupt state
	SWD_INT_ST: u1,
	/// xtal32k dead detection interrupt state
	XTAL32K_DEAD_INT_ST: u1,
	reserved3: u2,
	/// glitch_det_interrupt state
	GLITCH_DET_INT_ST: u1,
	/// bbpll cal end interrupt state
	BBPLL_CAL_INT_ST: u1,
	reserved4: u11,
};

const RTC_CNTL_INT_CLR_RTC = packed struct {
	/// Clear sleep wakeup interrupt state
	SLP_WAKEUP_INT_CLR: u1,
	/// Clear sleep reject interrupt state
	SLP_REJECT_INT_CLR: u1,
	reserved0: u1,
	/// Clear RTC WDT interrupt state
	WDT_INT_CLR: u1,
	reserved1: u5,
	/// Clear brown out interrupt state
	BROWN_OUT_INT_CLR: u1,
	/// Clear RTC main timer interrupt state
	MAIN_TIMER_INT_CLR: u1,
	reserved2: u4,
	/// Clear super watch dog interrupt state
	SWD_INT_CLR: u1,
	/// Clear RTC WDT interrupt state
	XTAL32K_DEAD_INT_CLR: u1,
	reserved3: u2,
	/// Clear glitch det interrupt state
	GLITCH_DET_INT_CLR: u1,
	/// clear bbpll cal end interrupt state
	BBPLL_CAL_INT_CLR: u1,
	reserved4: u11,
};

const RTC_CNTL_STORE0 = packed struct {
	/// reserved register
	SCRATCH0: u32,
};

const RTC_CNTL_STORE1 = packed struct {
	/// reserved register
	SCRATCH1: u32,
};

const RTC_CNTL_STORE2 = packed struct {
	/// reserved register
	SCRATCH2: u32,
};

const RTC_CNTL_STORE3 = packed struct {
	/// reserved register
	SCRATCH3: u32,
};

const RTC_CNTL_EXT_XTL_CONF = packed struct {
	/// xtal 32k watch dog enable
	XTAL32K_WDT_EN: u1,
	/// xtal 32k watch dog clock force on
	XTAL32K_WDT_CLK_FO: u1,
	/// xtal 32k watch dog sw reset
	XTAL32K_WDT_RESET: u1,
	/// xtal 32k external xtal clock force on
	XTAL32K_EXT_CLK_FO: u1,
	/// xtal 32k switch to back up clock when xtal is dead
	XTAL32K_AUTO_BACKUP: u1,
	/// xtal 32k restart xtal when xtal is dead
	XTAL32K_AUTO_RESTART: u1,
	/// xtal 32k switch back xtal when xtal is restarted
	XTAL32K_AUTO_RETURN: u1,
	/// Xtal 32k xpd control by sw or fsm
	XTAL32K_XPD_FORCE: u1,
	/// apply an internal clock to help xtal 32k to start
	ENCKINIT_XTAL_32K: u1,
	/// 0: single-end buffer 1: differential buffer
	DBUF_XTAL_32K: u1,
	/// xtal_32k gm control
	DGM_XTAL_32K: u3,
	/// DRES_XTAL_32K
	DRES_XTAL_32K: u3,
	/// XPD_XTAL_32K
	XPD_XTAL_32K: u1,
	/// DAC_XTAL_32K
	DAC_XTAL_32K: u3,
	/// state of 32k_wdt
	WDT_STATE: u3,
	/// XTAL_32K sel. 0: external XTAL_32K
	XTAL32K_GPIO_SEL: u1,
	reserved0: u6,
	/// 0: power down XTAL at high level
	XTL_EXT_CTR_LV: u1,
	/// enable gpio configure xtal power on
	XTL_EXT_CTR_EN: u1,
};

const RTC_CNTL_EXT_WAKEUP_CONF = packed struct {
	reserved0: u31,
	/// enable filter for gpio wakeup event
	GPIO_WAKEUP_FILTER: u1,
};

const RTC_CNTL_SLP_REJECT_CONF = packed struct {
	reserved0: u12,
	/// sleep reject enable
	SLEEP_REJECT_ENA: u18,
	/// enable reject for light sleep
	LIGHT_SLP_REJECT_EN: u1,
	/// enable reject for deep sleep
	DEEP_SLP_REJECT_EN: u1,
};

const RTC_CNTL_CPU_PERIOD_CONF = packed struct {
	reserved0: u29,
	/// CPU sel option
	CPUSEL_CONF: u1,
	/// CPU clk sel option
	CPUPERIOD_SEL: u2,
};

const RTC_CNTL_CLK_CONF = packed struct {
	reserved0: u1,
	/// efuse_clk_force_gating
	EFUSE_CLK_FORCE_GATING: u1,
	/// efuse_clk_force_nogating
	EFUSE_CLK_FORCE_NOGATING: u1,
	/// used to sync reg_ck8m_div_sel bus. Clear vld before set reg_ck8m_div_sel
	CK8M_DIV_SEL_VLD: u1,
	/// CK8M_D256_OUT divider. 00: div128
	CK8M_DIV: u2,
	/// disable CK8M and CK8M_D256_OUT
	ENB_CK8M: u1,
	/// 1: CK8M_D256_OUT is actually CK8M
	ENB_CK8M_DIV: u1,
	/// enable CK_XTAL_32K for digital core (no relationship with RTC core)
	DIG_XTAL32K_EN: u1,
	/// enable CK8M_D256_OUT for digital core (no relationship with RTC core)
	DIG_CLK8M_D256_EN: u1,
	/// enable CK8M for digital core (no relationship with RTC core)
	DIG_CLK8M_EN: u1,
	reserved1: u1,
	/// divider = reg_ck8m_div_sel + 1
	CK8M_DIV_SEL: u3,
	/// XTAL force no gating during sleep
	XTAL_FORCE_NOGATING: u1,
	/// CK8M force no gating during sleep
	CK8M_FORCE_NOGATING: u1,
	/// CK8M_DFREQ
	CK8M_DFREQ: u8,
	/// CK8M force power down
	CK8M_FORCE_PD: u1,
	/// CK8M force power up
	CK8M_FORCE_PU: u1,
	/// force enable xtal clk gating
	XTAL_GLOBAL_FORCE_GATING: u1,
	/// force bypass xtal clk gating
	XTAL_GLOBAL_FORCE_NOGATING: u1,
	/// fast_clk_rtc sel. 0: XTAL div 4
	FAST_CLK_RTC_SEL: u1,
	/// slelect rtc slow clk
	ANA_CLK_RTC_SEL: u2,
};

const RTC_CNTL_SLOW_CLK_CONF = packed struct {
	reserved0: u22,
	/// used to sync div bus. clear vld before set reg_rtc_ana_clk_div
	ANA_CLK_DIV_VLD: u1,
	/// the clk divider num of RTC_CLK
	ANA_CLK_DIV: u8,
	/// flag rtc_slow_clk_next_edge
	SLOW_CLK_NEXT_EDGE: u1,
};

const RTC_CNTL_SDIO_CONF = packed struct {
	/// timer count to apply reg_sdio_dcap after sdio power on
	SDIO_TIMER_TARGET: u8,
	reserved0: u1,
	/// Tieh = 1 mode drive ability. Initially set to 0 to limit charge current
	SDIO_DTHDRV: u2,
	/// ability to prevent LDO from overshoot
	SDIO_DCAP: u2,
	/// add resistor from ldo output to ground. 0: no res
	SDIO_INITI: u2,
	/// 0 to set init[1:0]=0
	SDIO_EN_INITI: u1,
	/// tune current limit threshold when tieh = 0. About 800mA/(8+d)
	SDIO_DCURLIM: u3,
	/// select current limit mode
	SDIO_MODECURLIM: u1,
	/// enable current limit
	SDIO_ENCURLIM: u1,
	/// power down SDIO_REG in sleep. Only active when reg_sdio_force = 0
	SDIO_REG_PD_EN: u1,
	/// 1: use SW option to control SDIO_REG
	SDIO_FORCE: u1,
	/// SW option for SDIO_TIEH. Only active when reg_sdio_force = 1
	SDIO_TIEH: u1,
	/// read only register for REG1P8_READY
	_1P8_READY: u1,
	/// SW option for DREFL_SDIO. Only active when reg_sdio_force = 1
	DREFL_SDIO: u2,
	/// SW option for DREFM_SDIO. Only active when reg_sdio_force = 1
	DREFM_SDIO: u2,
	/// SW option for DREFH_SDIO. Only active when reg_sdio_force = 1
	DREFH_SDIO: u2,
	XPD_SDIO: u1,
};

const RTC_CNTL_BIAS_CONF = packed struct {
	DG_VDD_DRV_B_SLP: u8,
	DG_VDD_DRV_B_SLP_EN: u1,
	reserved0: u1,
	/// bias buf when rtc in normal work state
	BIAS_BUF_IDLE: u1,
	/// bias buf when rtc in wakeup state
	BIAS_BUF_WAKE: u1,
	/// bias buf when rtc in sleep state
	BIAS_BUF_DEEP_SLP: u1,
	/// bias buf when rtc in monitor state
	BIAS_BUF_MONITOR: u1,
	/// xpd cur when rtc in sleep_state
	PD_CUR_DEEP_SLP: u1,
	/// xpd cur when rtc in monitor state
	PD_CUR_MONITOR: u1,
	/// bias_sleep when rtc in sleep_state
	BIAS_SLEEP_DEEP_SLP: u1,
	/// bias_sleep when rtc in monitor state
	BIAS_SLEEP_MONITOR: u1,
	/// DBG_ATTEN when rtc in sleep state
	DBG_ATTEN_DEEP_SLP: u4,
	/// DBG_ATTEN when rtc in monitor state
	DBG_ATTEN_MONITOR: u4,
	reserved1: u6,
};

const RTC_CNTL_RTC_CNTL = packed struct {
	reserved0: u7,
	/// software enable digital regulator cali
	DIG_REG_CAL_EN: u1,
	reserved1: u6,
	/// SCK_DCAP
	SCK_DCAP: u8,
	reserved2: u6,
	/// RTC_DBOOST force power down
	DBOOST_FORCE_PD: u1,
	/// RTC_DBOOST force power up
	DBOOST_FORCE_PU: u1,
	/// RTC_REG force power down (for RTC_REG power down means decrease the voltage to 0.8v or lower )
	REGULATOR_FORCE_PD: u1,
	/// RTC_REG force power up
	REGULATOR_FORCE_PU: u1,
};

const RTC_CNTL_PWC = packed struct {
	reserved0: u21,
	/// rtc pad force hold
	PAD_FORCE_HOLD: u1,
	reserved1: u10,
};

const RTC_CNTL_DIG_PWC = packed struct {
	/// vdd_spi drv's software value
	VDD_SPI_PWR_DRV: u2,
	/// vdd_spi drv use software value
	VDD_SPI_PWR_FORCE: u1,
	/// memories in digital core force PD in sleep
	LSLP_MEM_FORCE_PD: u1,
	/// memories in digital core force PU in sleep
	LSLP_MEM_FORCE_PU: u1,
	reserved0: u6,
	/// bt force power down
	BT_FORCE_PD: u1,
	/// bt force power up
	BT_FORCE_PU: u1,
	/// digital peri force power down
	DG_PERI_FORCE_PD: u1,
	/// digital peri force power up
	DG_PERI_FORCE_PU: u1,
	/// fastmemory  retention mode in sleep
	FASTMEM_FORCE_LPD: u1,
	/// fastmemory donlt entry retention mode in sleep
	FASTMEM_FORCE_LPU: u1,
	/// wifi force power down
	WIFI_FORCE_PD: u1,
	/// wifi force power up
	WIFI_FORCE_PU: u1,
	/// digital core force power down
	DG_WRAP_FORCE_PD: u1,
	/// digital core force power up
	DG_WRAP_FORCE_PU: u1,
	/// cpu core force power down
	CPU_TOP_FORCE_PD: u1,
	/// cpu force power up
	CPU_TOP_FORCE_PU: u1,
	reserved1: u4,
	/// enable power down bt in sleep
	BT_PD_EN: u1,
	/// enable power down digital peri in sleep
	DG_PERI_PD_EN: u1,
	/// enable power down cpu in sleep
	CPU_TOP_PD_EN: u1,
	/// enable power down wifi in sleep
	WIFI_PD_EN: u1,
	/// enable power down digital wrap in sleep
	DG_WRAP_PD_EN: u1,
};

const RTC_CNTL_DIG_ISO = packed struct {
	reserved0: u7,
	/// DIG_ISO force off
	FORCE_OFF: u1,
	/// DIG_ISO force on
	FORCE_ON: u1,
	/// read only register to indicate digital pad auto-hold status
	DG_PAD_AUTOHOLD: u1,
	/// wtite only register to clear digital pad auto-hold
	CLR_DG_PAD_AUTOHOLD: u1,
	/// digital pad enable auto-hold
	DG_PAD_AUTOHOLD_EN: u1,
	/// digital pad force no ISO
	DG_PAD_FORCE_NOISO: u1,
	/// digital pad force ISO
	DG_PAD_FORCE_ISO: u1,
	/// digital pad force un-hold
	DG_PAD_FORCE_UNHOLD: u1,
	/// digital pad force hold
	DG_PAD_FORCE_HOLD: u1,
	reserved1: u6,
	/// bt force ISO
	BT_FORCE_ISO: u1,
	/// bt force no ISO
	BT_FORCE_NOISO: u1,
	/// Digital peri force ISO
	DG_PERI_FORCE_ISO: u1,
	/// digital peri force no ISO
	DG_PERI_FORCE_NOISO: u1,
	/// cpu force ISO
	CPU_TOP_FORCE_ISO: u1,
	/// cpu force no ISO
	CPU_TOP_FORCE_NOISO: u1,
	/// wifi force ISO
	WIFI_FORCE_ISO: u1,
	/// wifi force no ISO
	WIFI_FORCE_NOISO: u1,
	/// digital core force ISO
	DG_WRAP_FORCE_ISO: u1,
	/// digital core force no ISO
	DG_WRAP_FORCE_NOISO: u1,
};

const RTC_CNTL_WDTCONFIG0 = packed struct {
	/// chip reset siginal pulse width
	WDT_CHIP_RESET_WIDTH: u8,
	/// wdt reset whole chip enable
	WDT_CHIP_RESET_EN: u1,
	/// pause WDT in sleep
	WDT_PAUSE_IN_SLP: u1,
	/// enable WDT reset APP CPU
	WDT_APPCPU_RESET_EN: u1,
	/// enable WDT reset PRO CPU
	WDT_PROCPU_RESET_EN: u1,
	/// enable WDT in flash boot
	WDT_FLASHBOOT_MOD_EN: u1,
	/// system reset counter length
	WDT_SYS_RESET_LENGTH: u3,
	/// CPU reset counter length
	WDT_CPU_RESET_LENGTH: u3,
	/// 1: interrupt stage en
	WDT_STG3: u3,
	/// 1: interrupt stage en
	WDT_STG2: u3,
	/// 1: interrupt stage en
	WDT_STG1: u3,
	/// 1: interrupt stage en
	WDT_STG0: u3,
	/// enable rtc wdt
	WDT_EN: u1,
};

const RTC_CNTL_WDTCONFIG1 = packed struct {
	/// the hold time of stage0
	WDT_STG0_HOLD: u32,
};

const RTC_CNTL_WDTCONFIG2 = packed struct {
	/// the hold time of stage1
	WDT_STG1_HOLD: u32,
};

const RTC_CNTL_WDTCONFIG3 = packed struct {
	/// the hold time of stage2
	WDT_STG2_HOLD: u32,
};

const RTC_CNTL_WDTCONFIG4 = packed struct {
	/// the hold time of stage3
	WDT_STG3_HOLD: u32,
};

const RTC_CNTL_WDTFEED = packed struct {
	reserved0: u31,
	/// sw feed rtc wdt
	WDT_FEED: u1,
};

const RTC_CNTL_WDTWPROTECT = packed struct {
	/// the key of rtc wdt
	WDT_WKEY: u32,
};

const RTC_CNTL_SWD_CONF = packed struct {
	/// swd reset flag
	SWD_RESET_FLAG: u1,
	/// swd interrupt for feeding
	SWD_FEED_INT: u1,
	reserved0: u15,
	/// Bypass swd rst
	SWD_BYPASS_RST: u1,
	/// adjust signal width send to swd
	SWD_SIGNAL_WIDTH: u10,
	/// reset swd reset flag
	SWD_RST_FLAG_CLR: u1,
	/// Sw feed swd
	SWD_FEED: u1,
	/// disabel SWD
	SWD_DISABLE: u1,
	/// automatically feed swd when int comes
	SWD_AUTO_FEED_EN: u1,
};

const RTC_CNTL_SWD_WPROTECT = packed struct {
	/// the key of super wdt
	SWD_WKEY: u32,
};

const RTC_CNTL_SW_CPU_STALL = packed struct {
	reserved0: u20,
	/// {reg_sw_stall_appcpu_c1[5:0]
	SW_STALL_APPCPU_C1: u6,
	/// stall cpu by software
	SW_STALL_PROCPU_C1: u6,
};

const RTC_CNTL_STORE4 = packed struct {
	/// reserved register
	SCRATCH4: u32,
};

const RTC_CNTL_STORE5 = packed struct {
	/// reserved register
	SCRATCH5: u32,
};

const RTC_CNTL_STORE6 = packed struct {
	/// reserved register
	SCRATCH6: u32,
};

const RTC_CNTL_STORE7 = packed struct {
	/// reserved register
	SCRATCH7: u32,
};

const RTC_CNTL_LOW_POWER_ST = packed struct {
	/// rom0 power down
	XPD_ROM0: u1,
	reserved0: u1,
	/// External DCDC power down
	XPD_DIG_DCDC: u1,
	/// rtc peripheral iso
	PERI_ISO: u1,
	/// rtc peripheral power down
	XPD_RTC_PERI: u1,
	/// wifi iso
	WIFI_ISO: u1,
	/// wifi wrap power down
	XPD_WIFI: u1,
	/// digital wrap iso
	DIG_ISO: u1,
	/// digital wrap power down
	XPD_DIG: u1,
	/// touch should start to work
	TOUCH_STATE_START: u1,
	/// touch is about to working. Switch rtc main state
	TOUCH_STATE_SWITCH: u1,
	/// touch is in sleep state
	TOUCH_STATE_SLP: u1,
	/// touch is done
	TOUCH_STATE_DONE: u1,
	/// ulp/cocpu should start to work
	COCPU_STATE_START: u1,
	/// ulp/cocpu is about to working. Switch rtc main state
	COCPU_STATE_SWITCH: u1,
	/// ulp/cocpu is in sleep state
	COCPU_STATE_SLP: u1,
	/// ulp/cocpu is done
	COCPU_STATE_DONE: u1,
	/// no use any more
	MAIN_STATE_XTAL_ISO: u1,
	/// rtc main state machine is in states that pll should be running
	MAIN_STATE_PLL_ON: u1,
	/// rtc is ready to receive wake up trigger from wake up source
	RDY_FOR_WAKEUP: u1,
	/// rtc main state machine has been waited for some cycles
	MAIN_STATE_WAIT_END: u1,
	/// rtc main state machine is in the states of wakeup process
	IN_WAKEUP_STATE: u1,
	/// rtc main state machine is in the states of low power
	IN_LOW_POWER_STATE: u1,
	/// rtc main state machine is in wait 8m state
	MAIN_STATE_IN_WAIT_8M: u1,
	/// rtc main state machine is in wait pll state
	MAIN_STATE_IN_WAIT_PLL: u1,
	/// rtc main state machine is in wait xtal state
	MAIN_STATE_IN_WAIT_XTL: u1,
	/// rtc main state machine is in sleep state
	MAIN_STATE_IN_SLP: u1,
	/// rtc main state machine is in idle state
	MAIN_STATE_IN_IDLE: u1,
	/// rtc main state machine status
	MAIN_STATE: u4,
};

const RTC_CNTL_DIAG0 = packed struct {
	LOW_POWER_DIAG1: u32,
};

const RTC_CNTL_PAD_HOLD = packed struct {
	/// the hold configure of rtc gpio0
	GPIO_PIN0_HOLD: u1,
	/// the hold configure of rtc gpio1
	GPIO_PIN1_HOLD: u1,
	/// the hold configure of rtc gpio2
	GPIO_PIN2_HOLD: u1,
	/// the hold configure of rtc gpio3
	GPIO_PIN3_HOLD: u1,
	/// the hold configure of rtc gpio4
	GPIO_PIN4_HOLD: u1,
	/// the hold configure of rtc gpio5
	GPIO_PIN5_HOLD: u1,
	reserved0: u26,
};

const RTC_CNTL_DIG_PAD_HOLD = packed struct {
	/// the configure of digital pad
	DIG_PAD_HOLD: u32,
};

const RTC_CNTL_BROWN_OUT = packed struct {
	reserved0: u4,
	/// brown out interrupt wait cycles
	BROWN_OUT_INT_WAIT: u10,
	/// enable close flash when brown out happens
	BROWN_OUT_CLOSE_FLASH_ENA: u1,
	/// enable power down RF when brown out happens
	BROWN_OUT_PD_RF_ENA: u1,
	/// brown out reset wait cycles
	BROWN_OUT_RST_WAIT: u10,
	/// enable brown out reset
	BROWN_OUT_RST_ENA: u1,
	/// 1:  4-pos reset
	BROWN_OUT_RST_SEL: u1,
	/// brown_out origin reset enable
	BROWN_OUT_ANA_RST_EN: u1,
	/// clear brown out counter
	BROWN_OUT_CNT_CLR: u1,
	/// enable brown out
	BROWN_OUT_ENA: u1,
	/// the flag of brown det from analog
	DET: u1,
};

const RTC_CNTL_TIME_LOW1 = packed struct {
	/// RTC timer low 32 bits
	TIMER_VALUE1_LOW: u32,
};

const RTC_CNTL_TIME_HIGH1 = packed struct {
	/// RTC timer high 16 bits
	TIMER_VALUE1_HIGH: u16,
	reserved0: u16,
};

const RTC_CNTL_XTAL32K_CLK_FACTOR = packed struct {
	/// xtal 32k watch dog backup clock factor
	XTAL32K_CLK_FACTOR: u32,
};

const RTC_CNTL_XTAL32K_CONF = packed struct {
	/// cycles to wait to return noral xtal 32k
	XTAL32K_RETURN_WAIT: u4,
	/// cycles to wait to repower on xtal 32k
	XTAL32K_RESTART_WAIT: u16,
	/// If no clock detected for this amount of time
	XTAL32K_WDT_TIMEOUT: u8,
	/// if restarted xtal32k period is smaller than this
	XTAL32K_STABLE_THRES: u4,
};

const RTC_CNTL_USB_CONF = packed struct {
	reserved0: u18,
	/// disable io_mux reset
	IO_MUX_RESET_DISABLE: u1,
	reserved1: u13,
};

const RTC_CNTL_SLP_REJECT_CAUSE = packed struct {
	/// sleep reject cause
	REJECT_CAUSE: u18,
	reserved0: u14,
};

const RTC_CNTL_OPTION1 = packed struct {
	/// force chip entry download mode
	FORCE_DOWNLOAD_BOOT: u1,
	reserved0: u31,
};

const RTC_CNTL_SLP_WAKEUP_CAUSE = packed struct {
	/// sleep wakeup cause
	WAKEUP_CAUSE: u17,
	reserved0: u15,
};

const RTC_CNTL_ULP_CP_TIMER_1 = packed struct {
	reserved0: u8,
	/// sleep cycles for ULP-coprocessor timer
	ULP_CP_TIMER_SLP_CYCLE: u24,
};

const RTC_CNTL_INT_ENA_RTC_W1TS = packed struct {
	/// enable sleep wakeup interrupt
	SLP_WAKEUP_INT_ENA_W1TS: u1,
	/// enable sleep reject interrupt
	SLP_REJECT_INT_ENA_W1TS: u1,
	reserved0: u1,
	/// enable RTC WDT interrupt
	WDT_INT_ENA_W1TS: u1,
	reserved1: u5,
	/// enable brown out interrupt
	BROWN_OUT_INT_ENA_W1TS: u1,
	/// enable RTC main timer interrupt
	MAIN_TIMER_INT_ENA_W1TS: u1,
	reserved2: u4,
	/// enable super watch dog interrupt
	SWD_INT_ENA_W1TS: u1,
	/// enable xtal32k_dead  interrupt
	XTAL32K_DEAD_INT_ENA_W1TS: u1,
	reserved3: u2,
	/// enbale gitch det interrupt
	GLITCH_DET_INT_ENA_W1TS: u1,
	/// enbale bbpll cal interrupt
	BBPLL_CAL_INT_ENA_W1TS: u1,
	reserved4: u11,
};

const RTC_CNTL_INT_ENA_RTC_W1TC = packed struct {
	/// clear sleep wakeup interrupt enable
	SLP_WAKEUP_INT_ENA_W1TC: u1,
	/// clear sleep reject interrupt enable
	SLP_REJECT_INT_ENA_W1TC: u1,
	reserved0: u1,
	/// clear RTC WDT interrupt enable
	WDT_INT_ENA_W1TC: u1,
	reserved1: u5,
	/// clear brown out interrupt enable
	BROWN_OUT_INT_ENA_W1TC: u1,
	/// Clear RTC main timer interrupt enable
	MAIN_TIMER_INT_ENA_W1TC: u1,
	reserved2: u4,
	/// clear super watch dog interrupt enable
	SWD_INT_ENA_W1TC: u1,
	/// clear xtal32k_dead  interrupt enable
	XTAL32K_DEAD_INT_ENA_W1TC: u1,
	reserved3: u2,
	/// clear gitch det interrupt enable
	GLITCH_DET_INT_ENA_W1TC: u1,
	/// clear bbpll cal interrupt enable
	BBPLL_CAL_INT_ENA_W1TC: u1,
	reserved4: u11,
};

const RTC_CNTL_RETENTION_CTRL = packed struct {
	reserved0: u18,
	/// Retention clk sel
	RETENTION_CLK_SEL: u1,
	/// Retention done wait time
	RETENTION_DONE_WAIT: u3,
	/// Retention clkoff wait time
	RETENTION_CLKOFF_WAIT: u4,
	/// enable cpu retention when light sleep
	RETENTION_EN: u1,
	/// wait cycles for rention operation
	RETENTION_WAIT: u5,
};

const RTC_CNTL_FIB_SEL = packed struct {
	/// select use analog fib signal
	FIB_SEL: u3,
	reserved0: u29,
};

const RTC_CNTL_GPIO_WAKEUP = packed struct {
	/// rtc gpio wakeup flag
	GPIO_WAKEUP_STATUS: u6,
	/// clear rtc gpio wakeup flag
	GPIO_WAKEUP_STATUS_CLR: u1,
	/// enable rtc io clk gate
	GPIO_PIN_CLK_GATE: u1,
	/// configure gpio wakeup type
	GPIO_PIN5_INT_TYPE: u3,
	/// configure gpio wakeup type
	GPIO_PIN4_INT_TYPE: u3,
	/// configure gpio wakeup type
	GPIO_PIN3_INT_TYPE: u3,
	/// configure gpio wakeup type
	GPIO_PIN2_INT_TYPE: u3,
	/// configure gpio wakeup type
	GPIO_PIN1_INT_TYPE: u3,
	/// configure gpio wakeup type
	GPIO_PIN0_INT_TYPE: u3,
	/// enable wakeup from rtc gpio5
	GPIO_PIN5_WAKEUP_ENABLE: u1,
	/// enable wakeup from rtc gpio4
	GPIO_PIN4_WAKEUP_ENABLE: u1,
	/// enable wakeup from rtc gpio3
	GPIO_PIN3_WAKEUP_ENABLE: u1,
	/// enable wakeup from rtc gpio2
	GPIO_PIN2_WAKEUP_ENABLE: u1,
	/// enable wakeup from rtc gpio1
	GPIO_PIN1_WAKEUP_ENABLE: u1,
	/// enable wakeup from rtc gpio0
	GPIO_PIN0_WAKEUP_ENABLE: u1,
};

const RTC_CNTL_DBG_SEL = packed struct {
	reserved0: u1,
	/// use for debug
	DEBUG_12M_NO_GATING: u1,
	/// use for debug
	DEBUG_BIT_SEL: u5,
	/// use for debug
	DEBUG_SEL0: u5,
	/// use for debug
	DEBUG_SEL1: u5,
	/// use for debug
	DEBUG_SEL2: u5,
	/// use for debug
	DEBUG_SEL3: u5,
	/// use for debug
	DEBUG_SEL4: u5,
};

const RTC_CNTL_DBG_MAP = packed struct {
	reserved0: u2,
	/// use for debug
	GPIO_PIN5_MUX_SEL: u1,
	/// use for debug
	GPIO_PIN4_MUX_SEL: u1,
	/// use for debug
	GPIO_PIN3_MUX_SEL: u1,
	/// use for debug
	GPIO_PIN2_MUX_SEL: u1,
	/// use for debug
	GPIO_PIN1_MUX_SEL: u1,
	/// use for debug
	GPIO_PIN0_MUX_SEL: u1,
	/// use for debug
	GPIO_PIN5_FUN_SEL: u4,
	/// use for debug
	GPIO_PIN4_FUN_SEL: u4,
	/// use for debug
	GPIO_PIN3_FUN_SEL: u4,
	/// use for debug
	GPIO_PIN2_FUN_SEL: u4,
	/// use for debug
	GPIO_PIN1_FUN_SEL: u4,
	/// use for debug
	GPIO_PIN0_FUN_SEL: u4,
};

const RTC_CNTL_SENSOR_CTRL = packed struct {
	reserved0: u27,
	/// reg_sar2_pwdet_cct
	SAR2_PWDET_CCT: u3,
	/// force power up SAR
	FORCE_XPD_SAR: u2,
};

const RTC_CNTL_DBG_SAR_SEL = packed struct {
	reserved0: u27,
	/// use for debug
	SAR_DEBUG_SEL: u5,
};

const RTC_CNTL_PG_CTRL = packed struct {
	reserved0: u26,
	/// power glitch desense
	POWER_GLITCH_DSENSE: u2,
	/// force disable power glitch
	POWER_GLITCH_FORCE_PD: u1,
	/// force enable power glitch
	POWER_GLITCH_FORCE_PU: u1,
	/// use efuse value control power glitch enable
	POWER_GLITCH_EFUSE_SEL: u1,
	/// enable power glitch
	POWER_GLITCH_EN: u1,
};

const RTC_CNTL_DATE = packed struct {
	/// verision
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const RTC_CNTL = struct {
	/// rtc configure register
	OPTIONS0: *volatile Register(RTC_CNTL_OPTIONS0),
	/// rtc configure register
	SLP_TIMER0: *volatile Register(RTC_CNTL_SLP_TIMER0),
	/// rtc configure register
	SLP_TIMER1: *volatile Register(RTC_CNTL_SLP_TIMER1),
	/// rtc configure register
	TIME_UPDATE: *volatile Register(RTC_CNTL_TIME_UPDATE),
	/// rtc configure register
	TIME_LOW0: *volatile Register(RTC_CNTL_TIME_LOW0),
	/// rtc configure register
	TIME_HIGH0: *volatile Register(RTC_CNTL_TIME_HIGH0),
	/// rtc configure register
	STATE0: *volatile Register(RTC_CNTL_STATE0),
	/// rtc configure register
	TIMER1: *volatile Register(RTC_CNTL_TIMER1),
	/// rtc configure register
	TIMER2: *volatile Register(RTC_CNTL_TIMER2),
	/// rtc configure register
	TIMER3: *volatile Register(RTC_CNTL_TIMER3),
	/// rtc configure register
	TIMER4: *volatile Register(RTC_CNTL_TIMER4),
	/// rtc configure register
	TIMER5: *volatile Register(RTC_CNTL_TIMER5),
	/// rtc configure register
	TIMER6: *volatile Register(RTC_CNTL_TIMER6),
	/// rtc configure register
	ANA_CONF: *volatile Register(RTC_CNTL_ANA_CONF),
	/// rtc configure register
	RESET_STATE: *volatile Register(RTC_CNTL_RESET_STATE),
	/// rtc configure register
	WAKEUP_STATE: *volatile Register(RTC_CNTL_WAKEUP_STATE),
	/// rtc configure register
	INT_ENA_RTC: *volatile Register(RTC_CNTL_INT_ENA_RTC),
	/// rtc configure register
	INT_RAW_RTC: *volatile Register(RTC_CNTL_INT_RAW_RTC),
	/// rtc configure register
	INT_ST_RTC: *volatile Register(RTC_CNTL_INT_ST_RTC),
	/// rtc configure register
	INT_CLR_RTC: *volatile Register(RTC_CNTL_INT_CLR_RTC),
	/// rtc configure register
	STORE0: *volatile Register(RTC_CNTL_STORE0),
	/// rtc configure register
	STORE1: *volatile Register(RTC_CNTL_STORE1),
	/// rtc configure register
	STORE2: *volatile Register(RTC_CNTL_STORE2),
	/// rtc configure register
	STORE3: *volatile Register(RTC_CNTL_STORE3),
	/// rtc configure register
	EXT_XTL_CONF: *volatile Register(RTC_CNTL_EXT_XTL_CONF),
	/// rtc configure register
	EXT_WAKEUP_CONF: *volatile Register(RTC_CNTL_EXT_WAKEUP_CONF),
	/// rtc configure register
	SLP_REJECT_CONF: *volatile Register(RTC_CNTL_SLP_REJECT_CONF),
	/// rtc configure register
	CPU_PERIOD_CONF: *volatile Register(RTC_CNTL_CPU_PERIOD_CONF),
	/// rtc configure register
	CLK_CONF: *volatile Register(RTC_CNTL_CLK_CONF),
	/// rtc configure register
	SLOW_CLK_CONF: *volatile Register(RTC_CNTL_SLOW_CLK_CONF),
	/// rtc configure register
	SDIO_CONF: *volatile Register(RTC_CNTL_SDIO_CONF),
	/// rtc configure register
	BIAS_CONF: *volatile Register(RTC_CNTL_BIAS_CONF),
	/// rtc configure register
	RTC_CNTL: *volatile Register(RTC_CNTL_RTC_CNTL),
	/// rtc configure register
	PWC: *volatile Register(RTC_CNTL_PWC),
	/// rtc configure register
	DIG_PWC: *volatile Register(RTC_CNTL_DIG_PWC),
	/// rtc configure register
	DIG_ISO: *volatile Register(RTC_CNTL_DIG_ISO),
	/// rtc configure register
	WDTCONFIG0: *volatile Register(RTC_CNTL_WDTCONFIG0),
	/// rtc configure register
	WDTCONFIG1: *volatile Register(RTC_CNTL_WDTCONFIG1),
	/// rtc configure register
	WDTCONFIG2: *volatile Register(RTC_CNTL_WDTCONFIG2),
	/// rtc configure register
	WDTCONFIG3: *volatile Register(RTC_CNTL_WDTCONFIG3),
	/// rtc configure register
	WDTCONFIG4: *volatile Register(RTC_CNTL_WDTCONFIG4),
	/// rtc configure register
	WDTFEED: *volatile Register(RTC_CNTL_WDTFEED),
	/// rtc configure register
	WDTWPROTECT: *volatile Register(RTC_CNTL_WDTWPROTECT),
	/// rtc configure register
	SWD_CONF: *volatile Register(RTC_CNTL_SWD_CONF),
	/// rtc configure register
	SWD_WPROTECT: *volatile Register(RTC_CNTL_SWD_WPROTECT),
	/// rtc configure register
	SW_CPU_STALL: *volatile Register(RTC_CNTL_SW_CPU_STALL),
	/// rtc configure register
	STORE4: *volatile Register(RTC_CNTL_STORE4),
	/// rtc configure register
	STORE5: *volatile Register(RTC_CNTL_STORE5),
	/// rtc configure register
	STORE6: *volatile Register(RTC_CNTL_STORE6),
	/// rtc configure register
	STORE7: *volatile Register(RTC_CNTL_STORE7),
	/// rtc configure register
	LOW_POWER_ST: *volatile Register(RTC_CNTL_LOW_POWER_ST),
	/// rtc configure register
	DIAG0: *volatile Register(RTC_CNTL_DIAG0),
	/// rtc configure register
	PAD_HOLD: *volatile Register(RTC_CNTL_PAD_HOLD),
	/// rtc configure register
	DIG_PAD_HOLD: *volatile Register(RTC_CNTL_DIG_PAD_HOLD),
	/// rtc configure register
	BROWN_OUT: *volatile Register(RTC_CNTL_BROWN_OUT),
	/// rtc configure register
	TIME_LOW1: *volatile Register(RTC_CNTL_TIME_LOW1),
	/// rtc configure register
	TIME_HIGH1: *volatile Register(RTC_CNTL_TIME_HIGH1),
	/// rtc configure register
	XTAL32K_CLK_FACTOR: *volatile Register(RTC_CNTL_XTAL32K_CLK_FACTOR),
	/// rtc configure register
	XTAL32K_CONF: *volatile Register(RTC_CNTL_XTAL32K_CONF),
	/// rtc configure register
	USB_CONF: *volatile Register(RTC_CNTL_USB_CONF),
	/// RTC_CNTL_RTC_SLP_REJECT_CAUSE_REG
	SLP_REJECT_CAUSE: *volatile Register(RTC_CNTL_SLP_REJECT_CAUSE),
	/// rtc configure register
	OPTION1: *volatile Register(RTC_CNTL_OPTION1),
	/// RTC_CNTL_RTC_SLP_WAKEUP_CAUSE_REG
	SLP_WAKEUP_CAUSE: *volatile Register(RTC_CNTL_SLP_WAKEUP_CAUSE),
	/// rtc configure register
	ULP_CP_TIMER_1: *volatile Register(RTC_CNTL_ULP_CP_TIMER_1),
	/// rtc configure register
	INT_ENA_RTC_W1TS: *volatile Register(RTC_CNTL_INT_ENA_RTC_W1TS),
	/// rtc configure register
	INT_ENA_RTC_W1TC: *volatile Register(RTC_CNTL_INT_ENA_RTC_W1TC),
	/// rtc configure register
	RETENTION_CTRL: *volatile Register(RTC_CNTL_RETENTION_CTRL),
	/// rtc configure register
	FIB_SEL: *volatile Register(RTC_CNTL_FIB_SEL),
	/// rtc configure register
	GPIO_WAKEUP: *volatile Register(RTC_CNTL_GPIO_WAKEUP),
	/// rtc configure register
	DBG_SEL: *volatile Register(RTC_CNTL_DBG_SEL),
	/// rtc configure register
	DBG_MAP: *volatile Register(RTC_CNTL_DBG_MAP),
	/// rtc configure register
	SENSOR_CTRL: *volatile Register(RTC_CNTL_SENSOR_CTRL),
	/// rtc configure register
	DBG_SAR_SEL: *volatile Register(RTC_CNTL_DBG_SAR_SEL),
	/// rtc configure register
	PG_CTRL: *volatile Register(RTC_CNTL_PG_CTRL),
	/// rtc configure register
	DATE: *volatile Register(RTC_CNTL_DATE),
};

// Peripheral instance
const RTC_CNTL_instance = RTC_CNTL {
	.OPTIONS0 = @ptrFromInt(0x60008000),
	.SLP_TIMER0 = @ptrFromInt(0x60008004),
	.SLP_TIMER1 = @ptrFromInt(0x60008008),
	.TIME_UPDATE = @ptrFromInt(0x6000800c),
	.TIME_LOW0 = @ptrFromInt(0x60008010),
	.TIME_HIGH0 = @ptrFromInt(0x60008014),
	.STATE0 = @ptrFromInt(0x60008018),
	.TIMER1 = @ptrFromInt(0x6000801c),
	.TIMER2 = @ptrFromInt(0x60008020),
	.TIMER3 = @ptrFromInt(0x60008024),
	.TIMER4 = @ptrFromInt(0x60008028),
	.TIMER5 = @ptrFromInt(0x6000802c),
	.TIMER6 = @ptrFromInt(0x60008030),
	.ANA_CONF = @ptrFromInt(0x60008034),
	.RESET_STATE = @ptrFromInt(0x60008038),
	.WAKEUP_STATE = @ptrFromInt(0x6000803c),
	.INT_ENA_RTC = @ptrFromInt(0x60008040),
	.INT_RAW_RTC = @ptrFromInt(0x60008044),
	.INT_ST_RTC = @ptrFromInt(0x60008048),
	.INT_CLR_RTC = @ptrFromInt(0x6000804c),
	.STORE0 = @ptrFromInt(0x60008050),
	.STORE1 = @ptrFromInt(0x60008054),
	.STORE2 = @ptrFromInt(0x60008058),
	.STORE3 = @ptrFromInt(0x6000805c),
	.EXT_XTL_CONF = @ptrFromInt(0x60008060),
	.EXT_WAKEUP_CONF = @ptrFromInt(0x60008064),
	.SLP_REJECT_CONF = @ptrFromInt(0x60008068),
	.CPU_PERIOD_CONF = @ptrFromInt(0x6000806c),
	.CLK_CONF = @ptrFromInt(0x60008070),
	.SLOW_CLK_CONF = @ptrFromInt(0x60008074),
	.SDIO_CONF = @ptrFromInt(0x60008078),
	.BIAS_CONF = @ptrFromInt(0x6000807c),
	.RTC_CNTL = @ptrFromInt(0x60008080),
	.PWC = @ptrFromInt(0x60008084),
	.DIG_PWC = @ptrFromInt(0x60008088),
	.DIG_ISO = @ptrFromInt(0x6000808c),
	.WDTCONFIG0 = @ptrFromInt(0x60008090),
	.WDTCONFIG1 = @ptrFromInt(0x60008094),
	.WDTCONFIG2 = @ptrFromInt(0x60008098),
	.WDTCONFIG3 = @ptrFromInt(0x6000809c),
	.WDTCONFIG4 = @ptrFromInt(0x600080a0),
	.WDTFEED = @ptrFromInt(0x600080a4),
	.WDTWPROTECT = @ptrFromInt(0x600080a8),
	.SWD_CONF = @ptrFromInt(0x600080ac),
	.SWD_WPROTECT = @ptrFromInt(0x600080b0),
	.SW_CPU_STALL = @ptrFromInt(0x600080b4),
	.STORE4 = @ptrFromInt(0x600080b8),
	.STORE5 = @ptrFromInt(0x600080bc),
	.STORE6 = @ptrFromInt(0x600080c0),
	.STORE7 = @ptrFromInt(0x600080c4),
	.LOW_POWER_ST = @ptrFromInt(0x600080c8),
	.DIAG0 = @ptrFromInt(0x600080cc),
	.PAD_HOLD = @ptrFromInt(0x600080d0),
	.DIG_PAD_HOLD = @ptrFromInt(0x600080d4),
	.BROWN_OUT = @ptrFromInt(0x600080d8),
	.TIME_LOW1 = @ptrFromInt(0x600080dc),
	.TIME_HIGH1 = @ptrFromInt(0x600080e0),
	.XTAL32K_CLK_FACTOR = @ptrFromInt(0x600080e4),
	.XTAL32K_CONF = @ptrFromInt(0x600080e8),
	.USB_CONF = @ptrFromInt(0x600080ec),
	.SLP_REJECT_CAUSE = @ptrFromInt(0x600080f0),
	.OPTION1 = @ptrFromInt(0x600080f4),
	.SLP_WAKEUP_CAUSE = @ptrFromInt(0x600080f8),
	.ULP_CP_TIMER_1 = @ptrFromInt(0x600080fc),
	.INT_ENA_RTC_W1TS = @ptrFromInt(0x60008100),
	.INT_ENA_RTC_W1TC = @ptrFromInt(0x60008104),
	.RETENTION_CTRL = @ptrFromInt(0x60008108),
	.FIB_SEL = @ptrFromInt(0x6000810c),
	.GPIO_WAKEUP = @ptrFromInt(0x60008110),
	.DBG_SEL = @ptrFromInt(0x60008114),
	.DBG_MAP = @ptrFromInt(0x60008118),
	.SENSOR_CTRL = @ptrFromInt(0x6000811c),
	.DBG_SAR_SEL = @ptrFromInt(0x60008120),
	.PG_CTRL = @ptrFromInt(0x60008124),
	.DATE = @ptrFromInt(0x600081fc),
};

const SENSITIVE_ROM_TABLE_LOCK = packed struct {
	/// rom_table_lock
	ROM_TABLE_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_ROM_TABLE = packed struct {
	/// rom_table
	ROM_TABLE: u32,
};

const SENSITIVE_PRIVILEGE_MODE_SEL_LOCK = packed struct {
	/// privilege_mode_sel_lock
	PRIVILEGE_MODE_SEL_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_PRIVILEGE_MODE_SEL = packed struct {
	/// privilege_mode_sel
	PRIVILEGE_MODE_SEL: u1,
	reserved0: u31,
};

const SENSITIVE_APB_PERIPHERAL_ACCESS_0 = packed struct {
	/// apb_peripheral_access_lock
	APB_PERIPHERAL_ACCESS_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_APB_PERIPHERAL_ACCESS_1 = packed struct {
	/// apb_peripheral_access_split_burst
	APB_PERIPHERAL_ACCESS_SPLIT_BURST: u1,
	reserved0: u31,
};

const SENSITIVE_INTERNAL_SRAM_USAGE_0 = packed struct {
	/// internal_sram_usage_lock
	INTERNAL_SRAM_USAGE_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_INTERNAL_SRAM_USAGE_1 = packed struct {
	/// internal_sram_usage_cpu_cache
	INTERNAL_SRAM_USAGE_CPU_CACHE: u1,
	/// internal_sram_usage_cpu_sram
	INTERNAL_SRAM_USAGE_CPU_SRAM: u3,
	reserved0: u28,
};

const SENSITIVE_INTERNAL_SRAM_USAGE_3 = packed struct {
	/// internal_sram_usage_mac_dump_sram
	INTERNAL_SRAM_USAGE_MAC_DUMP_SRAM: u3,
	/// internal_sram_alloc_mac_dump
	INTERNAL_SRAM_ALLOC_MAC_DUMP: u1,
	reserved0: u28,
};

const SENSITIVE_INTERNAL_SRAM_USAGE_4 = packed struct {
	/// internal_sram_usage_log_sram
	INTERNAL_SRAM_USAGE_LOG_SRAM: u1,
	reserved0: u31,
};

const SENSITIVE_CACHE_TAG_ACCESS_0 = packed struct {
	/// cache_tag_access_lock
	CACHE_TAG_ACCESS_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CACHE_TAG_ACCESS_1 = packed struct {
	/// pro_i_tag_rd_acs
	PRO_I_TAG_RD_ACS: u1,
	/// pro_i_tag_wr_acs
	PRO_I_TAG_WR_ACS: u1,
	/// pro_d_tag_rd_acs
	PRO_D_TAG_RD_ACS: u1,
	/// pro_d_tag_wr_acs
	PRO_D_TAG_WR_ACS: u1,
	reserved0: u28,
};

const SENSITIVE_CACHE_MMU_ACCESS_0 = packed struct {
	/// cache_mmu_access_lock
	CACHE_MMU_ACCESS_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CACHE_MMU_ACCESS_1 = packed struct {
	/// pro_mmu_rd_acs
	PRO_MMU_RD_ACS: u1,
	/// pro_mmu_wr_acs
	PRO_MMU_WR_ACS: u1,
	reserved0: u30,
};

const SENSITIVE_DMA_APBPERI_SPI2_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_spi2_pms_constrain_lock
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_SPI2_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_spi2_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_spi2_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_spi2_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_spi2_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_spi2_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_spi2_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_spi2_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_spi2_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_UCHI0_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_uchi0_pms_constrain_lock
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_UCHI0_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_uchi0_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_uchi0_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_uchi0_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_uchi0_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_uchi0_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_uchi0_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_uchi0_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_uchi0_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_I2S0_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_i2s0_pms_constrain_lock
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_I2S0_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_i2s0_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_i2s0_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_i2s0_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_i2s0_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_i2s0_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_i2s0_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_i2s0_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_i2s0_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_MAC_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_mac_pms_constrain_lock
	DMA_APBPERI_MAC_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_MAC_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_mac_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_mac_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_mac_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_mac_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_mac_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_mac_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_mac_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_mac_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_MAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_BACKUP_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_backup_pms_constrain_lock
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_BACKUP_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_backup_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_backup_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_backup_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_backup_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_backup_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_backup_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_backup_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_backup_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_LC_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_lc_pms_constrain_lock
	DMA_APBPERI_LC_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_LC_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_lc_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_lc_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_lc_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_lc_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_lc_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_lc_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_lc_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_lc_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_LC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_AES_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_aes_pms_constrain_lock
	DMA_APBPERI_AES_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_AES_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_aes_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_aes_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_aes_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_aes_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_aes_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_aes_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_aes_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_aes_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_AES_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_SHA_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_sha_pms_constrain_lock
	DMA_APBPERI_SHA_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_SHA_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_sha_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_sha_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_sha_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_sha_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_sha_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_sha_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_sha_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_sha_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_SHA_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_0 = packed struct {
	/// dma_apbperi_adc_dac_pms_constrain_lock
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_1 = packed struct {
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_0_pms_0
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_0_pms_1
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_0_pms_2
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_0_pms_3
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_1_pms_0
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_1_pms_1
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_1_pms_2
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// dma_apbperi_adc_dac_pms_constrain_sram_world_1_pms_3
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u12,
};

const SENSITIVE_DMA_APBPERI_PMS_MONITOR_0 = packed struct {
	/// dma_apbperi_pms_monitor_lock
	DMA_APBPERI_PMS_MONITOR_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_DMA_APBPERI_PMS_MONITOR_1 = packed struct {
	/// dma_apbperi_pms_monitor_violate_clr
	DMA_APBPERI_PMS_MONITOR_VIOLATE_CLR: u1,
	/// dma_apbperi_pms_monitor_violate_en
	DMA_APBPERI_PMS_MONITOR_VIOLATE_EN: u1,
	reserved0: u30,
};

const SENSITIVE_DMA_APBPERI_PMS_MONITOR_2 = packed struct {
	/// dma_apbperi_pms_monitor_violate_intr
	DMA_APBPERI_PMS_MONITOR_VIOLATE_INTR: u1,
	/// dma_apbperi_pms_monitor_violate_status_world
	DMA_APBPERI_PMS_MONITOR_VIOLATE_STATUS_WORLD: u2,
	/// dma_apbperi_pms_monitor_violate_status_addr
	DMA_APBPERI_PMS_MONITOR_VIOLATE_STATUS_ADDR: u24,
	reserved0: u5,
};

const SENSITIVE_DMA_APBPERI_PMS_MONITOR_3 = packed struct {
	/// dma_apbperi_pms_monitor_violate_status_wr
	DMA_APBPERI_PMS_MONITOR_VIOLATE_STATUS_WR: u1,
	/// dma_apbperi_pms_monitor_violate_status_byteen
	DMA_APBPERI_PMS_MONITOR_VIOLATE_STATUS_BYTEEN: u4,
	reserved0: u27,
};

const SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_0 = packed struct {
	/// core_x_iram0_dram0_dma_split_line_constrain_lock
	CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_1 = packed struct {
	/// core_x_iram0_dram0_dma_sram_category_0
	CORE_X_IRAM0_DRAM0_DMA_SRAM_CATEGORY_0: u2,
	/// core_x_iram0_dram0_dma_sram_category_1
	CORE_X_IRAM0_DRAM0_DMA_SRAM_CATEGORY_1: u2,
	/// core_x_iram0_dram0_dma_sram_category_2
	CORE_X_IRAM0_DRAM0_DMA_SRAM_CATEGORY_2: u2,
	reserved0: u8,
	/// core_x_iram0_dram0_dma_sram_splitaddr
	CORE_X_IRAM0_DRAM0_DMA_SRAM_SPLITADDR: u8,
	reserved1: u10,
};

const SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_2 = packed struct {
	/// core_x_iram0_sram_line_0_category_0
	CORE_X_IRAM0_SRAM_LINE_0_CATEGORY_0: u2,
	/// core_x_iram0_sram_line_0_category_1
	CORE_X_IRAM0_SRAM_LINE_0_CATEGORY_1: u2,
	/// core_x_iram0_sram_line_0_category_2
	CORE_X_IRAM0_SRAM_LINE_0_CATEGORY_2: u2,
	reserved0: u8,
	/// core_x_iram0_sram_line_0_splitaddr
	CORE_X_IRAM0_SRAM_LINE_0_SPLITADDR: u8,
	reserved1: u10,
};

const SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_3 = packed struct {
	/// core_x_iram0_sram_line_1_category_0
	CORE_X_IRAM0_SRAM_LINE_1_CATEGORY_0: u2,
	/// core_x_iram0_sram_line_1_category_1
	CORE_X_IRAM0_SRAM_LINE_1_CATEGORY_1: u2,
	/// core_x_iram0_sram_line_1_category_2
	CORE_X_IRAM0_SRAM_LINE_1_CATEGORY_2: u2,
	reserved0: u8,
	/// core_x_iram0_sram_line_1_splitaddr
	CORE_X_IRAM0_SRAM_LINE_1_SPLITADDR: u8,
	reserved1: u10,
};

const SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_4 = packed struct {
	/// core_x_dram0_dma_sram_line_0_category_0
	CORE_X_DRAM0_DMA_SRAM_LINE_0_CATEGORY_0: u2,
	/// core_x_dram0_dma_sram_line_0_category_1
	CORE_X_DRAM0_DMA_SRAM_LINE_0_CATEGORY_1: u2,
	/// core_x_dram0_dma_sram_line_0_category_2
	CORE_X_DRAM0_DMA_SRAM_LINE_0_CATEGORY_2: u2,
	reserved0: u8,
	/// core_x_dram0_dma_sram_line_0_splitaddr
	CORE_X_DRAM0_DMA_SRAM_LINE_0_SPLITADDR: u8,
	reserved1: u10,
};

const SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_5 = packed struct {
	/// core_x_dram0_dma_sram_line_1_category_0
	CORE_X_DRAM0_DMA_SRAM_LINE_1_CATEGORY_0: u2,
	/// core_x_dram0_dma_sram_line_1_category_1
	CORE_X_DRAM0_DMA_SRAM_LINE_1_CATEGORY_1: u2,
	/// core_x_dram0_dma_sram_line_1_category_2
	CORE_X_DRAM0_DMA_SRAM_LINE_1_CATEGORY_2: u2,
	reserved0: u8,
	/// core_x_dram0_dma_sram_line_1_splitaddr
	CORE_X_DRAM0_DMA_SRAM_LINE_1_SPLITADDR: u8,
	reserved1: u10,
};

const SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_0 = packed struct {
	/// core_x_iram0_pms_constrain_lock
	CORE_X_IRAM0_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_1 = packed struct {
	/// core_x_iram0_pms_constrain_sram_world_1_pms_0
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u3,
	/// core_x_iram0_pms_constrain_sram_world_1_pms_1
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u3,
	/// core_x_iram0_pms_constrain_sram_world_1_pms_2
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u3,
	/// core_x_iram0_pms_constrain_sram_world_1_pms_3
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u3,
	/// core_x_iram0_pms_constrain_sram_world_1_cachedataarray_pms_0
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_CACHEDATAARRAY_PMS_0: u3,
	reserved0: u3,
	/// core_x_iram0_pms_constrain_rom_world_1_pms
	CORE_X_IRAM0_PMS_CONSTRAIN_ROM_WORLD_1_PMS: u3,
	reserved1: u11,
};

const SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_2 = packed struct {
	/// core_x_iram0_pms_constrain_sram_world_0_pms_0
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u3,
	/// core_x_iram0_pms_constrain_sram_world_0_pms_1
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u3,
	/// core_x_iram0_pms_constrain_sram_world_0_pms_2
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u3,
	/// core_x_iram0_pms_constrain_sram_world_0_pms_3
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u3,
	/// core_x_iram0_pms_constrain_sram_world_0_cachedataarray_pms_0
	CORE_X_IRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_CACHEDATAARRAY_PMS_0: u3,
	reserved0: u3,
	/// core_x_iram0_pms_constrain_rom_world_0_pms
	CORE_X_IRAM0_PMS_CONSTRAIN_ROM_WORLD_0_PMS: u3,
	reserved1: u11,
};

const SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_0 = packed struct {
	/// core_0_iram0_pms_monitor_lock
	CORE_0_IRAM0_PMS_MONITOR_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_1 = packed struct {
	/// core_0_iram0_pms_monitor_violate_clr
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_CLR: u1,
	/// core_0_iram0_pms_monitor_violate_en
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_EN: u1,
	reserved0: u30,
};

const SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_2 = packed struct {
	/// core_0_iram0_pms_monitor_violate_intr
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_INTR: u1,
	/// core_0_iram0_pms_monitor_violate_status_wr
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_STATUS_WR: u1,
	/// core_0_iram0_pms_monitor_violate_status_loadstore
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_STATUS_LOADSTORE: u1,
	/// core_0_iram0_pms_monitor_violate_status_world
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_STATUS_WORLD: u2,
	/// core_0_iram0_pms_monitor_violate_status_addr
	CORE_0_IRAM0_PMS_MONITOR_VIOLATE_STATUS_ADDR: u24,
	reserved0: u3,
};

const SENSITIVE_CORE_X_DRAM0_PMS_CONSTRAIN_0 = packed struct {
	/// core_x_dram0_pms_constrain_lock
	CORE_X_DRAM0_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CORE_X_DRAM0_PMS_CONSTRAIN_1 = packed struct {
	/// core_x_dram0_pms_constrain_sram_world_0_pms_0
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_0: u2,
	/// core_x_dram0_pms_constrain_sram_world_0_pms_1
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_1: u2,
	/// core_x_dram0_pms_constrain_sram_world_0_pms_2
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_2: u2,
	/// core_x_dram0_pms_constrain_sram_world_0_pms_3
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_0_PMS_3: u2,
	reserved0: u4,
	/// core_x_dram0_pms_constrain_sram_world_1_pms_0
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_0: u2,
	/// core_x_dram0_pms_constrain_sram_world_1_pms_1
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_1: u2,
	/// core_x_dram0_pms_constrain_sram_world_1_pms_2
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_2: u2,
	/// core_x_dram0_pms_constrain_sram_world_1_pms_3
	CORE_X_DRAM0_PMS_CONSTRAIN_SRAM_WORLD_1_PMS_3: u2,
	reserved1: u4,
	/// core_x_dram0_pms_constrain_rom_world_0_pms
	CORE_X_DRAM0_PMS_CONSTRAIN_ROM_WORLD_0_PMS: u2,
	/// core_x_dram0_pms_constrain_rom_world_1_pms
	CORE_X_DRAM0_PMS_CONSTRAIN_ROM_WORLD_1_PMS: u2,
	reserved2: u4,
};

const SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_0 = packed struct {
	/// core_0_dram0_pms_monitor_lock
	CORE_0_DRAM0_PMS_MONITOR_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_1 = packed struct {
	/// core_0_dram0_pms_monitor_violate_clr
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_CLR: u1,
	/// core_0_dram0_pms_monitor_violate_en
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_EN: u1,
	reserved0: u30,
};

const SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_2 = packed struct {
	/// core_0_dram0_pms_monitor_violate_intr
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_INTR: u1,
	/// core_0_dram0_pms_monitor_violate_status_lock
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_STATUS_LOCK: u1,
	/// core_0_dram0_pms_monitor_violate_status_world
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_STATUS_WORLD: u2,
	/// core_0_dram0_pms_monitor_violate_status_addr
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_STATUS_ADDR: u24,
	reserved0: u4,
};

const SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_3 = packed struct {
	/// core_0_dram0_pms_monitor_violate_status_wr
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_STATUS_WR: u1,
	/// core_0_dram0_pms_monitor_violate_status_byteen
	CORE_0_DRAM0_PMS_MONITOR_VIOLATE_STATUS_BYTEEN: u4,
	reserved0: u27,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_0 = packed struct {
	/// core_0_pif_pms_constrain_lock
	CORE_0_PIF_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_1 = packed struct {
	/// core_0_pif_pms_constrain_world_0_uart
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_UART: u2,
	/// core_0_pif_pms_constrain_world_0_g0spi_1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_G0SPI_1: u2,
	/// core_0_pif_pms_constrain_world_0_g0spi_0
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_G0SPI_0: u2,
	/// core_0_pif_pms_constrain_world_0_gpio
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_GPIO: u2,
	/// core_0_pif_pms_constrain_world_0_fe2
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_FE2: u2,
	/// core_0_pif_pms_constrain_world_0_fe
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_FE: u2,
	/// core_0_pif_pms_constrain_world_0_timer
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_TIMER: u2,
	/// core_0_pif_pms_constrain_world_0_rtc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_RTC: u2,
	/// core_0_pif_pms_constrain_world_0_io_mux
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_IO_MUX: u2,
	/// core_0_pif_pms_constrain_world_0_wdg
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_WDG: u2,
	reserved0: u4,
	/// core_0_pif_pms_constrain_world_0_misc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_MISC: u2,
	/// core_0_pif_pms_constrain_world_0_i2c
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_I2C: u2,
	reserved1: u2,
	/// core_0_pif_pms_constrain_world_0_uart1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_UART1: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_2 = packed struct {
	/// core_0_pif_pms_constrain_world_0_bt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_BT: u2,
	reserved0: u2,
	/// core_0_pif_pms_constrain_world_0_i2c_ext0
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_I2C_EXT0: u2,
	/// core_0_pif_pms_constrain_world_0_uhci0
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_UHCI0: u2,
	reserved1: u2,
	/// core_0_pif_pms_constrain_world_0_rmt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_RMT: u2,
	reserved2: u4,
	/// core_0_pif_pms_constrain_world_0_ledc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_LEDC: u2,
	reserved3: u4,
	/// core_0_pif_pms_constrain_world_0_bb
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_BB: u2,
	reserved4: u2,
	/// core_0_pif_pms_constrain_world_0_timergroup
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_TIMERGROUP: u2,
	/// core_0_pif_pms_constrain_world_0_timergroup1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_TIMERGROUP1: u2,
	/// core_0_pif_pms_constrain_world_0_systimer
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_SYSTIMER: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_3 = packed struct {
	/// core_0_pif_pms_constrain_world_0_spi_2
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_SPI_2: u2,
	reserved0: u2,
	/// core_0_pif_pms_constrain_world_0_apb_ctrl
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_APB_CTRL: u2,
	reserved1: u4,
	/// core_0_pif_pms_constrain_world_0_can
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_CAN: u2,
	reserved2: u2,
	/// core_0_pif_pms_constrain_world_0_i2s1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_I2S1: u2,
	reserved3: u6,
	/// core_0_pif_pms_constrain_world_0_rwbt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_RWBT: u2,
	reserved4: u2,
	/// core_0_pif_pms_constrain_world_0_wifimac
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_WIFIMAC: u2,
	/// core_0_pif_pms_constrain_world_0_pwr
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_PWR: u2,
	reserved5: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_4 = packed struct {
	reserved0: u2,
	/// core_0_pif_pms_constrain_world_0_usb_wrap
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_USB_WRAP: u2,
	/// core_0_pif_pms_constrain_world_0_crypto_peri
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_CRYPTO_PERI: u2,
	/// core_0_pif_pms_constrain_world_0_crypto_dma
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_CRYPTO_DMA: u2,
	/// core_0_pif_pms_constrain_world_0_apb_adc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_APB_ADC: u2,
	reserved1: u2,
	/// core_0_pif_pms_constrain_world_0_bt_pwr
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_BT_PWR: u2,
	/// core_0_pif_pms_constrain_world_0_usb_device
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_USB_DEVICE: u2,
	/// core_0_pif_pms_constrain_world_0_system
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_SYSTEM: u2,
	/// core_0_pif_pms_constrain_world_0_sensitive
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_SENSITIVE: u2,
	/// core_0_pif_pms_constrain_world_0_interrupt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_INTERRUPT: u2,
	/// core_0_pif_pms_constrain_world_0_dma_copy
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_DMA_COPY: u2,
	/// core_0_pif_pms_constrain_world_0_cache_config
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_CACHE_CONFIG: u2,
	/// core_0_pif_pms_constrain_world_0_ad
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_AD: u2,
	/// core_0_pif_pms_constrain_world_0_dio
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_DIO: u2,
	/// core_0_pif_pms_constrain_world_0_world_controller
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_0_WORLD_CONTROLLER: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_5 = packed struct {
	/// core_0_pif_pms_constrain_world_1_uart
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_UART: u2,
	/// core_0_pif_pms_constrain_world_1_g0spi_1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_G0SPI_1: u2,
	/// core_0_pif_pms_constrain_world_1_g0spi_0
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_G0SPI_0: u2,
	/// core_0_pif_pms_constrain_world_1_gpio
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_GPIO: u2,
	/// core_0_pif_pms_constrain_world_1_fe2
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_FE2: u2,
	/// core_0_pif_pms_constrain_world_1_fe
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_FE: u2,
	/// core_0_pif_pms_constrain_world_1_timer
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_TIMER: u2,
	/// core_0_pif_pms_constrain_world_1_rtc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_RTC: u2,
	/// core_0_pif_pms_constrain_world_1_io_mux
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_IO_MUX: u2,
	/// core_0_pif_pms_constrain_world_1_wdg
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_WDG: u2,
	reserved0: u4,
	/// core_0_pif_pms_constrain_world_1_misc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_MISC: u2,
	/// core_0_pif_pms_constrain_world_1_i2c
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_I2C: u2,
	reserved1: u2,
	/// core_0_pif_pms_constrain_world_1_uart1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_UART1: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_6 = packed struct {
	/// core_0_pif_pms_constrain_world_1_bt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_BT: u2,
	reserved0: u2,
	/// core_0_pif_pms_constrain_world_1_i2c_ext0
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_I2C_EXT0: u2,
	/// core_0_pif_pms_constrain_world_1_uhci0
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_UHCI0: u2,
	reserved1: u2,
	/// core_0_pif_pms_constrain_world_1_rmt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_RMT: u2,
	reserved2: u4,
	/// core_0_pif_pms_constrain_world_1_ledc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_LEDC: u2,
	reserved3: u4,
	/// core_0_pif_pms_constrain_world_1_bb
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_BB: u2,
	reserved4: u2,
	/// core_0_pif_pms_constrain_world_1_timergroup
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_TIMERGROUP: u2,
	/// core_0_pif_pms_constrain_world_1_timergroup1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_TIMERGROUP1: u2,
	/// core_0_pif_pms_constrain_world_1_systimer
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_SYSTIMER: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_7 = packed struct {
	/// core_0_pif_pms_constrain_world_1_spi_2
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_SPI_2: u2,
	reserved0: u2,
	/// core_0_pif_pms_constrain_world_1_apb_ctrl
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_APB_CTRL: u2,
	reserved1: u4,
	/// core_0_pif_pms_constrain_world_1_can
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_CAN: u2,
	reserved2: u2,
	/// core_0_pif_pms_constrain_world_1_i2s1
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_I2S1: u2,
	reserved3: u6,
	/// core_0_pif_pms_constrain_world_1_rwbt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_RWBT: u2,
	reserved4: u2,
	/// core_0_pif_pms_constrain_world_1_wifimac
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_WIFIMAC: u2,
	/// core_0_pif_pms_constrain_world_1_pwr
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_PWR: u2,
	reserved5: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_8 = packed struct {
	reserved0: u2,
	/// core_0_pif_pms_constrain_world_1_usb_wrap
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_USB_WRAP: u2,
	/// core_0_pif_pms_constrain_world_1_crypto_peri
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_CRYPTO_PERI: u2,
	/// core_0_pif_pms_constrain_world_1_crypto_dma
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_CRYPTO_DMA: u2,
	/// core_0_pif_pms_constrain_world_1_apb_adc
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_APB_ADC: u2,
	reserved1: u2,
	/// core_0_pif_pms_constrain_world_1_bt_pwr
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_BT_PWR: u2,
	/// core_0_pif_pms_constrain_world_1_usb_device
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_USB_DEVICE: u2,
	/// core_0_pif_pms_constrain_world_1_system
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_SYSTEM: u2,
	/// core_0_pif_pms_constrain_world_1_sensitive
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_SENSITIVE: u2,
	/// core_0_pif_pms_constrain_world_1_interrupt
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_INTERRUPT: u2,
	/// core_0_pif_pms_constrain_world_1_dma_copy
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_DMA_COPY: u2,
	/// core_0_pif_pms_constrain_world_1_cache_config
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_CACHE_CONFIG: u2,
	/// core_0_pif_pms_constrain_world_1_ad
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_AD: u2,
	/// core_0_pif_pms_constrain_world_1_dio
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_DIO: u2,
	/// core_0_pif_pms_constrain_world_1_world_controller
	CORE_0_PIF_PMS_CONSTRAIN_WORLD_1_WORLD_CONTROLLER: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_9 = packed struct {
	/// core_0_pif_pms_constrain_rtcfast_spltaddr_world_0
	CORE_0_PIF_PMS_CONSTRAIN_RTCFAST_SPLTADDR_WORLD_0: u11,
	/// core_0_pif_pms_constrain_rtcfast_spltaddr_world_1
	CORE_0_PIF_PMS_CONSTRAIN_RTCFAST_SPLTADDR_WORLD_1: u11,
	reserved0: u10,
};

const SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_10 = packed struct {
	/// core_0_pif_pms_constrain_rtcfast_world_0_l
	CORE_0_PIF_PMS_CONSTRAIN_RTCFAST_WORLD_0_L: u3,
	/// core_0_pif_pms_constrain_rtcfast_world_0_h
	CORE_0_PIF_PMS_CONSTRAIN_RTCFAST_WORLD_0_H: u3,
	/// core_0_pif_pms_constrain_rtcfast_world_1_l
	CORE_0_PIF_PMS_CONSTRAIN_RTCFAST_WORLD_1_L: u3,
	/// core_0_pif_pms_constrain_rtcfast_world_1_h
	CORE_0_PIF_PMS_CONSTRAIN_RTCFAST_WORLD_1_H: u3,
	reserved0: u20,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_0 = packed struct {
	/// region_pms_constrain_lock
	REGION_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_1 = packed struct {
	/// region_pms_constrain_world_0_area_0
	REGION_PMS_CONSTRAIN_WORLD_0_AREA_0: u2,
	/// region_pms_constrain_world_0_area_1
	REGION_PMS_CONSTRAIN_WORLD_0_AREA_1: u2,
	/// region_pms_constrain_world_0_area_2
	REGION_PMS_CONSTRAIN_WORLD_0_AREA_2: u2,
	/// region_pms_constrain_world_0_area_3
	REGION_PMS_CONSTRAIN_WORLD_0_AREA_3: u2,
	/// region_pms_constrain_world_0_area_4
	REGION_PMS_CONSTRAIN_WORLD_0_AREA_4: u2,
	/// region_pms_constrain_world_0_area_5
	REGION_PMS_CONSTRAIN_WORLD_0_AREA_5: u2,
	/// region_pms_constrain_world_0_area_6
	REGION_PMS_CONSTRAIN_WORLD_0_AREA_6: u2,
	reserved0: u18,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_2 = packed struct {
	/// region_pms_constrain_world_1_area_0
	REGION_PMS_CONSTRAIN_WORLD_1_AREA_0: u2,
	/// region_pms_constrain_world_1_area_1
	REGION_PMS_CONSTRAIN_WORLD_1_AREA_1: u2,
	/// region_pms_constrain_world_1_area_2
	REGION_PMS_CONSTRAIN_WORLD_1_AREA_2: u2,
	/// region_pms_constrain_world_1_area_3
	REGION_PMS_CONSTRAIN_WORLD_1_AREA_3: u2,
	/// region_pms_constrain_world_1_area_4
	REGION_PMS_CONSTRAIN_WORLD_1_AREA_4: u2,
	/// region_pms_constrain_world_1_area_5
	REGION_PMS_CONSTRAIN_WORLD_1_AREA_5: u2,
	/// region_pms_constrain_world_1_area_6
	REGION_PMS_CONSTRAIN_WORLD_1_AREA_6: u2,
	reserved0: u18,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_3 = packed struct {
	/// region_pms_constrain_addr_0
	REGION_PMS_CONSTRAIN_ADDR_0: u30,
	reserved0: u2,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_4 = packed struct {
	/// region_pms_constrain_addr_1
	REGION_PMS_CONSTRAIN_ADDR_1: u30,
	reserved0: u2,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_5 = packed struct {
	/// region_pms_constrain_addr_2
	REGION_PMS_CONSTRAIN_ADDR_2: u30,
	reserved0: u2,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_6 = packed struct {
	/// region_pms_constrain_addr_3
	REGION_PMS_CONSTRAIN_ADDR_3: u30,
	reserved0: u2,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_7 = packed struct {
	/// region_pms_constrain_addr_4
	REGION_PMS_CONSTRAIN_ADDR_4: u30,
	reserved0: u2,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_8 = packed struct {
	/// region_pms_constrain_addr_5
	REGION_PMS_CONSTRAIN_ADDR_5: u30,
	reserved0: u2,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_9 = packed struct {
	/// region_pms_constrain_addr_6
	REGION_PMS_CONSTRAIN_ADDR_6: u30,
	reserved0: u2,
};

const SENSITIVE_REGION_PMS_CONSTRAIN_10 = packed struct {
	/// region_pms_constrain_addr_7
	REGION_PMS_CONSTRAIN_ADDR_7: u30,
	reserved0: u2,
};

const SENSITIVE_CORE_0_PIF_PMS_MONITOR_0 = packed struct {
	/// core_0_pif_pms_monitor_lock
	CORE_0_PIF_PMS_MONITOR_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_CORE_0_PIF_PMS_MONITOR_1 = packed struct {
	/// core_0_pif_pms_monitor_violate_clr
	CORE_0_PIF_PMS_MONITOR_VIOLATE_CLR: u1,
	/// core_0_pif_pms_monitor_violate_en
	CORE_0_PIF_PMS_MONITOR_VIOLATE_EN: u1,
	reserved0: u30,
};

const SENSITIVE_CORE_0_PIF_PMS_MONITOR_2 = packed struct {
	/// core_0_pif_pms_monitor_violate_intr
	CORE_0_PIF_PMS_MONITOR_VIOLATE_INTR: u1,
	/// core_0_pif_pms_monitor_violate_status_hport_0
	CORE_0_PIF_PMS_MONITOR_VIOLATE_STATUS_HPORT_0: u1,
	/// core_0_pif_pms_monitor_violate_status_hsize
	CORE_0_PIF_PMS_MONITOR_VIOLATE_STATUS_HSIZE: u3,
	/// core_0_pif_pms_monitor_violate_status_hwrite
	CORE_0_PIF_PMS_MONITOR_VIOLATE_STATUS_HWRITE: u1,
	/// core_0_pif_pms_monitor_violate_status_hworld
	CORE_0_PIF_PMS_MONITOR_VIOLATE_STATUS_HWORLD: u2,
	reserved0: u24,
};

const SENSITIVE_CORE_0_PIF_PMS_MONITOR_3 = packed struct {
	/// core_0_pif_pms_monitor_violate_status_haddr
	CORE_0_PIF_PMS_MONITOR_VIOLATE_STATUS_HADDR: u32,
};

const SENSITIVE_CORE_0_PIF_PMS_MONITOR_4 = packed struct {
	/// core_0_pif_pms_monitor_nonword_violate_clr
	CORE_0_PIF_PMS_MONITOR_NONWORD_VIOLATE_CLR: u1,
	/// core_0_pif_pms_monitor_nonword_violate_en
	CORE_0_PIF_PMS_MONITOR_NONWORD_VIOLATE_EN: u1,
	reserved0: u30,
};

const SENSITIVE_CORE_0_PIF_PMS_MONITOR_5 = packed struct {
	/// core_0_pif_pms_monitor_nonword_violate_intr
	CORE_0_PIF_PMS_MONITOR_NONWORD_VIOLATE_INTR: u1,
	/// core_0_pif_pms_monitor_nonword_violate_status_hsize
	CORE_0_PIF_PMS_MONITOR_NONWORD_VIOLATE_STATUS_HSIZE: u2,
	/// core_0_pif_pms_monitor_nonword_violate_status_hworld
	CORE_0_PIF_PMS_MONITOR_NONWORD_VIOLATE_STATUS_HWORLD: u2,
	reserved0: u27,
};

const SENSITIVE_CORE_0_PIF_PMS_MONITOR_6 = packed struct {
	/// core_0_pif_pms_monitor_nonword_violate_status_haddr
	CORE_0_PIF_PMS_MONITOR_NONWORD_VIOLATE_STATUS_HADDR: u32,
};

const SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_0 = packed struct {
	/// backup_bus_pms_constrain_lock
	BACKUP_BUS_PMS_CONSTRAIN_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_1 = packed struct {
	/// backup_bus_pms_constrain_uart
	BACKUP_BUS_PMS_CONSTRAIN_UART: u2,
	/// backup_bus_pms_constrain_g0spi_1
	BACKUP_BUS_PMS_CONSTRAIN_G0SPI_1: u2,
	/// backup_bus_pms_constrain_g0spi_0
	BACKUP_BUS_PMS_CONSTRAIN_G0SPI_0: u2,
	/// backup_bus_pms_constrain_gpio
	BACKUP_BUS_PMS_CONSTRAIN_GPIO: u2,
	/// backup_bus_pms_constrain_fe2
	BACKUP_BUS_PMS_CONSTRAIN_FE2: u2,
	/// backup_bus_pms_constrain_fe
	BACKUP_BUS_PMS_CONSTRAIN_FE: u2,
	/// backup_bus_pms_constrain_timer
	BACKUP_BUS_PMS_CONSTRAIN_TIMER: u2,
	/// backup_bus_pms_constrain_rtc
	BACKUP_BUS_PMS_CONSTRAIN_RTC: u2,
	/// backup_bus_pms_constrain_io_mux
	BACKUP_BUS_PMS_CONSTRAIN_IO_MUX: u2,
	/// backup_bus_pms_constrain_wdg
	BACKUP_BUS_PMS_CONSTRAIN_WDG: u2,
	reserved0: u4,
	/// backup_bus_pms_constrain_misc
	BACKUP_BUS_PMS_CONSTRAIN_MISC: u2,
	/// backup_bus_pms_constrain_i2c
	BACKUP_BUS_PMS_CONSTRAIN_I2C: u2,
	reserved1: u2,
	/// backup_bus_pms_constrain_uart1
	BACKUP_BUS_PMS_CONSTRAIN_UART1: u2,
};

const SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_2 = packed struct {
	/// backup_bus_pms_constrain_bt
	BACKUP_BUS_PMS_CONSTRAIN_BT: u2,
	reserved0: u2,
	/// backup_bus_pms_constrain_i2c_ext0
	BACKUP_BUS_PMS_CONSTRAIN_I2C_EXT0: u2,
	/// backup_bus_pms_constrain_uhci0
	BACKUP_BUS_PMS_CONSTRAIN_UHCI0: u2,
	reserved1: u2,
	/// backup_bus_pms_constrain_rmt
	BACKUP_BUS_PMS_CONSTRAIN_RMT: u2,
	reserved2: u4,
	/// backup_bus_pms_constrain_ledc
	BACKUP_BUS_PMS_CONSTRAIN_LEDC: u2,
	reserved3: u4,
	/// backup_bus_pms_constrain_bb
	BACKUP_BUS_PMS_CONSTRAIN_BB: u2,
	reserved4: u2,
	/// backup_bus_pms_constrain_timergroup
	BACKUP_BUS_PMS_CONSTRAIN_TIMERGROUP: u2,
	/// backup_bus_pms_constrain_timergroup1
	BACKUP_BUS_PMS_CONSTRAIN_TIMERGROUP1: u2,
	/// backup_bus_pms_constrain_systimer
	BACKUP_BUS_PMS_CONSTRAIN_SYSTIMER: u2,
};

const SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_3 = packed struct {
	/// backup_bus_pms_constrain_spi_2
	BACKUP_BUS_PMS_CONSTRAIN_SPI_2: u2,
	reserved0: u2,
	/// backup_bus_pms_constrain_apb_ctrl
	BACKUP_BUS_PMS_CONSTRAIN_APB_CTRL: u2,
	reserved1: u4,
	/// backup_bus_pms_constrain_can
	BACKUP_BUS_PMS_CONSTRAIN_CAN: u2,
	reserved2: u2,
	/// backup_bus_pms_constrain_i2s1
	BACKUP_BUS_PMS_CONSTRAIN_I2S1: u2,
	reserved3: u6,
	/// backup_bus_pms_constrain_rwbt
	BACKUP_BUS_PMS_CONSTRAIN_RWBT: u2,
	reserved4: u2,
	/// backup_bus_pms_constrain_wifimac
	BACKUP_BUS_PMS_CONSTRAIN_WIFIMAC: u2,
	/// backup_bus_pms_constrain_pwr
	BACKUP_BUS_PMS_CONSTRAIN_PWR: u2,
	reserved5: u2,
};

const SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_4 = packed struct {
	reserved0: u2,
	/// backup_bus_pms_constrain_usb_wrap
	BACKUP_BUS_PMS_CONSTRAIN_USB_WRAP: u2,
	/// backup_bus_pms_constrain_crypto_peri
	BACKUP_BUS_PMS_CONSTRAIN_CRYPTO_PERI: u2,
	/// backup_bus_pms_constrain_crypto_dma
	BACKUP_BUS_PMS_CONSTRAIN_CRYPTO_DMA: u2,
	/// backup_bus_pms_constrain_apb_adc
	BACKUP_BUS_PMS_CONSTRAIN_APB_ADC: u2,
	reserved1: u2,
	/// backup_bus_pms_constrain_bt_pwr
	BACKUP_BUS_PMS_CONSTRAIN_BT_PWR: u2,
	/// backup_bus_pms_constrain_usb_device
	BACKUP_BUS_PMS_CONSTRAIN_USB_DEVICE: u2,
	reserved2: u16,
};

const SENSITIVE_BACKUP_BUS_PMS_MONITOR_0 = packed struct {
	/// backup_bus_pms_monitor_lock
	BACKUP_BUS_PMS_MONITOR_LOCK: u1,
	reserved0: u31,
};

const SENSITIVE_BACKUP_BUS_PMS_MONITOR_1 = packed struct {
	/// backup_bus_pms_monitor_violate_clr
	BACKUP_BUS_PMS_MONITOR_VIOLATE_CLR: u1,
	/// backup_bus_pms_monitor_violate_en
	BACKUP_BUS_PMS_MONITOR_VIOLATE_EN: u1,
	reserved0: u30,
};

const SENSITIVE_BACKUP_BUS_PMS_MONITOR_2 = packed struct {
	/// backup_bus_pms_monitor_violate_intr
	BACKUP_BUS_PMS_MONITOR_VIOLATE_INTR: u1,
	/// backup_bus_pms_monitor_violate_status_htrans
	BACKUP_BUS_PMS_MONITOR_VIOLATE_STATUS_HTRANS: u2,
	/// backup_bus_pms_monitor_violate_status_hsize
	BACKUP_BUS_PMS_MONITOR_VIOLATE_STATUS_HSIZE: u3,
	/// backup_bus_pms_monitor_violate_status_hwrite
	BACKUP_BUS_PMS_MONITOR_VIOLATE_STATUS_HWRITE: u1,
	reserved0: u25,
};

const SENSITIVE_BACKUP_BUS_PMS_MONITOR_3 = packed struct {
	/// backup_bus_pms_monitor_violate_haddr
	BACKUP_BUS_PMS_MONITOR_VIOLATE_HADDR: u32,
};

const SENSITIVE_CLOCK_GATE = packed struct {
	/// clk_en
	CLK_EN: u1,
	reserved0: u31,
};

const SENSITIVE_DATE = packed struct {
	/// reg_date
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const SENSITIVE = struct {
	/// SENSITIVE_ROM_TABLE_LOCK_REG
	ROM_TABLE_LOCK: *volatile Register(SENSITIVE_ROM_TABLE_LOCK),
	/// SENSITIVE_ROM_TABLE_REG
	ROM_TABLE: *volatile Register(SENSITIVE_ROM_TABLE),
	/// SENSITIVE_PRIVILEGE_MODE_SEL_LOCK_REG
	PRIVILEGE_MODE_SEL_LOCK: *volatile Register(SENSITIVE_PRIVILEGE_MODE_SEL_LOCK),
	/// SENSITIVE_PRIVILEGE_MODE_SEL_REG
	PRIVILEGE_MODE_SEL: *volatile Register(SENSITIVE_PRIVILEGE_MODE_SEL),
	/// SENSITIVE_APB_PERIPHERAL_ACCESS_0_REG
	APB_PERIPHERAL_ACCESS_0: *volatile Register(SENSITIVE_APB_PERIPHERAL_ACCESS_0),
	/// SENSITIVE_APB_PERIPHERAL_ACCESS_1_REG
	APB_PERIPHERAL_ACCESS_1: *volatile Register(SENSITIVE_APB_PERIPHERAL_ACCESS_1),
	/// SENSITIVE_INTERNAL_SRAM_USAGE_0_REG
	INTERNAL_SRAM_USAGE_0: *volatile Register(SENSITIVE_INTERNAL_SRAM_USAGE_0),
	/// SENSITIVE_INTERNAL_SRAM_USAGE_1_REG
	INTERNAL_SRAM_USAGE_1: *volatile Register(SENSITIVE_INTERNAL_SRAM_USAGE_1),
	/// SENSITIVE_INTERNAL_SRAM_USAGE_3_REG
	INTERNAL_SRAM_USAGE_3: *volatile Register(SENSITIVE_INTERNAL_SRAM_USAGE_3),
	/// SENSITIVE_INTERNAL_SRAM_USAGE_4_REG
	INTERNAL_SRAM_USAGE_4: *volatile Register(SENSITIVE_INTERNAL_SRAM_USAGE_4),
	/// SENSITIVE_CACHE_TAG_ACCESS_0_REG
	CACHE_TAG_ACCESS_0: *volatile Register(SENSITIVE_CACHE_TAG_ACCESS_0),
	/// SENSITIVE_CACHE_TAG_ACCESS_1_REG
	CACHE_TAG_ACCESS_1: *volatile Register(SENSITIVE_CACHE_TAG_ACCESS_1),
	/// SENSITIVE_CACHE_MMU_ACCESS_0_REG
	CACHE_MMU_ACCESS_0: *volatile Register(SENSITIVE_CACHE_MMU_ACCESS_0),
	/// SENSITIVE_CACHE_MMU_ACCESS_1_REG
	CACHE_MMU_ACCESS_1: *volatile Register(SENSITIVE_CACHE_MMU_ACCESS_1),
	/// SENSITIVE_DMA_APBPERI_SPI2_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_SPI2_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_SPI2_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_SPI2_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_SPI2_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_UCHI0_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_UCHI0_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_UCHI0_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_UCHI0_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_UCHI0_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_I2S0_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_I2S0_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_I2S0_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_I2S0_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_I2S0_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_MAC_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_MAC_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_MAC_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_MAC_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_MAC_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_MAC_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_BACKUP_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_BACKUP_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_BACKUP_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_BACKUP_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_BACKUP_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_LC_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_LC_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_LC_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_LC_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_LC_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_LC_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_AES_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_AES_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_AES_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_AES_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_AES_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_AES_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_SHA_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_SHA_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_SHA_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_SHA_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_SHA_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_SHA_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_0_REG
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_0),
	/// SENSITIVE_DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_1_REG
	DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_1),
	/// SENSITIVE_DMA_APBPERI_PMS_MONITOR_0_REG
	DMA_APBPERI_PMS_MONITOR_0: *volatile Register(SENSITIVE_DMA_APBPERI_PMS_MONITOR_0),
	/// SENSITIVE_DMA_APBPERI_PMS_MONITOR_1_REG
	DMA_APBPERI_PMS_MONITOR_1: *volatile Register(SENSITIVE_DMA_APBPERI_PMS_MONITOR_1),
	/// SENSITIVE_DMA_APBPERI_PMS_MONITOR_2_REG
	DMA_APBPERI_PMS_MONITOR_2: *volatile Register(SENSITIVE_DMA_APBPERI_PMS_MONITOR_2),
	/// SENSITIVE_DMA_APBPERI_PMS_MONITOR_3_REG
	DMA_APBPERI_PMS_MONITOR_3: *volatile Register(SENSITIVE_DMA_APBPERI_PMS_MONITOR_3),
	/// SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_0_REG
	CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_0: *volatile Register(SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_0),
	/// SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_1_REG
	CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_1: *volatile Register(SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_1),
	/// SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_2_REG
	CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_2: *volatile Register(SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_2),
	/// SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_3_REG
	CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_3: *volatile Register(SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_3),
	/// SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_4_REG
	CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_4: *volatile Register(SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_4),
	/// SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_5_REG
	CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_5: *volatile Register(SENSITIVE_CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_5),
	/// SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_0_REG
	CORE_X_IRAM0_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_0),
	/// SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_1_REG
	CORE_X_IRAM0_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_1),
	/// SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_2_REG
	CORE_X_IRAM0_PMS_CONSTRAIN_2: *volatile Register(SENSITIVE_CORE_X_IRAM0_PMS_CONSTRAIN_2),
	/// SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_0_REG
	CORE_0_IRAM0_PMS_MONITOR_0: *volatile Register(SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_0),
	/// SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_1_REG
	CORE_0_IRAM0_PMS_MONITOR_1: *volatile Register(SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_1),
	/// SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_2_REG
	CORE_0_IRAM0_PMS_MONITOR_2: *volatile Register(SENSITIVE_CORE_0_IRAM0_PMS_MONITOR_2),
	/// SENSITIVE_CORE_X_DRAM0_PMS_CONSTRAIN_0_REG
	CORE_X_DRAM0_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_CORE_X_DRAM0_PMS_CONSTRAIN_0),
	/// SENSITIVE_CORE_X_DRAM0_PMS_CONSTRAIN_1_REG
	CORE_X_DRAM0_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_CORE_X_DRAM0_PMS_CONSTRAIN_1),
	/// SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_0_REG
	CORE_0_DRAM0_PMS_MONITOR_0: *volatile Register(SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_0),
	/// SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_1_REG
	CORE_0_DRAM0_PMS_MONITOR_1: *volatile Register(SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_1),
	/// SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_2_REG
	CORE_0_DRAM0_PMS_MONITOR_2: *volatile Register(SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_2),
	/// SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_3_REG
	CORE_0_DRAM0_PMS_MONITOR_3: *volatile Register(SENSITIVE_CORE_0_DRAM0_PMS_MONITOR_3),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_0_REG
	CORE_0_PIF_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_0),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_1_REG
	CORE_0_PIF_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_1),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_2_REG
	CORE_0_PIF_PMS_CONSTRAIN_2: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_2),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_3_REG
	CORE_0_PIF_PMS_CONSTRAIN_3: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_3),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_4_REG
	CORE_0_PIF_PMS_CONSTRAIN_4: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_4),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_5_REG
	CORE_0_PIF_PMS_CONSTRAIN_5: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_5),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_6_REG
	CORE_0_PIF_PMS_CONSTRAIN_6: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_6),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_7_REG
	CORE_0_PIF_PMS_CONSTRAIN_7: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_7),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_8_REG
	CORE_0_PIF_PMS_CONSTRAIN_8: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_8),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_9_REG
	CORE_0_PIF_PMS_CONSTRAIN_9: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_9),
	/// SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_10_REG
	CORE_0_PIF_PMS_CONSTRAIN_10: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_CONSTRAIN_10),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_0_REG
	REGION_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_0),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_1_REG
	REGION_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_1),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_2_REG
	REGION_PMS_CONSTRAIN_2: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_2),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_3_REG
	REGION_PMS_CONSTRAIN_3: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_3),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_4_REG
	REGION_PMS_CONSTRAIN_4: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_4),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_5_REG
	REGION_PMS_CONSTRAIN_5: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_5),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_6_REG
	REGION_PMS_CONSTRAIN_6: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_6),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_7_REG
	REGION_PMS_CONSTRAIN_7: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_7),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_8_REG
	REGION_PMS_CONSTRAIN_8: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_8),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_9_REG
	REGION_PMS_CONSTRAIN_9: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_9),
	/// SENSITIVE_REGION_PMS_CONSTRAIN_10_REG
	REGION_PMS_CONSTRAIN_10: *volatile Register(SENSITIVE_REGION_PMS_CONSTRAIN_10),
	/// SENSITIVE_CORE_0_PIF_PMS_MONITOR_0_REG
	CORE_0_PIF_PMS_MONITOR_0: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_MONITOR_0),
	/// SENSITIVE_CORE_0_PIF_PMS_MONITOR_1_REG
	CORE_0_PIF_PMS_MONITOR_1: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_MONITOR_1),
	/// SENSITIVE_CORE_0_PIF_PMS_MONITOR_2_REG
	CORE_0_PIF_PMS_MONITOR_2: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_MONITOR_2),
	/// SENSITIVE_CORE_0_PIF_PMS_MONITOR_3_REG
	CORE_0_PIF_PMS_MONITOR_3: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_MONITOR_3),
	/// SENSITIVE_CORE_0_PIF_PMS_MONITOR_4_REG
	CORE_0_PIF_PMS_MONITOR_4: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_MONITOR_4),
	/// SENSITIVE_CORE_0_PIF_PMS_MONITOR_5_REG
	CORE_0_PIF_PMS_MONITOR_5: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_MONITOR_5),
	/// SENSITIVE_CORE_0_PIF_PMS_MONITOR_6_REG
	CORE_0_PIF_PMS_MONITOR_6: *volatile Register(SENSITIVE_CORE_0_PIF_PMS_MONITOR_6),
	/// SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_0_REG
	BACKUP_BUS_PMS_CONSTRAIN_0: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_0),
	/// SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_1_REG
	BACKUP_BUS_PMS_CONSTRAIN_1: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_1),
	/// SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_2_REG
	BACKUP_BUS_PMS_CONSTRAIN_2: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_2),
	/// SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_3_REG
	BACKUP_BUS_PMS_CONSTRAIN_3: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_3),
	/// SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_4_REG
	BACKUP_BUS_PMS_CONSTRAIN_4: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_CONSTRAIN_4),
	/// SENSITIVE_BACKUP_BUS_PMS_MONITOR_0_REG
	BACKUP_BUS_PMS_MONITOR_0: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_MONITOR_0),
	/// SENSITIVE_BACKUP_BUS_PMS_MONITOR_1_REG
	BACKUP_BUS_PMS_MONITOR_1: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_MONITOR_1),
	/// SENSITIVE_BACKUP_BUS_PMS_MONITOR_2_REG
	BACKUP_BUS_PMS_MONITOR_2: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_MONITOR_2),
	/// SENSITIVE_BACKUP_BUS_PMS_MONITOR_3_REG
	BACKUP_BUS_PMS_MONITOR_3: *volatile Register(SENSITIVE_BACKUP_BUS_PMS_MONITOR_3),
	/// SENSITIVE_CLOCK_GATE_REG_REG
	CLOCK_GATE: *volatile Register(SENSITIVE_CLOCK_GATE),
	/// SENSITIVE_DATE_REG
	DATE: *volatile Register(SENSITIVE_DATE),
};

// Peripheral instance
const SENSITIVE_instance = SENSITIVE {
	.ROM_TABLE_LOCK = @ptrFromInt(0x600c1000),
	.ROM_TABLE = @ptrFromInt(0x600c1004),
	.PRIVILEGE_MODE_SEL_LOCK = @ptrFromInt(0x600c1008),
	.PRIVILEGE_MODE_SEL = @ptrFromInt(0x600c100c),
	.APB_PERIPHERAL_ACCESS_0 = @ptrFromInt(0x600c1010),
	.APB_PERIPHERAL_ACCESS_1 = @ptrFromInt(0x600c1014),
	.INTERNAL_SRAM_USAGE_0 = @ptrFromInt(0x600c1018),
	.INTERNAL_SRAM_USAGE_1 = @ptrFromInt(0x600c101c),
	.INTERNAL_SRAM_USAGE_3 = @ptrFromInt(0x600c1020),
	.INTERNAL_SRAM_USAGE_4 = @ptrFromInt(0x600c1024),
	.CACHE_TAG_ACCESS_0 = @ptrFromInt(0x600c1028),
	.CACHE_TAG_ACCESS_1 = @ptrFromInt(0x600c102c),
	.CACHE_MMU_ACCESS_0 = @ptrFromInt(0x600c1030),
	.CACHE_MMU_ACCESS_1 = @ptrFromInt(0x600c1034),
	.DMA_APBPERI_SPI2_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1038),
	.DMA_APBPERI_SPI2_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c103c),
	.DMA_APBPERI_UCHI0_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1040),
	.DMA_APBPERI_UCHI0_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c1044),
	.DMA_APBPERI_I2S0_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1048),
	.DMA_APBPERI_I2S0_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c104c),
	.DMA_APBPERI_MAC_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1050),
	.DMA_APBPERI_MAC_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c1054),
	.DMA_APBPERI_BACKUP_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1058),
	.DMA_APBPERI_BACKUP_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c105c),
	.DMA_APBPERI_LC_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1060),
	.DMA_APBPERI_LC_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c1064),
	.DMA_APBPERI_AES_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1068),
	.DMA_APBPERI_AES_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c106c),
	.DMA_APBPERI_SHA_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1070),
	.DMA_APBPERI_SHA_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c1074),
	.DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1078),
	.DMA_APBPERI_ADC_DAC_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c107c),
	.DMA_APBPERI_PMS_MONITOR_0 = @ptrFromInt(0x600c1080),
	.DMA_APBPERI_PMS_MONITOR_1 = @ptrFromInt(0x600c1084),
	.DMA_APBPERI_PMS_MONITOR_2 = @ptrFromInt(0x600c1088),
	.DMA_APBPERI_PMS_MONITOR_3 = @ptrFromInt(0x600c108c),
	.CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_0 = @ptrFromInt(0x600c1090),
	.CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_1 = @ptrFromInt(0x600c1094),
	.CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_2 = @ptrFromInt(0x600c1098),
	.CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_3 = @ptrFromInt(0x600c109c),
	.CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_4 = @ptrFromInt(0x600c10a0),
	.CORE_X_IRAM0_DRAM0_DMA_SPLIT_LINE_CONSTRAIN_5 = @ptrFromInt(0x600c10a4),
	.CORE_X_IRAM0_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c10a8),
	.CORE_X_IRAM0_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c10ac),
	.CORE_X_IRAM0_PMS_CONSTRAIN_2 = @ptrFromInt(0x600c10b0),
	.CORE_0_IRAM0_PMS_MONITOR_0 = @ptrFromInt(0x600c10b4),
	.CORE_0_IRAM0_PMS_MONITOR_1 = @ptrFromInt(0x600c10b8),
	.CORE_0_IRAM0_PMS_MONITOR_2 = @ptrFromInt(0x600c10bc),
	.CORE_X_DRAM0_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c10c0),
	.CORE_X_DRAM0_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c10c4),
	.CORE_0_DRAM0_PMS_MONITOR_0 = @ptrFromInt(0x600c10c8),
	.CORE_0_DRAM0_PMS_MONITOR_1 = @ptrFromInt(0x600c10cc),
	.CORE_0_DRAM0_PMS_MONITOR_2 = @ptrFromInt(0x600c10d0),
	.CORE_0_DRAM0_PMS_MONITOR_3 = @ptrFromInt(0x600c10d4),
	.CORE_0_PIF_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c10d8),
	.CORE_0_PIF_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c10dc),
	.CORE_0_PIF_PMS_CONSTRAIN_2 = @ptrFromInt(0x600c10e0),
	.CORE_0_PIF_PMS_CONSTRAIN_3 = @ptrFromInt(0x600c10e4),
	.CORE_0_PIF_PMS_CONSTRAIN_4 = @ptrFromInt(0x600c10e8),
	.CORE_0_PIF_PMS_CONSTRAIN_5 = @ptrFromInt(0x600c10ec),
	.CORE_0_PIF_PMS_CONSTRAIN_6 = @ptrFromInt(0x600c10f0),
	.CORE_0_PIF_PMS_CONSTRAIN_7 = @ptrFromInt(0x600c10f4),
	.CORE_0_PIF_PMS_CONSTRAIN_8 = @ptrFromInt(0x600c10f8),
	.CORE_0_PIF_PMS_CONSTRAIN_9 = @ptrFromInt(0x600c10fc),
	.CORE_0_PIF_PMS_CONSTRAIN_10 = @ptrFromInt(0x600c1100),
	.REGION_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c1104),
	.REGION_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c1108),
	.REGION_PMS_CONSTRAIN_2 = @ptrFromInt(0x600c110c),
	.REGION_PMS_CONSTRAIN_3 = @ptrFromInt(0x600c1110),
	.REGION_PMS_CONSTRAIN_4 = @ptrFromInt(0x600c1114),
	.REGION_PMS_CONSTRAIN_5 = @ptrFromInt(0x600c1118),
	.REGION_PMS_CONSTRAIN_6 = @ptrFromInt(0x600c111c),
	.REGION_PMS_CONSTRAIN_7 = @ptrFromInt(0x600c1120),
	.REGION_PMS_CONSTRAIN_8 = @ptrFromInt(0x600c1124),
	.REGION_PMS_CONSTRAIN_9 = @ptrFromInt(0x600c1128),
	.REGION_PMS_CONSTRAIN_10 = @ptrFromInt(0x600c112c),
	.CORE_0_PIF_PMS_MONITOR_0 = @ptrFromInt(0x600c1130),
	.CORE_0_PIF_PMS_MONITOR_1 = @ptrFromInt(0x600c1134),
	.CORE_0_PIF_PMS_MONITOR_2 = @ptrFromInt(0x600c1138),
	.CORE_0_PIF_PMS_MONITOR_3 = @ptrFromInt(0x600c113c),
	.CORE_0_PIF_PMS_MONITOR_4 = @ptrFromInt(0x600c1140),
	.CORE_0_PIF_PMS_MONITOR_5 = @ptrFromInt(0x600c1144),
	.CORE_0_PIF_PMS_MONITOR_6 = @ptrFromInt(0x600c1148),
	.BACKUP_BUS_PMS_CONSTRAIN_0 = @ptrFromInt(0x600c114c),
	.BACKUP_BUS_PMS_CONSTRAIN_1 = @ptrFromInt(0x600c1150),
	.BACKUP_BUS_PMS_CONSTRAIN_2 = @ptrFromInt(0x600c1154),
	.BACKUP_BUS_PMS_CONSTRAIN_3 = @ptrFromInt(0x600c1158),
	.BACKUP_BUS_PMS_CONSTRAIN_4 = @ptrFromInt(0x600c115c),
	.BACKUP_BUS_PMS_MONITOR_0 = @ptrFromInt(0x600c1160),
	.BACKUP_BUS_PMS_MONITOR_1 = @ptrFromInt(0x600c1164),
	.BACKUP_BUS_PMS_MONITOR_2 = @ptrFromInt(0x600c1168),
	.BACKUP_BUS_PMS_MONITOR_3 = @ptrFromInt(0x600c116c),
	.CLOCK_GATE = @ptrFromInt(0x600c1170),
	.DATE = @ptrFromInt(0x600c1ffc),
};

const SHA_MODE = packed struct {
	/// Sha mode.
	MODE: u3,
	reserved0: u29,
};

const SHA_T_STRING = packed struct {
	/// Sha t_string (used if and only if mode == SHA_512/t).
	T_STRING: u32,
};

const SHA_T_LENGTH = packed struct {
	/// Sha t_length (used if and only if mode == SHA_512/t).
	T_LENGTH: u6,
	reserved0: u26,
};

const SHA_DMA_BLOCK_NUM = packed struct {
	/// Dma-sha block number.
	DMA_BLOCK_NUM: u6,
	reserved0: u26,
};

const SHA_START = packed struct {
	reserved0: u1,
	/// Reserved.
	START: u31,
};

const SHA_CONTINUE = packed struct {
	reserved0: u1,
	/// Reserved.
	CONTINUE: u31,
};

const SHA_BUSY = packed struct {
	/// Sha busy state. 1'b0: idle. 1'b1: busy.
	STATE: u1,
	reserved0: u31,
};

const SHA_DMA_START = packed struct {
	/// Start dma-sha.
	DMA_START: u1,
	reserved0: u31,
};

const SHA_DMA_CONTINUE = packed struct {
	/// Continue dma-sha.
	DMA_CONTINUE: u1,
	reserved0: u31,
};

const SHA_CLEAR_IRQ = packed struct {
	/// Clear sha interrupt.
	CLEAR_INTERRUPT: u1,
	reserved0: u31,
};

const SHA_IRQ_ENA = packed struct {
	/// Sha interrupt enable register. 1'b0: disable(default). 1'b1: enable.
	INTERRUPT_ENA: u1,
	reserved0: u31,
};

const SHA_DATE = packed struct {
	/// Sha date information/ sha version information.
	DATE: u30,
	reserved0: u2,
};

const SHA_H_MEMN = packed struct {
	reserved0: u32,
};

const SHA_M_MEMN = packed struct {
	reserved0: u32,
};

//Peripheral type
const SHA = struct {
	/// Initial configuration register.
	MODE: *volatile Register(SHA_MODE),
	/// SHA 512/t configuration register 0.
	T_STRING: *volatile Register(SHA_T_STRING),
	/// SHA 512/t configuration register 1.
	T_LENGTH: *volatile Register(SHA_T_LENGTH),
	/// DMA configuration register 0.
	DMA_BLOCK_NUM: *volatile Register(SHA_DMA_BLOCK_NUM),
	/// Typical SHA configuration register 0.
	START: *volatile Register(SHA_START),
	/// Typical SHA configuration register 1.
	CONTINUE: *volatile Register(SHA_CONTINUE),
	/// Busy register.
	BUSY: *volatile Register(SHA_BUSY),
	/// DMA configuration register 1.
	DMA_START: *volatile Register(SHA_DMA_START),
	/// DMA configuration register 2.
	DMA_CONTINUE: *volatile Register(SHA_DMA_CONTINUE),
	/// Interrupt clear register.
	CLEAR_IRQ: *volatile Register(SHA_CLEAR_IRQ),
	/// Interrupt enable register.
	IRQ_ENA: *volatile Register(SHA_IRQ_ENA),
	/// Date register.
	DATE: *volatile Register(SHA_DATE),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM0: *volatile Register(SHA_H_MEMN),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM1: *volatile Register(SHA_H_MEMN),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM2: *volatile Register(SHA_H_MEMN),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM3: *volatile Register(SHA_H_MEMN),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM4: *volatile Register(SHA_H_MEMN),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM5: *volatile Register(SHA_H_MEMN),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM6: *volatile Register(SHA_H_MEMN),
	/// Sha H memory which contains intermediate hash or finial hash.
	H_MEM7: *volatile Register(SHA_H_MEMN),
	/// Sha M memory which contains message.
	M_MEM0: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM1: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM2: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM3: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM4: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM5: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM6: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM7: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM8: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM9: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM10: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM11: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM12: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM13: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM14: *volatile Register(SHA_M_MEMN),
	/// Sha M memory which contains message.
	M_MEM15: *volatile Register(SHA_M_MEMN),
};

// Peripheral instance
const SHA_instance = SHA {
	.MODE = @ptrFromInt(0x6003b000),
	.T_STRING = @ptrFromInt(0x6003b004),
	.T_LENGTH = @ptrFromInt(0x6003b008),
	.DMA_BLOCK_NUM = @ptrFromInt(0x6003b00c),
	.START = @ptrFromInt(0x6003b010),
	.CONTINUE = @ptrFromInt(0x6003b014),
	.BUSY = @ptrFromInt(0x6003b018),
	.DMA_START = @ptrFromInt(0x6003b01c),
	.DMA_CONTINUE = @ptrFromInt(0x6003b020),
	.CLEAR_IRQ = @ptrFromInt(0x6003b024),
	.IRQ_ENA = @ptrFromInt(0x6003b028),
	.DATE = @ptrFromInt(0x6003b02c),
	.H_MEM0 = @ptrFromInt(0x6003b040),
	.H_MEM1 = @ptrFromInt(0x6003b040),
	.H_MEM2 = @ptrFromInt(0x6003b040),
	.H_MEM3 = @ptrFromInt(0x6003b040),
	.H_MEM4 = @ptrFromInt(0x6003b040),
	.H_MEM5 = @ptrFromInt(0x6003b040),
	.H_MEM6 = @ptrFromInt(0x6003b040),
	.H_MEM7 = @ptrFromInt(0x6003b040),
	.M_MEM0 = @ptrFromInt(0x6003b080),
	.M_MEM1 = @ptrFromInt(0x6003b080),
	.M_MEM2 = @ptrFromInt(0x6003b080),
	.M_MEM3 = @ptrFromInt(0x6003b080),
	.M_MEM4 = @ptrFromInt(0x6003b080),
	.M_MEM5 = @ptrFromInt(0x6003b080),
	.M_MEM6 = @ptrFromInt(0x6003b080),
	.M_MEM7 = @ptrFromInt(0x6003b080),
	.M_MEM8 = @ptrFromInt(0x6003b080),
	.M_MEM9 = @ptrFromInt(0x6003b080),
	.M_MEM10 = @ptrFromInt(0x6003b080),
	.M_MEM11 = @ptrFromInt(0x6003b080),
	.M_MEM12 = @ptrFromInt(0x6003b080),
	.M_MEM13 = @ptrFromInt(0x6003b080),
	.M_MEM14 = @ptrFromInt(0x6003b080),
	.M_MEM15 = @ptrFromInt(0x6003b080),
};

const SPI0_CTRL = packed struct {
	reserved0: u3,
	/// In the dummy phase the signal level of spi is output by the spi controller.
	FDUMMY_OUT: u1,
	reserved1: u3,
	/// Apply 2 signals during command phase 1:enable 0: disable
	FCMD_DUAL: u1,
	/// Apply 4 signals during command phase 1:enable 0: disable
	FCMD_QUAD: u1,
	reserved2: u4,
	/// This bit enable the bits: spi_mem_fread_qio, spi_mem_fread_dio, spi_mem_fread_qout and spi_mem_fread_dout. 1: enable 0: disable.
	FASTRD_MODE: u1,
	/// In the read operations, read-data phase apply 2 signals. 1: enable 0: disable.
	FREAD_DUAL: u1,
	reserved3: u3,
	/// The bit is used to set MISO line polarity, 1: high 0, low
	Q_POL: u1,
	/// The bit is used to set MOSI line polarity, 1: high 0, low
	D_POL: u1,
	/// In the read operations read-data phase apply 4 signals. 1: enable 0: disable.
	FREAD_QUAD: u1,
	/// Write protect signal output when SPI is idle.  1: output high, 0: output low.
	WP: u1,
	reserved4: u1,
	/// In the read operations address phase and read-data phase apply 2 signals. 1: enable 0: disable.
	FREAD_DIO: u1,
	/// In the read operations address phase and read-data phase apply 4 signals. 1: enable 0: disable.
	FREAD_QIO: u1,
	reserved5: u7,
};

const SPI0_CTRL1 = packed struct {
	/// SPI clock mode bits. 0: SPI clock is off when CS inactive 1: SPI clock is delayed one cycle after CS inactive 2: SPI clock is delayed two cycles after CS inactive 3: SPI clock is alwasy on.
	CLK_MODE: u2,
	reserved0: u28,
	/// SPI0 RX FIFO reset signal.
	RXFIFO_RST: u1,
	reserved1: u1,
};

const SPI0_CTRL2 = packed struct {
	/// (cycles-1) of prepare phase by spi clock this bits are combined with spi_mem_cs_setup bit.
	CS_SETUP_TIME: u5,
	/// Spi cs signal is delayed to inactive by spi clock this bits are combined with spi_mem_cs_hold bit.
	CS_HOLD_TIME: u5,
	reserved0: u15,
	/// These bits are used to set the minimum CS high time tSHSL between SPI burst transfer when accesses to flash. tSHSL is (SPI_MEM_CS_HOLD_DELAY[5:0] + 1) MSPI core clock cycles.
	CS_HOLD_DELAY: u6,
	/// The FSM will be reset.
	SYNC_RESET: u1,
};

const SPI0_CLOCK = packed struct {
	/// In the master mode it must be equal to spi_mem_clkcnt_N.
	CLKCNT_L: u8,
	/// In the master mode it must be floor((spi_mem_clkcnt_N+1)/2-1).
	CLKCNT_H: u8,
	/// In the master mode it is the divider of spi_mem_clk. So spi_mem_clk frequency is system/(spi_mem_clkcnt_N+1)
	CLKCNT_N: u8,
	reserved0: u7,
	/// Set this bit in 1-division mode.
	CLK_EQU_SYSCLK: u1,
};

const SPI0_USER = packed struct {
	reserved0: u6,
	/// spi cs keep low when spi is in  done  phase. 1: enable 0: disable.
	CS_HOLD: u1,
	/// spi cs is enable when spi is in  prepare  phase. 1: enable 0: disable.
	CS_SETUP: u1,
	reserved1: u1,
	/// the bit combined with spi_mem_mosi_delay_mode bits to set mosi signal delay mode.
	CK_OUT_EDGE: u1,
	reserved2: u16,
	/// spi clock is disable in dummy phase when the bit is enable.
	USR_DUMMY_IDLE: u1,
	reserved3: u2,
	/// This bit enable the dummy phase of an operation.
	USR_DUMMY: u1,
	reserved4: u2,
};

const SPI0_USER1 = packed struct {
	/// The length in spi_mem_clk cycles of dummy phase. The register value shall be (cycle_num-1).
	USR_DUMMY_CYCLELEN: u6,
	reserved0: u20,
	/// The length in bits of address phase. The register value shall be (bit_num-1).
	USR_ADDR_BITLEN: u6,
};

const SPI0_USER2 = packed struct {
	/// The value of  command.
	USR_COMMAND_VALUE: u16,
	reserved0: u12,
	/// The length in bits of command phase. The register value shall be (bit_num-1)
	USR_COMMAND_BITLEN: u4,
};

const SPI0_RD_STATUS = packed struct {
	reserved0: u16,
	/// Mode bits in the flash fast read mode  it is combined with spi_mem_fastrd_mode bit.
	WB_MODE: u8,
	reserved1: u8,
};

const SPI0_MISC = packed struct {
	reserved0: u3,
	/// The bit is used to indicate the  spi0_mst_st controlled transmitting is done.
	TRANS_END: u1,
	/// The bit is used to enable the interrupt of  spi0_mst_st controlled transmitting is done.
	TRANS_END_INT_ENA: u1,
	/// The bit is used to indicate the  spi0_slv_st controlled transmitting is done.
	CSPI_ST_TRANS_END: u1,
	/// The bit is used to enable the interrupt of spi0_slv_st controlled transmitting is done.
	CSPI_ST_TRANS_END_INT_ENA: u1,
	reserved1: u2,
	/// 1: spi clk line is high when idle     0: spi clk line is low when idle
	CK_IDLE_EDGE: u1,
	/// spi cs line keep low when the bit is set.
	CS_KEEP_ACTIVE: u1,
	reserved2: u21,
};

const SPI0_CACHE_FCTRL = packed struct {
	/// For SPI0, Cache access enable, 1: enable, 0:disable.
	CACHE_REQ_EN: u1,
	/// For SPI0,  cache  read flash with 4 bytes address, 1: enable, 0:disable.
	CACHE_USR_ADDR_4BYTE: u1,
	/// For SPI0,  cache  read flash for user define command, 1: enable, 0:disable.
	CACHE_FLASH_USR_CMD: u1,
	/// For SPI0 flash, din phase apply 2 signals. 1: enable 0: disable. The bit is the same with spi_mem_fread_dio.
	FDIN_DUAL: u1,
	/// For SPI0 flash, dout phase apply 2 signals. 1: enable 0: disable. The bit is the same with spi_mem_fread_dio.
	FDOUT_DUAL: u1,
	/// For SPI0 flash, address phase apply 2 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_dio.
	FADDR_DUAL: u1,
	/// For SPI0 flash, din phase apply 4 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_qio.
	FDIN_QUAD: u1,
	/// For SPI0 flash, dout phase apply 4 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_qio.
	FDOUT_QUAD: u1,
	/// For SPI0 flash, address phase apply 4 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_qio.
	FADDR_QUAD: u1,
	reserved0: u23,
};

const SPI0_FSM = packed struct {
	/// The current status of SPI0 slave FSM: spi0_slv_st. 0: idle state, 1: preparation state, 2: send command state, 3: send address state, 4: wait state, 5: read data state, 6:write data state, 7: done state, 8: read data end state.
	CSPI_ST: u4,
	/// The current status of SPI0 master FSM: spi0_mst_st. 0: idle state, 1:EM_CACHE_GRANT , 2: program/erase suspend state, 3: SPI0 read data state, 4: wait cache/EDMA sent data is stored in SPI0 TX FIFO, 5: SPI0 write data state.
	EM_ST: u3,
	/// The lock delay time of SPI0/1 arbiter by spi0_slv_st, after PER is sent by SPI1.
	CSPI_LOCK_DELAY_TIME: u5,
	reserved0: u20,
};

const SPI0_TIMING_CALI = packed struct {
	/// The bit is used to enable timing adjust clock for all reading operations.
	TIMING_CLK_ENA: u1,
	/// The bit is used to enable timing auto-calibration for all reading operations.
	TIMING_CALI: u1,
	/// add extra dummy spi clock cycle length for spi clock calibration.
	EXTRA_DUMMY_CYCLELEN: u3,
	reserved0: u27,
};

const SPI0_DIN_MODE = packed struct {
	/// the input signals are delayed by system clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb,  3: input with the posedge of clk_160, 4 input with the negedge of clk_160, 5: input with the spi_clk high edge,  6: input with the spi_clk low edge
	DIN0_MODE: u2,
	/// the input signals are delayed by system clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb,  3: input with the posedge of clk_160, 4 input with the negedge of clk_160, 5: input with the spi_clk high edge,  6: input with the spi_clk low edge
	DIN1_MODE: u2,
	/// the input signals are delayed by system clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb,  3: input with the posedge of clk_160, 4 input with the negedge of clk_160, 5: input with the spi_clk high edge,  6: input with the spi_clk low edge
	DIN2_MODE: u2,
	/// the input signals are delayed by system clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb,  3: input with the posedge of clk_160, 4 input with the negedge of clk_160, 5: input with the spi_clk high edge,  6: input with the spi_clk low edge
	DIN3_MODE: u2,
	reserved0: u24,
};

const SPI0_DIN_NUM = packed struct {
	/// the input signals are delayed by system clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...
	DIN0_NUM: u2,
	/// the input signals are delayed by system clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...
	DIN1_NUM: u2,
	/// the input signals are delayed by system clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...
	DIN2_NUM: u2,
	/// the input signals are delayed by system clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...
	DIN3_NUM: u2,
	reserved0: u24,
};

const SPI0_DOUT_MODE = packed struct {
	/// the output signals are delayed by system clock cycles, 0: output without delayed, 1: output with the posedge of clk_apb,2 output with the negedge of clk_apb, 3: output with the posedge of clk_160,4 output with the negedge of clk_160,5: output with the spi_clk high edge ,6: output with the spi_clk low edge
	DOUT0_MODE: u1,
	/// the output signals are delayed by system clock cycles, 0: output without delayed, 1: output with the posedge of clk_apb,2 output with the negedge of clk_apb, 3: output with the posedge of clk_160,4 output with the negedge of clk_160,5: output with the spi_clk high edge ,6: output with the spi_clk low edge
	DOUT1_MODE: u1,
	/// the output signals are delayed by system clock cycles, 0: output without delayed, 1: output with the posedge of clk_apb,2 output with the negedge of clk_apb, 3: output with the posedge of clk_160,4 output with the negedge of clk_160,5: output with the spi_clk high edge ,6: output with the spi_clk low edge
	DOUT2_MODE: u1,
	/// the output signals are delayed by system clock cycles, 0: output without delayed, 1: output with the posedge of clk_apb,2 output with the negedge of clk_apb, 3: output with the posedge of clk_160,4 output with the negedge of clk_160,5: output with the spi_clk high edge ,6: output with the spi_clk low edge
	DOUT3_MODE: u1,
	reserved0: u28,
};

const SPI0_CLOCK_GATE = packed struct {
	/// Register clock gate enable signal. 1: Enable. 0: Disable.
	CLK_EN: u1,
	reserved0: u31,
};

const SPI0_CORE_CLK_SEL = packed struct {
	/// When the digital system clock selects PLL clock and the frequency of PLL clock is 480MHz, the value of reg_spi01_clk_sel:  0: SPI0/1 module clock (clk) is 80MHz. 1: SPI0/1 module clock (clk) is 120MHz.  2: SPI0/1 module clock (clk) 160MHz. 3: Not used. When the digital system clock selects PLL clock and the frequency of PLL clock is 320MHz, the value of reg_spi01_clk_sel:  0: SPI0/1 module clock (clk) is 80MHz. 1: SPI0/1 module clock (clk) is 80MHz.  2: SPI0/1 module clock (clk) 160MHz. 3: Not used.
	SPI01_CLK_SEL: u2,
	reserved0: u30,
};

const SPI0_DATE = packed struct {
	/// SPI register version.
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const SPI0 = struct {
	/// SPI0 control register.
	CTRL: *volatile Register(SPI0_CTRL),
	/// SPI0 control1 register.
	CTRL1: *volatile Register(SPI0_CTRL1),
	/// SPI0 control2 register.
	CTRL2: *volatile Register(SPI0_CTRL2),
	/// SPI clock division control register.
	CLOCK: *volatile Register(SPI0_CLOCK),
	/// SPI0 user register.
	USER: *volatile Register(SPI0_USER),
	/// SPI0 user1 register.
	USER1: *volatile Register(SPI0_USER1),
	/// SPI0 user2 register.
	USER2: *volatile Register(SPI0_USER2),
	/// SPI0 read control register.
	RD_STATUS: *volatile Register(SPI0_RD_STATUS),
	/// SPI0 misc register
	MISC: *volatile Register(SPI0_MISC),
	/// SPI0 bit mode control register.
	CACHE_FCTRL: *volatile Register(SPI0_CACHE_FCTRL),
	/// SPI0 FSM status register
	FSM: *volatile Register(SPI0_FSM),
	/// SPI0 timing calibration register
	TIMING_CALI: *volatile Register(SPI0_TIMING_CALI),
	/// SPI0 input delay mode control register
	DIN_MODE: *volatile Register(SPI0_DIN_MODE),
	/// SPI0 input delay number control register
	DIN_NUM: *volatile Register(SPI0_DIN_NUM),
	/// SPI0 output delay mode control register
	DOUT_MODE: *volatile Register(SPI0_DOUT_MODE),
	/// SPI0 clk_gate register
	CLOCK_GATE: *volatile Register(SPI0_CLOCK_GATE),
	/// SPI0 module clock select register
	CORE_CLK_SEL: *volatile Register(SPI0_CORE_CLK_SEL),
	/// Version control register
	DATE: *volatile Register(SPI0_DATE),
};

// Peripheral instance
const SPI0_instance = SPI0 {
	.CTRL = @ptrFromInt(0x60003008),
	.CTRL1 = @ptrFromInt(0x6000300c),
	.CTRL2 = @ptrFromInt(0x60003010),
	.CLOCK = @ptrFromInt(0x60003014),
	.USER = @ptrFromInt(0x60003018),
	.USER1 = @ptrFromInt(0x6000301c),
	.USER2 = @ptrFromInt(0x60003020),
	.RD_STATUS = @ptrFromInt(0x6000302c),
	.MISC = @ptrFromInt(0x60003034),
	.CACHE_FCTRL = @ptrFromInt(0x6000303c),
	.FSM = @ptrFromInt(0x60003054),
	.TIMING_CALI = @ptrFromInt(0x600030a8),
	.DIN_MODE = @ptrFromInt(0x600030ac),
	.DIN_NUM = @ptrFromInt(0x600030b0),
	.DOUT_MODE = @ptrFromInt(0x600030b4),
	.CLOCK_GATE = @ptrFromInt(0x600030dc),
	.CORE_CLK_SEL = @ptrFromInt(0x600030e0),
	.DATE = @ptrFromInt(0x600033fc),
};

const SPI1_CMD = packed struct {
	/// The current status of SPI1 master FSM.
	SPI1_MST_ST: u4,
	/// The current status of SPI1 slave FSM: mspi_st. 0: idle state, 1: preparation state, 2: send command state, 3: send address state, 4: wait state, 5: read data state, 6:write data state, 7: done state, 8: read data end state.
	MSPI_ST: u4,
	reserved0: u9,
	/// In user mode, it is set to indicate that program/erase operation will be triggered. The bit is combined with spi_mem_usr bit. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_PE: u1,
	/// User define command enable.  An operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	USR: u1,
	/// Drive Flash into high performance mode.  The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_HPM: u1,
	/// This bit combined with reg_resandres bit releases Flash from the power-down state or high performance mode and obtains the devices ID. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_RES: u1,
	/// Drive Flash into power down.  An operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_DP: u1,
	/// Chip erase enable. Chip erase operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_CE: u1,
	/// Block erase enable(32KB) .  Block erase operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_BE: u1,
	/// Sector erase enable(4KB). Sector erase operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_SE: u1,
	/// Page program enable(1 byte ~256 bytes data to be programmed). Page program operation  will be triggered when the bit is set. The bit will be cleared once the operation done .1: enable 0: disable.
	FLASH_PP: u1,
	/// Write status register enable.   Write status operation  will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_WRSR: u1,
	/// Read status register-1.  Read status operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_RDSR: u1,
	/// Read JEDEC ID . Read ID command will be sent when the bit is set. The bit will be cleared once the operation done. 1: enable 0: disable.
	FLASH_RDID: u1,
	/// Write flash disable. Write disable command will be sent when the bit is set. The bit will be cleared once the operation done. 1: enable 0: disable.
	FLASH_WRDI: u1,
	/// Write flash enable.  Write enable command will be sent when the bit is set. The bit will be cleared once the operation done. 1: enable 0: disable.
	FLASH_WREN: u1,
	/// Read flash enable. Read flash operation will be triggered when the bit is set. The bit will be cleared once the operation done. 1: enable 0: disable.
	FLASH_READ: u1,
};

const SPI1_ADDR = packed struct {
	/// In user mode, it is the memory address. other then the bit0-bit23 is the memory address, the bit24-bit31 are the byte length of a transfer.
	USR_ADDR_VALUE: u32,
};

const SPI1_CTRL = packed struct {
	reserved0: u3,
	/// In the dummy phase the signal level of spi is output by the spi controller.
	FDUMMY_OUT: u1,
	reserved1: u3,
	/// Apply 2 signals during command phase 1:enable 0: disable
	FCMD_DUAL: u1,
	/// Apply 4 signals during command phase 1:enable 0: disable
	FCMD_QUAD: u1,
	reserved2: u1,
	/// For SPI1,  initialize crc32 module before writing encrypted data to flash. Active low.
	FCS_CRC_EN: u1,
	/// For SPI1,  enable crc32 when writing encrypted data to flash. 1: enable 0:disable
	TX_CRC_EN: u1,
	reserved3: u1,
	/// This bit enable the bits: spi_mem_fread_qio, spi_mem_fread_dio, spi_mem_fread_qout and spi_mem_fread_dout. 1: enable 0: disable.
	FASTRD_MODE: u1,
	/// In the read operations, read-data phase apply 2 signals. 1: enable 0: disable.
	FREAD_DUAL: u1,
	/// The Device ID is read out to SPI_MEM_RD_STATUS register,  this bit combine with spi_mem_flash_res bit. 1: enable 0: disable.
	RESANDRES: u1,
	reserved4: u2,
	/// The bit is used to set MISO line polarity, 1: high 0, low
	Q_POL: u1,
	/// The bit is used to set MOSI line polarity, 1: high 0, low
	D_POL: u1,
	/// In the read operations read-data phase apply 4 signals. 1: enable 0: disable.
	FREAD_QUAD: u1,
	/// Write protect signal output when SPI is idle.  1: output high, 0: output low.
	WP: u1,
	/// two bytes data will be written to status register when it is set. 1: enable 0: disable.
	WRSR_2B: u1,
	/// In the read operations address phase and read-data phase apply 2 signals. 1: enable 0: disable.
	FREAD_DIO: u1,
	/// In the read operations address phase and read-data phase apply 4 signals. 1: enable 0: disable.
	FREAD_QIO: u1,
	reserved5: u7,
};

const SPI1_CTRL1 = packed struct {
	/// SPI clock mode bits. 0: SPI clock is off when CS inactive 1: SPI clock is delayed one cycle after CS inactive 2: SPI clock is delayed two cycles after CS inactive 3: SPI clock is alwasy on.
	CLK_MODE: u2,
	/// After RES/DP/HPM command is sent, SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 512) SPI_CLK cycles.
	CS_HOLD_DLY_RES: u10,
	reserved0: u20,
};

const SPI1_CTRL2 = packed struct {
	reserved0: u31,
	/// The FSM will be reset.
	SYNC_RESET: u1,
};

const SPI1_CLOCK = packed struct {
	/// In the master mode it must be equal to spi_mem_clkcnt_N.
	CLKCNT_L: u8,
	/// In the master mode it must be floor((spi_mem_clkcnt_N+1)/2-1).
	CLKCNT_H: u8,
	/// In the master mode it is the divider of spi_mem_clk. So spi_mem_clk frequency is system/(spi_mem_clkcnt_N+1)
	CLKCNT_N: u8,
	reserved0: u7,
	/// reserved
	CLK_EQU_SYSCLK: u1,
};

const SPI1_USER = packed struct {
	reserved0: u9,
	/// the bit combined with spi_mem_mosi_delay_mode bits to set mosi signal delay mode.
	CK_OUT_EDGE: u1,
	reserved1: u2,
	/// In the write operations read-data phase apply 2 signals
	FWRITE_DUAL: u1,
	/// In the write operations read-data phase apply 4 signals
	FWRITE_QUAD: u1,
	/// In the write operations address phase and read-data phase apply 2 signals.
	FWRITE_DIO: u1,
	/// In the write operations address phase and read-data phase apply 4 signals.
	FWRITE_QIO: u1,
	reserved2: u8,
	/// read-data phase only access to high-part of the buffer spi_mem_w8~spi_mem_w15. 1: enable 0: disable.
	USR_MISO_HIGHPART: u1,
	/// write-data phase only access to high-part of the buffer spi_mem_w8~spi_mem_w15. 1: enable 0: disable.
	USR_MOSI_HIGHPART: u1,
	/// SPI clock is disable in dummy phase when the bit is enable.
	USR_DUMMY_IDLE: u1,
	/// This bit enable the write-data phase of an operation.
	USR_MOSI: u1,
	/// This bit enable the read-data phase of an operation.
	USR_MISO: u1,
	/// This bit enable the dummy phase of an operation.
	USR_DUMMY: u1,
	/// This bit enable the address phase of an operation.
	USR_ADDR: u1,
	/// This bit enable the command phase of an operation.
	USR_COMMAND: u1,
};

const SPI1_USER1 = packed struct {
	/// The length in spi_mem_clk cycles of dummy phase. The register value shall be (cycle_num-1).
	USR_DUMMY_CYCLELEN: u6,
	reserved0: u20,
	/// The length in bits of address phase. The register value shall be (bit_num-1).
	USR_ADDR_BITLEN: u6,
};

const SPI1_USER2 = packed struct {
	/// The value of  command.
	USR_COMMAND_VALUE: u16,
	reserved0: u12,
	/// The length in bits of command phase. The register value shall be (bit_num-1)
	USR_COMMAND_BITLEN: u4,
};

const SPI1_MOSI_DLEN = packed struct {
	/// The length in bits of write-data. The register value shall be (bit_num-1).
	USR_MOSI_DBITLEN: u10,
	reserved0: u22,
};

const SPI1_MISO_DLEN = packed struct {
	/// The length in bits of  read-data. The register value shall be (bit_num-1).
	USR_MISO_DBITLEN: u10,
	reserved0: u22,
};

const SPI1_RD_STATUS = packed struct {
	/// The value is stored when set spi_mem_flash_rdsr bit and spi_mem_flash_res bit.
	STATUS: u16,
	/// Mode bits in the flash fast read mode  it is combined with spi_mem_fastrd_mode bit.
	WB_MODE: u8,
	reserved0: u8,
};

const SPI1_MISC = packed struct {
	/// SPI_CS0 pin enable, 1: disable SPI_CS0, 0: SPI_CS0 pin is active to select SPI device, such as flash, external RAM and so on.
	CS0_DIS: u1,
	/// SPI_CS1 pin enable, 1: disable SPI_CS1, 0: SPI_CS1 pin is active to select SPI device, such as flash, external RAM and so on.
	CS1_DIS: u1,
	reserved0: u7,
	/// 1: spi clk line is high when idle     0: spi clk line is low when idle
	CK_IDLE_EDGE: u1,
	/// spi cs line keep low when the bit is set.
	CS_KEEP_ACTIVE: u1,
	reserved1: u21,
};

const SPI1_TX_CRC = packed struct {
	/// For SPI1, the value of crc32.
	DATA: u32,
};

const SPI1_CACHE_FCTRL = packed struct {
	reserved0: u1,
	/// For SPI1,  cache  read flash with 4 bytes address, 1: enable, 0:disable.
	CACHE_USR_ADDR_4BYTE: u1,
	reserved1: u1,
	/// For SPI1, din phase apply 2 signals. 1: enable 0: disable. The bit is the same with spi_mem_fread_dio.
	FDIN_DUAL: u1,
	/// For SPI1, dout phase apply 2 signals. 1: enable 0: disable. The bit is the same with spi_mem_fread_dio.
	FDOUT_DUAL: u1,
	/// For SPI1, address phase apply 2 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_dio.
	FADDR_DUAL: u1,
	/// For SPI1, din phase apply 4 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_qio.
	FDIN_QUAD: u1,
	/// For SPI1, dout phase apply 4 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_qio.
	FDOUT_QUAD: u1,
	/// For SPI1, address phase apply 4 signals. 1: enable 0: disable.  The bit is the same with spi_mem_fread_qio.
	FADDR_QUAD: u1,
	reserved2: u23,
};

const SPI1_W0 = packed struct {
	/// data buffer
	BUF0: u32,
};

const SPI1_W1 = packed struct {
	/// data buffer
	BUF1: u32,
};

const SPI1_W2 = packed struct {
	/// data buffer
	BUF2: u32,
};

const SPI1_W3 = packed struct {
	/// data buffer
	BUF3: u32,
};

const SPI1_W4 = packed struct {
	/// data buffer
	BUF4: u32,
};

const SPI1_W5 = packed struct {
	/// data buffer
	BUF5: u32,
};

const SPI1_W6 = packed struct {
	/// data buffer
	BUF6: u32,
};

const SPI1_W7 = packed struct {
	/// data buffer
	BUF7: u32,
};

const SPI1_W8 = packed struct {
	/// data buffer
	BUF8: u32,
};

const SPI1_W9 = packed struct {
	/// data buffer
	BUF9: u32,
};

const SPI1_W10 = packed struct {
	/// data buffer
	BUF10: u32,
};

const SPI1_W11 = packed struct {
	/// data buffer
	BUF11: u32,
};

const SPI1_W12 = packed struct {
	/// data buffer
	BUF12: u32,
};

const SPI1_W13 = packed struct {
	/// data buffer
	BUF13: u32,
};

const SPI1_W14 = packed struct {
	/// data buffer
	BUF14: u32,
};

const SPI1_W15 = packed struct {
	/// data buffer
	BUF15: u32,
};

const SPI1_FLASH_WAITI_CTRL = packed struct {
	reserved0: u1,
	/// The dummy phase enable when wait flash idle (RDSR)
	WAITI_DUMMY: u1,
	/// The command to wait flash idle(RDSR).
	WAITI_CMD: u8,
	/// The dummy cycle length when wait flash idle(RDSR).
	WAITI_DUMMY_CYCLELEN: u6,
	reserved1: u16,
};

const SPI1_FLASH_SUS_CTRL = packed struct {
	/// program erase resume bit, program erase suspend operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_PER: u1,
	/// program erase suspend bit, program erase suspend operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable.
	FLASH_PES: u1,
	/// 1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4 or *128) SPI_CLK cycles after program erase resume command is sent. 0: SPI1 does not wait after program erase resume command is sent.
	FLASH_PER_WAIT_EN: u1,
	/// 1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4 or *128) SPI_CLK cycles after program erase suspend command is sent. 0: SPI1 does not wait after program erase suspend command is sent.
	FLASH_PES_WAIT_EN: u1,
	/// Set this bit to enable PES end triggers PER transfer option. If this bit is 0, application should send PER after PES is done.
	PES_PER_EN: u1,
	/// Set this bit to enable Auto-suspending function.
	FLASH_PES_EN: u1,
	/// The mask value when check SUS/SUS1/SUS2 status bit. If the read status value is status_in[15:0](only status_in[7:0] is valid when only one byte of data is read out, status_in[15:0] is valid when two bytes of data are read out), SUS/SUS1/SUS2 = status_in[15:0]^ SPI_MEM_PESR_END_MSK[15:0].
	PESR_END_MSK: u16,
	/// 1: Read two bytes when check flash SUS/SUS1/SUS2 status bit. 0:  Read one byte when check flash SUS/SUS1/SUS2 status bit
	RD_SUS_2B: u1,
	/// 1: Both WIP and SUS/SUS1/SUS2 bits should be checked to insure the resume status of flash. 0: Only need to check WIP is 0.
	PER_END_EN: u1,
	/// 1: Both WIP and SUS/SUS1/SUS2 bits should be checked to insure the suspend status of flash. 0: Only need to check WIP is 0.
	PES_END_EN: u1,
	/// When SPI1 checks SUS/SUS1/SUS2 bits fail for SPI_MEM_SUS_TIMEOUT_CNT[6:0] times, it will be treated as check pass.
	SUS_TIMEOUT_CNT: u7,
};

const SPI1_FLASH_SUS_CMD = packed struct {
	/// Program/Erase resume command.
	FLASH_PER_COMMAND: u8,
	/// Program/Erase suspend command.
	FLASH_PES_COMMAND: u8,
	/// Flash SUS/SUS1/SUS2 status bit read command. The command should be sent when SUS/SUS1/SUS2 bit should be checked to insure the suspend or resume status of flash.
	WAIT_PESR_COMMAND: u16,
};

const SPI1_SUS_STATUS = packed struct {
	/// The status of flash suspend, only used in SPI1.
	FLASH_SUS: u1,
	/// 1: SPI1 sends out SPI_MEM_WAIT_PESR_COMMAND[15:0] to check SUS/SUS1/SUS2 bit. 0: SPI1 sends out SPI_MEM_WAIT_PESR_COMMAND[7:0] to check SUS/SUS1/SUS2 bit.
	WAIT_PESR_CMD_2B: u1,
	/// 1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles after HPM command is sent. 0: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after HPM command is sent.
	FLASH_HPM_DLY_128: u1,
	/// 1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles after RES command is sent. 0: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after RES command is sent.
	FLASH_RES_DLY_128: u1,
	/// 1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles after DP command is sent. 0: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after DP command is sent.
	FLASH_DP_DLY_128: u1,
	/// Valid when SPI_MEM_FLASH_PER_WAIT_EN is 1. 1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles after PER command is sent. 0: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after PER command is sent.
	FLASH_PER_DLY_128: u1,
	/// Valid when SPI_MEM_FLASH_PES_WAIT_EN is 1. 1: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 128) SPI_CLK cycles after PES command is sent. 0: SPI1 waits (SPI_MEM_CS_HOLD_DELAY_RES[9:0] * 4) SPI_CLK cycles after PES command is sent.
	FLASH_PES_DLY_128: u1,
	/// 1: Enable SPI0 lock SPI0/1 arbiter option. 0: Disable it.
	SPI0_LOCK_EN: u1,
	reserved0: u24,
};

const SPI1_TIMING_CALI = packed struct {
	reserved0: u1,
	/// The bit is used to enable timing auto-calibration for all reading operations.
	TIMING_CALI: u1,
	/// add extra dummy spi clock cycle length for spi clock calibration.
	EXTRA_DUMMY_CYCLELEN: u3,
	reserved1: u27,
};

const SPI1_INT_ENA = packed struct {
	/// The enable bit for SPI_MEM_PER_END_INT interrupt.
	PER_END_INT_ENA: u1,
	/// The enable bit for SPI_MEM_PES_END_INT interrupt.
	PES_END_INT_ENA: u1,
	/// The enable bit for SPI_MEM_WPE_END_INT interrupt.
	WPE_END_INT_ENA: u1,
	/// The enable bit for SPI_MEM_SLV_ST_END_INT interrupt.
	SLV_ST_END_INT_ENA: u1,
	/// The enable bit for SPI_MEM_MST_ST_END_INT interrupt.
	MST_ST_END_INT_ENA: u1,
	reserved0: u27,
};

const SPI1_INT_CLR = packed struct {
	/// The clear bit for SPI_MEM_PER_END_INT interrupt.
	PER_END_INT_CLR: u1,
	/// The clear bit for SPI_MEM_PES_END_INT interrupt.
	PES_END_INT_CLR: u1,
	/// The clear bit for SPI_MEM_WPE_END_INT interrupt.
	WPE_END_INT_CLR: u1,
	/// The clear bit for SPI_MEM_SLV_ST_END_INT interrupt.
	SLV_ST_END_INT_CLR: u1,
	/// The clear bit for SPI_MEM_MST_ST_END_INT interrupt.
	MST_ST_END_INT_CLR: u1,
	reserved0: u27,
};

const SPI1_INT_RAW = packed struct {
	/// The raw bit for SPI_MEM_PER_END_INT interrupt. 1: Triggered when Auto Resume command (0x7A) is sent and flash is resumed. 0: Others.
	PER_END_INT_RAW: u1,
	/// The raw bit for SPI_MEM_PES_END_INT interrupt.1: Triggered when Auto Suspend command (0x75) is sent and flash is suspended. 0: Others.
	PES_END_INT_RAW: u1,
	/// The raw bit for SPI_MEM_WPE_END_INT interrupt. 1: Triggered when WRSR/PP/SE/BE/CE is sent and flash is already idle. 0: Others.
	WPE_END_INT_RAW: u1,
	/// The raw bit for SPI_MEM_SLV_ST_END_INT interrupt. 1: Triggered when spi1_slv_st is changed from non idle state to idle state. It means that SPI_CS raises high. 0: Others
	SLV_ST_END_INT_RAW: u1,
	/// The raw bit for SPI_MEM_MST_ST_END_INT interrupt. 1: Triggered when spi1_mst_st is changed from non idle state to idle state. 0: Others.
	MST_ST_END_INT_RAW: u1,
	reserved0: u27,
};

const SPI1_INT_ST = packed struct {
	/// The status bit for SPI_MEM_PER_END_INT interrupt.
	PER_END_INT_ST: u1,
	/// The status bit for SPI_MEM_PES_END_INT interrupt.
	PES_END_INT_ST: u1,
	/// The status bit for SPI_MEM_WPE_END_INT interrupt.
	WPE_END_INT_ST: u1,
	/// The status bit for SPI_MEM_SLV_ST_END_INT interrupt.
	SLV_ST_END_INT_ST: u1,
	/// The status bit for SPI_MEM_MST_ST_END_INT interrupt.
	MST_ST_END_INT_ST: u1,
	reserved0: u27,
};

const SPI1_CLOCK_GATE = packed struct {
	/// Register clock gate enable signal. 1: Enable. 0: Disable.
	CLK_EN: u1,
	reserved0: u31,
};

const SPI1_DATE = packed struct {
	/// Version control register
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const SPI1 = struct {
	/// SPI1 memory command register
	CMD: *volatile Register(SPI1_CMD),
	/// SPI1 address register
	ADDR: *volatile Register(SPI1_ADDR),
	/// SPI1 control register.
	CTRL: *volatile Register(SPI1_CTRL),
	/// SPI1 control1 register.
	CTRL1: *volatile Register(SPI1_CTRL1),
	/// SPI1 control2 register.
	CTRL2: *volatile Register(SPI1_CTRL2),
	/// SPI1 clock division control register.
	CLOCK: *volatile Register(SPI1_CLOCK),
	/// SPI1 user register.
	USER: *volatile Register(SPI1_USER),
	/// SPI1 user1 register.
	USER1: *volatile Register(SPI1_USER1),
	/// SPI1 user2 register.
	USER2: *volatile Register(SPI1_USER2),
	/// SPI1 send data bit length control register.
	MOSI_DLEN: *volatile Register(SPI1_MOSI_DLEN),
	/// SPI1 receive data bit length control register.
	MISO_DLEN: *volatile Register(SPI1_MISO_DLEN),
	/// SPI1 status register.
	RD_STATUS: *volatile Register(SPI1_RD_STATUS),
	/// SPI1 misc register
	MISC: *volatile Register(SPI1_MISC),
	/// SPI1 TX CRC data register.
	TX_CRC: *volatile Register(SPI1_TX_CRC),
	/// SPI1 bit mode control register.
	CACHE_FCTRL: *volatile Register(SPI1_CACHE_FCTRL),
	/// SPI1 memory data buffer0
	W0: *volatile Register(SPI1_W0),
	/// SPI1 memory data buffer1
	W1: *volatile Register(SPI1_W1),
	/// SPI1 memory data buffer2
	W2: *volatile Register(SPI1_W2),
	/// SPI1 memory data buffer3
	W3: *volatile Register(SPI1_W3),
	/// SPI1 memory data buffer4
	W4: *volatile Register(SPI1_W4),
	/// SPI1 memory data buffer5
	W5: *volatile Register(SPI1_W5),
	/// SPI1 memory data buffer6
	W6: *volatile Register(SPI1_W6),
	/// SPI1 memory data buffer7
	W7: *volatile Register(SPI1_W7),
	/// SPI1 memory data buffer8
	W8: *volatile Register(SPI1_W8),
	/// SPI1 memory data buffer9
	W9: *volatile Register(SPI1_W9),
	/// SPI1 memory data buffer10
	W10: *volatile Register(SPI1_W10),
	/// SPI1 memory data buffer11
	W11: *volatile Register(SPI1_W11),
	/// SPI1 memory data buffer12
	W12: *volatile Register(SPI1_W12),
	/// SPI1 memory data buffer13
	W13: *volatile Register(SPI1_W13),
	/// SPI1 memory data buffer14
	W14: *volatile Register(SPI1_W14),
	/// SPI1 memory data buffer15
	W15: *volatile Register(SPI1_W15),
	/// SPI1 wait idle control register
	FLASH_WAITI_CTRL: *volatile Register(SPI1_FLASH_WAITI_CTRL),
	/// SPI1 flash suspend control register
	FLASH_SUS_CTRL: *volatile Register(SPI1_FLASH_SUS_CTRL),
	/// SPI1 flash suspend command register
	FLASH_SUS_CMD: *volatile Register(SPI1_FLASH_SUS_CMD),
	/// SPI1 flash suspend status register
	SUS_STATUS: *volatile Register(SPI1_SUS_STATUS),
	/// SPI1 timing control register
	TIMING_CALI: *volatile Register(SPI1_TIMING_CALI),
	/// SPI1 interrupt enable register
	INT_ENA: *volatile Register(SPI1_INT_ENA),
	/// SPI1 interrupt clear register
	INT_CLR: *volatile Register(SPI1_INT_CLR),
	/// SPI1 interrupt raw register
	INT_RAW: *volatile Register(SPI1_INT_RAW),
	/// SPI1 interrupt status register
	INT_ST: *volatile Register(SPI1_INT_ST),
	/// SPI1 clk_gate register
	CLOCK_GATE: *volatile Register(SPI1_CLOCK_GATE),
	/// Version control register
	DATE: *volatile Register(SPI1_DATE),
};

// Peripheral instance
const SPI1_instance = SPI1 {
	.CMD = @ptrFromInt(0x60002000),
	.ADDR = @ptrFromInt(0x60002004),
	.CTRL = @ptrFromInt(0x60002008),
	.CTRL1 = @ptrFromInt(0x6000200c),
	.CTRL2 = @ptrFromInt(0x60002010),
	.CLOCK = @ptrFromInt(0x60002014),
	.USER = @ptrFromInt(0x60002018),
	.USER1 = @ptrFromInt(0x6000201c),
	.USER2 = @ptrFromInt(0x60002020),
	.MOSI_DLEN = @ptrFromInt(0x60002024),
	.MISO_DLEN = @ptrFromInt(0x60002028),
	.RD_STATUS = @ptrFromInt(0x6000202c),
	.MISC = @ptrFromInt(0x60002034),
	.TX_CRC = @ptrFromInt(0x60002038),
	.CACHE_FCTRL = @ptrFromInt(0x6000203c),
	.W0 = @ptrFromInt(0x60002058),
	.W1 = @ptrFromInt(0x6000205c),
	.W2 = @ptrFromInt(0x60002060),
	.W3 = @ptrFromInt(0x60002064),
	.W4 = @ptrFromInt(0x60002068),
	.W5 = @ptrFromInt(0x6000206c),
	.W6 = @ptrFromInt(0x60002070),
	.W7 = @ptrFromInt(0x60002074),
	.W8 = @ptrFromInt(0x60002078),
	.W9 = @ptrFromInt(0x6000207c),
	.W10 = @ptrFromInt(0x60002080),
	.W11 = @ptrFromInt(0x60002084),
	.W12 = @ptrFromInt(0x60002088),
	.W13 = @ptrFromInt(0x6000208c),
	.W14 = @ptrFromInt(0x60002090),
	.W15 = @ptrFromInt(0x60002094),
	.FLASH_WAITI_CTRL = @ptrFromInt(0x60002098),
	.FLASH_SUS_CTRL = @ptrFromInt(0x6000209c),
	.FLASH_SUS_CMD = @ptrFromInt(0x600020a0),
	.SUS_STATUS = @ptrFromInt(0x600020a4),
	.TIMING_CALI = @ptrFromInt(0x600020a8),
	.INT_ENA = @ptrFromInt(0x600020c0),
	.INT_CLR = @ptrFromInt(0x600020c4),
	.INT_RAW = @ptrFromInt(0x600020c8),
	.INT_ST = @ptrFromInt(0x600020cc),
	.CLOCK_GATE = @ptrFromInt(0x600020dc),
	.DATE = @ptrFromInt(0x600023fc),
};

const SPI2_CMD = packed struct {
	/// Define the APB cycles of  SPI_CONF state. Can be configured in CONF state.
	CONF_BITLEN: u18,
	reserved0: u5,
	/// Set this bit to synchronize SPI registers from APB clock domain into SPI module clock domain, which is only used in SPI master mode.
	UPDATE: u1,
	/// User define command enable.  An operation will be triggered when the bit is set. The bit will be cleared once the operation done.1: enable 0: disable. Can not be changed by CONF_buf.
	USR: u1,
	reserved1: u7,
};

const SPI2_ADDR = packed struct {
	/// Address to slave. Can be configured in CONF state.
	USR_ADDR_VALUE: u32,
};

const SPI2_CTRL = packed struct {
	reserved0: u3,
	/// In the dummy phase the signal level of spi is output by the spi controller. Can be configured in CONF state.
	DUMMY_OUT: u1,
	reserved1: u1,
	/// Apply 2 signals during addr phase 1:enable 0: disable. Can be configured in CONF state.
	FADDR_DUAL: u1,
	/// Apply 4 signals during addr phase 1:enable 0: disable. Can be configured in CONF state.
	FADDR_QUAD: u1,
	reserved2: u1,
	/// Apply 2 signals during command phase 1:enable 0: disable. Can be configured in CONF state.
	FCMD_DUAL: u1,
	/// Apply 4 signals during command phase 1:enable 0: disable. Can be configured in CONF state.
	FCMD_QUAD: u1,
	reserved3: u4,
	/// In the read operations, read-data phase apply 2 signals. 1: enable 0: disable. Can be configured in CONF state.
	FREAD_DUAL: u1,
	/// In the read operations read-data phase apply 4 signals. 1: enable 0: disable.  Can be configured in CONF state.
	FREAD_QUAD: u1,
	reserved4: u2,
	/// The bit is used to set MISO line polarity, 1: high 0, low. Can be configured in CONF state.
	Q_POL: u1,
	/// The bit is used to set MOSI line polarity, 1: high 0, low. Can be configured in CONF state.
	D_POL: u1,
	/// SPI_HOLD output value when SPI is idle. 1: output high, 0: output low. Can be configured in CONF state.
	HOLD_POL: u1,
	/// Write protect signal output when SPI is idle.  1: output high, 0: output low.  Can be configured in CONF state.
	WP_POL: u1,
	reserved5: u3,
	/// In read-data (MISO) phase 1: LSB first 0: MSB first. Can be configured in CONF state.
	RD_BIT_ORDER: u1,
	/// In command address write-data (MOSI) phases 1: LSB firs 0: MSB first. Can be configured in CONF state.
	WR_BIT_ORDER: u1,
	reserved6: u5,
};

const SPI2_CLOCK = packed struct {
	/// In the master mode it must be equal to spi_clkcnt_N. In the slave mode it must be 0. Can be configured in CONF state.
	CLKCNT_L: u6,
	/// In the master mode it must be floor((spi_clkcnt_N+1)/2-1). In the slave mode it must be 0. Can be configured in CONF state.
	CLKCNT_H: u6,
	/// In the master mode it is the divider of spi_clk. So spi_clk frequency is system/(spi_clkdiv_pre+1)/(spi_clkcnt_N+1). Can be configured in CONF state.
	CLKCNT_N: u6,
	/// In the master mode it is pre-divider of spi_clk.  Can be configured in CONF state.
	CLKDIV_PRE: u4,
	reserved0: u9,
	/// In the master mode 1: spi_clk is eqaul to system 0: spi_clk is divided from system clock. Can be configured in CONF state.
	CLK_EQU_SYSCLK: u1,
};

const SPI2_USER = packed struct {
	/// Set the bit to enable full duplex communication. 1: enable 0: disable. Can be configured in CONF state.
	DOUTDIN: u1,
	reserved0: u2,
	/// Both for master mode and slave mode. 1: spi controller is in QPI mode. 0: others. Can be configured in CONF state.
	QPI_MODE: u1,
	reserved1: u1,
	/// In the slave mode, this bit can be used to change the polarity of tsck. 0: tsck = spi_ck_i. 1:tsck = !spi_ck_i.
	TSCK_I_EDGE: u1,
	/// spi cs keep low when spi is in  done  phase. 1: enable 0: disable. Can be configured in CONF state.
	CS_HOLD: u1,
	/// spi cs is enable when spi is in  prepare  phase. 1: enable 0: disable. Can be configured in CONF state.
	CS_SETUP: u1,
	/// In the slave mode, this bit can be used to change the polarity of rsck. 0: rsck = !spi_ck_i. 1:rsck = spi_ck_i.
	RSCK_I_EDGE: u1,
	/// the bit combined with spi_mosi_delay_mode bits to set mosi signal delay mode. Can be configured in CONF state.
	CK_OUT_EDGE: u1,
	reserved2: u2,
	/// In the write operations read-data phase apply 2 signals. Can be configured in CONF state.
	FWRITE_DUAL: u1,
	/// In the write operations read-data phase apply 4 signals. Can be configured in CONF state.
	FWRITE_QUAD: u1,
	reserved3: u1,
	/// 1: Enable the DMA CONF phase of next seg-trans operation, which means seg-trans will continue. 0: The seg-trans will end after the current SPI seg-trans or this is not seg-trans mode. Can be configured in CONF state.
	USR_CONF_NXT: u1,
	reserved4: u1,
	/// Set the bit to enable 3-line half duplex communication mosi and miso signals share the same pin. 1: enable 0: disable. Can be configured in CONF state.
	SIO: u1,
	reserved5: u6,
	/// read-data phase only access to high-part of the buffer spi_w8~spi_w15. 1: enable 0: disable. Can be configured in CONF state.
	USR_MISO_HIGHPART: u1,
	/// write-data phase only access to high-part of the buffer spi_w8~spi_w15. 1: enable 0: disable.  Can be configured in CONF state.
	USR_MOSI_HIGHPART: u1,
	/// spi clock is disable in dummy phase when the bit is enable. Can be configured in CONF state.
	USR_DUMMY_IDLE: u1,
	/// This bit enable the write-data phase of an operation. Can be configured in CONF state.
	USR_MOSI: u1,
	/// This bit enable the read-data phase of an operation. Can be configured in CONF state.
	USR_MISO: u1,
	/// This bit enable the dummy phase of an operation. Can be configured in CONF state.
	USR_DUMMY: u1,
	/// This bit enable the address phase of an operation. Can be configured in CONF state.
	USR_ADDR: u1,
	/// This bit enable the command phase of an operation. Can be configured in CONF state.
	USR_COMMAND: u1,
};

const SPI2_USER1 = packed struct {
	/// The length in spi_clk cycles of dummy phase. The register value shall be (cycle_num-1). Can be configured in CONF state.
	USR_DUMMY_CYCLELEN: u8,
	reserved0: u8,
	/// 1: SPI transfer is ended when SPI RX AFIFO wfull error is valid in GP-SPI master FD/HD-mode. 0: SPI transfer is not ended when SPI RX AFIFO wfull error is valid in GP-SPI master FD/HD-mode.
	MST_WFULL_ERR_END_EN: u1,
	/// (cycles+1) of prepare phase by spi clock this bits are combined with spi_cs_setup bit. Can be configured in CONF state.
	CS_SETUP_TIME: u5,
	/// delay cycles of cs pin by spi clock this bits are combined with spi_cs_hold bit. Can be configured in CONF state.
	CS_HOLD_TIME: u5,
	/// The length in bits of address phase. The register value shall be (bit_num-1). Can be configured in CONF state.
	USR_ADDR_BITLEN: u5,
};

const SPI2_USER2 = packed struct {
	/// The value of  command. Can be configured in CONF state.
	USR_COMMAND_VALUE: u16,
	reserved0: u11,
	/// 1: SPI transfer is ended when SPI TX AFIFO read empty error is valid in GP-SPI master FD/HD-mode. 0: SPI transfer is not ended when SPI TX AFIFO read empty error is valid in GP-SPI master FD/HD-mode.
	MST_REMPTY_ERR_END_EN: u1,
	/// The length in bits of command phase. The register value shall be (bit_num-1). Can be configured in CONF state.
	USR_COMMAND_BITLEN: u4,
};

const SPI2_MS_DLEN = packed struct {
	/// The value of these bits is the configured SPI transmission data bit length in master mode DMA controlled transfer or CPU controlled transfer. The value is also the configured bit length in slave mode DMA RX controlled transfer. The register value shall be (bit_num-1). Can be configured in CONF state.
	MS_DATA_BITLEN: u18,
	reserved0: u14,
};

const SPI2_MISC = packed struct {
	/// SPI CS0 pin enable, 1: disable CS0, 0: spi_cs0 signal is from/to CS0 pin. Can be configured in CONF state.
	CS0_DIS: u1,
	/// SPI CS1 pin enable, 1: disable CS1, 0: spi_cs1 signal is from/to CS1 pin. Can be configured in CONF state.
	CS1_DIS: u1,
	/// SPI CS2 pin enable, 1: disable CS2, 0: spi_cs2 signal is from/to CS2 pin. Can be configured in CONF state.
	CS2_DIS: u1,
	/// SPI CS3 pin enable, 1: disable CS3, 0: spi_cs3 signal is from/to CS3 pin. Can be configured in CONF state.
	CS3_DIS: u1,
	/// SPI CS4 pin enable, 1: disable CS4, 0: spi_cs4 signal is from/to CS4 pin. Can be configured in CONF state.
	CS4_DIS: u1,
	/// SPI CS5 pin enable, 1: disable CS5, 0: spi_cs5 signal is from/to CS5 pin. Can be configured in CONF state.
	CS5_DIS: u1,
	/// 1: spi clk out disable,  0: spi clk out enable. Can be configured in CONF state.
	CK_DIS: u1,
	/// In the master mode the bits are the polarity of spi cs line, the value is equivalent to spi_cs ^ spi_master_cs_pol. Can be configured in CONF state.
	MASTER_CS_POL: u6,
	reserved0: u10,
	/// spi slave input cs polarity select. 1: inv  0: not change. Can be configured in CONF state.
	SLAVE_CS_POL: u1,
	reserved1: u5,
	/// 1: spi clk line is high when idle     0: spi clk line is low when idle. Can be configured in CONF state.
	CK_IDLE_EDGE: u1,
	/// spi cs line keep low when the bit is set. Can be configured in CONF state.
	CS_KEEP_ACTIVE: u1,
	/// 1:  spi quad input swap enable  0:  spi quad input swap disable. Can be configured in CONF state.
	QUAD_DIN_PIN_SWAP: u1,
};

const SPI2_DIN_MODE = packed struct {
	/// the input signals are delayed by SPI module clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb, 3: input with the spi_clk. Can be configured in CONF state.
	DIN0_MODE: u2,
	/// the input signals are delayed by SPI module clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb, 3: input with the spi_clk. Can be configured in CONF state.
	DIN1_MODE: u2,
	/// the input signals are delayed by SPI module clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb, 3: input with the spi_clk. Can be configured in CONF state.
	DIN2_MODE: u2,
	/// the input signals are delayed by SPI module clock cycles, 0: input without delayed, 1: input with the posedge of clk_apb,2 input with the negedge of clk_apb, 3: input with the spi_clk. Can be configured in CONF state.
	DIN3_MODE: u2,
	reserved0: u8,
	/// 1:enable hclk in SPI input timing module.  0: disable it. Can be configured in CONF state.
	TIMING_HCLK_ACTIVE: u1,
	reserved1: u15,
};

const SPI2_DIN_NUM = packed struct {
	/// the input signals are delayed by SPI module clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...  Can be configured in CONF state.
	DIN0_NUM: u2,
	/// the input signals are delayed by SPI module clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...  Can be configured in CONF state.
	DIN1_NUM: u2,
	/// the input signals are delayed by SPI module clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...  Can be configured in CONF state.
	DIN2_NUM: u2,
	/// the input signals are delayed by SPI module clock cycles, 0: delayed by 1 cycle, 1: delayed by 2 cycles,...  Can be configured in CONF state.
	DIN3_NUM: u2,
	reserved0: u24,
};

const SPI2_DOUT_MODE = packed struct {
	/// The output signal 0 is delayed by the SPI module clock, 0: output without delayed, 1: output delay for a SPI module clock cycle at its negative edge. Can be configured in CONF state.
	DOUT0_MODE: u1,
	/// The output signal 1 is delayed by the SPI module clock, 0: output without delayed, 1: output delay for a SPI module clock cycle at its negative edge. Can be configured in CONF state.
	DOUT1_MODE: u1,
	/// The output signal 2 is delayed by the SPI module clock, 0: output without delayed, 1: output delay for a SPI module clock cycle at its negative edge. Can be configured in CONF state.
	DOUT2_MODE: u1,
	/// The output signal 3 is delayed by the SPI module clock, 0: output without delayed, 1: output delay for a SPI module clock cycle at its negative edge. Can be configured in CONF state.
	DOUT3_MODE: u1,
	reserved0: u28,
};

const SPI2_DMA_CONF = packed struct {
	reserved0: u18,
	/// Enable dma segment transfer in spi dma half slave mode. 1: enable. 0: disable.
	DMA_SLV_SEG_TRANS_EN: u1,
	/// 1: spi_dma_infifo_full_vld is cleared by spi slave cmd 5. 0: spi_dma_infifo_full_vld is cleared by spi_trans_done.
	SLV_RX_SEG_TRANS_CLR_EN: u1,
	/// 1: spi_dma_outfifo_empty_vld is cleared by spi slave cmd 6. 0: spi_dma_outfifo_empty_vld is cleared by spi_trans_done.
	SLV_TX_SEG_TRANS_CLR_EN: u1,
	/// 1: spi_dma_inlink_eof is set when the number of dma pushed data bytes is equal to the value of spi_slv/mst_dma_rd_bytelen[19:0] in spi dma transition.  0: spi_dma_inlink_eof is set by spi_trans_done in non-seg-trans or spi_dma_seg_trans_done in seg-trans.
	RX_EOF_EN: u1,
	reserved1: u5,
	/// Set this bit to enable SPI DMA controlled receive data mode.
	DMA_RX_ENA: u1,
	/// Set this bit to enable SPI DMA controlled send data mode.
	DMA_TX_ENA: u1,
	/// Set this bit to reset RX AFIFO, which is used to receive data in SPI master and slave mode transfer.
	RX_AFIFO_RST: u1,
	/// Set this bit to reset BUF TX AFIFO, which is used send data out in SPI slave CPU controlled mode transfer and master mode transfer.
	BUF_AFIFO_RST: u1,
	/// Set this bit to reset DMA TX AFIFO, which is used to send data out in SPI slave DMA controlled mode transfer.
	DMA_AFIFO_RST: u1,
};

const SPI2_DMA_INT_ENA = packed struct {
	/// The enable bit for SPI_DMA_INFIFO_FULL_ERR_INT interrupt.
	DMA_INFIFO_FULL_ERR_INT_ENA: u1,
	/// The enable bit for SPI_DMA_OUTFIFO_EMPTY_ERR_INT interrupt.
	DMA_OUTFIFO_EMPTY_ERR_INT_ENA: u1,
	/// The enable bit for SPI slave Ex_QPI interrupt.
	SLV_EX_QPI_INT_ENA: u1,
	/// The enable bit for SPI slave En_QPI interrupt.
	SLV_EN_QPI_INT_ENA: u1,
	/// The enable bit for SPI slave CMD7 interrupt.
	SLV_CMD7_INT_ENA: u1,
	/// The enable bit for SPI slave CMD8 interrupt.
	SLV_CMD8_INT_ENA: u1,
	/// The enable bit for SPI slave CMD9 interrupt.
	SLV_CMD9_INT_ENA: u1,
	/// The enable bit for SPI slave CMDA interrupt.
	SLV_CMDA_INT_ENA: u1,
	/// The enable bit for SPI_SLV_RD_DMA_DONE_INT interrupt.
	SLV_RD_DMA_DONE_INT_ENA: u1,
	/// The enable bit for SPI_SLV_WR_DMA_DONE_INT interrupt.
	SLV_WR_DMA_DONE_INT_ENA: u1,
	/// The enable bit for SPI_SLV_RD_BUF_DONE_INT interrupt.
	SLV_RD_BUF_DONE_INT_ENA: u1,
	/// The enable bit for SPI_SLV_WR_BUF_DONE_INT interrupt.
	SLV_WR_BUF_DONE_INT_ENA: u1,
	/// The enable bit for SPI_TRANS_DONE_INT interrupt.
	TRANS_DONE_INT_ENA: u1,
	/// The enable bit for SPI_DMA_SEG_TRANS_DONE_INT interrupt.
	DMA_SEG_TRANS_DONE_INT_ENA: u1,
	/// The enable bit for SPI_SEG_MAGIC_ERR_INT interrupt.
	SEG_MAGIC_ERR_INT_ENA: u1,
	/// The enable bit for SPI_SLV_BUF_ADDR_ERR_INT interrupt.
	SLV_BUF_ADDR_ERR_INT_ENA: u1,
	/// The enable bit for SPI_SLV_CMD_ERR_INT interrupt.
	SLV_CMD_ERR_INT_ENA: u1,
	/// The enable bit for SPI_MST_RX_AFIFO_WFULL_ERR_INT interrupt.
	MST_RX_AFIFO_WFULL_ERR_INT_ENA: u1,
	/// The enable bit for SPI_MST_TX_AFIFO_REMPTY_ERR_INT interrupt.
	MST_TX_AFIFO_REMPTY_ERR_INT_ENA: u1,
	/// The enable bit for SPI_APP2_INT interrupt.
	APP2_INT_ENA: u1,
	/// The enable bit for SPI_APP1_INT interrupt.
	APP1_INT_ENA: u1,
	reserved0: u11,
};

const SPI2_DMA_INT_CLR = packed struct {
	/// The clear bit for SPI_DMA_INFIFO_FULL_ERR_INT interrupt.
	DMA_INFIFO_FULL_ERR_INT_CLR: u1,
	/// The clear bit for SPI_DMA_OUTFIFO_EMPTY_ERR_INT interrupt.
	DMA_OUTFIFO_EMPTY_ERR_INT_CLR: u1,
	/// The clear bit for SPI slave Ex_QPI interrupt.
	SLV_EX_QPI_INT_CLR: u1,
	/// The clear bit for SPI slave En_QPI interrupt.
	SLV_EN_QPI_INT_CLR: u1,
	/// The clear bit for SPI slave CMD7 interrupt.
	SLV_CMD7_INT_CLR: u1,
	/// The clear bit for SPI slave CMD8 interrupt.
	SLV_CMD8_INT_CLR: u1,
	/// The clear bit for SPI slave CMD9 interrupt.
	SLV_CMD9_INT_CLR: u1,
	/// The clear bit for SPI slave CMDA interrupt.
	SLV_CMDA_INT_CLR: u1,
	/// The clear bit for SPI_SLV_RD_DMA_DONE_INT interrupt.
	SLV_RD_DMA_DONE_INT_CLR: u1,
	/// The clear bit for SPI_SLV_WR_DMA_DONE_INT interrupt.
	SLV_WR_DMA_DONE_INT_CLR: u1,
	/// The clear bit for SPI_SLV_RD_BUF_DONE_INT interrupt.
	SLV_RD_BUF_DONE_INT_CLR: u1,
	/// The clear bit for SPI_SLV_WR_BUF_DONE_INT interrupt.
	SLV_WR_BUF_DONE_INT_CLR: u1,
	/// The clear bit for SPI_TRANS_DONE_INT interrupt.
	TRANS_DONE_INT_CLR: u1,
	/// The clear bit for SPI_DMA_SEG_TRANS_DONE_INT interrupt.
	DMA_SEG_TRANS_DONE_INT_CLR: u1,
	/// The clear bit for SPI_SEG_MAGIC_ERR_INT interrupt.
	SEG_MAGIC_ERR_INT_CLR: u1,
	/// The clear bit for SPI_SLV_BUF_ADDR_ERR_INT interrupt.
	SLV_BUF_ADDR_ERR_INT_CLR: u1,
	/// The clear bit for SPI_SLV_CMD_ERR_INT interrupt.
	SLV_CMD_ERR_INT_CLR: u1,
	/// The clear bit for SPI_MST_RX_AFIFO_WFULL_ERR_INT interrupt.
	MST_RX_AFIFO_WFULL_ERR_INT_CLR: u1,
	/// The clear bit for SPI_MST_TX_AFIFO_REMPTY_ERR_INT interrupt.
	MST_TX_AFIFO_REMPTY_ERR_INT_CLR: u1,
	/// The clear bit for SPI_APP2_INT interrupt.
	APP2_INT_CLR: u1,
	/// The clear bit for SPI_APP1_INT interrupt.
	APP1_INT_CLR: u1,
	reserved0: u11,
};

const SPI2_DMA_INT_RAW = packed struct {
	/// 1: The current data rate of DMA Rx is smaller than that of SPI, which will lose the receive data.  0: Others.
	DMA_INFIFO_FULL_ERR_INT_RAW: u1,
	/// 1: The current data rate of DMA TX is smaller than that of SPI. SPI will stop in master mode and send out all 0 in slave mode.  0: Others.
	DMA_OUTFIFO_EMPTY_ERR_INT_RAW: u1,
	/// The raw bit for SPI slave Ex_QPI interrupt. 1: SPI slave mode Ex_QPI transmission is ended. 0: Others.
	SLV_EX_QPI_INT_RAW: u1,
	/// The raw bit for SPI slave En_QPI interrupt. 1: SPI slave mode En_QPI transmission is ended. 0: Others.
	SLV_EN_QPI_INT_RAW: u1,
	/// The raw bit for SPI slave CMD7 interrupt. 1: SPI slave mode CMD7 transmission is ended. 0: Others.
	SLV_CMD7_INT_RAW: u1,
	/// The raw bit for SPI slave CMD8 interrupt. 1: SPI slave mode CMD8 transmission is ended. 0: Others.
	SLV_CMD8_INT_RAW: u1,
	/// The raw bit for SPI slave CMD9 interrupt. 1: SPI slave mode CMD9 transmission is ended. 0: Others.
	SLV_CMD9_INT_RAW: u1,
	/// The raw bit for SPI slave CMDA interrupt. 1: SPI slave mode CMDA transmission is ended. 0: Others.
	SLV_CMDA_INT_RAW: u1,
	/// The raw bit for SPI_SLV_RD_DMA_DONE_INT interrupt. 1: SPI slave mode Rd_DMA transmission is ended. 0: Others.
	SLV_RD_DMA_DONE_INT_RAW: u1,
	/// The raw bit for SPI_SLV_WR_DMA_DONE_INT interrupt. 1: SPI slave mode Wr_DMA transmission is ended. 0: Others.
	SLV_WR_DMA_DONE_INT_RAW: u1,
	/// The raw bit for SPI_SLV_RD_BUF_DONE_INT interrupt. 1: SPI slave mode Rd_BUF transmission is ended. 0: Others.
	SLV_RD_BUF_DONE_INT_RAW: u1,
	/// The raw bit for SPI_SLV_WR_BUF_DONE_INT interrupt. 1: SPI slave mode Wr_BUF transmission is ended. 0: Others.
	SLV_WR_BUF_DONE_INT_RAW: u1,
	/// The raw bit for SPI_TRANS_DONE_INT interrupt. 1: SPI master mode transmission is ended. 0: others.
	TRANS_DONE_INT_RAW: u1,
	/// The raw bit for SPI_DMA_SEG_TRANS_DONE_INT interrupt. 1:  spi master DMA full-duplex/half-duplex seg-conf-trans ends or slave half-duplex seg-trans ends. And data has been pushed to corresponding memory.  0:  seg-conf-trans or seg-trans is not ended or not occurred.
	DMA_SEG_TRANS_DONE_INT_RAW: u1,
	/// The raw bit for SPI_SEG_MAGIC_ERR_INT interrupt. 1: The magic value in CONF buffer is error in the DMA seg-conf-trans. 0: others.
	SEG_MAGIC_ERR_INT_RAW: u1,
	/// The raw bit for SPI_SLV_BUF_ADDR_ERR_INT interrupt. 1: The accessing data address of the current SPI slave mode CPU controlled FD, Wr_BUF or Rd_BUF transmission is bigger than 63. 0: Others.
	SLV_BUF_ADDR_ERR_INT_RAW: u1,
	/// The raw bit for SPI_SLV_CMD_ERR_INT interrupt. 1: The slave command value in the current SPI slave HD mode transmission is not supported. 0: Others.
	SLV_CMD_ERR_INT_RAW: u1,
	/// The raw bit for SPI_MST_RX_AFIFO_WFULL_ERR_INT interrupt. 1: There is a RX AFIFO write-full error when SPI inputs data in master mode. 0: Others.
	MST_RX_AFIFO_WFULL_ERR_INT_RAW: u1,
	/// The raw bit for SPI_MST_TX_AFIFO_REMPTY_ERR_INT interrupt. 1: There is a TX BUF AFIFO read-empty error when SPI outputs data in master mode. 0: Others.
	MST_TX_AFIFO_REMPTY_ERR_INT_RAW: u1,
	/// The raw bit for SPI_APP2_INT interrupt. The value is only controlled by application.
	APP2_INT_RAW: u1,
	/// The raw bit for SPI_APP1_INT interrupt. The value is only controlled by application.
	APP1_INT_RAW: u1,
	reserved0: u11,
};

const SPI2_DMA_INT_ST = packed struct {
	/// The status bit for SPI_DMA_INFIFO_FULL_ERR_INT interrupt.
	DMA_INFIFO_FULL_ERR_INT_ST: u1,
	/// The status bit for SPI_DMA_OUTFIFO_EMPTY_ERR_INT interrupt.
	DMA_OUTFIFO_EMPTY_ERR_INT_ST: u1,
	/// The status bit for SPI slave Ex_QPI interrupt.
	SLV_EX_QPI_INT_ST: u1,
	/// The status bit for SPI slave En_QPI interrupt.
	SLV_EN_QPI_INT_ST: u1,
	/// The status bit for SPI slave CMD7 interrupt.
	SLV_CMD7_INT_ST: u1,
	/// The status bit for SPI slave CMD8 interrupt.
	SLV_CMD8_INT_ST: u1,
	/// The status bit for SPI slave CMD9 interrupt.
	SLV_CMD9_INT_ST: u1,
	/// The status bit for SPI slave CMDA interrupt.
	SLV_CMDA_INT_ST: u1,
	/// The status bit for SPI_SLV_RD_DMA_DONE_INT interrupt.
	SLV_RD_DMA_DONE_INT_ST: u1,
	/// The status bit for SPI_SLV_WR_DMA_DONE_INT interrupt.
	SLV_WR_DMA_DONE_INT_ST: u1,
	/// The status bit for SPI_SLV_RD_BUF_DONE_INT interrupt.
	SLV_RD_BUF_DONE_INT_ST: u1,
	/// The status bit for SPI_SLV_WR_BUF_DONE_INT interrupt.
	SLV_WR_BUF_DONE_INT_ST: u1,
	/// The status bit for SPI_TRANS_DONE_INT interrupt.
	TRANS_DONE_INT_ST: u1,
	/// The status bit for SPI_DMA_SEG_TRANS_DONE_INT interrupt.
	DMA_SEG_TRANS_DONE_INT_ST: u1,
	/// The status bit for SPI_SEG_MAGIC_ERR_INT interrupt.
	SEG_MAGIC_ERR_INT_ST: u1,
	/// The status bit for SPI_SLV_BUF_ADDR_ERR_INT interrupt.
	SLV_BUF_ADDR_ERR_INT_ST: u1,
	/// The status bit for SPI_SLV_CMD_ERR_INT interrupt.
	SLV_CMD_ERR_INT_ST: u1,
	/// The status bit for SPI_MST_RX_AFIFO_WFULL_ERR_INT interrupt.
	MST_RX_AFIFO_WFULL_ERR_INT_ST: u1,
	/// The status bit for SPI_MST_TX_AFIFO_REMPTY_ERR_INT interrupt.
	MST_TX_AFIFO_REMPTY_ERR_INT_ST: u1,
	/// The status bit for SPI_APP2_INT interrupt.
	APP2_INT_ST: u1,
	/// The status bit for SPI_APP1_INT interrupt.
	APP1_INT_ST: u1,
	reserved0: u11,
};

const SPI2_W0 = packed struct {
	/// data buffer
	BUF0: u32,
};

const SPI2_W1 = packed struct {
	/// data buffer
	BUF1: u32,
};

const SPI2_W2 = packed struct {
	/// data buffer
	BUF2: u32,
};

const SPI2_W3 = packed struct {
	/// data buffer
	BUF3: u32,
};

const SPI2_W4 = packed struct {
	/// data buffer
	BUF4: u32,
};

const SPI2_W5 = packed struct {
	/// data buffer
	BUF5: u32,
};

const SPI2_W6 = packed struct {
	/// data buffer
	BUF6: u32,
};

const SPI2_W7 = packed struct {
	/// data buffer
	BUF7: u32,
};

const SPI2_W8 = packed struct {
	/// data buffer
	BUF8: u32,
};

const SPI2_W9 = packed struct {
	/// data buffer
	BUF9: u32,
};

const SPI2_W10 = packed struct {
	/// data buffer
	BUF10: u32,
};

const SPI2_W11 = packed struct {
	/// data buffer
	BUF11: u32,
};

const SPI2_W12 = packed struct {
	/// data buffer
	BUF12: u32,
};

const SPI2_W13 = packed struct {
	/// data buffer
	BUF13: u32,
};

const SPI2_W14 = packed struct {
	/// data buffer
	BUF14: u32,
};

const SPI2_W15 = packed struct {
	/// data buffer
	BUF15: u32,
};

const SPI2_SLAVE = packed struct {
	/// SPI clock mode bits. 0: SPI clock is off when CS inactive 1: SPI clock is delayed one cycle after CS inactive 2: SPI clock is delayed two cycles after CS inactive 3: SPI clock is alwasy on. Can be configured in CONF state.
	CLK_MODE: u2,
	/// {CPOL, CPHA},1: support spi clk mode 1 and 3, first edge output data B[0]/B[7].  0: support spi clk mode 0 and 2, first edge output data B[1]/B[6].
	CLK_MODE_13: u1,
	/// It saves half a cycle when tsck is the same as rsck. 1: output data at rsck posedge   0: output data at tsck posedge
	RSCK_DATA_OUT: u1,
	reserved0: u4,
	/// 1: SPI_SLV_DATA_BITLEN stores data bit length of master-read-slave data length in DMA controlled mode(Rd_DMA). 0: others
	SLV_RDDMA_BITLEN_EN: u1,
	/// 1: SPI_SLV_DATA_BITLEN stores data bit length of master-write-to-slave data length in DMA controlled mode(Wr_DMA). 0: others
	SLV_WRDMA_BITLEN_EN: u1,
	/// 1: SPI_SLV_DATA_BITLEN stores data bit length of master-read-slave data length in CPU controlled mode(Rd_BUF). 0: others
	SLV_RDBUF_BITLEN_EN: u1,
	/// 1: SPI_SLV_DATA_BITLEN stores data bit length of master-write-to-slave data length in CPU controlled mode(Wr_BUF). 0: others
	SLV_WRBUF_BITLEN_EN: u1,
	reserved1: u10,
	/// The magic value of BM table in master DMA seg-trans.
	DMA_SEG_MAGIC_VALUE: u4,
	/// Set SPI work mode. 1: slave mode 0: master mode.
	MODE: u1,
	/// Software reset enable, reset the spi clock line cs line and data lines. Can be configured in CONF state.
	SOFT_RESET: u1,
	/// 1: Enable the DMA CONF phase of current seg-trans operation, which means seg-trans will start. 0: This is not seg-trans mode.
	USR_CONF: u1,
	reserved2: u3,
};

const SPI2_SLAVE1 = packed struct {
	/// The transferred data bit length in SPI slave FD and HD mode.
	SLV_DATA_BITLEN: u18,
	/// In the slave mode it is the value of command.
	SLV_LAST_COMMAND: u8,
	/// In the slave mode it is the value of address.
	SLV_LAST_ADDR: u6,
};

const SPI2_CLK_GATE = packed struct {
	/// Set this bit to enable clk gate
	CLK_EN: u1,
	/// Set this bit to power on the SPI module clock.
	MST_CLK_ACTIVE: u1,
	/// This bit is used to select SPI module clock source in master mode. 1: PLL_CLK_80M. 0: XTAL CLK.
	MST_CLK_SEL: u1,
	reserved0: u29,
};

const SPI2_DATE = packed struct {
	/// SPI register version.
	DATE: u28,
	reserved0: u4,
};

//Peripheral type
const SPI2 = struct {
	/// Command control register
	CMD: *volatile Register(SPI2_CMD),
	/// Address value register
	ADDR: *volatile Register(SPI2_ADDR),
	/// SPI control register
	CTRL: *volatile Register(SPI2_CTRL),
	/// SPI clock control register
	CLOCK: *volatile Register(SPI2_CLOCK),
	/// SPI USER control register
	USER: *volatile Register(SPI2_USER),
	/// SPI USER control register 1
	USER1: *volatile Register(SPI2_USER1),
	/// SPI USER control register 2
	USER2: *volatile Register(SPI2_USER2),
	/// SPI data bit length control register
	MS_DLEN: *volatile Register(SPI2_MS_DLEN),
	/// SPI misc register
	MISC: *volatile Register(SPI2_MISC),
	/// SPI input delay mode configuration
	DIN_MODE: *volatile Register(SPI2_DIN_MODE),
	/// SPI input delay number configuration
	DIN_NUM: *volatile Register(SPI2_DIN_NUM),
	/// SPI output delay mode configuration
	DOUT_MODE: *volatile Register(SPI2_DOUT_MODE),
	/// SPI DMA control register
	DMA_CONF: *volatile Register(SPI2_DMA_CONF),
	/// SPI DMA interrupt enable register
	DMA_INT_ENA: *volatile Register(SPI2_DMA_INT_ENA),
	/// SPI DMA interrupt clear register
	DMA_INT_CLR: *volatile Register(SPI2_DMA_INT_CLR),
	/// SPI DMA interrupt raw register
	DMA_INT_RAW: *volatile Register(SPI2_DMA_INT_RAW),
	/// SPI DMA interrupt status register
	DMA_INT_ST: *volatile Register(SPI2_DMA_INT_ST),
	/// SPI CPU-controlled buffer0
	W0: *volatile Register(SPI2_W0),
	/// SPI CPU-controlled buffer1
	W1: *volatile Register(SPI2_W1),
	/// SPI CPU-controlled buffer2
	W2: *volatile Register(SPI2_W2),
	/// SPI CPU-controlled buffer3
	W3: *volatile Register(SPI2_W3),
	/// SPI CPU-controlled buffer4
	W4: *volatile Register(SPI2_W4),
	/// SPI CPU-controlled buffer5
	W5: *volatile Register(SPI2_W5),
	/// SPI CPU-controlled buffer6
	W6: *volatile Register(SPI2_W6),
	/// SPI CPU-controlled buffer7
	W7: *volatile Register(SPI2_W7),
	/// SPI CPU-controlled buffer8
	W8: *volatile Register(SPI2_W8),
	/// SPI CPU-controlled buffer9
	W9: *volatile Register(SPI2_W9),
	/// SPI CPU-controlled buffer10
	W10: *volatile Register(SPI2_W10),
	/// SPI CPU-controlled buffer11
	W11: *volatile Register(SPI2_W11),
	/// SPI CPU-controlled buffer12
	W12: *volatile Register(SPI2_W12),
	/// SPI CPU-controlled buffer13
	W13: *volatile Register(SPI2_W13),
	/// SPI CPU-controlled buffer14
	W14: *volatile Register(SPI2_W14),
	/// SPI CPU-controlled buffer15
	W15: *volatile Register(SPI2_W15),
	/// SPI slave control register
	SLAVE: *volatile Register(SPI2_SLAVE),
	/// SPI slave control register 1
	SLAVE1: *volatile Register(SPI2_SLAVE1),
	/// SPI module clock and register clock control
	CLK_GATE: *volatile Register(SPI2_CLK_GATE),
	/// Version control
	DATE: *volatile Register(SPI2_DATE),
};

// Peripheral instance
const SPI2_instance = SPI2 {
	.CMD = @ptrFromInt(0x60024000),
	.ADDR = @ptrFromInt(0x60024004),
	.CTRL = @ptrFromInt(0x60024008),
	.CLOCK = @ptrFromInt(0x6002400c),
	.USER = @ptrFromInt(0x60024010),
	.USER1 = @ptrFromInt(0x60024014),
	.USER2 = @ptrFromInt(0x60024018),
	.MS_DLEN = @ptrFromInt(0x6002401c),
	.MISC = @ptrFromInt(0x60024020),
	.DIN_MODE = @ptrFromInt(0x60024024),
	.DIN_NUM = @ptrFromInt(0x60024028),
	.DOUT_MODE = @ptrFromInt(0x6002402c),
	.DMA_CONF = @ptrFromInt(0x60024030),
	.DMA_INT_ENA = @ptrFromInt(0x60024034),
	.DMA_INT_CLR = @ptrFromInt(0x60024038),
	.DMA_INT_RAW = @ptrFromInt(0x6002403c),
	.DMA_INT_ST = @ptrFromInt(0x60024040),
	.W0 = @ptrFromInt(0x60024098),
	.W1 = @ptrFromInt(0x6002409c),
	.W2 = @ptrFromInt(0x600240a0),
	.W3 = @ptrFromInt(0x600240a4),
	.W4 = @ptrFromInt(0x600240a8),
	.W5 = @ptrFromInt(0x600240ac),
	.W6 = @ptrFromInt(0x600240b0),
	.W7 = @ptrFromInt(0x600240b4),
	.W8 = @ptrFromInt(0x600240b8),
	.W9 = @ptrFromInt(0x600240bc),
	.W10 = @ptrFromInt(0x600240c0),
	.W11 = @ptrFromInt(0x600240c4),
	.W12 = @ptrFromInt(0x600240c8),
	.W13 = @ptrFromInt(0x600240cc),
	.W14 = @ptrFromInt(0x600240d0),
	.W15 = @ptrFromInt(0x600240d4),
	.SLAVE = @ptrFromInt(0x600240e0),
	.SLAVE1 = @ptrFromInt(0x600240e4),
	.CLK_GATE = @ptrFromInt(0x600240e8),
	.DATE = @ptrFromInt(0x600240f0),
};

const SYSTEM_CPU_PERI_CLK_EN = packed struct {
	reserved0: u6,
	/// reg_clk_en_assist_debug
	CLK_EN_ASSIST_DEBUG: u1,
	/// reg_clk_en_dedicated_gpio
	CLK_EN_DEDICATED_GPIO: u1,
	reserved1: u24,
};

const SYSTEM_CPU_PERI_RST_EN = packed struct {
	reserved0: u6,
	/// reg_rst_en_assist_debug
	RST_EN_ASSIST_DEBUG: u1,
	/// reg_rst_en_dedicated_gpio
	RST_EN_DEDICATED_GPIO: u1,
	reserved1: u24,
};

const SYSTEM_CPU_PER_CONF = packed struct {
	/// reg_cpuperiod_sel
	CPUPERIOD_SEL: u2,
	/// reg_pll_freq_sel
	PLL_FREQ_SEL: u1,
	/// reg_cpu_wait_mode_force_on
	CPU_WAIT_MODE_FORCE_ON: u1,
	/// reg_cpu_waiti_delay_num
	CPU_WAITI_DELAY_NUM: u4,
	reserved0: u24,
};

const SYSTEM_MEM_PD_MASK = packed struct {
	/// reg_lslp_mem_pd_mask
	LSLP_MEM_PD_MASK: u1,
	reserved0: u31,
};

const SYSTEM_PERIP_CLK_EN0 = packed struct {
	/// reg_timers_clk_en
	TIMERS_CLK_EN: u1,
	/// reg_spi01_clk_en
	SPI01_CLK_EN: u1,
	/// reg_uart_clk_en
	UART_CLK_EN: u1,
	/// reg_wdg_clk_en
	WDG_CLK_EN: u1,
	/// reg_i2s0_clk_en
	I2S0_CLK_EN: u1,
	/// reg_uart1_clk_en
	UART1_CLK_EN: u1,
	/// reg_spi2_clk_en
	SPI2_CLK_EN: u1,
	/// reg_ext0_clk_en
	I2C_EXT0_CLK_EN: u1,
	/// reg_uhci0_clk_en
	UHCI0_CLK_EN: u1,
	/// reg_rmt_clk_en
	RMT_CLK_EN: u1,
	/// reg_pcnt_clk_en
	PCNT_CLK_EN: u1,
	/// reg_ledc_clk_en
	LEDC_CLK_EN: u1,
	/// reg_uhci1_clk_en
	UHCI1_CLK_EN: u1,
	/// reg_timergroup_clk_en
	TIMERGROUP_CLK_EN: u1,
	/// reg_efuse_clk_en
	EFUSE_CLK_EN: u1,
	/// reg_timergroup1_clk_en
	TIMERGROUP1_CLK_EN: u1,
	/// reg_spi3_clk_en
	SPI3_CLK_EN: u1,
	/// reg_pwm0_clk_en
	PWM0_CLK_EN: u1,
	/// reg_ext1_clk_en
	EXT1_CLK_EN: u1,
	/// reg_can_clk_en
	TWAI_CLK_EN: u1,
	/// reg_pwm1_clk_en
	PWM1_CLK_EN: u1,
	/// reg_i2s1_clk_en
	I2S1_CLK_EN: u1,
	/// reg_spi2_dma_clk_en
	SPI2_DMA_CLK_EN: u1,
	/// reg_usb_device_clk_en
	USB_DEVICE_CLK_EN: u1,
	/// reg_uart_mem_clk_en
	UART_MEM_CLK_EN: u1,
	/// reg_pwm2_clk_en
	PWM2_CLK_EN: u1,
	/// reg_pwm3_clk_en
	PWM3_CLK_EN: u1,
	/// reg_spi3_dma_clk_en
	SPI3_DMA_CLK_EN: u1,
	/// reg_apb_saradc_clk_en
	APB_SARADC_CLK_EN: u1,
	/// reg_systimer_clk_en
	SYSTIMER_CLK_EN: u1,
	/// reg_adc2_arb_clk_en
	ADC2_ARB_CLK_EN: u1,
	/// reg_spi4_clk_en
	SPI4_CLK_EN: u1,
};

const SYSTEM_PERIP_CLK_EN1 = packed struct {
	reserved0: u1,
	/// reg_crypto_aes_clk_en
	CRYPTO_AES_CLK_EN: u1,
	/// reg_crypto_sha_clk_en
	CRYPTO_SHA_CLK_EN: u1,
	/// reg_crypto_rsa_clk_en
	CRYPTO_RSA_CLK_EN: u1,
	/// reg_crypto_ds_clk_en
	CRYPTO_DS_CLK_EN: u1,
	/// reg_crypto_hmac_clk_en
	CRYPTO_HMAC_CLK_EN: u1,
	/// reg_dma_clk_en
	DMA_CLK_EN: u1,
	/// reg_sdio_host_clk_en
	SDIO_HOST_CLK_EN: u1,
	/// reg_lcd_cam_clk_en
	LCD_CAM_CLK_EN: u1,
	/// reg_uart2_clk_en
	UART2_CLK_EN: u1,
	/// reg_tsens_clk_en
	TSENS_CLK_EN: u1,
	reserved1: u21,
};

const SYSTEM_PERIP_RST_EN0 = packed struct {
	/// reg_timers_rst
	TIMERS_RST: u1,
	/// reg_spi01_rst
	SPI01_RST: u1,
	/// reg_uart_rst
	UART_RST: u1,
	/// reg_wdg_rst
	WDG_RST: u1,
	/// reg_i2s0_rst
	I2S0_RST: u1,
	/// reg_uart1_rst
	UART1_RST: u1,
	/// reg_spi2_rst
	SPI2_RST: u1,
	/// reg_ext0_rst
	I2C_EXT0_RST: u1,
	/// reg_uhci0_rst
	UHCI0_RST: u1,
	/// reg_rmt_rst
	RMT_RST: u1,
	/// reg_pcnt_rst
	PCNT_RST: u1,
	/// reg_ledc_rst
	LEDC_RST: u1,
	/// reg_uhci1_rst
	UHCI1_RST: u1,
	/// reg_timergroup_rst
	TIMERGROUP_RST: u1,
	/// reg_efuse_rst
	EFUSE_RST: u1,
	/// reg_timergroup1_rst
	TIMERGROUP1_RST: u1,
	/// reg_spi3_rst
	SPI3_RST: u1,
	/// reg_pwm0_rst
	PWM0_RST: u1,
	/// reg_ext1_rst
	EXT1_RST: u1,
	/// reg_can_rst
	TWAI_RST: u1,
	/// reg_pwm1_rst
	PWM1_RST: u1,
	/// reg_i2s1_rst
	I2S1_RST: u1,
	/// reg_spi2_dma_rst
	SPI2_DMA_RST: u1,
	/// reg_usb_device_rst
	USB_DEVICE_RST: u1,
	/// reg_uart_mem_rst
	UART_MEM_RST: u1,
	/// reg_pwm2_rst
	PWM2_RST: u1,
	/// reg_pwm3_rst
	PWM3_RST: u1,
	/// reg_spi3_dma_rst
	SPI3_DMA_RST: u1,
	/// reg_apb_saradc_rst
	APB_SARADC_RST: u1,
	/// reg_systimer_rst
	SYSTIMER_RST: u1,
	/// reg_adc2_arb_rst
	ADC2_ARB_RST: u1,
	/// reg_spi4_rst
	SPI4_RST: u1,
};

const SYSTEM_PERIP_RST_EN1 = packed struct {
	reserved0: u1,
	/// reg_crypto_aes_rst
	CRYPTO_AES_RST: u1,
	/// reg_crypto_sha_rst
	CRYPTO_SHA_RST: u1,
	/// reg_crypto_rsa_rst
	CRYPTO_RSA_RST: u1,
	/// reg_crypto_ds_rst
	CRYPTO_DS_RST: u1,
	/// reg_crypto_hmac_rst
	CRYPTO_HMAC_RST: u1,
	/// reg_dma_rst
	DMA_RST: u1,
	/// reg_sdio_host_rst
	SDIO_HOST_RST: u1,
	/// reg_lcd_cam_rst
	LCD_CAM_RST: u1,
	/// reg_uart2_rst
	UART2_RST: u1,
	/// reg_tsens_rst
	TSENS_RST: u1,
	reserved1: u21,
};

const SYSTEM_BT_LPCK_DIV_INT = packed struct {
	/// reg_bt_lpck_div_num
	BT_LPCK_DIV_NUM: u12,
	reserved0: u20,
};

const SYSTEM_BT_LPCK_DIV_FRAC = packed struct {
	/// reg_bt_lpck_div_b
	BT_LPCK_DIV_B: u12,
	/// reg_bt_lpck_div_a
	BT_LPCK_DIV_A: u12,
	/// reg_lpclk_sel_rtc_slow
	LPCLK_SEL_RTC_SLOW: u1,
	/// reg_lpclk_sel_8m
	LPCLK_SEL_8M: u1,
	/// reg_lpclk_sel_xtal
	LPCLK_SEL_XTAL: u1,
	/// reg_lpclk_sel_xtal32k
	LPCLK_SEL_XTAL32K: u1,
	/// reg_lpclk_rtc_en
	LPCLK_RTC_EN: u1,
	reserved0: u3,
};

const SYSTEM_CPU_INTR_FROM_CPU_0 = packed struct {
	/// reg_cpu_intr_from_cpu_0
	CPU_INTR_FROM_CPU_0: u1,
	reserved0: u31,
};

const SYSTEM_CPU_INTR_FROM_CPU_1 = packed struct {
	/// reg_cpu_intr_from_cpu_1
	CPU_INTR_FROM_CPU_1: u1,
	reserved0: u31,
};

const SYSTEM_CPU_INTR_FROM_CPU_2 = packed struct {
	/// reg_cpu_intr_from_cpu_2
	CPU_INTR_FROM_CPU_2: u1,
	reserved0: u31,
};

const SYSTEM_CPU_INTR_FROM_CPU_3 = packed struct {
	/// reg_cpu_intr_from_cpu_3
	CPU_INTR_FROM_CPU_3: u1,
	reserved0: u31,
};

const SYSTEM_RSA_PD_CTRL = packed struct {
	/// reg_rsa_mem_pd
	RSA_MEM_PD: u1,
	/// reg_rsa_mem_force_pu
	RSA_MEM_FORCE_PU: u1,
	/// reg_rsa_mem_force_pd
	RSA_MEM_FORCE_PD: u1,
	reserved0: u29,
};

const SYSTEM_EDMA_CTRL = packed struct {
	/// reg_edma_clk_on
	EDMA_CLK_ON: u1,
	/// reg_edma_reset
	EDMA_RESET: u1,
	reserved0: u30,
};

const SYSTEM_CACHE_CONTROL = packed struct {
	/// reg_icache_clk_on
	ICACHE_CLK_ON: u1,
	/// reg_icache_reset
	ICACHE_RESET: u1,
	/// reg_dcache_clk_on
	DCACHE_CLK_ON: u1,
	/// reg_dcache_reset
	DCACHE_RESET: u1,
	reserved0: u28,
};

const SYSTEM_EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL = packed struct {
	/// reg_enable_spi_manual_encrypt
	ENABLE_SPI_MANUAL_ENCRYPT: u1,
	/// reg_enable_download_db_encrypt
	ENABLE_DOWNLOAD_DB_ENCRYPT: u1,
	/// reg_enable_download_g0cb_decrypt
	ENABLE_DOWNLOAD_G0CB_DECRYPT: u1,
	/// reg_enable_download_manual_encrypt
	ENABLE_DOWNLOAD_MANUAL_ENCRYPT: u1,
	reserved0: u28,
};

const SYSTEM_RTC_FASTMEM_CONFIG = packed struct {
	reserved0: u8,
	/// reg_rtc_mem_crc_start
	RTC_MEM_CRC_START: u1,
	/// reg_rtc_mem_crc_addr
	RTC_MEM_CRC_ADDR: u11,
	/// reg_rtc_mem_crc_len
	RTC_MEM_CRC_LEN: u11,
	/// reg_rtc_mem_crc_finish
	RTC_MEM_CRC_FINISH: u1,
};

const SYSTEM_RTC_FASTMEM_CRC = packed struct {
	/// reg_rtc_mem_crc_res
	RTC_MEM_CRC_RES: u32,
};

const SYSTEM_REDUNDANT_ECO_CTRL = packed struct {
	/// reg_redundant_eco_drive
	REDUNDANT_ECO_DRIVE: u1,
	/// reg_redundant_eco_result
	REDUNDANT_ECO_RESULT: u1,
	reserved0: u30,
};

const SYSTEM_CLOCK_GATE = packed struct {
	/// reg_clk_en
	CLK_EN: u1,
	reserved0: u31,
};

const SYSTEM_SYSCLK_CONF = packed struct {
	/// reg_pre_div_cnt
	PRE_DIV_CNT: u10,
	/// reg_soc_clk_sel
	SOC_CLK_SEL: u2,
	/// reg_clk_xtal_freq
	CLK_XTAL_FREQ: u7,
	/// reg_clk_div_en
	CLK_DIV_EN: u1,
	reserved0: u12,
};

const SYSTEM_MEM_PVT = packed struct {
	/// reg_mem_path_len
	MEM_PATH_LEN: u4,
	/// reg_mem_err_cnt_clr
	MEM_ERR_CNT_CLR: u1,
	/// reg_mem_pvt_monitor_en
	MONITOR_EN: u1,
	/// reg_mem_timing_err_cnt
	MEM_TIMING_ERR_CNT: u16,
	/// reg_mem_vt_sel
	MEM_VT_SEL: u2,
	reserved0: u8,
};

const SYSTEM_COMB_PVT_LVT_CONF = packed struct {
	/// reg_comb_path_len_lvt
	COMB_PATH_LEN_LVT: u5,
	/// reg_comb_err_cnt_clr_lvt
	COMB_ERR_CNT_CLR_LVT: u1,
	/// reg_comb_pvt_monitor_en_lvt
	COMB_PVT_MONITOR_EN_LVT: u1,
	reserved0: u25,
};

const SYSTEM_COMB_PVT_NVT_CONF = packed struct {
	/// reg_comb_path_len_nvt
	COMB_PATH_LEN_NVT: u5,
	/// reg_comb_err_cnt_clr_nvt
	COMB_ERR_CNT_CLR_NVT: u1,
	/// reg_comb_pvt_monitor_en_nvt
	COMB_PVT_MONITOR_EN_NVT: u1,
	reserved0: u25,
};

const SYSTEM_COMB_PVT_HVT_CONF = packed struct {
	/// reg_comb_path_len_hvt
	COMB_PATH_LEN_HVT: u5,
	/// reg_comb_err_cnt_clr_hvt
	COMB_ERR_CNT_CLR_HVT: u1,
	/// reg_comb_pvt_monitor_en_hvt
	COMB_PVT_MONITOR_EN_HVT: u1,
	reserved0: u25,
};

const SYSTEM_COMB_PVT_ERR_LVT_SITE0 = packed struct {
	/// reg_comb_timing_err_cnt_lvt_site0
	COMB_TIMING_ERR_CNT_LVT_SITE0: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_NVT_SITE0 = packed struct {
	/// reg_comb_timing_err_cnt_nvt_site0
	COMB_TIMING_ERR_CNT_NVT_SITE0: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_HVT_SITE0 = packed struct {
	/// reg_comb_timing_err_cnt_hvt_site0
	COMB_TIMING_ERR_CNT_HVT_SITE0: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_LVT_SITE1 = packed struct {
	/// reg_comb_timing_err_cnt_lvt_site1
	COMB_TIMING_ERR_CNT_LVT_SITE1: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_NVT_SITE1 = packed struct {
	/// reg_comb_timing_err_cnt_nvt_site1
	COMB_TIMING_ERR_CNT_NVT_SITE1: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_HVT_SITE1 = packed struct {
	/// reg_comb_timing_err_cnt_hvt_site1
	COMB_TIMING_ERR_CNT_HVT_SITE1: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_LVT_SITE2 = packed struct {
	/// reg_comb_timing_err_cnt_lvt_site2
	COMB_TIMING_ERR_CNT_LVT_SITE2: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_NVT_SITE2 = packed struct {
	/// reg_comb_timing_err_cnt_nvt_site2
	COMB_TIMING_ERR_CNT_NVT_SITE2: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_HVT_SITE2 = packed struct {
	/// reg_comb_timing_err_cnt_hvt_site2
	COMB_TIMING_ERR_CNT_HVT_SITE2: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_LVT_SITE3 = packed struct {
	/// reg_comb_timing_err_cnt_lvt_site3
	COMB_TIMING_ERR_CNT_LVT_SITE3: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_NVT_SITE3 = packed struct {
	/// reg_comb_timing_err_cnt_nvt_site3
	COMB_TIMING_ERR_CNT_NVT_SITE3: u16,
	reserved0: u16,
};

const SYSTEM_COMB_PVT_ERR_HVT_SITE3 = packed struct {
	/// reg_comb_timing_err_cnt_hvt_site3
	COMB_TIMING_ERR_CNT_HVT_SITE3: u16,
	reserved0: u16,
};

const SYSTEM_SYSTEM_REG_DATE = packed struct {
	/// reg_system_reg_date
	SYSTEM_REG_DATE: u28,
	reserved0: u4,
};

//Peripheral type
const SYSTEM = struct {
	/// cpu_peripheral clock gating register
	CPU_PERI_CLK_EN: *volatile Register(SYSTEM_CPU_PERI_CLK_EN),
	/// cpu_peripheral reset register
	CPU_PERI_RST_EN: *volatile Register(SYSTEM_CPU_PERI_RST_EN),
	/// cpu clock config register
	CPU_PER_CONF: *volatile Register(SYSTEM_CPU_PER_CONF),
	/// memory power down mask register
	MEM_PD_MASK: *volatile Register(SYSTEM_MEM_PD_MASK),
	/// peripheral clock gating register
	PERIP_CLK_EN0: *volatile Register(SYSTEM_PERIP_CLK_EN0),
	/// peripheral clock gating register
	PERIP_CLK_EN1: *volatile Register(SYSTEM_PERIP_CLK_EN1),
	/// reserved
	PERIP_RST_EN0: *volatile Register(SYSTEM_PERIP_RST_EN0),
	/// peripheral reset register
	PERIP_RST_EN1: *volatile Register(SYSTEM_PERIP_RST_EN1),
	/// clock config register
	BT_LPCK_DIV_INT: *volatile Register(SYSTEM_BT_LPCK_DIV_INT),
	/// clock config register
	BT_LPCK_DIV_FRAC: *volatile Register(SYSTEM_BT_LPCK_DIV_FRAC),
	/// interrupt generate register
	CPU_INTR_FROM_CPU_0: *volatile Register(SYSTEM_CPU_INTR_FROM_CPU_0),
	/// interrupt generate register
	CPU_INTR_FROM_CPU_1: *volatile Register(SYSTEM_CPU_INTR_FROM_CPU_1),
	/// interrupt generate register
	CPU_INTR_FROM_CPU_2: *volatile Register(SYSTEM_CPU_INTR_FROM_CPU_2),
	/// interrupt generate register
	CPU_INTR_FROM_CPU_3: *volatile Register(SYSTEM_CPU_INTR_FROM_CPU_3),
	/// rsa memory power control register
	RSA_PD_CTRL: *volatile Register(SYSTEM_RSA_PD_CTRL),
	/// EDMA clock and reset register
	EDMA_CTRL: *volatile Register(SYSTEM_EDMA_CTRL),
	/// cache control register
	CACHE_CONTROL: *volatile Register(SYSTEM_CACHE_CONTROL),
	/// SYSTEM_EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL_REG
	EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL: *volatile Register(SYSTEM_EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL),
	/// fast memory config register
	RTC_FASTMEM_CONFIG: *volatile Register(SYSTEM_RTC_FASTMEM_CONFIG),
	/// reserved
	RTC_FASTMEM_CRC: *volatile Register(SYSTEM_RTC_FASTMEM_CRC),
	/// eco register
	REDUNDANT_ECO_CTRL: *volatile Register(SYSTEM_REDUNDANT_ECO_CTRL),
	/// clock gating register
	CLOCK_GATE: *volatile Register(SYSTEM_CLOCK_GATE),
	/// system clock config register
	SYSCLK_CONF: *volatile Register(SYSTEM_SYSCLK_CONF),
	/// mem pvt register
	MEM_PVT: *volatile Register(SYSTEM_MEM_PVT),
	/// mem pvt register
	COMB_PVT_LVT_CONF: *volatile Register(SYSTEM_COMB_PVT_LVT_CONF),
	/// mem pvt register
	COMB_PVT_NVT_CONF: *volatile Register(SYSTEM_COMB_PVT_NVT_CONF),
	/// mem pvt register
	COMB_PVT_HVT_CONF: *volatile Register(SYSTEM_COMB_PVT_HVT_CONF),
	/// mem pvt register
	COMB_PVT_ERR_LVT_SITE0: *volatile Register(SYSTEM_COMB_PVT_ERR_LVT_SITE0),
	/// mem pvt register
	COMB_PVT_ERR_NVT_SITE0: *volatile Register(SYSTEM_COMB_PVT_ERR_NVT_SITE0),
	/// mem pvt register
	COMB_PVT_ERR_HVT_SITE0: *volatile Register(SYSTEM_COMB_PVT_ERR_HVT_SITE0),
	/// mem pvt register
	COMB_PVT_ERR_LVT_SITE1: *volatile Register(SYSTEM_COMB_PVT_ERR_LVT_SITE1),
	/// mem pvt register
	COMB_PVT_ERR_NVT_SITE1: *volatile Register(SYSTEM_COMB_PVT_ERR_NVT_SITE1),
	/// mem pvt register
	COMB_PVT_ERR_HVT_SITE1: *volatile Register(SYSTEM_COMB_PVT_ERR_HVT_SITE1),
	/// mem pvt register
	COMB_PVT_ERR_LVT_SITE2: *volatile Register(SYSTEM_COMB_PVT_ERR_LVT_SITE2),
	/// mem pvt register
	COMB_PVT_ERR_NVT_SITE2: *volatile Register(SYSTEM_COMB_PVT_ERR_NVT_SITE2),
	/// mem pvt register
	COMB_PVT_ERR_HVT_SITE2: *volatile Register(SYSTEM_COMB_PVT_ERR_HVT_SITE2),
	/// mem pvt register
	COMB_PVT_ERR_LVT_SITE3: *volatile Register(SYSTEM_COMB_PVT_ERR_LVT_SITE3),
	/// mem pvt register
	COMB_PVT_ERR_NVT_SITE3: *volatile Register(SYSTEM_COMB_PVT_ERR_NVT_SITE3),
	/// mem pvt register
	COMB_PVT_ERR_HVT_SITE3: *volatile Register(SYSTEM_COMB_PVT_ERR_HVT_SITE3),
	/// Version register
	SYSTEM_REG_DATE: *volatile Register(SYSTEM_SYSTEM_REG_DATE),
};

// Peripheral instance
const SYSTEM_instance = SYSTEM {
	.CPU_PERI_CLK_EN = @ptrFromInt(0x600c0000),
	.CPU_PERI_RST_EN = @ptrFromInt(0x600c0004),
	.CPU_PER_CONF = @ptrFromInt(0x600c0008),
	.MEM_PD_MASK = @ptrFromInt(0x600c000c),
	.PERIP_CLK_EN0 = @ptrFromInt(0x600c0010),
	.PERIP_CLK_EN1 = @ptrFromInt(0x600c0014),
	.PERIP_RST_EN0 = @ptrFromInt(0x600c0018),
	.PERIP_RST_EN1 = @ptrFromInt(0x600c001c),
	.BT_LPCK_DIV_INT = @ptrFromInt(0x600c0020),
	.BT_LPCK_DIV_FRAC = @ptrFromInt(0x600c0024),
	.CPU_INTR_FROM_CPU_0 = @ptrFromInt(0x600c0028),
	.CPU_INTR_FROM_CPU_1 = @ptrFromInt(0x600c002c),
	.CPU_INTR_FROM_CPU_2 = @ptrFromInt(0x600c0030),
	.CPU_INTR_FROM_CPU_3 = @ptrFromInt(0x600c0034),
	.RSA_PD_CTRL = @ptrFromInt(0x600c0038),
	.EDMA_CTRL = @ptrFromInt(0x600c003c),
	.CACHE_CONTROL = @ptrFromInt(0x600c0040),
	.EXTERNAL_DEVICE_ENCRYPT_DECRYPT_CONTROL = @ptrFromInt(0x600c0044),
	.RTC_FASTMEM_CONFIG = @ptrFromInt(0x600c0048),
	.RTC_FASTMEM_CRC = @ptrFromInt(0x600c004c),
	.REDUNDANT_ECO_CTRL = @ptrFromInt(0x600c0050),
	.CLOCK_GATE = @ptrFromInt(0x600c0054),
	.SYSCLK_CONF = @ptrFromInt(0x600c0058),
	.MEM_PVT = @ptrFromInt(0x600c005c),
	.COMB_PVT_LVT_CONF = @ptrFromInt(0x600c0060),
	.COMB_PVT_NVT_CONF = @ptrFromInt(0x600c0064),
	.COMB_PVT_HVT_CONF = @ptrFromInt(0x600c0068),
	.COMB_PVT_ERR_LVT_SITE0 = @ptrFromInt(0x600c006c),
	.COMB_PVT_ERR_NVT_SITE0 = @ptrFromInt(0x600c0070),
	.COMB_PVT_ERR_HVT_SITE0 = @ptrFromInt(0x600c0074),
	.COMB_PVT_ERR_LVT_SITE1 = @ptrFromInt(0x600c0078),
	.COMB_PVT_ERR_NVT_SITE1 = @ptrFromInt(0x600c007c),
	.COMB_PVT_ERR_HVT_SITE1 = @ptrFromInt(0x600c0080),
	.COMB_PVT_ERR_LVT_SITE2 = @ptrFromInt(0x600c0084),
	.COMB_PVT_ERR_NVT_SITE2 = @ptrFromInt(0x600c0088),
	.COMB_PVT_ERR_HVT_SITE2 = @ptrFromInt(0x600c008c),
	.COMB_PVT_ERR_LVT_SITE3 = @ptrFromInt(0x600c0090),
	.COMB_PVT_ERR_NVT_SITE3 = @ptrFromInt(0x600c0094),
	.COMB_PVT_ERR_HVT_SITE3 = @ptrFromInt(0x600c0098),
	.SYSTEM_REG_DATE = @ptrFromInt(0x600c0ffc),
};

const SYSTIMER_CONF = packed struct {
	/// systimer clock force on
	SYSTIMER_CLK_FO: u1,
	reserved0: u21,
	/// target2 work enable
	TARGET2_WORK_EN: u1,
	/// target1 work enable
	TARGET1_WORK_EN: u1,
	/// target0 work enable
	TARGET0_WORK_EN: u1,
	/// If timer unit1 is stalled when core1 stalled
	TIMER_UNIT1_CORE1_STALL_EN: u1,
	/// If timer unit1 is stalled when core0 stalled
	TIMER_UNIT1_CORE0_STALL_EN: u1,
	/// If timer unit0 is stalled when core1 stalled
	TIMER_UNIT0_CORE1_STALL_EN: u1,
	/// If timer unit0 is stalled when core0 stalled
	TIMER_UNIT0_CORE0_STALL_EN: u1,
	/// timer unit1 work enable
	TIMER_UNIT1_WORK_EN: u1,
	/// timer unit0 work enable
	TIMER_UNIT0_WORK_EN: u1,
	/// register file clk gating
	CLK_EN: u1,
};

const SYSTIMER_UNIT0_OP = packed struct {
	reserved0: u29,
	/// reg_timer_unit0_value_valid
	TIMER_UNIT0_VALUE_VALID: u1,
	/// update timer_unit0
	TIMER_UNIT0_UPDATE: u1,
	reserved1: u1,
};

const SYSTIMER_UNIT1_OP = packed struct {
	reserved0: u29,
	/// timer value is sync and valid
	TIMER_UNIT1_VALUE_VALID: u1,
	/// update timer unit1
	TIMER_UNIT1_UPDATE: u1,
	reserved1: u1,
};

const SYSTIMER_UNIT0_LOAD_HI = packed struct {
	/// timer unit0 load high 32 bit
	TIMER_UNIT0_LOAD_HI: u20,
	reserved0: u12,
};

const SYSTIMER_UNIT0_LOAD_LO = packed struct {
	/// timer unit0 load low 32 bit
	TIMER_UNIT0_LOAD_LO: u32,
};

const SYSTIMER_UNIT1_LOAD_HI = packed struct {
	/// timer unit1 load high 32 bit
	TIMER_UNIT1_LOAD_HI: u20,
	reserved0: u12,
};

const SYSTIMER_UNIT1_LOAD_LO = packed struct {
	/// timer unit1 load low 32 bit
	TIMER_UNIT1_LOAD_LO: u32,
};

const SYSTIMER_TARGET0_HI = packed struct {
	/// timer taget0 high 32 bit
	TIMER_TARGET0_HI: u20,
	reserved0: u12,
};

const SYSTIMER_TARGET0_LO = packed struct {
	/// timer taget0 low 32 bit
	TIMER_TARGET0_LO: u32,
};

const SYSTIMER_TARGET1_HI = packed struct {
	/// timer taget1 high 32 bit
	TIMER_TARGET1_HI: u20,
	reserved0: u12,
};

const SYSTIMER_TARGET1_LO = packed struct {
	/// timer taget1 low 32 bit
	TIMER_TARGET1_LO: u32,
};

const SYSTIMER_TARGET2_HI = packed struct {
	/// timer taget2 high 32 bit
	TIMER_TARGET2_HI: u20,
	reserved0: u12,
};

const SYSTIMER_TARGET2_LO = packed struct {
	/// timer taget2 low 32 bit
	TIMER_TARGET2_LO: u32,
};

const SYSTIMER_TARGET0_CONF = packed struct {
	/// target0 period
	TARGET0_PERIOD: u26,
	reserved0: u4,
	/// Set target0 to period mode
	TARGET0_PERIOD_MODE: u1,
	/// select which unit to compare
	TARGET0_TIMER_UNIT_SEL: u1,
};

const SYSTIMER_TARGET1_CONF = packed struct {
	/// target1 period
	TARGET1_PERIOD: u26,
	reserved0: u4,
	/// Set target1 to period mode
	TARGET1_PERIOD_MODE: u1,
	/// select which unit to compare
	TARGET1_TIMER_UNIT_SEL: u1,
};

const SYSTIMER_TARGET2_CONF = packed struct {
	/// target2 period
	TARGET2_PERIOD: u26,
	reserved0: u4,
	/// Set target2 to period mode
	TARGET2_PERIOD_MODE: u1,
	/// select which unit to compare
	TARGET2_TIMER_UNIT_SEL: u1,
};

const SYSTIMER_UNIT0_VALUE_HI = packed struct {
	/// timer read value high 32bit
	TIMER_UNIT0_VALUE_HI: u20,
	reserved0: u12,
};

const SYSTIMER_UNIT0_VALUE_LO = packed struct {
	/// timer read value low 32bit
	TIMER_UNIT0_VALUE_LO: u32,
};

const SYSTIMER_UNIT1_VALUE_HI = packed struct {
	/// timer read value high 32bit
	TIMER_UNIT1_VALUE_HI: u20,
	reserved0: u12,
};

const SYSTIMER_UNIT1_VALUE_LO = packed struct {
	/// timer read value low 32bit
	TIMER_UNIT1_VALUE_LO: u32,
};

const SYSTIMER_COMP0_LOAD = packed struct {
	/// timer comp0 load value
	TIMER_COMP0_LOAD: u1,
	reserved0: u31,
};

const SYSTIMER_COMP1_LOAD = packed struct {
	/// timer comp1 load value
	TIMER_COMP1_LOAD: u1,
	reserved0: u31,
};

const SYSTIMER_COMP2_LOAD = packed struct {
	/// timer comp2 load value
	TIMER_COMP2_LOAD: u1,
	reserved0: u31,
};

const SYSTIMER_UNIT0_LOAD = packed struct {
	/// timer unit0 load value
	TIMER_UNIT0_LOAD: u1,
	reserved0: u31,
};

const SYSTIMER_UNIT1_LOAD = packed struct {
	/// timer unit1 load value
	TIMER_UNIT1_LOAD: u1,
	reserved0: u31,
};

const SYSTIMER_INT_ENA = packed struct {
	/// interupt0 enable
	TARGET0_INT_ENA: u1,
	/// interupt1 enable
	TARGET1_INT_ENA: u1,
	/// interupt2 enable
	TARGET2_INT_ENA: u1,
	reserved0: u29,
};

const SYSTIMER_INT_RAW = packed struct {
	/// interupt0 raw
	TARGET0_INT_RAW: u1,
	/// interupt1 raw
	TARGET1_INT_RAW: u1,
	/// interupt2 raw
	TARGET2_INT_RAW: u1,
	reserved0: u29,
};

const SYSTIMER_INT_CLR = packed struct {
	/// interupt0 clear
	TARGET0_INT_CLR: u1,
	/// interupt1 clear
	TARGET1_INT_CLR: u1,
	/// interupt2 clear
	TARGET2_INT_CLR: u1,
	reserved0: u29,
};

const SYSTIMER_INT_ST = packed struct {
	/// reg_target0_int_st
	TARGET0_INT_ST: u1,
	/// reg_target1_int_st
	TARGET1_INT_ST: u1,
	/// reg_target2_int_st
	TARGET2_INT_ST: u1,
	reserved0: u29,
};

const SYSTIMER_DATE = packed struct {
	/// reg_date
	DATE: u32,
};

//Peripheral type
const SYSTIMER = struct {
	/// SYSTIMER_CONF.
	CONF: *volatile Register(SYSTIMER_CONF),
	/// SYSTIMER_UNIT0_OP.
	UNIT0_OP: *volatile Register(SYSTIMER_UNIT0_OP),
	/// SYSTIMER_UNIT1_OP.
	UNIT1_OP: *volatile Register(SYSTIMER_UNIT1_OP),
	/// SYSTIMER_UNIT0_LOAD_HI.
	UNIT0_LOAD_HI: *volatile Register(SYSTIMER_UNIT0_LOAD_HI),
	/// SYSTIMER_UNIT0_LOAD_LO.
	UNIT0_LOAD_LO: *volatile Register(SYSTIMER_UNIT0_LOAD_LO),
	/// SYSTIMER_UNIT1_LOAD_HI.
	UNIT1_LOAD_HI: *volatile Register(SYSTIMER_UNIT1_LOAD_HI),
	/// SYSTIMER_UNIT1_LOAD_LO.
	UNIT1_LOAD_LO: *volatile Register(SYSTIMER_UNIT1_LOAD_LO),
	/// SYSTIMER_TARGET0_HI.
	TARGET0_HI: *volatile Register(SYSTIMER_TARGET0_HI),
	/// SYSTIMER_TARGET0_LO.
	TARGET0_LO: *volatile Register(SYSTIMER_TARGET0_LO),
	/// SYSTIMER_TARGET1_HI.
	TARGET1_HI: *volatile Register(SYSTIMER_TARGET1_HI),
	/// SYSTIMER_TARGET1_LO.
	TARGET1_LO: *volatile Register(SYSTIMER_TARGET1_LO),
	/// SYSTIMER_TARGET2_HI.
	TARGET2_HI: *volatile Register(SYSTIMER_TARGET2_HI),
	/// SYSTIMER_TARGET2_LO.
	TARGET2_LO: *volatile Register(SYSTIMER_TARGET2_LO),
	/// SYSTIMER_TARGET0_CONF.
	TARGET0_CONF: *volatile Register(SYSTIMER_TARGET0_CONF),
	/// SYSTIMER_TARGET1_CONF.
	TARGET1_CONF: *volatile Register(SYSTIMER_TARGET1_CONF),
	/// SYSTIMER_TARGET2_CONF.
	TARGET2_CONF: *volatile Register(SYSTIMER_TARGET2_CONF),
	/// SYSTIMER_UNIT0_VALUE_HI.
	UNIT0_VALUE_HI: *volatile Register(SYSTIMER_UNIT0_VALUE_HI),
	/// SYSTIMER_UNIT0_VALUE_LO.
	UNIT0_VALUE_LO: *volatile Register(SYSTIMER_UNIT0_VALUE_LO),
	/// SYSTIMER_UNIT1_VALUE_HI.
	UNIT1_VALUE_HI: *volatile Register(SYSTIMER_UNIT1_VALUE_HI),
	/// SYSTIMER_UNIT1_VALUE_LO.
	UNIT1_VALUE_LO: *volatile Register(SYSTIMER_UNIT1_VALUE_LO),
	/// SYSTIMER_COMP0_LOAD.
	COMP0_LOAD: *volatile Register(SYSTIMER_COMP0_LOAD),
	/// SYSTIMER_COMP1_LOAD.
	COMP1_LOAD: *volatile Register(SYSTIMER_COMP1_LOAD),
	/// SYSTIMER_COMP2_LOAD.
	COMP2_LOAD: *volatile Register(SYSTIMER_COMP2_LOAD),
	/// SYSTIMER_UNIT0_LOAD.
	UNIT0_LOAD: *volatile Register(SYSTIMER_UNIT0_LOAD),
	/// SYSTIMER_UNIT1_LOAD.
	UNIT1_LOAD: *volatile Register(SYSTIMER_UNIT1_LOAD),
	/// SYSTIMER_INT_ENA.
	INT_ENA: *volatile Register(SYSTIMER_INT_ENA),
	/// SYSTIMER_INT_RAW.
	INT_RAW: *volatile Register(SYSTIMER_INT_RAW),
	/// SYSTIMER_INT_CLR.
	INT_CLR: *volatile Register(SYSTIMER_INT_CLR),
	/// SYSTIMER_INT_ST.
	INT_ST: *volatile Register(SYSTIMER_INT_ST),
	/// SYSTIMER_DATE.
	DATE: *volatile Register(SYSTIMER_DATE),
};

// Peripheral instance
const SYSTIMER_instance = SYSTIMER {
	.CONF = @ptrFromInt(0x60023000),
	.UNIT0_OP = @ptrFromInt(0x60023004),
	.UNIT1_OP = @ptrFromInt(0x60023008),
	.UNIT0_LOAD_HI = @ptrFromInt(0x6002300c),
	.UNIT0_LOAD_LO = @ptrFromInt(0x60023010),
	.UNIT1_LOAD_HI = @ptrFromInt(0x60023014),
	.UNIT1_LOAD_LO = @ptrFromInt(0x60023018),
	.TARGET0_HI = @ptrFromInt(0x6002301c),
	.TARGET0_LO = @ptrFromInt(0x60023020),
	.TARGET1_HI = @ptrFromInt(0x60023024),
	.TARGET1_LO = @ptrFromInt(0x60023028),
	.TARGET2_HI = @ptrFromInt(0x6002302c),
	.TARGET2_LO = @ptrFromInt(0x60023030),
	.TARGET0_CONF = @ptrFromInt(0x60023034),
	.TARGET1_CONF = @ptrFromInt(0x60023038),
	.TARGET2_CONF = @ptrFromInt(0x6002303c),
	.UNIT0_VALUE_HI = @ptrFromInt(0x60023040),
	.UNIT0_VALUE_LO = @ptrFromInt(0x60023044),
	.UNIT1_VALUE_HI = @ptrFromInt(0x60023048),
	.UNIT1_VALUE_LO = @ptrFromInt(0x6002304c),
	.COMP0_LOAD = @ptrFromInt(0x60023050),
	.COMP1_LOAD = @ptrFromInt(0x60023054),
	.COMP2_LOAD = @ptrFromInt(0x60023058),
	.UNIT0_LOAD = @ptrFromInt(0x6002305c),
	.UNIT1_LOAD = @ptrFromInt(0x60023060),
	.INT_ENA = @ptrFromInt(0x60023064),
	.INT_RAW = @ptrFromInt(0x60023068),
	.INT_CLR = @ptrFromInt(0x6002306c),
	.INT_ST = @ptrFromInt(0x60023070),
	.DATE = @ptrFromInt(0x600230fc),
};

const TIMG0_T0CONFIG = packed struct {
	reserved0: u9,
	/// reg_t0_use_xtal.
	USE_XTAL: u1,
	/// reg_t0_alarm_en.
	ALARM_EN: u1,
	reserved1: u1,
	/// reg_t0_divcnt_rst.
	DIVCNT_RST: u1,
	/// reg_t0_divider.
	DIVIDER: u16,
	/// reg_t0_autoreload.
	AUTORELOAD: u1,
	/// reg_t0_increase.
	INCREASE: u1,
	/// reg_t0_en.
	EN: u1,
};

const TIMG0_T0LO = packed struct {
	/// t0_lo
	LO: u32,
};

const TIMG0_T0HI = packed struct {
	/// t0_hi
	HI: u22,
	reserved0: u10,
};

const TIMG0_T0UPDATE = packed struct {
	reserved0: u31,
	/// t0_update
	UPDATE: u1,
};

const TIMG0_T0ALARMLO = packed struct {
	/// reg_t0_alarm_lo.
	ALARM_LO: u32,
};

const TIMG0_T0ALARMHI = packed struct {
	/// reg_t0_alarm_hi.
	ALARM_HI: u22,
	reserved0: u10,
};

const TIMG0_T0LOADLO = packed struct {
	/// reg_t0_load_lo.
	LOAD_LO: u32,
};

const TIMG0_T0LOADHI = packed struct {
	/// reg_t0_load_hi.
	LOAD_HI: u22,
	reserved0: u10,
};

const TIMG0_T0LOAD = packed struct {
	/// t0_load
	LOAD: u32,
};

const TIMG0_WDTCONFIG0 = packed struct {
	reserved0: u12,
	/// reg_wdt_appcpu_reset_en.
	WDT_APPCPU_RESET_EN: u1,
	/// reg_wdt_procpu_reset_en.
	WDT_PROCPU_RESET_EN: u1,
	/// reg_wdt_flashboot_mod_en.
	WDT_FLASHBOOT_MOD_EN: u1,
	/// reg_wdt_sys_reset_length.
	WDT_SYS_RESET_LENGTH: u3,
	/// reg_wdt_cpu_reset_length.
	WDT_CPU_RESET_LENGTH: u3,
	/// reg_wdt_use_xtal.
	WDT_USE_XTAL: u1,
	/// reg_wdt_conf_update_en.
	WDT_CONF_UPDATE_EN: u1,
	/// reg_wdt_stg3.
	WDT_STG3: u2,
	/// reg_wdt_stg2.
	WDT_STG2: u2,
	/// reg_wdt_stg1.
	WDT_STG1: u2,
	/// reg_wdt_stg0.
	WDT_STG0: u2,
	/// reg_wdt_en.
	WDT_EN: u1,
};

const TIMG0_WDTCONFIG1 = packed struct {
	/// reg_wdt_divcnt_rst.
	WDT_DIVCNT_RST: u1,
	reserved0: u15,
	/// reg_wdt_clk_prescale.
	WDT_CLK_PRESCALE: u16,
};

const TIMG0_WDTCONFIG2 = packed struct {
	/// reg_wdt_stg0_hold.
	WDT_STG0_HOLD: u32,
};

const TIMG0_WDTCONFIG3 = packed struct {
	/// reg_wdt_stg1_hold.
	WDT_STG1_HOLD: u32,
};

const TIMG0_WDTCONFIG4 = packed struct {
	/// reg_wdt_stg2_hold.
	WDT_STG2_HOLD: u32,
};

const TIMG0_WDTCONFIG5 = packed struct {
	/// reg_wdt_stg3_hold.
	WDT_STG3_HOLD: u32,
};

const TIMG0_WDTFEED = packed struct {
	/// wdt_feed
	WDT_FEED: u32,
};

const TIMG0_WDTWPROTECT = packed struct {
	/// reg_wdt_wkey.
	WDT_WKEY: u32,
};

const TIMG0_RTCCALICFG = packed struct {
	reserved0: u12,
	/// reg_rtc_cali_start_cycling.
	RTC_CALI_START_CYCLING: u1,
	/// reg_rtc_cali_clk_sel.0:rtcslowclock.1:clk_80m.2:xtal_32k
	RTC_CALI_CLK_SEL: u2,
	/// rtc_cali_rdy
	RTC_CALI_RDY: u1,
	/// reg_rtc_cali_max.
	RTC_CALI_MAX: u15,
	/// reg_rtc_cali_start.
	RTC_CALI_START: u1,
};

const TIMG0_RTCCALICFG1 = packed struct {
	/// rtc_cali_cycling_data_vld
	RTC_CALI_CYCLING_DATA_VLD: u1,
	reserved0: u6,
	/// rtc_cali_value
	RTC_CALI_VALUE: u25,
};

const TIMG0_INT_ENA_TIMERS = packed struct {
	/// t0_int_ena
	T0_INT_ENA: u1,
	/// wdt_int_ena
	WDT_INT_ENA: u1,
	reserved0: u30,
};

const TIMG0_INT_RAW_TIMERS = packed struct {
	/// t0_int_raw
	T0_INT_RAW: u1,
	/// wdt_int_raw
	WDT_INT_RAW: u1,
	reserved0: u30,
};

const TIMG0_INT_ST_TIMERS = packed struct {
	/// t0_int_st
	T0_INT_ST: u1,
	/// wdt_int_st
	WDT_INT_ST: u1,
	reserved0: u30,
};

const TIMG0_INT_CLR_TIMERS = packed struct {
	/// t0_int_clr
	T0_INT_CLR: u1,
	/// wdt_int_clr
	WDT_INT_CLR: u1,
	reserved0: u30,
};

const TIMG0_RTCCALICFG2 = packed struct {
	/// timeoutindicator
	RTC_CALI_TIMEOUT: u1,
	reserved0: u2,
	/// reg_rtc_cali_timeout_rst_cnt.Cyclesthatreleasecalibrationtimeoutreset
	RTC_CALI_TIMEOUT_RST_CNT: u4,
	/// reg_rtc_cali_timeout_thres.timeoutifcalivaluecountsoverthreshold
	RTC_CALI_TIMEOUT_THRES: u25,
};

const TIMG0_NTIMG_DATE = packed struct {
	/// reg_ntimers_date.
	NTIMGS_DATE: u28,
	reserved0: u4,
};

const TIMG0_REGCLK = packed struct {
	reserved0: u29,
	/// reg_wdt_clk_is_active.
	WDT_CLK_IS_ACTIVE: u1,
	/// reg_timer_clk_is_active.
	TIMER_CLK_IS_ACTIVE: u1,
	/// reg_clk_en.
	CLK_EN: u1,
};

//Peripheral type
const TIMG0 = struct {
	/// TIMG_T0CONFIG_REG.
	T0CONFIG: *volatile Register(TIMG0_T0CONFIG),
	/// TIMG_T0LO_REG.
	T0LO: *volatile Register(TIMG0_T0LO),
	/// TIMG_T0HI_REG.
	T0HI: *volatile Register(TIMG0_T0HI),
	/// TIMG_T0UPDATE_REG.
	T0UPDATE: *volatile Register(TIMG0_T0UPDATE),
	/// TIMG_T0ALARMLO_REG.
	T0ALARMLO: *volatile Register(TIMG0_T0ALARMLO),
	/// TIMG_T0ALARMHI_REG.
	T0ALARMHI: *volatile Register(TIMG0_T0ALARMHI),
	/// TIMG_T0LOADLO_REG.
	T0LOADLO: *volatile Register(TIMG0_T0LOADLO),
	/// TIMG_T0LOADHI_REG.
	T0LOADHI: *volatile Register(TIMG0_T0LOADHI),
	/// TIMG_T0LOAD_REG.
	T0LOAD: *volatile Register(TIMG0_T0LOAD),
	/// TIMG_WDTCONFIG0_REG.
	WDTCONFIG0: *volatile Register(TIMG0_WDTCONFIG0),
	/// TIMG_WDTCONFIG1_REG.
	WDTCONFIG1: *volatile Register(TIMG0_WDTCONFIG1),
	/// TIMG_WDTCONFIG2_REG.
	WDTCONFIG2: *volatile Register(TIMG0_WDTCONFIG2),
	/// TIMG_WDTCONFIG3_REG.
	WDTCONFIG3: *volatile Register(TIMG0_WDTCONFIG3),
	/// TIMG_WDTCONFIG4_REG.
	WDTCONFIG4: *volatile Register(TIMG0_WDTCONFIG4),
	/// TIMG_WDTCONFIG5_REG.
	WDTCONFIG5: *volatile Register(TIMG0_WDTCONFIG5),
	/// TIMG_WDTFEED_REG.
	WDTFEED: *volatile Register(TIMG0_WDTFEED),
	/// TIMG_WDTWPROTECT_REG.
	WDTWPROTECT: *volatile Register(TIMG0_WDTWPROTECT),
	/// TIMG_RTCCALICFG_REG.
	RTCCALICFG: *volatile Register(TIMG0_RTCCALICFG),
	/// TIMG_RTCCALICFG1_REG.
	RTCCALICFG1: *volatile Register(TIMG0_RTCCALICFG1),
	/// INT_ENA_TIMG_REG
	INT_ENA_TIMERS: *volatile Register(TIMG0_INT_ENA_TIMERS),
	/// INT_RAW_TIMG_REG
	INT_RAW_TIMERS: *volatile Register(TIMG0_INT_RAW_TIMERS),
	/// INT_ST_TIMG_REG
	INT_ST_TIMERS: *volatile Register(TIMG0_INT_ST_TIMERS),
	/// INT_CLR_TIMG_REG
	INT_CLR_TIMERS: *volatile Register(TIMG0_INT_CLR_TIMERS),
	/// TIMG_RTCCALICFG2_REG.
	RTCCALICFG2: *volatile Register(TIMG0_RTCCALICFG2),
	/// TIMG_NTIMG_DATE_REG.
	NTIMG_DATE: *volatile Register(TIMG0_NTIMG_DATE),
	/// TIMG_REGCLK_REG.
	REGCLK: *volatile Register(TIMG0_REGCLK),
};

// Peripheral instance
const TIMG0_instance = TIMG0 {
	.T0CONFIG = @ptrFromInt(0x6001f000),
	.T0LO = @ptrFromInt(0x6001f004),
	.T0HI = @ptrFromInt(0x6001f008),
	.T0UPDATE = @ptrFromInt(0x6001f00c),
	.T0ALARMLO = @ptrFromInt(0x6001f010),
	.T0ALARMHI = @ptrFromInt(0x6001f014),
	.T0LOADLO = @ptrFromInt(0x6001f018),
	.T0LOADHI = @ptrFromInt(0x6001f01c),
	.T0LOAD = @ptrFromInt(0x6001f020),
	.WDTCONFIG0 = @ptrFromInt(0x6001f048),
	.WDTCONFIG1 = @ptrFromInt(0x6001f04c),
	.WDTCONFIG2 = @ptrFromInt(0x6001f050),
	.WDTCONFIG3 = @ptrFromInt(0x6001f054),
	.WDTCONFIG4 = @ptrFromInt(0x6001f058),
	.WDTCONFIG5 = @ptrFromInt(0x6001f05c),
	.WDTFEED = @ptrFromInt(0x6001f060),
	.WDTWPROTECT = @ptrFromInt(0x6001f064),
	.RTCCALICFG = @ptrFromInt(0x6001f068),
	.RTCCALICFG1 = @ptrFromInt(0x6001f06c),
	.INT_ENA_TIMERS = @ptrFromInt(0x6001f070),
	.INT_RAW_TIMERS = @ptrFromInt(0x6001f074),
	.INT_ST_TIMERS = @ptrFromInt(0x6001f078),
	.INT_CLR_TIMERS = @ptrFromInt(0x6001f07c),
	.RTCCALICFG2 = @ptrFromInt(0x6001f080),
	.NTIMG_DATE = @ptrFromInt(0x6001f0f8),
	.REGCLK = @ptrFromInt(0x6001f0fc),
};

//Peripheral type
const TIMG1 = struct {
};

// Peripheral instance
const TIMG1_instance = TIMG1 {
};

const TWAI0_MODE = packed struct {
	/// This bit is used to configure the operating mode of the TWAI Controller. 1: Reset mode; 0: Operating mode.
	RESET_MODE: u1,
	/// 1: Listen only mode. In this mode the nodes will only receive messages from the bus, without generating the acknowledge signal nor updating the RX error counter.
	LISTEN_ONLY_MODE: u1,
	/// 1: Self test mode. In this mode the TX nodes can perform a successful transmission without receiving the acknowledge signal. This mode is often used to test a single node with the self reception request command.
	SELF_TEST_MODE: u1,
	/// This bit is used to configure the filter mode. 0: Dual filter mode; 1: Single filter mode.
	RX_FILTER_MODE: u1,
	reserved0: u28,
};

const TWAI0_CMD = packed struct {
	/// Set the bit to 1 to allow the driving nodes start transmission.
	TX_REQ: u1,
	/// Set the bit to 1 to cancel a pending transmission request.
	ABORT_TX: u1,
	/// Set the bit to 1 to release the RX buffer.
	RELEASE_BUF: u1,
	/// Set the bit to 1 to clear the data overrun status bit.
	CLR_OVERRUN: u1,
	/// Self reception request command. Set the bit to 1 to allow a message be transmitted and received simultaneously.
	SELF_RX_REQ: u1,
	reserved0: u27,
};

const TWAI0_STATUS = packed struct {
	/// 1: The data in the RX buffer is not empty, with at least one received data packet.
	RX_BUF_ST: u1,
	/// 1: The RX FIFO is full and data overrun has occurred.
	OVERRUN_ST: u1,
	/// 1: The TX buffer is empty, the CPU may write a message into it.
	TX_BUF_ST: u1,
	/// 1: The TWAI controller has successfully received a packet from the bus.
	TX_COMPLETE: u1,
	/// 1: The TWAI Controller is receiving a message from the bus.
	RX_ST: u1,
	/// 1: The TWAI Controller is transmitting a message to the bus.
	TX_ST: u1,
	/// 1: At least one of the RX/TX error counter has reached or exceeded the value set in register TWAI_ERR_WARNING_LIMIT_REG.
	ERR_ST: u1,
	/// 1: In bus-off status, the TWAI Controller is no longer involved in bus activities.
	BUS_OFF_ST: u1,
	/// This bit reflects whether the data packet in the RX FIFO is complete. 1: The current packet is missing; 0: The current packet is complete
	MISS_ST: u1,
	reserved0: u23,
};

const TWAI0_INT_RAW = packed struct {
	/// Receive interrupt. If this bit is set to 1, it indicates there are messages to be handled in the RX FIFO.
	RX_INT_ST: u1,
	/// Transmit interrupt. If this bit is set to 1, it indicates the message transmitting mis- sion is finished and a new transmission is able to execute.
	TX_INT_ST: u1,
	/// Error warning interrupt. If this bit is set to 1, it indicates the error status signal and the bus-off status signal of Status register have changed (e.g., switched from 0 to 1 or from 1 to 0).
	ERR_WARN_INT_ST: u1,
	/// Data overrun interrupt. If this bit is set to 1, it indicates a data overrun interrupt is generated in the RX FIFO.
	OVERRUN_INT_ST: u1,
	reserved0: u1,
	/// Error passive interrupt. If this bit is set to 1, it indicates the TWAI Controller is switched between error active status and error passive status due to the change of error counters.
	ERR_PASSIVE_INT_ST: u1,
	/// Arbitration lost interrupt. If this bit is set to 1, it indicates an arbitration lost interrupt is generated.
	ARB_LOST_INT_ST: u1,
	/// Error interrupt. If this bit is set to 1, it indicates an error is detected on the bus.
	BUS_ERR_INT_ST: u1,
	reserved1: u24,
};

const TWAI0_INT_ENA = packed struct {
	/// Set this bit to 1 to enable receive interrupt.
	RX_INT_ENA: u1,
	/// Set this bit to 1 to enable transmit interrupt.
	TX_INT_ENA: u1,
	/// Set this bit to 1 to enable error warning interrupt.
	ERR_WARN_INT_ENA: u1,
	/// Set this bit to 1 to enable data overrun interrupt.
	OVERRUN_INT_ENA: u1,
	reserved0: u1,
	/// Set this bit to 1 to enable error passive interrupt.
	ERR_PASSIVE_INT_ENA: u1,
	/// Set this bit to 1 to enable arbitration lost interrupt.
	ARB_LOST_INT_ENA: u1,
	/// Set this bit to 1 to enable error interrupt.
	BUS_ERR_INT_ENA: u1,
	reserved1: u24,
};

const TWAI0_BUS_TIMING_0 = packed struct {
	/// Baud Rate Prescaler, determines the frequency dividing ratio.
	BAUD_PRESC: u14,
	/// Synchronization Jump Width (SJW), 1 \verb+~+ 14 Tq wide.
	SYNC_JUMP_WIDTH: u2,
	reserved0: u16,
};

const TWAI0_BUS_TIMING_1 = packed struct {
	/// The width of PBS1.
	TIME_SEG1: u4,
	/// The width of PBS2.
	TIME_SEG2: u3,
	/// The number of sample points. 0: the bus is sampled once; 1: the bus is sampled three times
	TIME_SAMP: u1,
	reserved0: u24,
};

const TWAI0_ARB_LOST_CAP = packed struct {
	/// This register contains information about the bit position of lost arbitration.
	ARB_LOST_CAP: u5,
	reserved0: u27,
};

const TWAI0_ERR_CODE_CAP = packed struct {
	/// This register contains information about the location of errors, see Table 181 for details.
	ECC_SEGMENT: u5,
	/// This register contains information about transmission direction of the node when error occurs. 1: Error occurs when receiving a message; 0: Error occurs when transmitting a message
	ECC_DIRECTION: u1,
	/// This register contains information about error types: 00: bit error; 01: form error; 10: stuff error; 11: other type of error
	ECC_TYPE: u2,
	reserved0: u24,
};

const TWAI0_ERR_WARNING_LIMIT = packed struct {
	/// Error warning threshold. In the case when any of a error counter value exceeds the threshold, or all the error counter values are below the threshold, an error warning interrupt will be triggered (given the enable signal is valid).
	ERR_WARNING_LIMIT: u8,
	reserved0: u24,
};

const TWAI0_RX_ERR_CNT = packed struct {
	/// The RX error counter register, reflects value changes under reception status.
	RX_ERR_CNT: u8,
	reserved0: u24,
};

const TWAI0_TX_ERR_CNT = packed struct {
	/// The TX error counter register, reflects value changes under transmission status.
	TX_ERR_CNT: u8,
	reserved0: u24,
};

const TWAI0_DATA_0 = packed struct {
	/// In reset mode, it is acceptance code register 0 with R/W Permission. In operation mode, it stores the 0th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_0: u8,
	reserved0: u24,
};

const TWAI0_DATA_1 = packed struct {
	/// In reset mode, it is acceptance code register 1 with R/W Permission. In operation mode, it stores the 1st byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_1: u8,
	reserved0: u24,
};

const TWAI0_DATA_2 = packed struct {
	/// In reset mode, it is acceptance code register 2 with R/W Permission. In operation mode, it stores the 2nd byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_2: u8,
	reserved0: u24,
};

const TWAI0_DATA_3 = packed struct {
	/// In reset mode, it is acceptance code register 3 with R/W Permission. In operation mode, it stores the 3rd byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_3: u8,
	reserved0: u24,
};

const TWAI0_DATA_4 = packed struct {
	/// In reset mode, it is acceptance code register 4 with R/W Permission. In operation mode, it stores the 4th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_4: u8,
	reserved0: u24,
};

const TWAI0_DATA_5 = packed struct {
	/// In reset mode, it is acceptance code register 5 with R/W Permission. In operation mode, it stores the 5th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_5: u8,
	reserved0: u24,
};

const TWAI0_DATA_6 = packed struct {
	/// In reset mode, it is acceptance code register 6 with R/W Permission. In operation mode, it stores the 6th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_6: u8,
	reserved0: u24,
};

const TWAI0_DATA_7 = packed struct {
	/// In reset mode, it is acceptance code register 7 with R/W Permission. In operation mode, it stores the 7th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_7: u8,
	reserved0: u24,
};

const TWAI0_DATA_8 = packed struct {
	/// In operation mode, it stores the 8th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_8: u8,
	reserved0: u24,
};

const TWAI0_DATA_9 = packed struct {
	/// In operation mode, it stores the 9th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_9: u8,
	reserved0: u24,
};

const TWAI0_DATA_10 = packed struct {
	/// In operation mode, it stores the 10th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_10: u8,
	reserved0: u24,
};

const TWAI0_DATA_11 = packed struct {
	/// In operation mode, it stores the 11th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_11: u8,
	reserved0: u24,
};

const TWAI0_DATA_12 = packed struct {
	/// In operation mode, it stores the 12th byte of the data to be transmitted or received. In operation mode, writing writes to the transmit buffer while reading reads from the receive buffer.
	TX_BYTE_12: u8,
	reserved0: u24,
};

const TWAI0_RX_MESSAGE_CNT = packed struct {
	/// This register reflects the number of messages available within the RX FIFO.
	RX_MESSAGE_COUNTER: u7,
	reserved0: u25,
};

const TWAI0_CLOCK_DIVIDER = packed struct {
	/// These bits are used to configure frequency dividing coefficients of the external CLKOUT pin.
	CD: u8,
	/// This bit can be configured under reset mode. 1: Disable the external CLKOUT pin; 0: Enable the external CLKOUT pin
	CLOCK_OFF: u1,
	reserved0: u23,
};

//Peripheral type
const TWAI0 = struct {
	/// Mode Register
	MODE: *volatile Register(TWAI0_MODE),
	/// Command Register
	CMD: *volatile Register(TWAI0_CMD),
	/// Status register
	STATUS: *volatile Register(TWAI0_STATUS),
	/// Interrupt Register
	INT_RAW: *volatile Register(TWAI0_INT_RAW),
	/// Interrupt Enable Register
	INT_ENA: *volatile Register(TWAI0_INT_ENA),
	/// Bus Timing Register 0
	BUS_TIMING_0: *volatile Register(TWAI0_BUS_TIMING_0),
	/// Bus Timing Register 1
	BUS_TIMING_1: *volatile Register(TWAI0_BUS_TIMING_1),
	/// Arbitration Lost Capture Register
	ARB_LOST_CAP: *volatile Register(TWAI0_ARB_LOST_CAP),
	/// Error Code Capture Register
	ERR_CODE_CAP: *volatile Register(TWAI0_ERR_CODE_CAP),
	/// Error Warning Limit Register
	ERR_WARNING_LIMIT: *volatile Register(TWAI0_ERR_WARNING_LIMIT),
	/// Receive Error Counter Register
	RX_ERR_CNT: *volatile Register(TWAI0_RX_ERR_CNT),
	/// Transmit Error Counter Register
	TX_ERR_CNT: *volatile Register(TWAI0_TX_ERR_CNT),
	/// Data register 0
	DATA_0: *volatile Register(TWAI0_DATA_0),
	/// Data register 1
	DATA_1: *volatile Register(TWAI0_DATA_1),
	/// Data register 2
	DATA_2: *volatile Register(TWAI0_DATA_2),
	/// Data register 3
	DATA_3: *volatile Register(TWAI0_DATA_3),
	/// Data register 4
	DATA_4: *volatile Register(TWAI0_DATA_4),
	/// Data register 5
	DATA_5: *volatile Register(TWAI0_DATA_5),
	/// Data register 6
	DATA_6: *volatile Register(TWAI0_DATA_6),
	/// Data register 7
	DATA_7: *volatile Register(TWAI0_DATA_7),
	/// Data register 8
	DATA_8: *volatile Register(TWAI0_DATA_8),
	/// Data register 9
	DATA_9: *volatile Register(TWAI0_DATA_9),
	/// Data register 10
	DATA_10: *volatile Register(TWAI0_DATA_10),
	/// Data register 11
	DATA_11: *volatile Register(TWAI0_DATA_11),
	/// Data register 12
	DATA_12: *volatile Register(TWAI0_DATA_12),
	/// Receive Message Counter Register
	RX_MESSAGE_CNT: *volatile Register(TWAI0_RX_MESSAGE_CNT),
	/// Clock Divider register
	CLOCK_DIVIDER: *volatile Register(TWAI0_CLOCK_DIVIDER),
};

// Peripheral instance
const TWAI0_instance = TWAI0 {
	.MODE = @ptrFromInt(0x6002b000),
	.CMD = @ptrFromInt(0x6002b004),
	.STATUS = @ptrFromInt(0x6002b008),
	.INT_RAW = @ptrFromInt(0x6002b00c),
	.INT_ENA = @ptrFromInt(0x6002b010),
	.BUS_TIMING_0 = @ptrFromInt(0x6002b018),
	.BUS_TIMING_1 = @ptrFromInt(0x6002b01c),
	.ARB_LOST_CAP = @ptrFromInt(0x6002b02c),
	.ERR_CODE_CAP = @ptrFromInt(0x6002b030),
	.ERR_WARNING_LIMIT = @ptrFromInt(0x6002b034),
	.RX_ERR_CNT = @ptrFromInt(0x6002b038),
	.TX_ERR_CNT = @ptrFromInt(0x6002b03c),
	.DATA_0 = @ptrFromInt(0x6002b040),
	.DATA_1 = @ptrFromInt(0x6002b044),
	.DATA_2 = @ptrFromInt(0x6002b048),
	.DATA_3 = @ptrFromInt(0x6002b04c),
	.DATA_4 = @ptrFromInt(0x6002b050),
	.DATA_5 = @ptrFromInt(0x6002b054),
	.DATA_6 = @ptrFromInt(0x6002b058),
	.DATA_7 = @ptrFromInt(0x6002b05c),
	.DATA_8 = @ptrFromInt(0x6002b060),
	.DATA_9 = @ptrFromInt(0x6002b064),
	.DATA_10 = @ptrFromInt(0x6002b068),
	.DATA_11 = @ptrFromInt(0x6002b06c),
	.DATA_12 = @ptrFromInt(0x6002b070),
	.RX_MESSAGE_CNT = @ptrFromInt(0x6002b074),
	.CLOCK_DIVIDER = @ptrFromInt(0x6002b07c),
};

const UART0_FIFO = packed struct {
	/// UART 0 accesses FIFO via this register.
	RXFIFO_RD_BYTE: u8,
	reserved0: u24,
};

const UART0_INT_RAW = packed struct {
	/// This interrupt raw bit turns to high level when receiver receives more data than what rxfifo_full_thrhd specifies.
	RXFIFO_FULL_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when the amount of data in Tx-FIFO is less than what txfifo_empty_thrhd specifies .
	TXFIFO_EMPTY_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects a parity error in the data.
	PARITY_ERR_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects a data frame error .
	FRM_ERR_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver receives more data than the FIFO can store.
	RXFIFO_OVF_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects the edge change of DSRn signal.
	DSR_CHG_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects the edge change of CTSn signal.
	CTS_CHG_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects a 0 after the stop bit.
	BRK_DET_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver takes more time than rx_tout_thrhd to receive a byte.
	RXFIFO_TOUT_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver recevies Xon char when uart_sw_flow_con_en is set to 1.
	SW_XON_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver receives Xoff char when uart_sw_flow_con_en is set to 1.
	SW_XOFF_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects a glitch in the middle of a start bit.
	GLITCH_DET_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when transmitter completes  sending  NULL characters, after all data in Tx-FIFO are sent.
	TX_BRK_DONE_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when transmitter has kept the shortest duration after sending the  last data.
	TX_BRK_IDLE_DONE_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when transmitter has send out all data in FIFO.
	TX_DONE_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects a parity error from the echo of transmitter in rs485 mode.
	RS485_PARITY_ERR_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects a data frame error from the echo of transmitter in rs485 mode.
	RS485_FRM_ERR_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when detects a clash between transmitter and receiver in rs485 mode.
	RS485_CLASH_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when receiver detects the configured at_cmd char.
	AT_CMD_CHAR_DET_INT_RAW: u1,
	/// This interrupt raw bit turns to high level when input rxd edge changes more times than what reg_active_threshold specifies in light sleeping mode.
	WAKEUP_INT_RAW: u1,
	reserved0: u12,
};

const UART0_INT_ST = packed struct {
	/// This is the status bit for rxfifo_full_int_raw when rxfifo_full_int_ena is set to 1.
	RXFIFO_FULL_INT_ST: u1,
	/// This is the status bit for  txfifo_empty_int_raw  when txfifo_empty_int_ena is set to 1.
	TXFIFO_EMPTY_INT_ST: u1,
	/// This is the status bit for parity_err_int_raw when parity_err_int_ena is set to 1.
	PARITY_ERR_INT_ST: u1,
	/// This is the status bit for frm_err_int_raw when frm_err_int_ena is set to 1.
	FRM_ERR_INT_ST: u1,
	/// This is the status bit for rxfifo_ovf_int_raw when rxfifo_ovf_int_ena is set to 1.
	RXFIFO_OVF_INT_ST: u1,
	/// This is the status bit for dsr_chg_int_raw when dsr_chg_int_ena is set to 1.
	DSR_CHG_INT_ST: u1,
	/// This is the status bit for cts_chg_int_raw when cts_chg_int_ena is set to 1.
	CTS_CHG_INT_ST: u1,
	/// This is the status bit for brk_det_int_raw when brk_det_int_ena is set to 1.
	BRK_DET_INT_ST: u1,
	/// This is the status bit for rxfifo_tout_int_raw when rxfifo_tout_int_ena is set to 1.
	RXFIFO_TOUT_INT_ST: u1,
	/// This is the status bit for sw_xon_int_raw when sw_xon_int_ena is set to 1.
	SW_XON_INT_ST: u1,
	/// This is the status bit for sw_xoff_int_raw when sw_xoff_int_ena is set to 1.
	SW_XOFF_INT_ST: u1,
	/// This is the status bit for glitch_det_int_raw when glitch_det_int_ena is set to 1.
	GLITCH_DET_INT_ST: u1,
	/// This is the status bit for tx_brk_done_int_raw when tx_brk_done_int_ena is set to 1.
	TX_BRK_DONE_INT_ST: u1,
	/// This is the stauts bit for tx_brk_idle_done_int_raw when tx_brk_idle_done_int_ena is set to 1.
	TX_BRK_IDLE_DONE_INT_ST: u1,
	/// This is the status bit for tx_done_int_raw when tx_done_int_ena is set to 1.
	TX_DONE_INT_ST: u1,
	/// This is the status bit for rs485_parity_err_int_raw when rs485_parity_int_ena is set to 1.
	RS485_PARITY_ERR_INT_ST: u1,
	/// This is the status bit for rs485_frm_err_int_raw when rs485_fm_err_int_ena is set to 1.
	RS485_FRM_ERR_INT_ST: u1,
	/// This is the status bit for rs485_clash_int_raw when rs485_clash_int_ena is set to 1.
	RS485_CLASH_INT_ST: u1,
	/// This is the status bit for at_cmd_det_int_raw when at_cmd_char_det_int_ena is set to 1.
	AT_CMD_CHAR_DET_INT_ST: u1,
	/// This is the status bit for uart_wakeup_int_raw when uart_wakeup_int_ena is set to 1.
	WAKEUP_INT_ST: u1,
	reserved0: u12,
};

const UART0_INT_ENA = packed struct {
	/// This is the enable bit for rxfifo_full_int_st register.
	RXFIFO_FULL_INT_ENA: u1,
	/// This is the enable bit for txfifo_empty_int_st register.
	TXFIFO_EMPTY_INT_ENA: u1,
	/// This is the enable bit for parity_err_int_st register.
	PARITY_ERR_INT_ENA: u1,
	/// This is the enable bit for frm_err_int_st register.
	FRM_ERR_INT_ENA: u1,
	/// This is the enable bit for rxfifo_ovf_int_st register.
	RXFIFO_OVF_INT_ENA: u1,
	/// This is the enable bit for dsr_chg_int_st register.
	DSR_CHG_INT_ENA: u1,
	/// This is the enable bit for cts_chg_int_st register.
	CTS_CHG_INT_ENA: u1,
	/// This is the enable bit for brk_det_int_st register.
	BRK_DET_INT_ENA: u1,
	/// This is the enable bit for rxfifo_tout_int_st register.
	RXFIFO_TOUT_INT_ENA: u1,
	/// This is the enable bit for sw_xon_int_st register.
	SW_XON_INT_ENA: u1,
	/// This is the enable bit for sw_xoff_int_st register.
	SW_XOFF_INT_ENA: u1,
	/// This is the enable bit for glitch_det_int_st register.
	GLITCH_DET_INT_ENA: u1,
	/// This is the enable bit for tx_brk_done_int_st register.
	TX_BRK_DONE_INT_ENA: u1,
	/// This is the enable bit for tx_brk_idle_done_int_st register.
	TX_BRK_IDLE_DONE_INT_ENA: u1,
	/// This is the enable bit for tx_done_int_st register.
	TX_DONE_INT_ENA: u1,
	/// This is the enable bit for rs485_parity_err_int_st register.
	RS485_PARITY_ERR_INT_ENA: u1,
	/// This is the enable bit for rs485_parity_err_int_st register.
	RS485_FRM_ERR_INT_ENA: u1,
	/// This is the enable bit for rs485_clash_int_st register.
	RS485_CLASH_INT_ENA: u1,
	/// This is the enable bit for at_cmd_char_det_int_st register.
	AT_CMD_CHAR_DET_INT_ENA: u1,
	/// This is the enable bit for uart_wakeup_int_st register.
	WAKEUP_INT_ENA: u1,
	reserved0: u12,
};

const UART0_INT_CLR = packed struct {
	/// Set this bit to clear the rxfifo_full_int_raw interrupt.
	RXFIFO_FULL_INT_CLR: u1,
	/// Set this bit to clear txfifo_empty_int_raw interrupt.
	TXFIFO_EMPTY_INT_CLR: u1,
	/// Set this bit to clear parity_err_int_raw interrupt.
	PARITY_ERR_INT_CLR: u1,
	/// Set this bit to clear frm_err_int_raw interrupt.
	FRM_ERR_INT_CLR: u1,
	/// Set this bit to clear rxfifo_ovf_int_raw interrupt.
	RXFIFO_OVF_INT_CLR: u1,
	/// Set this bit to clear the dsr_chg_int_raw interrupt.
	DSR_CHG_INT_CLR: u1,
	/// Set this bit to clear the cts_chg_int_raw interrupt.
	CTS_CHG_INT_CLR: u1,
	/// Set this bit to clear the brk_det_int_raw interrupt.
	BRK_DET_INT_CLR: u1,
	/// Set this bit to clear the rxfifo_tout_int_raw interrupt.
	RXFIFO_TOUT_INT_CLR: u1,
	/// Set this bit to clear the sw_xon_int_raw interrupt.
	SW_XON_INT_CLR: u1,
	/// Set this bit to clear the sw_xoff_int_raw interrupt.
	SW_XOFF_INT_CLR: u1,
	/// Set this bit to clear the glitch_det_int_raw interrupt.
	GLITCH_DET_INT_CLR: u1,
	/// Set this bit to clear the tx_brk_done_int_raw interrupt..
	TX_BRK_DONE_INT_CLR: u1,
	/// Set this bit to clear the tx_brk_idle_done_int_raw interrupt.
	TX_BRK_IDLE_DONE_INT_CLR: u1,
	/// Set this bit to clear the tx_done_int_raw interrupt.
	TX_DONE_INT_CLR: u1,
	/// Set this bit to clear the rs485_parity_err_int_raw interrupt.
	RS485_PARITY_ERR_INT_CLR: u1,
	/// Set this bit to clear the rs485_frm_err_int_raw interrupt.
	RS485_FRM_ERR_INT_CLR: u1,
	/// Set this bit to clear the rs485_clash_int_raw interrupt.
	RS485_CLASH_INT_CLR: u1,
	/// Set this bit to clear the at_cmd_char_det_int_raw interrupt.
	AT_CMD_CHAR_DET_INT_CLR: u1,
	/// Set this bit to clear the uart_wakeup_int_raw interrupt.
	WAKEUP_INT_CLR: u1,
	reserved0: u12,
};

const UART0_CLKDIV = packed struct {
	/// The integral part of the frequency divider factor.
	CLKDIV: u12,
	reserved0: u8,
	/// The decimal part of the frequency divider factor.
	FRAG: u4,
	reserved1: u8,
};

const UART0_RX_FILT = packed struct {
	/// when input pulse width is lower than this value, the pulse is ignored.
	GLITCH_FILT: u8,
	/// Set this bit to enable Rx signal filter.
	GLITCH_FILT_EN: u1,
	reserved0: u23,
};

const UART0_STATUS = packed struct {
	/// Stores the byte number of valid data in Rx-FIFO.
	RXFIFO_CNT: u10,
	reserved0: u3,
	/// The register represent the level value of the internal uart dsr signal.
	DSRN: u1,
	/// This register represent the level value of the internal uart cts signal.
	CTSN: u1,
	/// This register represent the  level value of the internal uart rxd signal.
	RXD: u1,
	/// Stores the byte number of data in Tx-FIFO.
	TXFIFO_CNT: u10,
	reserved1: u3,
	/// This bit represents the level of the internal uart dtr signal.
	DTRN: u1,
	/// This bit represents the level of the internal uart rts signal.
	RTSN: u1,
	/// This bit represents the  level of the internal uart txd signal.
	TXD: u1,
};

const UART0_CONF0 = packed struct {
	/// This register is used to configure the parity check mode.
	PARITY: u1,
	/// Set this bit to enable uart parity check.
	PARITY_EN: u1,
	/// This register is used to set the length of data.
	BIT_NUM: u2,
	/// This register is used to set the length of  stop bit.
	STOP_BIT_NUM: u2,
	/// This register is used to configure the software rts signal which is used in software flow control.
	SW_RTS: u1,
	/// This register is used to configure the software dtr signal which is used in software flow control.
	SW_DTR: u1,
	/// Set this bit to enbale transmitter to  send NULL when the process of sending data is done.
	TXD_BRK: u1,
	/// Set this bit to enable IrDA loopback mode.
	IRDA_DPLX: u1,
	/// This is the start enable bit for IrDA transmitter.
	IRDA_TX_EN: u1,
	/// 1'h1: The IrDA transmitter's 11th bit is the same as 10th bit. 1'h0: Set IrDA transmitter's 11th bit to 0.
	IRDA_WCTL: u1,
	/// Set this bit to invert the level of  IrDA transmitter.
	IRDA_TX_INV: u1,
	/// Set this bit to invert the level of IrDA receiver.
	IRDA_RX_INV: u1,
	/// Set this bit to enable uart loopback test mode.
	LOOPBACK: u1,
	/// Set this bit to enable flow control function for transmitter.
	TX_FLOW_EN: u1,
	/// Set this bit to enable IrDA protocol.
	IRDA_EN: u1,
	/// Set this bit to reset the uart receive-FIFO.
	RXFIFO_RST: u1,
	/// Set this bit to reset the uart transmit-FIFO.
	TXFIFO_RST: u1,
	/// Set this bit to inverse the level value of uart rxd signal.
	RXD_INV: u1,
	/// Set this bit to inverse the level value of uart cts signal.
	CTS_INV: u1,
	/// Set this bit to inverse the level value of uart dsr signal.
	DSR_INV: u1,
	/// Set this bit to inverse the level value of uart txd signal.
	TXD_INV: u1,
	/// Set this bit to inverse the level value of uart rts signal.
	RTS_INV: u1,
	/// Set this bit to inverse the level value of uart dtr signal.
	DTR_INV: u1,
	/// 1'h1: Force clock on for register. 1'h0: Support clock only when application writes registers.
	CLK_EN: u1,
	/// 1'h1: Receiver stops storing data into FIFO when data is wrong. 1'h0: Receiver stores the data even if the  received data is wrong.
	ERR_WR_MASK: u1,
	/// This is the enable bit for detecting baudrate.
	AUTOBAUD_EN: u1,
	/// UART memory clock gate enable signal.
	MEM_CLK_EN: u1,
	reserved0: u3,
};

const UART0_CONF1 = packed struct {
	/// It will produce rxfifo_full_int interrupt when receiver receives more data than this register value.
	RXFIFO_FULL_THRHD: u9,
	/// It will produce txfifo_empty_int interrupt when the data amount in Tx-FIFO is less than this register value.
	TXFIFO_EMPTY_THRHD: u9,
	/// Disable UART Rx data overflow detect.
	DIS_RX_DAT_OVF: u1,
	/// Set this bit to stop accumulating idle_cnt when hardware flow control works.
	RX_TOUT_FLOW_DIS: u1,
	/// This is the flow enable bit for UART receiver.
	RX_FLOW_EN: u1,
	/// This is the enble bit for uart receiver's timeout function.
	RX_TOUT_EN: u1,
	reserved0: u10,
};

const UART0_LOWPULSE = packed struct {
	/// This register stores the value of the minimum duration time of the low level pulse. It is used in baud rate-detect process.
	MIN_CNT: u12,
	reserved0: u20,
};

const UART0_HIGHPULSE = packed struct {
	/// This register stores  the value of the maxinum duration time for the high level pulse. It is used in baud rate-detect process.
	MIN_CNT: u12,
	reserved0: u20,
};

const UART0_RXD_CNT = packed struct {
	/// This register stores the count of rxd edge change. It is used in baud rate-detect process.
	RXD_EDGE_CNT: u10,
	reserved0: u22,
};

const UART0_FLOW_CONF = packed struct {
	/// Set this bit to enable software flow control. It is used with register sw_xon or sw_xoff.
	SW_FLOW_CON_EN: u1,
	/// Set this bit to remove flow control char from the received data.
	XONOFF_DEL: u1,
	/// Set this bit to enable the transmitter to go on sending data.
	FORCE_XON: u1,
	/// Set this bit to stop the  transmitter from sending data.
	FORCE_XOFF: u1,
	/// Set this bit to send Xon char. It is cleared by hardware automatically.
	SEND_XON: u1,
	/// Set this bit to send Xoff char. It is cleared by hardware automatically.
	SEND_XOFF: u1,
	reserved0: u26,
};

const UART0_SLEEP_CONF = packed struct {
	/// The uart is activated from light sleeping mode when the input rxd edge changes more times than this register value.
	ACTIVE_THRESHOLD: u10,
	reserved0: u22,
};

const UART0_SWFC_CONF0 = packed struct {
	/// When the data amount in Rx-FIFO is more than this register value with uart_sw_flow_con_en set to 1, it will send a Xoff char.
	XOFF_THRESHOLD: u9,
	/// This register stores the Xoff flow control char.
	XOFF_CHAR: u8,
	reserved0: u15,
};

const UART0_SWFC_CONF1 = packed struct {
	/// When the data amount in Rx-FIFO is less than this register value with uart_sw_flow_con_en set to 1, it will send a Xon char.
	XON_THRESHOLD: u9,
	/// This register stores the Xon flow control char.
	XON_CHAR: u8,
	reserved0: u15,
};

const UART0_TXBRK_CONF = packed struct {
	/// This register is used to configure the number of 0 to be sent after the process of sending data is done. It is active when txd_brk is set to 1.
	TX_BRK_NUM: u8,
	reserved0: u24,
};

const UART0_IDLE_CONF = packed struct {
	/// It will produce frame end signal when receiver takes more time to receive one byte data than this register value.
	RX_IDLE_THRHD: u10,
	/// This register is used to configure the duration time between transfers.
	TX_IDLE_NUM: u10,
	reserved0: u12,
};

const UART0_RS485_CONF = packed struct {
	/// Set this bit to choose the rs485 mode.
	RS485_EN: u1,
	/// Set this bit to delay the stop bit by 1 bit.
	DL0_EN: u1,
	/// Set this bit to delay the stop bit by 1 bit.
	DL1_EN: u1,
	/// Set this bit to enable receiver could receive data when the transmitter is transmitting data in rs485 mode.
	RS485TX_RX_EN: u1,
	/// 1'h1: enable rs485 transmitter to send data when rs485 receiver line is busy.
	RS485RXBY_TX_EN: u1,
	/// This register is used to delay the receiver's internal data signal.
	RS485_RX_DLY_NUM: u1,
	/// This register is used to delay the transmitter's internal data signal.
	RS485_TX_DLY_NUM: u4,
	reserved0: u22,
};

const UART0_AT_CMD_PRECNT = packed struct {
	/// This register is used to configure the idle duration time before the first at_cmd is received by receiver.
	PRE_IDLE_NUM: u16,
	reserved0: u16,
};

const UART0_AT_CMD_POSTCNT = packed struct {
	/// This register is used to configure the duration time between the last at_cmd and the next data.
	POST_IDLE_NUM: u16,
	reserved0: u16,
};

const UART0_AT_CMD_GAPTOUT = packed struct {
	/// This register is used to configure the duration time between the at_cmd chars.
	RX_GAP_TOUT: u16,
	reserved0: u16,
};

const UART0_AT_CMD_CHAR = packed struct {
	/// This register is used to configure the content of at_cmd char.
	AT_CMD_CHAR: u8,
	/// This register is used to configure the num of continuous at_cmd chars received by receiver.
	CHAR_NUM: u8,
	reserved0: u16,
};

const UART0_MEM_CONF = packed struct {
	reserved0: u1,
	/// This register is used to configure the amount of mem allocated for receive-FIFO. The default number is 128 bytes.
	RX_SIZE: u3,
	/// This register is used to configure the amount of mem allocated for transmit-FIFO. The default number is 128 bytes.
	TX_SIZE: u3,
	/// This register is used to configure the maximum amount of data that can be received  when hardware flow control works.
	RX_FLOW_THRHD: u9,
	/// This register is used to configure the threshold time that receiver takes to receive one byte. The rxfifo_tout_int interrupt will be trigger when the receiver takes more time to receive one byte with rx_tout_en set to 1.
	RX_TOUT_THRHD: u10,
	/// Set this bit to force power down UART memory.
	MEM_FORCE_PD: u1,
	/// Set this bit to force power up UART memory.
	MEM_FORCE_PU: u1,
	reserved1: u4,
};

const UART0_MEM_TX_STATUS = packed struct {
	/// This register stores the offset address in Tx-FIFO when software writes Tx-FIFO via APB.
	APB_TX_WADDR: u10,
	reserved0: u1,
	/// This register stores the offset address in Tx-FIFO when Tx-FSM reads data via Tx-FIFO_Ctrl.
	TX_RADDR: u10,
	reserved1: u11,
};

const UART0_MEM_RX_STATUS = packed struct {
	/// This register stores the offset address in RX-FIFO when software reads data from Rx-FIFO via APB. UART0 is 10'h100. UART1 is 10'h180.
	APB_RX_RADDR: u10,
	reserved0: u1,
	/// This register stores the offset address in Rx-FIFO when Rx-FIFO_Ctrl writes Rx-FIFO. UART0 is 10'h100. UART1 is 10'h180.
	RX_WADDR: u10,
	reserved1: u11,
};

const UART0_FSM_STATUS = packed struct {
	/// This is the status register of receiver.
	ST_URX_OUT: u4,
	/// This is the status register of transmitter.
	ST_UTX_OUT: u4,
	reserved0: u24,
};

const UART0_POSPULSE = packed struct {
	/// This register stores the minimal input clock count between two positive edges. It is used in boudrate-detect process.
	POSEDGE_MIN_CNT: u12,
	reserved0: u20,
};

const UART0_NEGPULSE = packed struct {
	/// This register stores the minimal input clock count between two negative edges. It is used in boudrate-detect process.
	NEGEDGE_MIN_CNT: u12,
	reserved0: u20,
};

const UART0_CLK_CONF = packed struct {
	/// The  denominator of the frequency divider factor.
	SCLK_DIV_B: u6,
	/// The numerator of the frequency divider factor.
	SCLK_DIV_A: u6,
	/// The integral part of the frequency divider factor.
	SCLK_DIV_NUM: u8,
	/// UART clock source select. 1: 80Mhz, 2: 8Mhz, 3: XTAL.
	SCLK_SEL: u2,
	/// Set this bit to enable UART Tx/Rx clock.
	SCLK_EN: u1,
	/// Write 1 then write 0 to this bit, reset UART Tx/Rx.
	RST_CORE: u1,
	/// Set this bit to enable UART Tx clock.
	TX_SCLK_EN: u1,
	/// Set this bit to enable UART Rx clock.
	RX_SCLK_EN: u1,
	/// Write 1 then write 0 to this bit, reset UART Tx.
	TX_RST_CORE: u1,
	/// Write 1 then write 0 to this bit, reset UART Rx.
	RX_RST_CORE: u1,
	reserved0: u4,
};

const UART0_DATE = packed struct {
	/// This is the version register.
	DATE: u32,
};

const UART0_ID = packed struct {
	/// This register is used to configure the uart_id.
	ID: u30,
	/// This bit used to select synchronize mode. 1: Registers are auto synchronized into UART Core clock and UART core should be keep the same with APB clock. 0: After configure registers, software needs to write 1 to UART_REG_UPDATE to synchronize registers.
	HIGH_SPEED: u1,
	/// Software write 1 would synchronize registers into UART Core clock domain and would be cleared by hardware after synchronization is done.
	REG_UPDATE: u1,
};

//Peripheral type
const UART0 = struct {
	/// FIFO data register
	FIFO: *volatile Register(UART0_FIFO),
	/// Raw interrupt status
	INT_RAW: *volatile Register(UART0_INT_RAW),
	/// Masked interrupt status
	INT_ST: *volatile Register(UART0_INT_ST),
	/// Interrupt enable bits
	INT_ENA: *volatile Register(UART0_INT_ENA),
	/// Interrupt clear bits
	INT_CLR: *volatile Register(UART0_INT_CLR),
	/// Clock divider configuration
	CLKDIV: *volatile Register(UART0_CLKDIV),
	/// Rx Filter configuration
	RX_FILT: *volatile Register(UART0_RX_FILT),
	/// UART status register
	STATUS: *volatile Register(UART0_STATUS),
	/// a
	CONF0: *volatile Register(UART0_CONF0),
	/// Configuration register 1
	CONF1: *volatile Register(UART0_CONF1),
	/// Autobaud minimum low pulse duration register
	LOWPULSE: *volatile Register(UART0_LOWPULSE),
	/// Autobaud minimum high pulse duration register
	HIGHPULSE: *volatile Register(UART0_HIGHPULSE),
	/// Autobaud edge change count register
	RXD_CNT: *volatile Register(UART0_RXD_CNT),
	/// Software flow-control configuration
	FLOW_CONF: *volatile Register(UART0_FLOW_CONF),
	/// Sleep-mode configuration
	SLEEP_CONF: *volatile Register(UART0_SLEEP_CONF),
	/// Software flow-control character configuration
	SWFC_CONF0: *volatile Register(UART0_SWFC_CONF0),
	/// Software flow-control character configuration
	SWFC_CONF1: *volatile Register(UART0_SWFC_CONF1),
	/// Tx Break character configuration
	TXBRK_CONF: *volatile Register(UART0_TXBRK_CONF),
	/// Frame-end idle configuration
	IDLE_CONF: *volatile Register(UART0_IDLE_CONF),
	/// RS485 mode configuration
	RS485_CONF: *volatile Register(UART0_RS485_CONF),
	/// Pre-sequence timing configuration
	AT_CMD_PRECNT: *volatile Register(UART0_AT_CMD_PRECNT),
	/// Post-sequence timing configuration
	AT_CMD_POSTCNT: *volatile Register(UART0_AT_CMD_POSTCNT),
	/// Timeout configuration
	AT_CMD_GAPTOUT: *volatile Register(UART0_AT_CMD_GAPTOUT),
	/// AT escape sequence detection configuration
	AT_CMD_CHAR: *volatile Register(UART0_AT_CMD_CHAR),
	/// UART threshold and allocation configuration
	MEM_CONF: *volatile Register(UART0_MEM_CONF),
	/// Tx-FIFO write and read offset address.
	MEM_TX_STATUS: *volatile Register(UART0_MEM_TX_STATUS),
	/// Rx-FIFO write and read offset address.
	MEM_RX_STATUS: *volatile Register(UART0_MEM_RX_STATUS),
	/// UART transmit and receive status.
	FSM_STATUS: *volatile Register(UART0_FSM_STATUS),
	/// Autobaud high pulse register
	POSPULSE: *volatile Register(UART0_POSPULSE),
	/// Autobaud low pulse register
	NEGPULSE: *volatile Register(UART0_NEGPULSE),
	/// UART core clock configuration
	CLK_CONF: *volatile Register(UART0_CLK_CONF),
	/// UART Version register
	DATE: *volatile Register(UART0_DATE),
	/// UART ID register
	ID: *volatile Register(UART0_ID),
};

// Peripheral instance
const UART0_instance = UART0 {
	.FIFO = @ptrFromInt(0x60000000),
	.INT_RAW = @ptrFromInt(0x60000004),
	.INT_ST = @ptrFromInt(0x60000008),
	.INT_ENA = @ptrFromInt(0x6000000c),
	.INT_CLR = @ptrFromInt(0x60000010),
	.CLKDIV = @ptrFromInt(0x60000014),
	.RX_FILT = @ptrFromInt(0x60000018),
	.STATUS = @ptrFromInt(0x6000001c),
	.CONF0 = @ptrFromInt(0x60000020),
	.CONF1 = @ptrFromInt(0x60000024),
	.LOWPULSE = @ptrFromInt(0x60000028),
	.HIGHPULSE = @ptrFromInt(0x6000002c),
	.RXD_CNT = @ptrFromInt(0x60000030),
	.FLOW_CONF = @ptrFromInt(0x60000034),
	.SLEEP_CONF = @ptrFromInt(0x60000038),
	.SWFC_CONF0 = @ptrFromInt(0x6000003c),
	.SWFC_CONF1 = @ptrFromInt(0x60000040),
	.TXBRK_CONF = @ptrFromInt(0x60000044),
	.IDLE_CONF = @ptrFromInt(0x60000048),
	.RS485_CONF = @ptrFromInt(0x6000004c),
	.AT_CMD_PRECNT = @ptrFromInt(0x60000050),
	.AT_CMD_POSTCNT = @ptrFromInt(0x60000054),
	.AT_CMD_GAPTOUT = @ptrFromInt(0x60000058),
	.AT_CMD_CHAR = @ptrFromInt(0x6000005c),
	.MEM_CONF = @ptrFromInt(0x60000060),
	.MEM_TX_STATUS = @ptrFromInt(0x60000064),
	.MEM_RX_STATUS = @ptrFromInt(0x60000068),
	.FSM_STATUS = @ptrFromInt(0x6000006c),
	.POSPULSE = @ptrFromInt(0x60000070),
	.NEGPULSE = @ptrFromInt(0x60000074),
	.CLK_CONF = @ptrFromInt(0x60000078),
	.DATE = @ptrFromInt(0x6000007c),
	.ID = @ptrFromInt(0x60000080),
};

//Peripheral type
const UART1 = struct {
};

// Peripheral instance
const UART1_instance = UART1 {
};

const UHCI0_CONF0 = packed struct {
	/// Write 1, then write 0 to this bit to reset decode state machine.
	TX_RST: u1,
	/// Write 1, then write 0 to this bit to reset encode state machine.
	RX_RST: u1,
	/// Set this bit to link up HCI and UART0.
	UART0_CE: u1,
	/// Set this bit to link up HCI and UART1.
	UART1_CE: u1,
	reserved0: u1,
	/// Set this bit to separate the data frame using a special char.
	SEPER_EN: u1,
	/// Set this bit to encode the data packet with a formatting header.
	HEAD_EN: u1,
	/// Set this bit to enable UHCI to receive the 16 bit CRC.
	CRC_REC_EN: u1,
	/// If this bit is set to 1, UHCI will end the payload receiving process when UART has been in idle state.
	UART_IDLE_EOF_EN: u1,
	/// If this bit is set to 1, UHCI decoder receiving payload data is end when the receiving byte count has reached the specified value. The value is payload length indicated by UHCI packet header when UHCI_HEAD_EN is 1 or the value is configuration value when UHCI_HEAD_EN is 0. If this bit is set to 0, UHCI decoder receiving payload data is end when 0xc0 is received.
	LEN_EOF_EN: u1,
	/// Set this bit to enable data integrity checking by appending a 16 bit CCITT-CRC to end of the payload.
	ENCODE_CRC_EN: u1,
	/// 1'b1: Force clock on for register. 1'b0: Support clock only when application writes registers.
	CLK_EN: u1,
	/// If this bit is set to 1, UHCI will end payload receive process when NULL frame is received by UART.
	UART_RX_BRK_EOF_EN: u1,
	reserved1: u19,
};

const UHCI0_INT_RAW = packed struct {
	/// a
	RX_START_INT_RAW: u1,
	/// a
	TX_START_INT_RAW: u1,
	/// a
	RX_HUNG_INT_RAW: u1,
	/// a
	TX_HUNG_INT_RAW: u1,
	/// a
	SEND_S_REG_Q_INT_RAW: u1,
	/// a
	SEND_A_REG_Q_INT_RAW: u1,
	/// This is the interrupt raw bit. Triggered when there are some errors in EOF in the
	OUT_EOF_INT_RAW: u1,
	/// Soft control int raw bit.
	APP_CTRL0_INT_RAW: u1,
	/// Soft control int raw bit.
	APP_CTRL1_INT_RAW: u1,
	reserved0: u23,
};

const UHCI0_INT_ST = packed struct {
	/// a
	RX_START_INT_ST: u1,
	/// a
	TX_START_INT_ST: u1,
	/// a
	RX_HUNG_INT_ST: u1,
	/// a
	TX_HUNG_INT_ST: u1,
	/// a
	SEND_S_REG_Q_INT_ST: u1,
	/// a
	SEND_A_REG_Q_INT_ST: u1,
	/// a
	OUTLINK_EOF_ERR_INT_ST: u1,
	/// a
	APP_CTRL0_INT_ST: u1,
	/// a
	APP_CTRL1_INT_ST: u1,
	reserved0: u23,
};

const UHCI0_INT_ENA = packed struct {
	/// a
	RX_START_INT_ENA: u1,
	/// a
	TX_START_INT_ENA: u1,
	/// a
	RX_HUNG_INT_ENA: u1,
	/// a
	TX_HUNG_INT_ENA: u1,
	/// a
	SEND_S_REG_Q_INT_ENA: u1,
	/// a
	SEND_A_REG_Q_INT_ENA: u1,
	/// a
	OUTLINK_EOF_ERR_INT_ENA: u1,
	/// a
	APP_CTRL0_INT_ENA: u1,
	/// a
	APP_CTRL1_INT_ENA: u1,
	reserved0: u23,
};

const UHCI0_INT_CLR = packed struct {
	/// a
	RX_START_INT_CLR: u1,
	/// a
	TX_START_INT_CLR: u1,
	/// a
	RX_HUNG_INT_CLR: u1,
	/// a
	TX_HUNG_INT_CLR: u1,
	/// a
	SEND_S_REG_Q_INT_CLR: u1,
	/// a
	SEND_A_REG_Q_INT_CLR: u1,
	/// a
	OUTLINK_EOF_ERR_INT_CLR: u1,
	/// a
	APP_CTRL0_INT_CLR: u1,
	/// a
	APP_CTRL1_INT_CLR: u1,
	reserved0: u23,
};

const UHCI0_CONF1 = packed struct {
	/// a
	CHECK_SUM_EN: u1,
	/// a
	CHECK_SEQ_EN: u1,
	/// a
	CRC_DISABLE: u1,
	/// a
	SAVE_HEAD: u1,
	/// a
	TX_CHECK_SUM_RE: u1,
	/// a
	TX_ACK_NUM_RE: u1,
	reserved0: u1,
	/// a
	WAIT_SW_START: u1,
	/// a
	SW_START: u1,
	reserved1: u23,
};

const UHCI0_STATE0 = packed struct {
	/// a
	RX_ERR_CAUSE: u3,
	/// a
	DECODE_STATE: u3,
	reserved0: u26,
};

const UHCI0_STATE1 = packed struct {
	/// a
	ENCODE_STATE: u3,
	reserved0: u29,
};

const UHCI0_ESCAPE_CONF = packed struct {
	/// a
	TX_C0_ESC_EN: u1,
	/// a
	TX_DB_ESC_EN: u1,
	/// a
	TX_11_ESC_EN: u1,
	/// a
	TX_13_ESC_EN: u1,
	/// a
	RX_C0_ESC_EN: u1,
	/// a
	RX_DB_ESC_EN: u1,
	/// a
	RX_11_ESC_EN: u1,
	/// a
	RX_13_ESC_EN: u1,
	reserved0: u24,
};

const UHCI0_HUNG_CONF = packed struct {
	/// a
	TXFIFO_TIMEOUT: u8,
	/// a
	TXFIFO_TIMEOUT_SHIFT: u3,
	/// a
	TXFIFO_TIMEOUT_ENA: u1,
	/// a
	RXFIFO_TIMEOUT: u8,
	/// a
	RXFIFO_TIMEOUT_SHIFT: u3,
	/// a
	RXFIFO_TIMEOUT_ENA: u1,
	reserved0: u8,
};

const UHCI0_ACK_NUM = packed struct {
	/// a
	ACK_NUM: u3,
	/// a
	LOAD: u1,
	reserved0: u28,
};

const UHCI0_RX_HEAD = packed struct {
	/// a
	RX_HEAD: u32,
};

const UHCI0_QUICK_SENT = packed struct {
	/// a
	SINGLE_SEND_NUM: u3,
	/// a
	SINGLE_SEND_EN: u1,
	/// a
	ALWAYS_SEND_NUM: u3,
	/// a
	ALWAYS_SEND_EN: u1,
	reserved0: u24,
};

const UHCI0_REG_Q0_WORD0 = packed struct {
	/// a
	SEND_Q0_WORD0: u32,
};

const UHCI0_REG_Q0_WORD1 = packed struct {
	/// a
	SEND_Q0_WORD1: u32,
};

const UHCI0_REG_Q1_WORD0 = packed struct {
	/// a
	SEND_Q1_WORD0: u32,
};

const UHCI0_REG_Q1_WORD1 = packed struct {
	/// a
	SEND_Q1_WORD1: u32,
};

const UHCI0_REG_Q2_WORD0 = packed struct {
	/// a
	SEND_Q2_WORD0: u32,
};

const UHCI0_REG_Q2_WORD1 = packed struct {
	/// a
	SEND_Q2_WORD1: u32,
};

const UHCI0_REG_Q3_WORD0 = packed struct {
	/// a
	SEND_Q3_WORD0: u32,
};

const UHCI0_REG_Q3_WORD1 = packed struct {
	/// a
	SEND_Q3_WORD1: u32,
};

const UHCI0_REG_Q4_WORD0 = packed struct {
	/// a
	SEND_Q4_WORD0: u32,
};

const UHCI0_REG_Q4_WORD1 = packed struct {
	/// a
	SEND_Q4_WORD1: u32,
};

const UHCI0_REG_Q5_WORD0 = packed struct {
	/// a
	SEND_Q5_WORD0: u32,
};

const UHCI0_REG_Q5_WORD1 = packed struct {
	/// a
	SEND_Q5_WORD1: u32,
};

const UHCI0_REG_Q6_WORD0 = packed struct {
	/// a
	SEND_Q6_WORD0: u32,
};

const UHCI0_REG_Q6_WORD1 = packed struct {
	/// a
	SEND_Q6_WORD1: u32,
};

const UHCI0_ESC_CONF0 = packed struct {
	/// a
	SEPER_CHAR: u8,
	/// a
	SEPER_ESC_CHAR0: u8,
	/// a
	SEPER_ESC_CHAR1: u8,
	reserved0: u8,
};

const UHCI0_ESC_CONF1 = packed struct {
	/// a
	ESC_SEQ0: u8,
	/// a
	ESC_SEQ0_CHAR0: u8,
	/// a
	ESC_SEQ0_CHAR1: u8,
	reserved0: u8,
};

const UHCI0_ESC_CONF2 = packed struct {
	/// a
	ESC_SEQ1: u8,
	/// a
	ESC_SEQ1_CHAR0: u8,
	/// a
	ESC_SEQ1_CHAR1: u8,
	reserved0: u8,
};

const UHCI0_ESC_CONF3 = packed struct {
	/// a
	ESC_SEQ2: u8,
	/// a
	ESC_SEQ2_CHAR0: u8,
	/// a
	ESC_SEQ2_CHAR1: u8,
	reserved0: u8,
};

const UHCI0_PKT_THRES = packed struct {
	/// a
	PKT_THRS: u13,
	reserved0: u19,
};

const UHCI0_DATE = packed struct {
	/// a
	DATE: u32,
};

//Peripheral type
const UHCI0 = struct {
	/// a
	CONF0: *volatile Register(UHCI0_CONF0),
	/// a
	INT_RAW: *volatile Register(UHCI0_INT_RAW),
	/// a
	INT_ST: *volatile Register(UHCI0_INT_ST),
	/// a
	INT_ENA: *volatile Register(UHCI0_INT_ENA),
	/// a
	INT_CLR: *volatile Register(UHCI0_INT_CLR),
	/// a
	CONF1: *volatile Register(UHCI0_CONF1),
	/// a
	STATE0: *volatile Register(UHCI0_STATE0),
	/// a
	STATE1: *volatile Register(UHCI0_STATE1),
	/// a
	ESCAPE_CONF: *volatile Register(UHCI0_ESCAPE_CONF),
	/// a
	HUNG_CONF: *volatile Register(UHCI0_HUNG_CONF),
	/// a
	ACK_NUM: *volatile Register(UHCI0_ACK_NUM),
	/// a
	RX_HEAD: *volatile Register(UHCI0_RX_HEAD),
	/// a
	QUICK_SENT: *volatile Register(UHCI0_QUICK_SENT),
	/// a
	REG_Q0_WORD0: *volatile Register(UHCI0_REG_Q0_WORD0),
	/// a
	REG_Q0_WORD1: *volatile Register(UHCI0_REG_Q0_WORD1),
	/// a
	REG_Q1_WORD0: *volatile Register(UHCI0_REG_Q1_WORD0),
	/// a
	REG_Q1_WORD1: *volatile Register(UHCI0_REG_Q1_WORD1),
	/// a
	REG_Q2_WORD0: *volatile Register(UHCI0_REG_Q2_WORD0),
	/// a
	REG_Q2_WORD1: *volatile Register(UHCI0_REG_Q2_WORD1),
	/// a
	REG_Q3_WORD0: *volatile Register(UHCI0_REG_Q3_WORD0),
	/// a
	REG_Q3_WORD1: *volatile Register(UHCI0_REG_Q3_WORD1),
	/// a
	REG_Q4_WORD0: *volatile Register(UHCI0_REG_Q4_WORD0),
	/// a
	REG_Q4_WORD1: *volatile Register(UHCI0_REG_Q4_WORD1),
	/// a
	REG_Q5_WORD0: *volatile Register(UHCI0_REG_Q5_WORD0),
	/// a
	REG_Q5_WORD1: *volatile Register(UHCI0_REG_Q5_WORD1),
	/// a
	REG_Q6_WORD0: *volatile Register(UHCI0_REG_Q6_WORD0),
	/// a
	REG_Q6_WORD1: *volatile Register(UHCI0_REG_Q6_WORD1),
	/// a
	ESC_CONF0: *volatile Register(UHCI0_ESC_CONF0),
	/// a
	ESC_CONF1: *volatile Register(UHCI0_ESC_CONF1),
	/// a
	ESC_CONF2: *volatile Register(UHCI0_ESC_CONF2),
	/// a
	ESC_CONF3: *volatile Register(UHCI0_ESC_CONF3),
	/// a
	PKT_THRES: *volatile Register(UHCI0_PKT_THRES),
	/// a
	DATE: *volatile Register(UHCI0_DATE),
};

// Peripheral instance
const UHCI0_instance = UHCI0 {
	.CONF0 = @ptrFromInt(0x60014000),
	.INT_RAW = @ptrFromInt(0x60014004),
	.INT_ST = @ptrFromInt(0x60014008),
	.INT_ENA = @ptrFromInt(0x6001400c),
	.INT_CLR = @ptrFromInt(0x60014010),
	.CONF1 = @ptrFromInt(0x60014014),
	.STATE0 = @ptrFromInt(0x60014018),
	.STATE1 = @ptrFromInt(0x6001401c),
	.ESCAPE_CONF = @ptrFromInt(0x60014020),
	.HUNG_CONF = @ptrFromInt(0x60014024),
	.ACK_NUM = @ptrFromInt(0x60014028),
	.RX_HEAD = @ptrFromInt(0x6001402c),
	.QUICK_SENT = @ptrFromInt(0x60014030),
	.REG_Q0_WORD0 = @ptrFromInt(0x60014034),
	.REG_Q0_WORD1 = @ptrFromInt(0x60014038),
	.REG_Q1_WORD0 = @ptrFromInt(0x6001403c),
	.REG_Q1_WORD1 = @ptrFromInt(0x60014040),
	.REG_Q2_WORD0 = @ptrFromInt(0x60014044),
	.REG_Q2_WORD1 = @ptrFromInt(0x60014048),
	.REG_Q3_WORD0 = @ptrFromInt(0x6001404c),
	.REG_Q3_WORD1 = @ptrFromInt(0x60014050),
	.REG_Q4_WORD0 = @ptrFromInt(0x60014054),
	.REG_Q4_WORD1 = @ptrFromInt(0x60014058),
	.REG_Q5_WORD0 = @ptrFromInt(0x6001405c),
	.REG_Q5_WORD1 = @ptrFromInt(0x60014060),
	.REG_Q6_WORD0 = @ptrFromInt(0x60014064),
	.REG_Q6_WORD1 = @ptrFromInt(0x60014068),
	.ESC_CONF0 = @ptrFromInt(0x6001406c),
	.ESC_CONF1 = @ptrFromInt(0x60014070),
	.ESC_CONF2 = @ptrFromInt(0x60014074),
	.ESC_CONF3 = @ptrFromInt(0x60014078),
	.PKT_THRES = @ptrFromInt(0x6001407c),
	.DATE = @ptrFromInt(0x60014080),
};

//Peripheral type
const UHCI1 = struct {
};

// Peripheral instance
const UHCI1_instance = UHCI1 {
};

const USB_DEVICE_EP1 = packed struct {
	/// Write and read byte data to/from UART Tx/Rx FIFO through this field. When USB_DEVICE_SERIAL_IN_EMPTY_INT is set, then user can write data (up to 64 bytes) into UART Tx FIFO. When USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is set, user can check USB_DEVICE_OUT_EP1_WR_ADDR USB_DEVICE_OUT_EP0_RD_ADDR to know how many data is received, then read data from UART Rx FIFO.
	RDWR_BYTE: u8,
	reserved0: u24,
};

const USB_DEVICE_EP1_CONF = packed struct {
	/// Set this bit to indicate writing byte data to UART Tx FIFO is done.
	WR_DONE: u1,
	/// 1'b1: Indicate UART Tx FIFO is not full and can write data into in. After writing USB_DEVICE_WR_DONE, this bit would be 0 until data in UART Tx FIFO is read by USB Host.
	SERIAL_IN_EP_DATA_FREE: u1,
	/// 1'b1: Indicate there is data in UART Rx FIFO.
	SERIAL_OUT_EP_DATA_AVAIL: u1,
	reserved0: u29,
};

const USB_DEVICE_INT_RAW = packed struct {
	/// The raw interrupt bit turns to high level when flush cmd is received for IN endpoint 2 of JTAG.
	JTAG_IN_FLUSH_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when SOF frame is received.
	SOF_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when Serial Port OUT Endpoint received one packet.
	SERIAL_OUT_RECV_PKT_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when Serial Port IN Endpoint is empty.
	SERIAL_IN_EMPTY_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when pid error is detected.
	PID_ERR_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when CRC5 error is detected.
	CRC5_ERR_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when CRC16 error is detected.
	CRC16_ERR_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when stuff error is detected.
	STUFF_ERR_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when IN token for IN endpoint 1 is received.
	IN_TOKEN_REC_IN_EP1_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when usb bus reset is detected.
	USB_BUS_RESET_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when OUT endpoint 1 received packet with zero palyload.
	OUT_EP1_ZERO_PAYLOAD_INT_RAW: u1,
	/// The raw interrupt bit turns to high level when OUT endpoint 2 received packet with zero palyload.
	OUT_EP2_ZERO_PAYLOAD_INT_RAW: u1,
	reserved0: u20,
};

const USB_DEVICE_INT_ST = packed struct {
	/// The raw interrupt status bit for the USB_DEVICE_JTAG_IN_FLUSH_INT interrupt.
	JTAG_IN_FLUSH_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_SOF_INT interrupt.
	SOF_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_SERIAL_OUT_RECV_PKT_INT interrupt.
	SERIAL_OUT_RECV_PKT_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_SERIAL_IN_EMPTY_INT interrupt.
	SERIAL_IN_EMPTY_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_PID_ERR_INT interrupt.
	PID_ERR_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_CRC5_ERR_INT interrupt.
	CRC5_ERR_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_CRC16_ERR_INT interrupt.
	CRC16_ERR_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_STUFF_ERR_INT interrupt.
	STUFF_ERR_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_IN_TOKEN_REC_IN_EP1_INT interrupt.
	IN_TOKEN_REC_IN_EP1_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_USB_BUS_RESET_INT interrupt.
	USB_BUS_RESET_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_OUT_EP1_ZERO_PAYLOAD_INT interrupt.
	OUT_EP1_ZERO_PAYLOAD_INT_ST: u1,
	/// The raw interrupt status bit for the USB_DEVICE_OUT_EP2_ZERO_PAYLOAD_INT interrupt.
	OUT_EP2_ZERO_PAYLOAD_INT_ST: u1,
	reserved0: u20,
};

const USB_DEVICE_INT_ENA = packed struct {
	/// The interrupt enable bit for the USB_DEVICE_JTAG_IN_FLUSH_INT interrupt.
	JTAG_IN_FLUSH_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_SOF_INT interrupt.
	SOF_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_SERIAL_OUT_RECV_PKT_INT interrupt.
	SERIAL_OUT_RECV_PKT_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_SERIAL_IN_EMPTY_INT interrupt.
	SERIAL_IN_EMPTY_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_PID_ERR_INT interrupt.
	PID_ERR_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_CRC5_ERR_INT interrupt.
	CRC5_ERR_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_CRC16_ERR_INT interrupt.
	CRC16_ERR_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_STUFF_ERR_INT interrupt.
	STUFF_ERR_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_IN_TOKEN_REC_IN_EP1_INT interrupt.
	IN_TOKEN_REC_IN_EP1_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_USB_BUS_RESET_INT interrupt.
	USB_BUS_RESET_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_OUT_EP1_ZERO_PAYLOAD_INT interrupt.
	OUT_EP1_ZERO_PAYLOAD_INT_ENA: u1,
	/// The interrupt enable bit for the USB_DEVICE_OUT_EP2_ZERO_PAYLOAD_INT interrupt.
	OUT_EP2_ZERO_PAYLOAD_INT_ENA: u1,
	reserved0: u20,
};

const USB_DEVICE_INT_CLR = packed struct {
	/// Set this bit to clear the USB_DEVICE_JTAG_IN_FLUSH_INT interrupt.
	JTAG_IN_FLUSH_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_JTAG_SOF_INT interrupt.
	SOF_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_SERIAL_OUT_RECV_PKT_INT interrupt.
	SERIAL_OUT_RECV_PKT_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_SERIAL_IN_EMPTY_INT interrupt.
	SERIAL_IN_EMPTY_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_PID_ERR_INT interrupt.
	PID_ERR_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_CRC5_ERR_INT interrupt.
	CRC5_ERR_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_CRC16_ERR_INT interrupt.
	CRC16_ERR_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_STUFF_ERR_INT interrupt.
	STUFF_ERR_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_IN_TOKEN_IN_EP1_INT interrupt.
	IN_TOKEN_REC_IN_EP1_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_USB_BUS_RESET_INT interrupt.
	USB_BUS_RESET_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_OUT_EP1_ZERO_PAYLOAD_INT interrupt.
	OUT_EP1_ZERO_PAYLOAD_INT_CLR: u1,
	/// Set this bit to clear the USB_DEVICE_OUT_EP2_ZERO_PAYLOAD_INT interrupt.
	OUT_EP2_ZERO_PAYLOAD_INT_CLR: u1,
	reserved0: u20,
};

const USB_DEVICE_CONF0 = packed struct {
	/// Select internal/external PHY
	PHY_SEL: u1,
	/// Enable software control USB D+ D- exchange
	EXCHG_PINS_OVERRIDE: u1,
	/// USB D+ D- exchange
	EXCHG_PINS: u1,
	/// Control single-end input high threshold,1.76V to 2V, step 80mV
	VREFH: u2,
	/// Control single-end input low threshold,0.8V to 1.04V, step 80mV
	VREFL: u2,
	/// Enable software control input  threshold
	VREF_OVERRIDE: u1,
	/// Enable software control USB D+ D- pullup pulldown
	PAD_PULL_OVERRIDE: u1,
	/// Control USB D+ pull up.
	DP_PULLUP: u1,
	/// Control USB D+ pull down.
	DP_PULLDOWN: u1,
	/// Control USB D- pull up.
	DM_PULLUP: u1,
	/// Control USB D- pull down.
	DM_PULLDOWN: u1,
	/// Control pull up value.
	PULLUP_VALUE: u1,
	/// Enable USB pad function.
	USB_PAD_ENABLE: u1,
	reserved0: u17,
};

const USB_DEVICE_TEST = packed struct {
	/// Enable test of the USB pad
	ENABLE: u1,
	/// USB pad oen in test
	USB_OE: u1,
	/// USB D+ tx value in test
	TX_DP: u1,
	/// USB D- tx value in test
	TX_DM: u1,
	reserved0: u28,
};

const USB_DEVICE_JFIFO_ST = packed struct {
	/// JTAT in fifo counter.
	IN_FIFO_CNT: u2,
	/// 1: JTAG in fifo is empty.
	IN_FIFO_EMPTY: u1,
	/// 1: JTAG in fifo is full.
	IN_FIFO_FULL: u1,
	/// JTAT out fifo counter.
	OUT_FIFO_CNT: u2,
	/// 1: JTAG out fifo is empty.
	OUT_FIFO_EMPTY: u1,
	/// 1: JTAG out fifo is full.
	OUT_FIFO_FULL: u1,
	/// Write 1 to reset JTAG in fifo.
	IN_FIFO_RESET: u1,
	/// Write 1 to reset JTAG out fifo.
	OUT_FIFO_RESET: u1,
	reserved0: u22,
};

const USB_DEVICE_FRAM_NUM = packed struct {
	/// Frame index of received SOF frame.
	SOF_FRAME_INDEX: u11,
	reserved0: u21,
};

const USB_DEVICE_IN_EP0_ST = packed struct {
	/// State of IN Endpoint 0.
	IN_EP0_STATE: u2,
	/// Write data address of IN endpoint 0.
	IN_EP0_WR_ADDR: u7,
	/// Read data address of IN endpoint 0.
	IN_EP0_RD_ADDR: u7,
	reserved0: u16,
};

const USB_DEVICE_IN_EP1_ST = packed struct {
	/// State of IN Endpoint 1.
	IN_EP1_STATE: u2,
	/// Write data address of IN endpoint 1.
	IN_EP1_WR_ADDR: u7,
	/// Read data address of IN endpoint 1.
	IN_EP1_RD_ADDR: u7,
	reserved0: u16,
};

const USB_DEVICE_IN_EP2_ST = packed struct {
	/// State of IN Endpoint 2.
	IN_EP2_STATE: u2,
	/// Write data address of IN endpoint 2.
	IN_EP2_WR_ADDR: u7,
	/// Read data address of IN endpoint 2.
	IN_EP2_RD_ADDR: u7,
	reserved0: u16,
};

const USB_DEVICE_IN_EP3_ST = packed struct {
	/// State of IN Endpoint 3.
	IN_EP3_STATE: u2,
	/// Write data address of IN endpoint 3.
	IN_EP3_WR_ADDR: u7,
	/// Read data address of IN endpoint 3.
	IN_EP3_RD_ADDR: u7,
	reserved0: u16,
};

const USB_DEVICE_OUT_EP0_ST = packed struct {
	/// State of OUT Endpoint 0.
	OUT_EP0_STATE: u2,
	/// Write data address of OUT endpoint 0. When USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is detected, there are USB_DEVICE_OUT_EP0_WR_ADDR-2 bytes data in OUT EP0.
	OUT_EP0_WR_ADDR: u7,
	/// Read data address of OUT endpoint 0.
	OUT_EP0_RD_ADDR: u7,
	reserved0: u16,
};

const USB_DEVICE_OUT_EP1_ST = packed struct {
	/// State of OUT Endpoint 1.
	OUT_EP1_STATE: u2,
	/// Write data address of OUT endpoint 1. When USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is detected, there are USB_DEVICE_OUT_EP1_WR_ADDR-2 bytes data in OUT EP1.
	OUT_EP1_WR_ADDR: u7,
	/// Read data address of OUT endpoint 1.
	OUT_EP1_RD_ADDR: u7,
	/// Data count in OUT endpoint 1 when one packet is received.
	OUT_EP1_REC_DATA_CNT: u7,
	reserved0: u9,
};

const USB_DEVICE_OUT_EP2_ST = packed struct {
	/// State of OUT Endpoint 2.
	OUT_EP2_STATE: u2,
	/// Write data address of OUT endpoint 2. When USB_DEVICE_SERIAL_OUT_RECV_PKT_INT is detected, there are USB_DEVICE_OUT_EP2_WR_ADDR-2 bytes data in OUT EP2.
	OUT_EP2_WR_ADDR: u7,
	/// Read data address of OUT endpoint 2.
	OUT_EP2_RD_ADDR: u7,
	reserved0: u16,
};

const USB_DEVICE_MISC_CONF = packed struct {
	/// 1'h1: Force clock on for register. 1'h0: Support clock only when application writes registers.
	CLK_EN: u1,
	reserved0: u31,
};

const USB_DEVICE_MEM_CONF = packed struct {
	/// 1: power down usb memory.
	USB_MEM_PD: u1,
	/// 1: Force clock on for usb memory.
	USB_MEM_CLK_EN: u1,
	reserved0: u30,
};

const USB_DEVICE_DATE = packed struct {
	/// register version.
	DATE: u32,
};

//Peripheral type
const USB_DEVICE = struct {
	/// USB_DEVICE_EP1_REG.
	EP1: *volatile Register(USB_DEVICE_EP1),
	/// USB_DEVICE_EP1_CONF_REG.
	EP1_CONF: *volatile Register(USB_DEVICE_EP1_CONF),
	/// USB_DEVICE_INT_RAW_REG.
	INT_RAW: *volatile Register(USB_DEVICE_INT_RAW),
	/// USB_DEVICE_INT_ST_REG.
	INT_ST: *volatile Register(USB_DEVICE_INT_ST),
	/// USB_DEVICE_INT_ENA_REG.
	INT_ENA: *volatile Register(USB_DEVICE_INT_ENA),
	/// USB_DEVICE_INT_CLR_REG.
	INT_CLR: *volatile Register(USB_DEVICE_INT_CLR),
	/// USB_DEVICE_CONF0_REG.
	CONF0: *volatile Register(USB_DEVICE_CONF0),
	/// USB_DEVICE_TEST_REG.
	TEST: *volatile Register(USB_DEVICE_TEST),
	/// USB_DEVICE_JFIFO_ST_REG.
	JFIFO_ST: *volatile Register(USB_DEVICE_JFIFO_ST),
	/// USB_DEVICE_FRAM_NUM_REG.
	FRAM_NUM: *volatile Register(USB_DEVICE_FRAM_NUM),
	/// USB_DEVICE_IN_EP0_ST_REG.
	IN_EP0_ST: *volatile Register(USB_DEVICE_IN_EP0_ST),
	/// USB_DEVICE_IN_EP1_ST_REG.
	IN_EP1_ST: *volatile Register(USB_DEVICE_IN_EP1_ST),
	/// USB_DEVICE_IN_EP2_ST_REG.
	IN_EP2_ST: *volatile Register(USB_DEVICE_IN_EP2_ST),
	/// USB_DEVICE_IN_EP3_ST_REG.
	IN_EP3_ST: *volatile Register(USB_DEVICE_IN_EP3_ST),
	/// USB_DEVICE_OUT_EP0_ST_REG.
	OUT_EP0_ST: *volatile Register(USB_DEVICE_OUT_EP0_ST),
	/// USB_DEVICE_OUT_EP1_ST_REG.
	OUT_EP1_ST: *volatile Register(USB_DEVICE_OUT_EP1_ST),
	/// USB_DEVICE_OUT_EP2_ST_REG.
	OUT_EP2_ST: *volatile Register(USB_DEVICE_OUT_EP2_ST),
	/// USB_DEVICE_MISC_CONF_REG.
	MISC_CONF: *volatile Register(USB_DEVICE_MISC_CONF),
	/// USB_DEVICE_MEM_CONF_REG.
	MEM_CONF: *volatile Register(USB_DEVICE_MEM_CONF),
	/// USB_DEVICE_DATE_REG.
	DATE: *volatile Register(USB_DEVICE_DATE),
};

// Peripheral instance
const USB_DEVICE_instance = USB_DEVICE {
	.EP1 = @ptrFromInt(0x60043000),
	.EP1_CONF = @ptrFromInt(0x60043004),
	.INT_RAW = @ptrFromInt(0x60043008),
	.INT_ST = @ptrFromInt(0x6004300c),
	.INT_ENA = @ptrFromInt(0x60043010),
	.INT_CLR = @ptrFromInt(0x60043014),
	.CONF0 = @ptrFromInt(0x60043018),
	.TEST = @ptrFromInt(0x6004301c),
	.JFIFO_ST = @ptrFromInt(0x60043020),
	.FRAM_NUM = @ptrFromInt(0x60043024),
	.IN_EP0_ST = @ptrFromInt(0x60043028),
	.IN_EP1_ST = @ptrFromInt(0x6004302c),
	.IN_EP2_ST = @ptrFromInt(0x60043030),
	.IN_EP3_ST = @ptrFromInt(0x60043034),
	.OUT_EP0_ST = @ptrFromInt(0x60043038),
	.OUT_EP1_ST = @ptrFromInt(0x6004303c),
	.OUT_EP2_ST = @ptrFromInt(0x60043040),
	.MISC_CONF = @ptrFromInt(0x60043044),
	.MEM_CONF = @ptrFromInt(0x60043048),
	.DATE = @ptrFromInt(0x60043080),
};

const XTS_AES_PLAIN_MEMN = packed struct {
	reserved0: u32,
};

const XTS_AES_LINESIZE = packed struct {
	/// This bit stores the line size parameter. 0: 16Byte, 1: 32Byte.
	LINESIZE: u1,
	reserved0: u31,
};

const XTS_AES_DESTINATION = packed struct {
	/// This bit stores the destination. 0: flash(default). 1: reserved.
	DESTINATION: u1,
	reserved0: u31,
};

const XTS_AES_PHYSICAL_ADDRESS = packed struct {
	/// Those bits stores the physical address. If linesize is 16-byte, the physical address should be aligned of 16 bytes. If linesize is 32-byte, the physical address should be aligned of 32 bytes.
	PHYSICAL_ADDRESS: u30,
	reserved0: u2,
};

const XTS_AES_TRIGGER = packed struct {
	/// Set this bit to start manual encryption calculation
	TRIGGER: u1,
	reserved0: u31,
};

const XTS_AES_RELEASE = packed struct {
	/// Set this bit to release the manual encrypted result, after that the result will be visible to spi
	RELEASE: u1,
	reserved0: u31,
};

const XTS_AES_DESTROY = packed struct {
	/// Set this bit to destroy XTS-AES result.
	DESTROY: u1,
	reserved0: u31,
};

const XTS_AES_STATE = packed struct {
	/// Those bits shows XTS-AES status. 0=IDLE, 1=WORK, 2=RELEASE, 3=USE. IDLE means that XTS-AES is idle. WORK means that XTS-AES is busy with calculation. RELEASE means the encrypted result is generated but not visible to mspi. USE means that the encrypted result is visible to mspi.
	STATE: u2,
	reserved0: u30,
};

const XTS_AES_DATE = packed struct {
	/// Those bits stores the version information of XTS-AES.
	DATE: u30,
	reserved0: u2,
};

//Peripheral type
const XTS_AES = struct {
	/// The memory that stores plaintext
	PLAIN_MEM0: *volatile Register(XTS_AES_PLAIN_MEMN),
	/// The memory that stores plaintext
	PLAIN_MEM1: *volatile Register(XTS_AES_PLAIN_MEMN),
	/// The memory that stores plaintext
	PLAIN_MEM2: *volatile Register(XTS_AES_PLAIN_MEMN),
	/// The memory that stores plaintext
	PLAIN_MEM3: *volatile Register(XTS_AES_PLAIN_MEMN),
	/// XTS-AES line-size register
	LINESIZE: *volatile Register(XTS_AES_LINESIZE),
	/// XTS-AES destination register
	DESTINATION: *volatile Register(XTS_AES_DESTINATION),
	/// XTS-AES physical address register
	PHYSICAL_ADDRESS: *volatile Register(XTS_AES_PHYSICAL_ADDRESS),
	/// XTS-AES trigger register
	TRIGGER: *volatile Register(XTS_AES_TRIGGER),
	/// XTS-AES release register
	RELEASE: *volatile Register(XTS_AES_RELEASE),
	/// XTS-AES destroy register
	DESTROY: *volatile Register(XTS_AES_DESTROY),
	/// XTS-AES status register
	STATE: *volatile Register(XTS_AES_STATE),
	/// XTS-AES version control register
	DATE: *volatile Register(XTS_AES_DATE),
};

// Peripheral instance
const XTS_AES_instance = XTS_AES {
	.PLAIN_MEM0 = @ptrFromInt(0x600cc000),
	.PLAIN_MEM1 = @ptrFromInt(0x600cc000),
	.PLAIN_MEM2 = @ptrFromInt(0x600cc000),
	.PLAIN_MEM3 = @ptrFromInt(0x600cc000),
	.LINESIZE = @ptrFromInt(0x600cc040),
	.DESTINATION = @ptrFromInt(0x600cc044),
	.PHYSICAL_ADDRESS = @ptrFromInt(0x600cc048),
	.TRIGGER = @ptrFromInt(0x600cc04c),
	.RELEASE = @ptrFromInt(0x600cc050),
	.DESTROY = @ptrFromInt(0x600cc054),
	.STATE = @ptrFromInt(0x600cc058),
	.DATE = @ptrFromInt(0x600cc05c),
};

const Peripherals = struct {
	/// AES (Advanced Encryption Standard) Accelerator
	AES: AES,
	/// APB (Advanced Peripheral Bus) Controller
	APB_CTRL: APB_CTRL,
	/// SAR (Successive Approximation Register) Analog-to-Digital Converter
	APB_SARADC: APB_SARADC,
	/// Debug Assist
	ASSIST_DEBUG: ASSIST_DEBUG,
	/// BB Peripheral
	BB: BB,
	/// DMA (Direct Memory Access) Controller
	DMA: DMA,
	/// Digital Signature
	DS: DS,
	/// eFuse Controller
	EFUSE: EFUSE,
	/// External Memory
	EXTMEM: EXTMEM,
	/// General Purpose Input/Output
	GPIO: GPIO,
	/// Sigma-Delta Modulation
	GPIO_SD: GPIO_SD,
	/// HMAC (Hash-based Message Authentication Code) Accelerator
	HMAC: HMAC,
	/// I2C (Inter-Integrated Circuit) Controller 0
	I2C0: I2C0,
	/// I2S (Inter-IC Sound) Controller 0
	I2S0: I2S0,
	/// Interrupt Controller (Core 0)
	INTERRUPT_CORE0: INTERRUPT_CORE0,
	/// Input/Output Multiplexer
	IO_MUX: IO_MUX,
	/// LED Control PWM (Pulse Width Modulation)
	LEDC: LEDC,
	/// Remote Control
	RMT: RMT,
	/// Hardware Random Number Generator
	RNG: RNG,
	/// RSA (Rivest Shamir Adleman) Accelerator
	RSA: RSA,
	/// Real-Time Clock Control
	RTC_CNTL: RTC_CNTL,
	/// SENSITIVE Peripheral
	SENSITIVE: SENSITIVE,
	/// SHA (Secure Hash Algorithm) Accelerator
	SHA: SHA,
	/// SPI (Serial Peripheral Interface) Controller 0
	SPI0: SPI0,
	/// SPI (Serial Peripheral Interface) Controller 1
	SPI1: SPI1,
	/// SPI (Serial Peripheral Interface) Controller 2
	SPI2: SPI2,
	/// System Configuration Registers
	SYSTEM: SYSTEM,
	/// System Timer
	SYSTIMER: SYSTIMER,
	/// Timer Group 0
	TIMG0: TIMG0,
	/// Timer Group 1
	TIMG1: TIMG1,
	/// Two-Wire Automotive Interface
	TWAI0: TWAI0,
	/// UART (Universal Asynchronous Receiver-Transmitter) Controller 0
	UART0: UART0,
	/// UART (Universal Asynchronous Receiver-Transmitter) Controller 1
	UART1: UART1,
	/// Universal Host Controller Interface 0
	UHCI0: UHCI0,
	/// Universal Host Controller Interface 1
	UHCI1: UHCI1,
	/// Full-speed USB Serial/JTAG Controller
	USB_DEVICE: USB_DEVICE,
	/// XTS-AES-128 Flash Encryption
	XTS_AES: XTS_AES,
};

pub const peripherals = Peripherals {
	.AES = AES_instance,
	.APB_CTRL = APB_CTRL_instance,
	.APB_SARADC = APB_SARADC_instance,
	.ASSIST_DEBUG = ASSIST_DEBUG_instance,
	.BB = BB_instance,
	.DMA = DMA_instance,
	.DS = DS_instance,
	.EFUSE = EFUSE_instance,
	.EXTMEM = EXTMEM_instance,
	.GPIO = GPIO_instance,
	.GPIO_SD = GPIO_SD_instance,
	.HMAC = HMAC_instance,
	.I2C0 = I2C0_instance,
	.I2S0 = I2S0_instance,
	.INTERRUPT_CORE0 = INTERRUPT_CORE0_instance,
	.IO_MUX = IO_MUX_instance,
	.LEDC = LEDC_instance,
	.RMT = RMT_instance,
	.RNG = RNG_instance,
	.RSA = RSA_instance,
	.RTC_CNTL = RTC_CNTL_instance,
	.SENSITIVE = SENSITIVE_instance,
	.SHA = SHA_instance,
	.SPI0 = SPI0_instance,
	.SPI1 = SPI1_instance,
	.SPI2 = SPI2_instance,
	.SYSTEM = SYSTEM_instance,
	.SYSTIMER = SYSTIMER_instance,
	.TIMG0 = TIMG0_instance,
	.TIMG1 = TIMG1_instance,
	.TWAI0 = TWAI0_instance,
	.UART0 = UART0_instance,
	.UART1 = UART1_instance,
	.UHCI0 = UHCI0_instance,
	.UHCI1 = UHCI1_instance,
	.USB_DEVICE = USB_DEVICE_instance,
	.XTS_AES = XTS_AES_instance,
};

