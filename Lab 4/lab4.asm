;--------------------------------------------------------
; File Created by C51
; Version 1.0.0 #1069 (Apr 23 2015) (MSVC)
; This file was generated Wed Mar 01 17:50:02 2017
;--------------------------------------------------------
$name lab4
$optc51 --model-small
$printf_float
	R_DSEG    segment data
	R_CSEG    segment code
	R_BSEG    segment bit
	R_XSEG    segment xdata
	R_PSEG    segment xdata
	R_ISEG    segment idata
	R_OSEG    segment data overlay
	BIT_BANK  segment data overlay
	R_HOME    segment code
	R_GSINIT  segment code
	R_IXSEG   segment xdata
	R_CONST   segment code
	R_XINIT   segment code
	R_DINIT   segment code

;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	public _main
	public _LCD_print_PARM_3
	public _LCD_print_PARM_2
	public _overflow_count
	public __c51_external_startup
	public _delayUs
	public _delay
	public _PORT_init
	public _SYSCLK_init
	public _UART0_init
	public _TIMER0_init
	public _LCD_pulse
	public _LCD_byte
	public _LCD_write
	public _LCD_cmd
	public _LCD_init
	public _LCD_print
;--------------------------------------------------------
; Special Function Registers
;--------------------------------------------------------
_P0             DATA 0x80
_SP             DATA 0x81
_DPL            DATA 0x82
_DPH            DATA 0x83
_EMI0TC         DATA 0x84
_EMI0CF         DATA 0x85
_OSCLCN         DATA 0x86
_PCON           DATA 0x87
_TCON           DATA 0x88
_TMOD           DATA 0x89
_TL0            DATA 0x8a
_TL1            DATA 0x8b
_TH0            DATA 0x8c
_TH1            DATA 0x8d
_CKCON          DATA 0x8e
_PSCTL          DATA 0x8f
_P1             DATA 0x90
_TMR3CN         DATA 0x91
_TMR4CN         DATA 0x91
_TMR3RLL        DATA 0x92
_TMR4RLL        DATA 0x92
_TMR3RLH        DATA 0x93
_TMR4RLH        DATA 0x93
_TMR3L          DATA 0x94
_TMR4L          DATA 0x94
_TMR3H          DATA 0x95
_TMR4H          DATA 0x95
_USB0ADR        DATA 0x96
_USB0DAT        DATA 0x97
_SCON           DATA 0x98
_SCON0          DATA 0x98
_SBUF           DATA 0x99
_SBUF0          DATA 0x99
_CPT1CN         DATA 0x9a
_CPT0CN         DATA 0x9b
_CPT1MD         DATA 0x9c
_CPT0MD         DATA 0x9d
_CPT1MX         DATA 0x9e
_CPT0MX         DATA 0x9f
_P2             DATA 0xa0
_SPI0CFG        DATA 0xa1
_SPI0CKR        DATA 0xa2
_SPI0DAT        DATA 0xa3
_P0MDOUT        DATA 0xa4
_P1MDOUT        DATA 0xa5
_P2MDOUT        DATA 0xa6
_P3MDOUT        DATA 0xa7
_IE             DATA 0xa8
_CLKSEL         DATA 0xa9
_EMI0CN         DATA 0xaa
__XPAGE         DATA 0xaa
_SBCON1         DATA 0xac
_P4MDOUT        DATA 0xae
_PFE0CN         DATA 0xaf
_P3             DATA 0xb0
_OSCXCN         DATA 0xb1
_OSCICN         DATA 0xb2
_OSCICL         DATA 0xb3
_SBRLL1         DATA 0xb4
_SBRLH1         DATA 0xb5
_FLSCL          DATA 0xb6
_FLKEY          DATA 0xb7
_IP             DATA 0xb8
_CLKMUL         DATA 0xb9
_SMBTC          DATA 0xb9
_AMX0N          DATA 0xba
_AMX0P          DATA 0xbb
_ADC0CF         DATA 0xbc
_ADC0L          DATA 0xbd
_ADC0H          DATA 0xbe
_SFRPAGE        DATA 0xbf
_SMB0CN         DATA 0xc0
_SMB1CN         DATA 0xc0
_SMB0CF         DATA 0xc1
_SMB1CF         DATA 0xc1
_SMB0DAT        DATA 0xc2
_SMB1DAT        DATA 0xc2
_ADC0GTL        DATA 0xc3
_ADC0GTH        DATA 0xc4
_ADC0LTL        DATA 0xc5
_ADC0LTH        DATA 0xc6
_P4             DATA 0xc7
_TMR2CN         DATA 0xc8
_TMR5CN         DATA 0xc8
_REG01CN        DATA 0xc9
_TMR2RLL        DATA 0xca
_TMR5RLL        DATA 0xca
_TMR2RLH        DATA 0xcb
_TMR5RLH        DATA 0xcb
_TMR2L          DATA 0xcc
_TMR5L          DATA 0xcc
_TMR2H          DATA 0xcd
_TMR5H          DATA 0xcd
_SMB0ADM        DATA 0xce
_SMB1ADM        DATA 0xce
_SMB0ADR        DATA 0xcf
_SMB1ADR        DATA 0xcf
_PSW            DATA 0xd0
_REF0CN         DATA 0xd1
_SCON1          DATA 0xd2
_SBUF1          DATA 0xd3
_P0SKIP         DATA 0xd4
_P1SKIP         DATA 0xd5
_P2SKIP         DATA 0xd6
_USB0XCN        DATA 0xd7
_PCA0CN         DATA 0xd8
_PCA0MD         DATA 0xd9
_PCA0CPM0       DATA 0xda
_PCA0CPM1       DATA 0xdb
_PCA0CPM2       DATA 0xdc
_PCA0CPM3       DATA 0xdd
_PCA0CPM4       DATA 0xde
_P3SKIP         DATA 0xdf
_ACC            DATA 0xe0
_XBR0           DATA 0xe1
_XBR1           DATA 0xe2
_XBR2           DATA 0xe3
_IT01CF         DATA 0xe4
_CKCON1         DATA 0xe4
_SMOD1          DATA 0xe5
_EIE1           DATA 0xe6
_EIE2           DATA 0xe7
_ADC0CN         DATA 0xe8
_PCA0CPL1       DATA 0xe9
_PCA0CPH1       DATA 0xea
_PCA0CPL2       DATA 0xeb
_PCA0CPH2       DATA 0xec
_PCA0CPL3       DATA 0xed
_PCA0CPH3       DATA 0xee
_RSTSRC         DATA 0xef
_B              DATA 0xf0
_P0MDIN         DATA 0xf1
_P1MDIN         DATA 0xf2
_P2MDIN         DATA 0xf3
_P3MDIN         DATA 0xf4
_P4MDIN         DATA 0xf5
_EIP1           DATA 0xf6
_EIP2           DATA 0xf7
_SPI0CN         DATA 0xf8
_PCA0L          DATA 0xf9
_PCA0H          DATA 0xfa
_PCA0CPL0       DATA 0xfb
_PCA0CPH0       DATA 0xfc
_PCA0CPL4       DATA 0xfd
_PCA0CPH4       DATA 0xfe
_VDM0CN         DATA 0xff
_DPTR           DATA 0x8382
_TMR2RL         DATA 0xcbca
_TMR3RL         DATA 0x9392
_TMR4RL         DATA 0x9392
_TMR5RL         DATA 0xcbca
_TMR2           DATA 0xcdcc
_TMR3           DATA 0x9594
_TMR4           DATA 0x9594
_TMR5           DATA 0xcdcc
_SBRL1          DATA 0xb5b4
_ADC0           DATA 0xbebd
_ADC0GT         DATA 0xc4c3
_ADC0LT         DATA 0xc6c5
_PCA0           DATA 0xfaf9
_PCA0CP1        DATA 0xeae9
_PCA0CP2        DATA 0xeceb
_PCA0CP3        DATA 0xeeed
_PCA0CP0        DATA 0xfcfb
_PCA0CP4        DATA 0xfefd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_P0_0           BIT 0x80
_P0_1           BIT 0x81
_P0_2           BIT 0x82
_P0_3           BIT 0x83
_P0_4           BIT 0x84
_P0_5           BIT 0x85
_P0_6           BIT 0x86
_P0_7           BIT 0x87
_TF1            BIT 0x8f
_TR1            BIT 0x8e
_TF0            BIT 0x8d
_TR0            BIT 0x8c
_IE1            BIT 0x8b
_IT1            BIT 0x8a
_IE0            BIT 0x89
_IT0            BIT 0x88
_P1_0           BIT 0x90
_P1_1           BIT 0x91
_P1_2           BIT 0x92
_P1_3           BIT 0x93
_P1_4           BIT 0x94
_P1_5           BIT 0x95
_P1_6           BIT 0x96
_P1_7           BIT 0x97
_S0MODE         BIT 0x9f
_SCON0_6        BIT 0x9e
_MCE0           BIT 0x9d
_REN0           BIT 0x9c
_TB80           BIT 0x9b
_RB80           BIT 0x9a
_TI0            BIT 0x99
_RI0            BIT 0x98
_SCON_6         BIT 0x9e
_MCE            BIT 0x9d
_REN            BIT 0x9c
_TB8            BIT 0x9b
_RB8            BIT 0x9a
_TI             BIT 0x99
_RI             BIT 0x98
_P2_0           BIT 0xa0
_P2_1           BIT 0xa1
_P2_2           BIT 0xa2
_P2_3           BIT 0xa3
_P2_4           BIT 0xa4
_P2_5           BIT 0xa5
_P2_6           BIT 0xa6
_P2_7           BIT 0xa7
_EA             BIT 0xaf
_ESPI0          BIT 0xae
_ET2            BIT 0xad
_ES0            BIT 0xac
_ET1            BIT 0xab
_EX1            BIT 0xaa
_ET0            BIT 0xa9
_EX0            BIT 0xa8
_P3_0           BIT 0xb0
_P3_1           BIT 0xb1
_P3_2           BIT 0xb2
_P3_3           BIT 0xb3
_P3_4           BIT 0xb4
_P3_5           BIT 0xb5
_P3_6           BIT 0xb6
_P3_7           BIT 0xb7
_IP_7           BIT 0xbf
_PSPI0          BIT 0xbe
_PT2            BIT 0xbd
_PS0            BIT 0xbc
_PT1            BIT 0xbb
_PX1            BIT 0xba
_PT0            BIT 0xb9
_PX0            BIT 0xb8
_MASTER0        BIT 0xc7
_TXMODE0        BIT 0xc6
_STA0           BIT 0xc5
_STO0           BIT 0xc4
_ACKRQ0         BIT 0xc3
_ARBLOST0       BIT 0xc2
_ACK0           BIT 0xc1
_SI0            BIT 0xc0
_MASTER1        BIT 0xc7
_TXMODE1        BIT 0xc6
_STA1           BIT 0xc5
_STO1           BIT 0xc4
_ACKRQ1         BIT 0xc3
_ARBLOST1       BIT 0xc2
_ACK1           BIT 0xc1
_SI1            BIT 0xc0
_TF2            BIT 0xcf
_TF2H           BIT 0xcf
_TF2L           BIT 0xce
_TF2LEN         BIT 0xcd
_TF2CEN         BIT 0xcc
_T2SPLIT        BIT 0xcb
_TR2            BIT 0xca
_T2CSS          BIT 0xc9
_T2XCLK         BIT 0xc8
_TF5H           BIT 0xcf
_TF5L           BIT 0xce
_TF5LEN         BIT 0xcd
_TMR5CN_4       BIT 0xcc
_T5SPLIT        BIT 0xcb
_TR5            BIT 0xca
_TMR5CN_1       BIT 0xc9
_T5XCLK         BIT 0xc8
_CY             BIT 0xd7
_AC             BIT 0xd6
_F0             BIT 0xd5
_RS1            BIT 0xd4
_RS0            BIT 0xd3
_OV             BIT 0xd2
_F1             BIT 0xd1
_PARITY         BIT 0xd0
_CF             BIT 0xdf
_CR             BIT 0xde
_PCA0CN_5       BIT 0xde
_CCF4           BIT 0xdc
_CCF3           BIT 0xdb
_CCF2           BIT 0xda
_CCF1           BIT 0xd9
_CCF0           BIT 0xd8
_ACC_7          BIT 0xe7
_ACC_6          BIT 0xe6
_ACC_5          BIT 0xe5
_ACC_4          BIT 0xe4
_ACC_3          BIT 0xe3
_ACC_2          BIT 0xe2
_ACC_1          BIT 0xe1
_ACC_0          BIT 0xe0
_AD0EN          BIT 0xef
_AD0TM          BIT 0xee
_AD0INT         BIT 0xed
_AD0BUSY        BIT 0xec
_AD0WINT        BIT 0xeb
_AD0CM2         BIT 0xea
_AD0CM1         BIT 0xe9
_AD0CM0         BIT 0xe8
_B_7            BIT 0xf7
_B_6            BIT 0xf6
_B_5            BIT 0xf5
_B_4            BIT 0xf4
_B_3            BIT 0xf3
_B_2            BIT 0xf2
_B_1            BIT 0xf1
_B_0            BIT 0xf0
_SPIF           BIT 0xff
_WCOL           BIT 0xfe
_MODF           BIT 0xfd
_RXOVRN         BIT 0xfc
_NSSMD1         BIT 0xfb
_NSSMD0         BIT 0xfa
_TXBMT          BIT 0xf9
_SPIEN          BIT 0xf8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	rbank0 segment data overlay
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	rseg R_DSEG
_overflow_count:
	ds 1
