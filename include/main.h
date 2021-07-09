typedef void (*IntrFunc)(void);

extern struct OamData g3000210[];
extern u16 g3000000; // keys(buttons)
extern u16 g3000004;
extern u32 gIntrMainBuffer[0x200];
extern u16 g3007ff8;
extern const u16 unkdata_80000[0x9600];

void IntrMain (void);
void AgbMain (void);
void sub_80002B8 (void);
void sub_80002C8 (void);
void sub_80002F8 (void);
void IntrDummy (void);
void sub_80003B4 (void);