_LCD_print_PARM_2:
	ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	rseg R_OSEG
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	rseg R_ISEG
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	DSEG
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	rseg R_BSEG
_LCD_print_PARM_3:
	DBIT	1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	rseg R_PSEG
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	rseg R_XSEG
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	XSEG
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	rseg R_IXSEG
	rseg R_HOME
	rseg R_GSINIT
	rseg R_CSEG
;--------------------------------------------------------
; Reset entry point and interrupt vectors
;--------------------------------------------------------
	CSEG at 0x0000
	ljmp	_crt0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	rseg R_HOME
	rseg R_GSINIT
	rseg R_GSINIT
;--------------------------------------------------------
; data variables initialization
;--------------------------------------------------------
	rseg R_DINIT
	; The linker places a 'ret' at the end of segment R_DINIT.
;--------------------------------------------------------
; code
;--------------------------------------------------------
	rseg R_CSEG
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;count                     Allocated to registers 
;freq                      Allocated to registers r2 r3 r4 r5 
;capacitance               Allocated to registers r6 r7 r0 r1 
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:10: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	using	0
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:16: PCA0MD &= ~0x40;
	anl	_PCA0MD,#0xBF
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:19: PORT_init();
	lcall	_PORT_init
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:20: SYSCLK_init();
	lcall	_SYSCLK_init
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:21: UART0_init();
	lcall	_UART0_init
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:22: TIMER0_init();
	lcall	_TIMER0_init
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:23: LCD_init();
	lcall	_LCD_init
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:26: LCD_print("This is a test", 1, 1);
	mov	_LCD_print_PARM_2,#0x01
	setb	_LCD_print_PARM_3
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_LCD_print
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:27: LCD_print("Well Well Well", 2, 1);
	mov	_LCD_print_PARM_2,#0x02
	setb	_LCD_print_PARM_3
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_LCD_print
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:30: while (1) {
L002002?:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:32: TL0 = 0;
	mov	_TL0,#0x00
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:33: TH0 = 0;
	mov	_TH0,#0x00
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:34: overflow_count = 0;
	mov	_overflow_count,#0x00
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:37: TF0 = 0;
	clr	_TF0
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:38: TR0 = 1;
	setb	_TR0
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:39: delay(1000);
	mov	dptr,#0x03E8
	lcall	_delay
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:40: printf("%d\t", overflow_count);
	mov	r2,_overflow_count
	mov	r3,#0x00
	push	ar2
	push	ar3
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:43: TR0 = 0;
	clr	_TR0
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:46: freq = overflow_count * 0x10000L + TH0 * 0x1000L + TL0;
	mov	r2,_overflow_count
	mov	r3,#0x00
	mov	ar5,r3
	mov	ar4,r2
	mov	r3,#0x00
	mov	r2,#0x00
	mov	r6,_TH0
	clr	a
	mov	r0,a
	xch	a,r0
	swap	a
	anl	a,#0xf0
	xch	a,r0
	swap	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xf0
	xch	a,r0
	xrl	a,r0
	mov	r1,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,r6
	swap	a
	anl	a,#0x0f
	orl	a,r0
	mov	r0,a
	clr	a
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r0
	addc	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	r6,_TL0
	clr	a
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r0
	addc	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:49: capacitance = 0.0002953200 / freq;
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	___slong2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0xD52E
	mov	b,#0x9A
	mov	a,#0x39
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,b
	mov	r1,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:50: printf("%ld\t", freq);
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:51: printf("%f\n", capacitance);
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	ljmp	L002002?
;------------------------------------------------------------
;Allocation info for local variables in function '_c51_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:56: char _c51_external_startup(void) {
;	-----------------------------------------
;	 function _c51_external_startup
;	-----------------------------------------
__c51_external_startup:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:57: PCA0MD &= (~0x40) ;    // DISABLE WDT: clear Watchdog Enable bit
	anl	_PCA0MD,#0xBF
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:58: VDM0CN  = 0x80; // enable VDD monitor
	mov	_VDM0CN,#0x80
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:59: RSTSRC  = 0x02|0x04; // Enable reset on missing clock detector and VDD
	mov	_RSTSRC,#0x06
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:67: CLKSEL|=0b_0000_0011; // SYSCLK derived from the Internal High-Frequency Oscillator / 1.
	orl	_CLKSEL,#0x03
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:71: OSCICN  |= 0x03; // Configure internal oscillator for its maximum frequency
	orl	_OSCICN,#0x03
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:72: P0MDOUT |= 0x10; // Enable Uart TX as push-pull output
	orl	_P0MDOUT,#0x10
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:73: P1MDOUT |= 0b_0000_1111; // LCD's D4 to D7 are connected to P1.3 to P1.0
	orl	_P1MDOUT,#0x0F
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:74: P2MDOUT |= 0b_0000_0111; // P2.2 is LCD's RS, P2.1 is LCD's RW, P2.0 is LCD's E
	orl	_P2MDOUT,#0x07
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:75: XBR0     = 0x01; // Enable UART on P0.4(TX) and P0.5(RX)
	mov	_XBR0,#0x01
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:76: XBR1     = 0x40; // Enable crossbar and weak pull-ups
	mov	_XBR1,#0x40
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:79: TH1    = 0x10000-((SYSCLK/BAUDRATE)/2L);
	mov	_TH1,#0x30
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:80: CKCON &= ~0x0B;                  // T1M = 1; SCA1:0 = xx
	anl	_CKCON,#0xF4
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:81: CKCON |= 0x08;
	orl	_CKCON,#0x08
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:95: TL1   = TH1;     // Init timer 1
	mov	_TL1,_TH1
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:96: TMOD &= 0x0f;  // TMOD: timer 1 in 8-bit autoreload
	anl	_TMOD,#0x0F
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:97: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:98: TR1   = 1;       // Start timer1
	setb	_TR1
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:99: SCON  = 0x52;
	mov	_SCON,#0x52
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:100: return 0;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delayUs'
;------------------------------------------------------------
;us                        Allocated to registers r2 
;i                         Allocated to registers r3 
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:104: void delayUs(unsigned char us) {
;	-----------------------------------------
;	 function delayUs
;	-----------------------------------------
_delayUs:
	mov	r2,dpl
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:136: CKCON |= 0b_0100_0000;
	orl	_CKCON,#0x40
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:138: TMR3RL = (-(SYSCLK)/1000000L); // Set Timer3 to overflow in 1us.
	mov	_TMR3RL,#0xD0
	mov	(_TMR3RL >> 8),#0xFF
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:139: TMR3   = TMR3RL;                 // Initialize Timer3 for first overflow
	mov	_TMR3,_TMR3RL
	mov	(_TMR3 >> 8),(_TMR3RL >> 8)
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:141: TMR3CN = 0x04;                 // Sart Timer3 and clear overflow flag
	mov	_TMR3CN,#0x04
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:142: for (i = 0; i < us; i++) {      // Count <us> overflows
	mov	r3,#0x00
L004006?:
	clr	c
	mov	a,r3
	subb	a,r2
	jnc	L004009?
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:143: while (!(TMR3CN & 0x80));  // Wait for overflow
L004001?:
	mov	a,_TMR3CN
	jnb	acc.7,L004001?
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:144: TMR3CN &= ~(0x80);         // Clear overflow indicator
	anl	_TMR3CN,#0x7F
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:146: if (TF0==1) {
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:147: TF0=0;
	jbc	_TF0,L004019?
	sjmp	L004005?
L004019?:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:148: overflow_count++;
	inc	_overflow_count
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:149: printf("x");
	push	ar2
	push	ar3
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
L004005?:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:151: printf("*");
	push	ar2
	push	ar3
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:142: for (i = 0; i < us; i++) {      // Count <us> overflows
	inc	r3
	sjmp	L004006?
L004009?:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:153: TMR3CN = 0 ;
	mov	_TMR3CN,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;ms                        Allocated to registers r2 r3 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:157: void delay(unsigned int ms) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r2,dpl
	mov	r3,dph
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:159: for (i = 0; i < ms; i++) {
	mov	r4,#0x00
	mov	r5,#0x00
L005001?:
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
	jnc	L005005?
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:160: delayUs(249);
	mov	dpl,#0xF9
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_delayUs
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:161: delayUs(249);
	mov	dpl,#0xF9
	lcall	_delayUs
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:162: delayUs(249);
	mov	dpl,#0xF9
	lcall	_delayUs
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:163: delayUs(250);
	mov	dpl,#0xFA
	lcall	_delayUs
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:159: for (i = 0; i < ms; i++) {
	inc	r4
	cjne	r4,#0x00,L005001?
	inc	r5
	sjmp	L005001?
L005005?:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PORT_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:168: void PORT_init(void) {
;	-----------------------------------------
;	 function PORT_init
;	-----------------------------------------
_PORT_init:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:170: P0MDOUT |= 0x10;
	orl	_P0MDOUT,#0x10
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:173: XBR0     = 0x01;
	mov	_XBR0,#0x01
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:176: XBR1     = 0x50;
	mov	_XBR1,#0x50
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:177: XBR2     = 0x00;
	mov	_XBR2,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SYSCLK_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:181: void SYSCLK_init(void) {
;	-----------------------------------------
;	 function SYSCLK_init
;	-----------------------------------------
_SYSCLK_init:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:187: CLKSEL|=0b_0000_0011; // SYSCLK derived from the Internal High-Frequency Oscillator / 1.
	orl	_CLKSEL,#0x03
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:191: OSCICN |= 0x03;   // Configure internal oscillator for its maximum frequency
	orl	_OSCICN,#0x03
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:192: RSTSRC  = 0x04;   // Enable missing clock detector
	mov	_RSTSRC,#0x04
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART0_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:196: void UART0_init(void) {
;	-----------------------------------------
;	 function UART0_init
;	-----------------------------------------
_UART0_init:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:197: SCON0 = 0x10;
	mov	_SCON0,#0x10
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:200: TH1    = 0x10000-((SYSCLK/BAUDRATE)/2L);
	mov	_TH1,#0x30
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:201: CKCON &= ~0x0B;                  // T1M = 1; SCA1:0 = xx
	anl	_CKCON,#0xF4
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:202: CKCON |= 0x08;
	orl	_CKCON,#0x08
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:215: TL1   = TH1;      // Init Timer1
	mov	_TL1,_TH1
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:216: TMOD &= ~0xf0;  // TMOD: timer 1 in 8-bit autoreload
	anl	_TMOD,#0x0F
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:217: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:218: TR1   = 1; // START Timer1
	setb	_TR1
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:219: TI    = 1;  // Indicate TX0 ready
	setb	_TI
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TIMER0_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:223: void TIMER0_init(void) {
;	-----------------------------------------
;	 function TIMER0_init
;	-----------------------------------------
_TIMER0_init:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:224: TMOD &= 0xF0;
	anl	_TMOD,#0xF0
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:227: TMOD |= 0x05;
	orl	_TMOD,#0x05
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:228: TR0   = 0;
	clr	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_pulse'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:232: void LCD_pulse(void) {
;	-----------------------------------------
;	 function LCD_pulse
;	-----------------------------------------
_LCD_pulse:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:233: LCD_E = 1;
	setb	_P2_0
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:234: delayUs(40);
	mov	dpl,#0x28
	lcall	_delayUs
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:235: LCD_E = 0;
	clr	_P2_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_byte'
;------------------------------------------------------------
;x                         Allocated to registers r2 
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:239: void LCD_byte(unsigned char x) {
;	-----------------------------------------
;	 function LCD_byte
;	-----------------------------------------
_LCD_byte:
	mov	r2,dpl
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:241: ACC    = x;
	mov	_ACC,r2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:242: LCD_D7 = ACC_7;
	mov	c,_ACC_7
	mov	_P1_0,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:243: LCD_D6 = ACC_6;
	mov	c,_ACC_6
	mov	_P1_1,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:244: LCD_D5 = ACC_5;
	mov	c,_ACC_5
	mov	_P1_2,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:245: LCD_D4 = ACC_4;
	mov	c,_ACC_4
	mov	_P1_3,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:246: LCD_pulse();
	push	ar2
	lcall	_LCD_pulse
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:247: delayUs(40);
	mov	dpl,#0x28
	lcall	_delayUs
	pop	ar2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:248: ACC    = x;
	mov	_ACC,r2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:249: LCD_D7 = ACC_3;
	mov	c,_ACC_3
	mov	_P1_0,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:250: LCD_D6 = ACC_2;
	mov	c,_ACC_2
	mov	_P1_1,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:251: LCD_D5 = ACC_1;
	mov	c,_ACC_1
	mov	_P1_2,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:252: LCD_D4 = ACC_0;
	mov	c,_ACC_0
	mov	_P1_3,c
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:253: LCD_pulse();
	ljmp	_LCD_pulse
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_write'
;------------------------------------------------------------
;x                         Allocated to registers 
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:257: void LCD_write(unsigned char x) {
;	-----------------------------------------
;	 function LCD_write
;	-----------------------------------------
_LCD_write:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:258: LCD_RS = 1;
	setb	_P2_2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:259: LCD_byte(x);
	lcall	_LCD_byte
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:260: delay(2);
	mov	dptr,#0x0002
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_cmd'
;------------------------------------------------------------
;x                         Allocated to registers 
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:264: void LCD_cmd(unsigned char x) {
;	-----------------------------------------
;	 function LCD_cmd
;	-----------------------------------------
_LCD_cmd:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:265: LCD_RS = 0;
	clr	_P2_2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:266: LCD_byte(x);
	lcall	_LCD_byte
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:267: delay(5);
	mov	dptr,#0x0005
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:271: void LCD_init(void) {
;	-----------------------------------------
;	 function LCD_init
;	-----------------------------------------
_LCD_init:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:272: LCD_E = 0;
	clr	_P2_0
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:273: LCD_RW = 0;
	clr	_P2_1
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:274: LCD_A  = 0;
	clr	_P0_7
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:275: LCD_K  = 1;
	setb	_P0_6
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:276: delay(20);
	mov	dptr,#0x0014
	lcall	_delay
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:279: LCD_cmd(0x33);
	mov	dpl,#0x33
	lcall	_LCD_cmd
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:280: LCD_cmd(0x33);
	mov	dpl,#0x33
	lcall	_LCD_cmd
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:281: LCD_cmd(0x32);
	mov	dpl,#0x32
	lcall	_LCD_cmd
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:284: LCD_cmd(0x28);
	mov	dpl,#0x28
	lcall	_LCD_cmd
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:285: LCD_cmd(0x0c);
	mov	dpl,#0x0C
	lcall	_LCD_cmd
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:286: LCD_cmd(0x01);
	mov	dpl,#0x01
	lcall	_LCD_cmd
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:287: delay(20);
	mov	dptr,#0x0014
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_print'
;------------------------------------------------------------
;line                      Allocated with name '_LCD_print_PARM_2'
;string                    Allocated to registers r2 r3 r4 
;j                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:291: void LCD_print(char *string, unsigned char line, bit clear) {
;	-----------------------------------------
;	 function LCD_print
;	-----------------------------------------
_LCD_print:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:293: LCD_cmd(line == 2 ? 0xc0: 0x80);
	mov	a,#0x02
	cjne	a,_LCD_print_PARM_2,L015012?
	mov	r5,#0xC0
	sjmp	L015013?
L015012?:
	mov	r5,#0x80
L015013?:
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_LCD_cmd
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:294: delay(5);
	mov	dptr,#0x0005
	lcall	_delay
	pop	ar4
	pop	ar3
	pop	ar2
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:301: while (string[j] != 0) LCD_write(string[j++]);
	mov	r5,#0x00
	mov	r6,#0x00
L015001?:
	mov	a,r5
	add	a,r2
	mov	r7,a
	mov	a,r6
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	jz	L015003?
	mov	ar7,r5
	mov	ar0,r6
	inc	r5
	cjne	r5,#0x00,L015024?
	inc	r6
L015024?:
	mov	a,r7
	add	a,r2
	mov	r7,a
	mov	a,r0
	addc	a,r3
	mov	r0,a
	mov	ar1,r4
	mov	dpl,r7
	mov	dph,r0
	mov	b,r1
	lcall	__gptrget
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_LCD_write
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp	L015001?
L015003?:
;	C:\Users\mansu\OneDrive\Documents\2017 UBC\ELEC 291\Lab 4\lab4.c:302: if (clear) for (; j < CHARS_PER_LINE; j++) LCD_write(' ');
	jnb	_LCD_print_PARM_3,L015010?
	mov	ar2,r5
	mov	ar3,r6
L015006?:
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	L015010?
	mov	dpl,#0x20
	push	ar2
	push	ar3
	lcall	_LCD_write
	pop	ar3
	pop	ar2
	inc	r2
	cjne	r2,#0x00,L015006?
	inc	r3
	sjmp	L015006?
L015010?:
	ret
	rseg R_CSEG

	rseg R_XINIT

	rseg R_CONST
__str_0:
	db 'This is a test'
	db 0x00
__str_1:
	db 'Well Well Well'
	db 0x00
__str_2:
	db '%d'
	db 0x09
	db 0x00
__str_3:
	db '%ld'
	db 0x09
	db 0x00
__str_4:
	db '%f'
	db 0x0A
	db 0x00
__str_5:
	db 'x'
	db 0x00
__str_6:
	db '*'
	db 0x00

	CSEG

end
