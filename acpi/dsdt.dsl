/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170831 (64-bit version)
 * Copyright (c) 2000 - 2017 Intel Corporation
 *
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT.dat, Fri Sep  1 22:57:48 2017
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000D4F5 (54517)
 *     Revision         0x02
 *     Checksum         0xB1
 *     OEM ID           "ALASKA"
 *     OEM Table ID     "A M I "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "AMI "
 *     Compiler Version 0x0100000D (16777229)
 */
DefinitionBlock ("", "DSDT", 2, "ALASKA", "A M I ", 0x00000004)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but only 0 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CPU0._PPC, UnknownObj)
    External (_SB_.DPTF, UnknownObj)
    External (_SB_.PCI0.LPCB.TPM_.PTS_, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.STR3, UnknownObj)
    External (_SB_.TCHG, UnknownObj)
    External (CFGD, IntObj)
    External (NDN3, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PDC0, IntObj)
    External (PDC1, IntObj)
    External (PDC2, IntObj)
    External (PDC3, IntObj)

    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (SP1O, 0x4E)
    Name (PFDR, 0xFED03034)
    Name (PMCB, 0xFED03000)
    Name (PCLK, 0xFED03060)
    Name (PUNB, 0xFED05000)
    Name (IBAS, 0xFED08000)
    Name (MCHB, 0xFED14000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x02)
    Name (DSLC, 0x03)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x2B)
    Name (SOOT, 0x35)
    Name (ESCS, 0x48)
    Name (SDGV, 0x1C)
    Name (ACPH, 0xDE)
    Name (FTBL, 0x04)
    Name (LAPB, 0xFEE00000)
    Name (CPVD, Zero)
    Name (SMBS, 0xEFA0)
    Name (SMBL, 0x20)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x40)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (RCRB, 0xFED1C000)
    Name (RCRL, 0x4000)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (MBEC, 0xFFFF)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (SRSI, 0xB2)
    Name (CSMI, 0x61)
    Name (SMIA, 0xB2)
    Name (SMIB, 0xB3)
    Name (OFST, 0x35)
    Name (TRST, 0x02)
    Name (TPMF, Zero)
    Name (TCMF, Zero)
    Name (TMF1, Zero)
    Name (TMF2, Zero)
    Name (TMF3, Zero)
    OperationRegion (GNVS, SystemMemory, 0x395F4A98, 0x0340)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16,
        SMIF,   8,
        PRM0,   8,
        PRM1,   8,
        SCIF,   8,
        PRM2,   8,
        PRM3,   8,
        LCKF,   8,
        PRM4,   8,
        PRM5,   8,
        P80D,   32,
        LIDS,   8,
        PWRS,   8,
        DBGS,   8,
        THOF,   8,
        Offset (0x15),
        PSVT,   8,
        TC1V,   8,
        TC2V,   8,
        TSPV,   8,
        CRTT,   8,
        DTSE,   8,
        DTS1,   8,
        DTS2,   8,
        DTSF,   8,
        BNUM,   8,
        B0SC,   8,
        B1SC,   8,
        B2SC,   8,
        B0SS,   8,
        B1SS,   8,
        B2SS,   8,
        Offset (0x28),
        APIC,   8,
        MPEN,   8,
        PCP0,   8,
        PCP1,   8,
        PPCM,   8,
        PPMF,   32,
        Offset (0x32),
        NATP,   8,
        CMAP,   8,
        CMBP,   8,
        LPTP,   8,
        FDCP,   8,
        CMCP,   8,
        CIRP,   8,
        W381,   8,
        NPCE,   8,
        Offset (0x3C),
        IGDS,   8,
        TLST,   8,
        CADL,   8,
        PADL,   8,
        CSTE,   16,
        NSTE,   16,
        SSTE,   16,
        NDID,   8,
        DID1,   32,
        DID2,   32,
        DID3,   32,
        DID4,   32,
        DID5,   32,
        KSV0,   32,
        KSV1,   8,
        Offset (0x67),
        BLCS,   8,
        BRTL,   8,
        ALSE,   8,
        ALAF,   8,
        LLOW,   8,
        LHIH,   8,
        Offset (0x6E),
        EMAE,   8,
        EMAP,   16,
        EMAL,   16,
        Offset (0x74),
        MEFE,   8,
        DSTS,   8,
        Offset (0x78),
        TPMP,   8,
        TPME,   8,
        MORD,   8,
        TCGP,   8,
        PPRP,   32,
        PPRQ,   8,
        LPPR,   8,
        GTF0,   56,
        GTF2,   56,
        IDEM,   8,
        GTF1,   56,
        Offset (0xAA),
        ASLB,   32,
        IBTT,   8,
        IPAT,   8,
        ITVF,   8,
        ITVM,   8,
        IPSC,   8,
        IBLC,   8,
        IBIA,   8,
        ISSC,   8,
        I409,   8,
        I509,   8,
        I609,   8,
        I709,   8,
        IDMM,   8,
        IDMS,   8,
        IF1E,   8,
        HVCO,   8,
        NXD1,   32,
        NXD2,   32,
        NXD3,   32,
        NXD4,   32,
        NXD5,   32,
        NXD6,   32,
        NXD7,   32,
        NXD8,   32,
        GSMI,   8,
        PAVP,   8,
        Offset (0xE1),
        OSCC,   8,
        NEXP,   8,
        Offset (0xEB),
        DSEN,   8,
        ECON,   8,
        GPIC,   8,
        CTYP,   8,
        L01C,   8,
        VFN0,   8,
        VFN1,   8,
        Offset (0x100),
        NVGA,   32,
        NVHA,   32,
        AMDA,   32,
        DID6,   32,
        DID7,   32,
        DID8,   32,
        Offset (0x14C),
        USEL,   8,
        PU1E,   8,
        PU2E,   8,
        LPE0,   32,
        LPE1,   32,
        LPE2,   32,
        ACST,   8,
        BTST,   8,
        PFLV,   8,
        Offset (0x15F),
        AOAC,   8,
        XHCI,   8,
        PMEN,   8,
        LPEE,   8,
        ISPA,   32,
        ISPD,   8,
        PCIB,   32,
        PCIT,   32,
        D10A,   32,
        D10L,   32,
        D11A,   32,
        D11L,   32,
        P10A,   32,
        P10L,   32,
        P11A,   32,
        P11L,   32,
        P20A,   32,
        P20L,   32,
        P21A,   32,
        P21L,   32,
        U10A,   32,
        U10L,   32,
        U11A,   32,
        U11L,   32,
        U20A,   32,
        U20L,   32,
        U21A,   32,
        U21L,   32,
        SP0A,   32,
        SP0L,   32,
        SP1A,   32,
        SP1L,   32,
        D20A,   32,
        D20L,   32,
        D21A,   32,
        D21L,   32,
        I10A,   32,
        I10L,   32,
        I11A,   32,
        I11L,   32,
        I20A,   32,
        I20L,   32,
        I21A,   32,
        I21L,   32,
        I30A,   32,
        I30L,   32,
        I31A,   32,
        I31L,   32,
        I40A,   32,
        I40L,   32,
        I41A,   32,
        I41L,   32,
        I50A,   32,
        I50L,   32,
        I51A,   32,
        I51L,   32,
        I60A,   32,
        I60L,   32,
        I61A,   32,
        I61L,   32,
        I70A,   32,
        I70L,   32,
        I71A,   32,
        I71L,   32,
        EM0A,   32,
        EM0L,   32,
        EM1A,   32,
        EM1L,   32,
        SI0A,   32,
        SI0L,   32,
        SI1A,   32,
        SI1L,   32,
        SD0A,   32,
        SD0L,   32,
        SD1A,   32,
        SD1L,   32,
        MH0A,   32,
        MH0L,   32,
        MH1A,   32,
        MH1L,   32,
        OSSL,   8,
        Offset (0x294),
        DPTE,   8,
        THM0,   8,
        THM1,   8,
        THM2,   8,
        THM3,   8,
        THM4,   8,
        CHGR,   8,
        DDSP,   8,
        DSOC,   8,
        DPSR,   8,
        DPCT,   32,
        DPPT,   32,
        DGC0,   32,
        DGP0,   32,
        DGC1,   32,
        DGP1,   32,
        DGC2,   32,
        DGP2,   32,
        DGC3,   32,
        DGP3,   32,
        DGC4,   32,
        DGP4,   32,
        DLPM,   8,
        DSC0,   32,
        DSC1,   32,
        DSC2,   32,
        DSC3,   32,
        DSC4,   32,
        DDBG,   8,
        LPOE,   32,
        LPPS,   32,
        LPST,   32,
        LPPC,   32,
        LPPF,   32,
        DPME,   8,
        BCSL,   8,
        NFCS,   8,
        Offset (0x2FC),
        TPMA,   32,
        TPML,   32,
        ITSA,   8,
        S0IX,   8,
        SDMD,   8,
        EMVR,   8,
        BMBD,   32,
        FSAS,   8,
        BDID,   8,
        FBID,   8,
        OTGM,   8,
        STEP,   8,
        WITT,   8,
        SOCS,   8,
        AMTE,   8,
        UTS,    8,
        SCPE,   8,
        SARE,   8,
        PSSD,   8,
        EDPV,   8,
        DIDX,   32
    }

    Method (ADBG, 1, Serialized)
    {
        Return (Zero)
    }

    Name (WAKP, Package (0x02)
    {
        Zero,
        Zero
    })
    Scope (_SB)
    {
        Device (RTC0)
        {
            Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0070,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
            })
        }
    }

    Scope (_SB)
    {
        Device (HPET)
        {
            Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000400,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000008,
                    }
                })
                Return (RBUF) /* \_SB_.HPET._CRS.RBUF */
            }
        }
    }

    Scope (_SB)
    {
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Name (PR00, Package (0x11)
        {
            Package (0x04)
            {
                0x0002FFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x0010FFFF,
                Zero,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x0011FFFF,
                Zero,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0x0012FFFF,
                Zero,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0x0014FFFF,
                Zero,
                LNKE,
                Zero
            },

            Package (0x04)
            {
                0x0015FFFF,
                Zero,
                LNKF,
                Zero
            },

            Package (0x04)
            {
                0x0016FFFF,
                Zero,
                LNKG,
                Zero
            },

            Package (0x04)
            {
                0x0017FFFF,
                Zero,
                LNKH,
                Zero
            },

            Package (0x04)
            {
                0x0018FFFF,
                Zero,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0x0018FFFF,
                0x02,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0x0018FFFF,
                0x03,
                LNKC,
                Zero
            },

            Package (0x04)
            {
                0x0018FFFF,
                One,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x001DFFFF,
                Zero,
                LNKH,
                Zero
            },

            Package (0x04)
            {
                0x001EFFFF,
                Zero,
                LNKD,
                Zero
            },

            Package (0x04)
            {
                0x001EFFFF,
                0x03,
                LNKA,
                Zero
            },

            Package (0x04)
            {
                0x001EFFFF,
                One,
                LNKB,
                Zero
            },

            Package (0x04)
            {
                0x001EFFFF,
                0x02,
                LNKC,
                Zero
            }
        })
        Name (AR00, Package (0x11)
        {
            Package (0x04)
            {
                0x0002FFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x0010FFFF,
                Zero,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x0011FFFF,
                Zero,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0x0012FFFF,
                Zero,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0x0014FFFF,
                Zero,
                Zero,
                0x14
            },

            Package (0x04)
            {
                0x0015FFFF,
                Zero,
                Zero,
                0x15
            },

            Package (0x04)
            {
                0x0016FFFF,
                Zero,
                Zero,
                0x16
            },

            Package (0x04)
            {
                0x0017FFFF,
                Zero,
                Zero,
                0x17
            },

            Package (0x04)
            {
                0x0018FFFF,
                Zero,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0x0018FFFF,
                0x02,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0x0018FFFF,
                0x03,
                Zero,
                0x12
            },

            Package (0x04)
            {
                0x0018FFFF,
                One,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x001DFFFF,
                Zero,
                Zero,
                0x17
            },

            Package (0x04)
            {
                0x001EFFFF,
                Zero,
                Zero,
                0x13
            },

            Package (0x04)
            {
                0x001EFFFF,
                0x03,
                Zero,
                0x10
            },

            Package (0x04)
            {
                0x001EFFFF,
                One,
                Zero,
                0x11
            },

            Package (0x04)
            {
                0x001EFFFF,
                0x02,
                Zero,
                0x12
            }
        })
    }

    Scope (_SB)
    {
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            Name (_ADR, Zero)  // _ADR: Address
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)  // _BBN: BIOS Bus Number
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)  // _UID: Unique ID
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (PICM)
                {
                    Return (AR00) /* \_SB_.AR00 */
                }

                Return (PR00) /* \_SB_.PR00 */
            }

            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Device (VLVC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                    Offset (0xD0),
                    SMCR,   32,
                    SMDR,   32,
                    MCRX,   32
                }

                Method (RMBR, 2, Serialized)
                {
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x100000F0 | Local0)
                    Return (SMDR) /* \_SB_.PCI0.VLVC.SMDR */
                }

                Method (WMBR, 3, Serialized)
                {
                    SMDR = Arg2
                    Local0 = ((Arg0 << 0x10) | (Arg1 << 0x08))
                    SMCR = (0x110000F0 | Local0)
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (TPMP)
                {
                    CreateDWordField (RES0, \_SB.PCI0._Y00._LEN, TPML)  // _LEN: Length
                    TPML = 0x1000
                }

                CreateDWordField (RES0, \_SB.PCI0._Y01._MIN, ISMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._MAX, ISMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y01._LEN, ISLN)  // _LEN: Length
                If ((ISPD == One))
                {
                    ISMN = ISPA /* \ISPA */
                    ISMX = (ISMN + ISLN) /* \_SB_.PCI0._CRS.ISLN */
                    ISMX -= One
                }
                Else
                {
                    ISMN = Zero
                    ISMX = Zero
                    ISLN = Zero
                }

                CreateDWordField (RES0, \_SB.PCI0._Y02._MIN, M1MN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._MAX, M1MX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y02._LEN, M1LN)  // _LEN: Length
                M1MN = (BMBD & 0xFF000000)
                M1MX = PCIT /* \PCIT */
                M1LN = ((M1MX - M1MN) + One)
                M1MX -= One
                CreateDWordField (RES0, \_SB.PCI0._Y03._MIN, GSMN)  // _MIN: Minimum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._MAX, GSMX)  // _MAX: Maximum Base Address
                CreateDWordField (RES0, \_SB.PCI0._Y03._LEN, GSLN)  // _LEN: Length
                GSMN = ^GFX0.GSTM /* \_SB_.PCI0.GFX0.GSTM */
                GSLN = (^GFX0.GUMA << 0x19)
                GSMX = (GSMN + GSLN) /* \_SB_.PCI0._CRS.GSLN */
                GSMX -= One
                Return (RES0) /* \_SB_.PCI0.RES0 */
            }

            Name (RES0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                IO (Decode16,
                    0x0070,             // Range Minimum
                    0x0077,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x006F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0070,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0078,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0C80,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7A000000,         // Range Minimum
                    0x7A3FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00400000,         // Length
                    ,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x7C000000,         // Range Minimum
                    0x7FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x04000000,         // Length
                    ,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x80000000,         // Range Minimum
                    0xDFFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x60000000,         // Length
                    ,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED40FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00001000,         // Length
                    ,, _Y00, AddressRangeMemory, TypeStatic)
            })
            Name (GUID, ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */)
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Local0 = Arg3
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (((Arg0 == GUID) && NEXP))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    If (~(CDW1 & One))
                    {
                        If ((CTRL & 0x02))
                        {
                            NHPG ()
                        }

                        If ((CTRL & 0x04))
                        {
                            NPME ()
                        }
                    }

                    If ((Arg1 != One))
                    {
                        CDW1 |= 0x08
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                    OSCC = CTRL /* \_SB_.PCI0.CTRL */
                    Return (Local0)
                }
                Else
                {
                    CDW1 |= 0x04
                    Return (Local0)
                }
            }

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (NDEP, Package (0x03)
                {
                    PEPD,
                    I2C7,
                    ^^I2C7.PMIC
                })
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    PEPD
                })
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
                {
                    DSEN = (Arg0 & 0x07)
                }

                Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
                {
                    NDID = Zero
                    If ((DIDL != Zero))
                    {
                        DID1 = SDDL (DIDL)
                    }

                    If ((DDL2 != Zero))
                    {
                        DID2 = SDDL (DDL2)
                    }

                    If ((DDL3 != Zero))
                    {
                        DID3 = SDDL (DDL3)
                    }

                    If ((DDL4 != Zero))
                    {
                        DID4 = SDDL (DDL4)
                    }

                    If ((DDL5 != Zero))
                    {
                        DID5 = SDDL (DDL5)
                    }

                    If ((NDID == One))
                    {
                        Name (TMP1, Package (0x02)
                        {
                            0xFFFFFFFF,
                            0xFFFFFFFF
                        })
                        TMP1 [Zero] = (0x00010000 | DID1)
                        If ((SOCS < 0x02))
                        {
                            TMP1 [One] = 0x00020F39
                        }
                        Else
                        {
                            TMP1 [One] = 0x00020F38
                        }

                        Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
                    }

                    If ((NDID == 0x02))
                    {
                        Name (TMP2, Package (0x03)
                        {
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF
                        })
                        TMP2 [Zero] = (0x00010000 | DID1)
                        TMP2 [One] = (0x00010000 | DID2)
                        If ((SOCS < 0x02))
                        {
                            TMP2 [0x02] = 0x00020F39
                        }
                        Else
                        {
                            TMP2 [0x02] = 0x00020F38
                        }

                        Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
                    }

                    If ((NDID == 0x03))
                    {
                        Name (TMP3, Package (0x04)
                        {
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF
                        })
                        TMP3 [Zero] = (0x00010000 | DID1)
                        TMP3 [One] = (0x00010000 | DID2)
                        TMP3 [0x02] = (0x00010000 | DID3)
                        If ((SOCS < 0x02))
                        {
                            TMP3 [0x03] = 0x00020F39
                        }
                        Else
                        {
                            TMP3 [0x03] = 0x00020F38
                        }

                        Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
                    }

                    If ((NDID == 0x04))
                    {
                        Name (TMP4, Package (0x05)
                        {
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF
                        })
                        TMP4 [Zero] = (0x00010000 | DID1)
                        TMP4 [One] = (0x00010000 | DID2)
                        TMP4 [0x02] = (0x00010000 | DID3)
                        TMP4 [0x03] = (0x00010000 | DID4)
                        If ((SOCS < 0x02))
                        {
                            TMP4 [0x04] = 0x00020F39
                        }
                        Else
                        {
                            TMP4 [0x04] = 0x00020F38
                        }

                        Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
                    }

                    If ((NDID > 0x04))
                    {
                        Name (TMP5, Package (0x06)
                        {
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF,
                            0xFFFFFFFF
                        })
                        TMP5 [Zero] = (0x00010000 | DID1)
                        TMP5 [One] = (0x00010000 | DID2)
                        TMP5 [0x02] = (0x00010000 | DID3)
                        TMP5 [0x03] = (0x00010000 | DID4)
                        TMP5 [0x04] = (0x00010000 | DID5)
                        If ((SOCS < 0x02))
                        {
                            TMP5 [0x05] = 0x00020F39
                        }
                        Else
                        {
                            TMP5 [0x05] = 0x00020F38
                        }

                        Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
                    }

                    If ((SOCS < 0x02))
                    {
                        Return (Package (0x02)
                        {
                            0x0400,
                            0x00020F39
                        })
                    }
                    Else
                    {
                        Return (Package (0x02)
                        {
                            0x0400,
                            0x00020F38
                        })
                    }
                }

                Device (DD01)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID1) == 0x0400))
                        {
                            EDPV = One
                            DIDX = DID1 /* \DID1 */
                            Return (One)
                        }

                        If ((DID1 == Zero))
                        {
                            Return (One)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID1))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID1))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID1))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD02)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID2) == 0x0400))
                        {
                            EDPV = 0x02
                            DIDX = DID2 /* \DID2 */
                            Return (0x02)
                        }

                        If ((DID2 == Zero))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID2))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        Return (CDDS (DID2))
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID2))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD03)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID3) == 0x0400))
                        {
                            EDPV = 0x03
                            DIDX = DID3 /* \DID3 */
                            Return (0x03)
                        }

                        If ((DID3 == Zero))
                        {
                            Return (0x03)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID3))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID3 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID3))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID3))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD04)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID4) == 0x0400))
                        {
                            EDPV = 0x04
                            DIDX = DID4 /* \DID4 */
                            Return (0x04)
                        }

                        If ((DID4 == Zero))
                        {
                            Return (0x04)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID4))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID4 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID4))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID4))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD05)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID5) == 0x0400))
                        {
                            EDPV = 0x05
                            DIDX = DID5 /* \DID5 */
                            Return (0x05)
                        }

                        If ((DID5 == Zero))
                        {
                            Return (0x05)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID5))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID5 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID5))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID5))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD06)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID6) == 0x0400))
                        {
                            EDPV = 0x06
                            DIDX = DID6 /* \DID6 */
                            Return (0x06)
                        }

                        If ((DID6 == Zero))
                        {
                            Return (0x06)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID6))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID6 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID6))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID6))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD07)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID7) == 0x0400))
                        {
                            EDPV = 0x07
                            DIDX = DID7 /* \DID7 */
                            Return (0x07)
                        }

                        If ((DID7 == Zero))
                        {
                            Return (0x07)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID7))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID7 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID7))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID7))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD08)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If (((0x0F00 & DID8) == 0x0400))
                        {
                            EDPV = 0x08
                            DIDX = DID8 /* \DID8 */
                            Return (0x08)
                        }

                        If ((DID8 == Zero))
                        {
                            Return (0x08)
                        }
                        Else
                        {
                            Return ((0xFFFF & DID8))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((DID8 == Zero))
                        {
                            Return (0x0B)
                        }
                        Else
                        {
                            Return (CDDS (DID8))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DID8))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }
                }

                Device (DD1F)
                {
                    Method (_ADR, 0, Serialized)  // _ADR: Address
                    {
                        If ((EDPV == Zero))
                        {
                            Return (0x1F)
                        }
                        Else
                        {
                            Return ((0xFFFF & DIDX))
                        }
                    }

                    Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
                    {
                        If ((EDPV == Zero))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            Return (CDDS (DIDX))
                        }
                    }

                    Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
                    {
                        Return (NDDS (DIDX))
                    }

                    Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
                    {
                        If (((Arg0 & 0xC0000000) == 0xC0000000))
                        {
                            CSTE = NSTE /* \NSTE */
                        }
                    }

                    Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
                    {
                        Return (Package (0x67)
                        {
                            0x50,
                            0x32,
                            Zero,
                            One,
                            0x02,
                            0x03,
                            0x04,
                            0x05,
                            0x06,
                            0x07,
                            0x08,
                            0x09,
                            0x0A,
                            0x0B,
                            0x0C,
                            0x0D,
                            0x0E,
                            0x0F,
                            0x10,
                            0x11,
                            0x12,
                            0x13,
                            0x14,
                            0x15,
                            0x16,
                            0x17,
                            0x18,
                            0x19,
                            0x1A,
                            0x1B,
                            0x1C,
                            0x1D,
                            0x1E,
                            0x1F,
                            0x20,
                            0x21,
                            0x22,
                            0x23,
                            0x24,
                            0x25,
                            0x26,
                            0x27,
                            0x28,
                            0x29,
                            0x2A,
                            0x2B,
                            0x2C,
                            0x2D,
                            0x2E,
                            0x2F,
                            0x30,
                            0x31,
                            0x32,
                            0x33,
                            0x34,
                            0x35,
                            0x36,
                            0x37,
                            0x38,
                            0x39,
                            0x3A,
                            0x3B,
                            0x3C,
                            0x3D,
                            0x3E,
                            0x3F,
                            0x40,
                            0x41,
                            0x42,
                            0x43,
                            0x44,
                            0x45,
                            0x46,
                            0x47,
                            0x48,
                            0x49,
                            0x4A,
                            0x4B,
                            0x4C,
                            0x4D,
                            0x4E,
                            0x4F,
                            0x50,
                            0x51,
                            0x52,
                            0x53,
                            0x54,
                            0x55,
                            0x56,
                            0x57,
                            0x58,
                            0x59,
                            0x5A,
                            0x5B,
                            0x5C,
                            0x5D,
                            0x5E,
                            0x5F,
                            0x60,
                            0x61,
                            0x62,
                            0x63,
                            0x64
                        })
                    }

                    Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
                    {
                        If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                        {
                            AINT (One, Arg0)
                            BRTL = Arg0
                        }
                    }

                    Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
                    {
                        Return (BRTL) /* \BRTL */
                    }
                }

                Method (SDDL, 1, NotSerialized)
                {
                    NDID++
                    Local0 = (Arg0 & 0x0F0F)
                    Local1 = (0x80000000 | Local0)
                    If ((DIDL == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL2 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL3 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL4 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL5 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL6 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL7 == Local0))
                    {
                        Return (Local1)
                    }

                    If ((DDL8 == Local0))
                    {
                        Return (Local1)
                    }

                    Return (Zero)
                }

                Method (CDDS, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0x0F0F)
                    If ((Zero == Local0))
                    {
                        Return (0x1D)
                    }

                    If ((CADL == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL2 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL3 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL4 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL5 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL6 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL7 == Local0))
                    {
                        Return (0x1F)
                    }

                    If ((CAL8 == Local0))
                    {
                        Return (0x1F)
                    }

                    Return (0x1D)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    Local0 = (Arg0 & 0x0F0F)
                    If ((Zero == Local0))
                    {
                        Return (Zero)
                    }

                    If ((NADL == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL2 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL3 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL4 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL5 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL6 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL7 == Local0))
                    {
                        Return (One)
                    }

                    If ((NDL8 == Local0))
                    {
                        Return (One)
                    }

                    Return (Zero)
                }

                OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x10),
                    MADR,   32,
                    Offset (0x50),
                        ,   1,
                    GIVD,   1,
                        ,   1,
                    GUMA,   5,
                    Offset (0x52),
                    Offset (0x54),
                        ,   4,
                    GMFN,   1,
                    Offset (0x58),
                    Offset (0x5C),
                    GSTM,   32,
                    Offset (0xE0),
                    GSSE,   1,
                    GSSB,   14,
                    GSES,   1,
                    Offset (0xE4),
                    ASLE,   8,
                    Offset (0xE8),
                    Offset (0xFC),
                    ASLS,   32
                }

                OperationRegion (IGMM, SystemMemory, MADR, 0x3000)
                Field (IGMM, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x20C8),
                        ,   4,
                    DCFE,   4
                }

                OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128,
                    SIZE,   32,
                    OVER,   32,
                    SVER,   256,
                    VVER,   128,
                    GVER,   128,
                    MBOX,   32,
                    DMOD,   32,
                    Offset (0x100),
                    DRDY,   32,
                    CSTS,   32,
                    CEVT,   32,
                    Offset (0x120),
                    DIDL,   32,
                    DDL2,   32,
                    DDL3,   32,
                    DDL4,   32,
                    DDL5,   32,
                    DDL6,   32,
                    DDL7,   32,
                    DDL8,   32,
                    CPDL,   32,
                    CPL2,   32,
                    CPL3,   32,
                    CPL4,   32,
                    CPL5,   32,
                    CPL6,   32,
                    CPL7,   32,
                    CPL8,   32,
                    CAD1,   32,
                    CAL2,   32,
                    CAL3,   32,
                    CAL4,   32,
                    CAL5,   32,
                    CAL6,   32,
                    CAL7,   32,
                    CAL8,   32,
                    NADL,   32,
                    NDL2,   32,
                    NDL3,   32,
                    NDL4,   32,
                    NDL5,   32,
                    NDL6,   32,
                    NDL7,   32,
                    NDL8,   32,
                    ASLP,   32,
                    TIDX,   32,
                    CHPD,   32,
                    CLID,   32,
                    CDCK,   32,
                    SXSW,   32,
                    EVTS,   32,
                    CNOT,   32,
                    NRDY,   32,
                    Offset (0x200),
                    SCIE,   1,
                    GEFC,   4,
                    GXFC,   3,
                    GESF,   8,
                    Offset (0x204),
                    PARM,   32,
                    DSLP,   32,
                    Offset (0x300),
                    ARDY,   32,
                    ASLC,   32,
                    TCHE,   32,
                    ALSI,   32,
                    BCLP,   32,
                    PFIT,   32,
                    CBLV,   32,
                    BCLM,   320,
                    CPFM,   32,
                    EPFM,   32,
                    PLUT,   592,
                    PFMB,   32,
                    CCDV,   32,
                    PCFT,   32,
                    Offset (0x400),
                    GVD1,   49152,
                    PHED,   32,
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    Zero,
                    0x07,
                    0x38,
                    0x01C0,
                    0x0E00,
                    0x3F,
                    0x01C7,
                    0x0E07,
                    0x01F8,
                    0x0E38,
                    0x0FC0,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    Zero,
                    0x7000,
                    0x7007,
                    0x7038,
                    0x71C0,
                    0x7E00
                })
                Name (CDCT, Package (0x06)
                {
                    Package (0x01)
                    {
                        0xA0
                    },

                    Package (0x01)
                    {
                        0xC8
                    },

                    Package (0x01)
                    {
                        0x010B
                    },

                    Package (0x01)
                    {
                        0x0140
                    },

                    Package (0x01)
                    {
                        0x0164
                    },

                    Package (0x01)
                    {
                        0x0190
                    }
                })
                Name (SUCC, One)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    Method (GBDA, 0, Serialized)
                    {
                        If ((GESF == Zero))
                        {
                            PARM = 0x0279
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == One))
                        {
                            PARM = 0x0240
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x04))
                        {
                            PARM &= 0xEFFF0000
                            PARM &= (DerefOf (DBTB [IBTT]) << 0x10)
                            PARM |= IBTT /* \_SB_.PCI0.GFX0.PARM */
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x05))
                        {
                            PARM = IPSC /* \IPSC */
                            PARM |= (IPAT << 0x08)
                            PARM += 0x0100
                            PARM |= (LIDS << 0x10)
                            PARM += 0x00010000
                            PARM |= (IBLC << 0x12)
                            PARM |= (IBIA << 0x14)
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x06))
                        {
                            PARM = ITVF /* \ITVF */
                            PARM |= (ITVM << 0x04)
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x07))
                        {
                            PARM = GIVD /* \_SB_.PCI0.GFX0.GIVD */
                            PARM ^= One
                            PARM |= (GMFN << One)
                            PARM |= 0x1800
                            PARM |= (IDMS << 0x11)
                            PARM |= (DerefOf (CDCT [DCFE]) << 0x15) /* \_SB_.PCI0.GFX0.PARM */
                            GESF = One
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0A))
                        {
                            PARM = Zero
                            If (ISSC)
                            {
                                PARM |= 0x03
                            }

                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        GESF = Zero
                        Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                    }

                    Method (SBCB, 0, Serialized)
                    {
                        If ((GESF == Zero))
                        {
                            PARM = Zero
                            If ((PFLV == FMBL))
                            {
                                PARM = 0x000F87FD
                            }

                            If ((PFLV == FDTP))
                            {
                                PARM = 0x000F87BD
                            }

                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == One))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x03))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x04))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x05))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x06))
                        {
                            ITVF = (PARM & 0x0F)
                            ITVM = ((PARM & 0xF0) >> 0x04)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x07))
                        {
                            If ((PARM == Zero))
                            {
                                Local0 = CLID /* \_SB_.PCI0.GFX0.CLID */
                                If ((0x80000000 & Local0))
                                {
                                    CLID &= 0x0F
                                    GLID (CLID)
                                }
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x08))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x09))
                        {
                            IBTT = (PARM & 0xFF)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0A))
                        {
                            IPSC = (PARM & 0xFF)
                            If (((PARM >> 0x08) & 0xFF))
                            {
                                IPAT = ((PARM >> 0x08) & 0xFF)
                                IPAT--
                            }

                            IBLC = ((PARM >> 0x12) & 0x03)
                            IBIA = ((PARM >> 0x14) & 0x07)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x0B))
                        {
                            IF1E = ((PARM >> One) & One)
                            IDMS = ((PARM >> 0x11) & 0x0F)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x10))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x11))
                        {
                            PARM = (LIDS << 0x08)
                            PARM += 0x0100
                            GESF = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x12))
                        {
                            If ((PARM & One))
                            {
                                If (((PARM >> One) == One))
                                {
                                    ISSC = One
                                }
                                Else
                                {
                                    GESF = Zero
                                    Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                                }
                            }
                            Else
                            {
                                ISSC = Zero
                            }

                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x13))
                        {
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        If ((GESF == 0x14))
                        {
                            PAVP = (PARM & 0x0F)
                            GESF = Zero
                            PARM = Zero
                            Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                        }

                        GESF = Zero
                        Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                    }

                    If ((GEFC == 0x04))
                    {
                        GXFC = GBDA ()
                    }

                    If ((GEFC == 0x06))
                    {
                        GXFC = SBCB ()
                    }

                    GEFC = Zero
                    SCIS = One
                    GSSE = Zero
                    SCIE = Zero
                    Return (Zero)
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (!DRDY)
                    {
                        Sleep (ASLP)
                    }

                    Return (!DRDY)
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If ((CSTS > 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return ((CSTS == 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (One)
                    }

                    CEVT = Arg0
                    CSTS = 0x03
                    If (((CHPD == Zero) && (Arg1 == Zero)))
                    {
                        If (((OSYS > 0x07D0) || (OSYS < 0x07D6)))
                        {
                            Notify (PCI0, Arg1)
                        }
                        Else
                        {
                            Notify (GFX0, Arg1)
                        }
                    }

                    Notify (GFX0, 0x80) // Status Change
                    Return (Zero)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    TIDX = Arg0
                    Return (GNOT (One, Zero))
                }

                Method (GLID, 1, NotSerialized)
                {
                    CLID = Arg0
                    Return (GNOT (0x02, Zero))
                }

                Method (GDCK, 1, NotSerialized)
                {
                    CDCK = Arg0
                    Return (GNOT (0x04, Zero))
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (!ARDY)
                    {
                        Sleep (ASLP)
                    }

                    Return (!ARDY)
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (!(TCHE & (One << Arg0)))
                    {
                        Return (One)
                    }

                    If (PARD ())
                    {
                        Return (One)
                    }

                    If ((Arg0 == 0x02))
                    {
                        If (CPFM)
                        {
                            Local0 = (CPFM & 0x0F)
                            Local1 = (EPFM & 0x0F)
                            If ((Local0 == One))
                            {
                                If ((Local1 & 0x06))
                                {
                                    PFIT = 0x06
                                }
                                ElseIf ((Local1 & 0x08))
                                {
                                    PFIT = 0x08
                                }
                                Else
                                {
                                    PFIT = One
                                }
                            }

                            If ((Local0 == 0x06))
                            {
                                If ((Local1 & 0x08))
                                {
                                    PFIT = 0x08
                                }
                                ElseIf ((Local1 & One))
                                {
                                    PFIT = One
                                }
                                Else
                                {
                                    PFIT = 0x06
                                }
                            }

                            If ((Local0 == 0x08))
                            {
                                If ((Local1 & One))
                                {
                                    PFIT = One
                                }
                                ElseIf ((Local1 & 0x06))
                                {
                                    PFIT = 0x06
                                }
                                Else
                                {
                                    PFIT = 0x08
                                }
                            }
                        }
                        Else
                        {
                            PFIT ^= 0x07
                        }

                        PFIT |= 0x80000000
                        ASLC = 0x04
                    }
                    ElseIf ((Arg0 == One))
                    {
                        BCLP = ((Arg1 * 0xFF) / 0x64)
                        BCLP |= 0x80000000
                        ASLC = 0x02
                    }
                    ElseIf ((Arg0 == Zero))
                    {
                        ALSI = Arg1
                        ASLC = One
                    }
                    Else
                    {
                        Return (One)
                    }

                    ASLE = One
                    Return (Zero)
                }

                Method (SCIP, 0, NotSerialized)
                {
                    If ((OVER != Zero))
                    {
                        Return (!GSMI)
                    }

                    Return (Zero)
                }

                Device (ISP0)
                {
                    Name (_ADR, 0x0F38)  // _ADR: Address
                    Name (_DDN, "VLV2 ISP - 80860F38")  // _DDN: DOS Device Name
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_DEP, Package (0x01)  // _DEP: Dependencies
                    {
                        PEPD
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((SOCS >= 0x02))
                        {
                            If ((ISPD == One))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                        Else
                        {
                            _ADR = 0x0F39
                            _DDN = "VLV2 ISP - 80860F39"
                            If ((ISPD == One))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Name (SBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00400000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (SBUF) /* \_SB_.PCI0.GFX0.ISP0.SBUF */
                    }

                    Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                    {
                    }

                    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                    {
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        If ((Arg0 == One))
                        {
                            Return (One)
                        }
                        ElseIf ((Arg0 == 0x02))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Scope (\_SB)
                {
                    OperationRegion (ILBR, SystemMemory, IBAS, 0x8C)
                    Field (ILBR, AnyAcc, NoLock, Preserve)
                    {
                        Offset (0x08),
                        PARC,   8,
                        PBRC,   8,
                        PCRC,   8,
                        PDRC,   8,
                        PERC,   8,
                        PFRC,   8,
                        PGRC,   8,
                        PHRC,   8,
                        Offset (0x88),
                            ,   3,
                        UI3E,   1,
                        UI4E,   1
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, One)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PARC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSA) /* \_SB_.PRSA */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PARC & 0x0F))
                            Return (RTLA) /* \_SB_.LNKA._CRS.RTLA */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PARC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PARC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x02)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PBRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSB) /* \_SB_.PRSB */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PBRC & 0x0F))
                            Return (RTLB) /* \_SB_.LNKB._CRS.RTLB */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PBRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PBRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PCRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSC) /* \_SB_.PRSC */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PCRC & 0x0F))
                            Return (RTLC) /* \_SB_.LNKC._CRS.RTLC */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PCRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PCRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PDRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSD) /* \_SB_.PRSD */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PDRC & 0x0F))
                            Return (RTLD) /* \_SB_.LNKD._CRS.RTLD */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PDRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PDRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x05)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PERC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSE) /* \_SB_.PRSE */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PERC & 0x0F))
                            Return (RTLE) /* \_SB_.LNKE._CRS.RTLE */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PERC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PERC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x06)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PFRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSF) /* \_SB_.PRSF */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PFRC & 0x0F))
                            Return (RTLF) /* \_SB_.LNKF._CRS.RTLF */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PFRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PFRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x07)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PGRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSG) /* \_SB_.PRSG */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PGRC & 0x0F))
                            Return (RTLG) /* \_SB_.LNKG._CRS.RTLG */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PGRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PGRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
                        Name (_UID, 0x08)  // _UID: Unique ID
                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            PHRC |= 0x80
                        }

                        Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
                        {
                            Return (PRSH) /* \_SB_.PRSH */
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            IRQ0 = Zero
                            IRQ0 = (One << (PHRC & 0x0F))
                            Return (RTLH) /* \_SB_.LNKH._CRS.RTLH */
                        }

                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Local0--
                            PHRC = Local0
                        }

                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If ((PHRC & 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, Zero, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08),
                    SRID,   8,
                    Offset (0x80),
                    C1EN,   1,
                    Offset (0x84)
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800") /* Intel 82802 Firmware Hub Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (IPIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0xFF,               // Length
                            )
                        IO (Decode16,
                            0x0600,             // Range Minimum
                            0x0600,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (IUR3)
                {
                    Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If ((USEL == Zero))
                        {
                            If ((PU1E == One))
                            {
                                UI3E = One
                                UI4E = One
                                C1EN = One
                                Return (0x0F)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                    {
                        UI3E = Zero
                        UI4E = Zero
                        C1EN = Zero
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        })
                        Name (BUF1, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        })
                        If ((SRID <= 0x04))
                        {
                            Return (BUF0) /* \_SB_.PCI0.LPCB.IUR3._CRS.BUF0 */
                        }
                        Else
                        {
                            Return (BUF1) /* \_SB_.PCI0.LPCB.IUR3._CRS.BUF1 */
                        }
                    }
                }

                Device (WPCN)
                {
                    Name (_HID, EisaId ("PNP0A05") /* Generic Container Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        If (W381)
                        {
                            Return (0x0F)
                        }

                        Return (Zero)
                    }

                    OperationRegion (WPCN, SystemIO, 0x2E, 0x02)
                    Field (WPCN, ByteAcc, Lock, Preserve)
                    {
                        INDX,   8,
                        DATA,   8
                    }

                    IndexField (INDX, DATA, ByteAcc, Lock, Preserve)
                    {
                        Offset (0x07),
                        WR07,   8,
                        Offset (0x20),
                        WR20,   8,
                        WR21,   8,
                        WR22,   8,
                        WR23,   8,
                        WR24,   8,
                        WR25,   8,
                        WR26,   8,
                        WR27,   8,
                        WR28,   8,
                        WR29,   8,
                        WR2A,   8,
                        Offset (0x30),
                        WR30,   8,
                        Offset (0x60),
                        WR60,   8,
                        WR61,   8,
                        Offset (0x70),
                        WR70,   8,
                        WR71,   8,
                        Offset (0x74),
                        WR74,   8,
                        WR75,   8,
                        Offset (0xF0),
                        WRF0,   8,
                        WRF1,   8
                    }

                    Device (UAR5)
                    {
                        Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                        Name (_UID, 0x03)  // _UID: Unique ID
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (W381)
                            {
                                WR07 = 0x03
                                If (WR30)
                                {
                                    Return (0x0F)
                                }

                                Return (0x0D)
                            }

                            Return (Zero)
                        }

                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            WR07 = 0x03
                            WR30 = Zero
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (BUF0, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    _Y04)
                                IRQNoFlags (_Y05)
                                    {4}
                            })
                            WR07 = 0x03
                            If (W381)
                            {
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y04._MIN, IOL0)  // _MIN: Minimum Base Address
                                CreateByteField (BUF0, 0x03, IOH0)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y04._MAX, IOL1)  // _MAX: Maximum Base Address
                                CreateByteField (BUF0, 0x05, IOH1)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y04._LEN, LEN0)  // _LEN: Length
                                CreateWordField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR5._CRS._Y05._INT, IRQW)  // _INT: Interrupts
                                IOH0 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL0 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                IOH1 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL1 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                LEN0 = 0x08
                                Local0 = (WR70 & 0x0F)
                                If (Local0)
                                {
                                    IRQW = (One << Local0)
                                }
                                Else
                                {
                                    IRQW = Zero
                                }
                            }

                            Return (BUF0) /* \_SB_.PCI0.LPCB.WPCN.UAR5._CRS.BUF0 */
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03E8,             // Range Minimum
                                    0x03E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02E8,             // Range Minimum
                                    0x02E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            EndDependentFn ()
                        })
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateByteField (Arg0, 0x02, IOLO)
                            CreateByteField (Arg0, 0x03, IOHI)
                            CreateWordField (Arg0, 0x09, IRQW)
                            WR07 = 0x03
                            WR30 = Zero
                            WR61 = IOLO /* \_SB_.PCI0.LPCB.WPCN.UAR5._SRS.IOLO */
                            WR60 = IOHI /* \_SB_.PCI0.LPCB.WPCN.UAR5._SRS.IOHI */
                            FindSetRightBit (IRQW, Local0)
                            If ((IRQW != Zero))
                            {
                                Local0--
                            }

                            WR70 = Local0
                            WR30 = One
                        }

                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x19,
                            0x04
                        })
                        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                        {
                            Local0 = WR70 /* \_SB_.PCI0.LPCB.WPCN.WR70 */
                            If (Arg0)
                            {
                                WR70 = (Local0 | 0x10)
                            }
                            Else
                            {
                                WR70 = (Local0 & 0x0F)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            WR07 = 0x03
                            WR30 = One
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            WR07 = 0x03
                            WR30 = Zero
                        }
                    }

                    Device (UAR8)
                    {
                        Name (_HID, EisaId ("PNP0501") /* 16550A-compatible COM Serial Port */)  // _HID: Hardware ID
                        Name (_UID, 0x04)  // _UID: Unique ID
                        Method (_STA, 0, Serialized)  // _STA: Status
                        {
                            If (W381)
                            {
                                WR07 = 0x02
                                If (WR30)
                                {
                                    Return (0x0F)
                                }

                                Return (0x0D)
                            }

                            Return (Zero)
                        }

                        Method (_DIS, 0, Serialized)  // _DIS: Disable Device
                        {
                            WR07 = 0x02
                            WR30 = Zero
                        }

                        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                        {
                            Name (BUF0, ResourceTemplate ()
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    _Y06)
                                IRQNoFlags (_Y07)
                                    {3}
                            })
                            WR07 = 0x02
                            If (W381)
                            {
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y06._MIN, IOL0)  // _MIN: Minimum Base Address
                                CreateByteField (BUF0, 0x03, IOH0)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y06._MAX, IOL1)  // _MAX: Maximum Base Address
                                CreateByteField (BUF0, 0x05, IOH1)
                                CreateByteField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y06._LEN, LEN0)  // _LEN: Length
                                CreateWordField (BUF0, \_SB.PCI0.LPCB.WPCN.UAR8._CRS._Y07._INT, IRQW)  // _INT: Interrupts
                                IOH0 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL0 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                IOH1 = WR60 /* \_SB_.PCI0.LPCB.WPCN.WR60 */
                                IOL1 = WR61 /* \_SB_.PCI0.LPCB.WPCN.WR61 */
                                LEN0 = 0x08
                                Local0 = (WR70 & 0x0F)
                                If (Local0)
                                {
                                    IRQW = (One << Local0)
                                }
                                Else
                                {
                                    IRQW = Zero
                                }
                            }

                            Return (BUF0) /* \_SB_.PCI0.LPCB.WPCN.UAR8._CRS.BUF0 */
                        }

                        Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                        {
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {3}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03F8,             // Range Minimum
                                    0x03F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02F8,             // Range Minimum
                                    0x02F8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x03E8,             // Range Minimum
                                    0x03E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            StartDependentFn (0x00, 0x02)
                            {
                                IO (Decode16,
                                    0x02E8,             // Range Minimum
                                    0x02E8,             // Range Maximum
                                    0x01,               // Alignment
                                    0x08,               // Length
                                    )
                                IRQNoFlags ()
                                    {4,5,6,7,10,11,12}
                            }
                            EndDependentFn ()
                        })
                        Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
                        {
                            CreateByteField (Arg0, 0x02, IOLO)
                            CreateByteField (Arg0, 0x03, IOHI)
                            CreateWordField (Arg0, 0x09, IRQW)
                            WR07 = 0x02
                            WR30 = Zero
                            WR61 = IOLO /* \_SB_.PCI0.LPCB.WPCN.UAR8._SRS.IOLO */
                            WR60 = IOHI /* \_SB_.PCI0.LPCB.WPCN.UAR8._SRS.IOHI */
                            FindSetRightBit (IRQW, Local0)
                            If ((IRQW != Zero))
                            {
                                Local0--
                            }

                            WR70 = Local0
                            WR30 = One
                        }

                        Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                        {
                            0x19,
                            0x04
                        })
                        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                        {
                            Local0 = WR70 /* \_SB_.PCI0.LPCB.WPCN.WR70 */
                            If (Arg0)
                            {
                                WR70 = (Local0 | 0x10)
                            }
                            Else
                            {
                                WR70 = (Local0 & 0x0F)
                            }
                        }

                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            WR07 = 0x02
                            WR30 = One
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            WR07 = 0x02
                            WR30 = Zero
                        }
                    }
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8,
                    Offset (0x02),
                    Offset (0x03),
                    Offset (0x04),
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((PKBD == 0xFF) & (PKBC == 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((PKBD == 0xFF) & (PKBC == 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }
            }

            Device (D004)
            {
                Name (_ADR, 0x00100000)  // _ADR: Address
            }

            Device (D005)
            {
                Name (_ADR, 0x00110000)  // _ADR: Address
            }

            Device (D006)
            {
                Name (_ADR, 0x00120000)  // _ADR: Address
            }

            Device (XHC1)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
            }

            Device (D008)
            {
                Name (_ADR, 0x00150000)  // _ADR: Address
            }

            Device (D009)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
            }

            Device (D00A)
            {
                Name (_ADR, 0x00170000)  // _ADR: Address
            }

            Device (D00B)
            {
                Name (_ADR, 0x00180000)  // _ADR: Address
            }

            Device (D00C)
            {
                Name (_ADR, 0x00180001)  // _ADR: Address
            }

            Device (D00D)
            {
                Name (_ADR, 0x00180002)  // _ADR: Address
            }

            Device (D00E)
            {
                Name (_ADR, 0x00180003)  // _ADR: Address
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
            }

            Device (D010)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
            }

            Device (D011)
            {
                Name (_ADR, 0x001E0001)  // _ADR: Address
            }

            Device (D012)
            {
                Name (_ADR, 0x001E0002)  // _ADR: Address
            }

            Device (D013)
            {
                Name (_ADR, 0x001E0003)  // _ADR: Address
            }
        }
    }

    Scope (_GPE)
    {
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero,
        Zero,
        Zero,
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07,
        Zero,
        Zero,
        Zero
    })
    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (Arg0)
        {
            PPTS (Arg0)
        }
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        PWAK (Arg0)
        Return (WAKP) /* \WAKP */
    }

    Scope (\)
    {
        OperationRegion (PMIO, SystemIO, PMBS, 0x46)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01),
            PWBS,   1,
            Offset (0x20),
                ,   13,
            PMEB,   1,
            Offset (0x42),
                ,   1,
            GPEC,   1
        }

        Field (PMIO, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x20),
                ,   4,
            PSCI,   1,
            SCIS,   1
        }

        OperationRegion (PMCR, SystemMemory, PFDR, 0x04)
        Field (PMCR, DWordAcc, Lock, Preserve)
        {
            L10D,   1,
            L11D,   1,
            L12D,   1,
            L13D,   1,
            L14D,   1,
            L15D,   1,
            Offset (0x01),
            SD1D,   1,
            SD2D,   1,
            SD3D,   1,
            HSID,   1,
                ,   1,
            LPED,   1,
            OTGD,   1,
            Offset (0x02),
                ,   1,
                ,   1,
                ,   1,
                ,   1,
            RP1D,   1,
            RP2D,   1,
            RP3D,   1,
            RP4D,   1,
            L20D,   1,
            L21D,   1,
            L22D,   1,
            L23D,   1,
            L24D,   1,
            L25D,   1,
            L26D,   1,
            L27D,   1
        }

        OperationRegion (CLKC, SystemMemory, PCLK, 0x18)
        Field (CLKC, DWordAcc, Lock, Preserve)
        {
            CKC0,   2,
            CKF0,   1,
            Offset (0x04),
            CKC1,   2,
            CKF1,   1,
            Offset (0x08),
            CKC2,   2,
            CKF2,   1,
            Offset (0x0C),
            CKC3,   2,
            CKF3,   1,
            Offset (0x10),
            CKC4,   2,
            CKF4,   1,
            Offset (0x14),
            CKC5,   2,
            CKF5,   1,
            Offset (0x18)
        }
    }

    Scope (_SB)
    {
        Device (LPEA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F28" /* Intel SST Audio DSP */)  // _HID: Hardware ID
            Name (_CID, "80860F28" /* Intel SST Audio DSP */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Low Power Audio Controller - 80860F28")  // _DDN: DOS Device Name
            Name (_SUB, "80867270")  // _SUB: Subsystem ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                ^I2C2.RTEK
            })
            Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
            {
                PLPE
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((LPEE == 0x02) && (LPED == Zero)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x12345678,         // Address Base
                    0x00200000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadWrite,
                    0xFE830000,         // Address Base
                    0x00001000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadWrite,
                    0x55AA55AA,         // Address Base
                    0x00200000,         // Address Length
                    _Y0A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000001D,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.LPEA._Y08._BAS, B0BA)  // _BAS: Base Address
                B0BA = LPE0 /* \LPE0 */
                CreateDWordField (RBUF, \_SB.LPEA._Y09._BAS, B1BA)  // _BAS: Base Address
                B1BA = LPE1 /* \LPE1 */
                CreateDWordField (RBUF, \_SB.LPEA._Y0A._BAS, B2BA)  // _BAS: Base Address
                B2BA = LPE2 /* \LPE2 */
                Return (RBUF) /* \_SB_.LPEA.RBUF */
            }

            OperationRegion (KEYS, SystemMemory, LPE1, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            PowerResource (PLPE, 0x05, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (One)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    PSAT &= 0xFFFFFFFC
                    Local0 = PSAT /* \_SB_.LPEA.PSAT */
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    PSAT |= 0x03
                    Local0 = PSAT /* \_SB_.LPEA.PSAT */
                }
            }

            Device (ADMA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ADMA0F28" /* Intel Audio DMA */)  // _HID: Hardware ID
                Name (_CID, "ADMA0F28" /* Intel Audio DMA */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) Audio  DMA0 - DMA0F28")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF498000,         // Address Base
                            0x00001000,         // Address Length
                            _Y0B)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x00000018,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.ADMA._CRS._Y0B._BAS, B0BA)  // _BAS: Base Address
                    B0BA = LPE0 /* \LPE0 */
                    Return (RBUF) /* \_SB_.LPEA.ADMA._CRS.RBUF */
                }
            }

            Device (SSP1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SSPX0000" /* Intel SSP Device */)  // _HID: Hardware ID
                Name (_CID, "SSPX0000" /* Intel SSP Device */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) SSP Device")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If ((OSSL == One))
                    {
                        Switch (ToInteger (BDID))
                        {
                            Case (0x03)
                            {
                                Return (0x0F)
                            }
                            Case (0x04)
                            {
                                Return (0x0F)
                            }
                            Case (0x02)
                            {
                                Return (0x0F)
                            }

                        }
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF4A1000,         // Address Base
                            0x00001000,         // Address Length
                            _Y0C)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x0000001B,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.SSP1._CRS._Y0C._BAS, B0BA)  // _BAS: Base Address
                    B0BA = (LPE0 + 0x000A1000)
                    Return (RBUF) /* \_SB_.LPEA.SSP1._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("886a3f26-600c-4401-b7b1-01e9c2e7e77e")))
                    {
                        Return ("BLUET")
                    }

                    If ((Arg0 == ToUUID ("30d3f83e-2ee1-4bf0-86e9-f69ded2887ee")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("208b1400-f7c8-4325-ab32-53cd79b7d0a6")))
                    {
                        Return (0xFF2A1000)
                    }

                    If ((Arg0 == ToUUID ("e6e37c60-e78b-4fbd-bd26-5bd3667a6c9a")))
                    {
                        Switch (ToInteger (Arg1))
                        {
                            Case (0x08)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x00, 0x01, 0x00, 0x00, 0x01                     // .....
                                })
                            }
                            Case (0x10)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x06, 0x02, 0x00, 0x0E, 0x10                     // .....
                                })
                            }
                            Case (0x30)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x06, 0x02, 0x00, 0x0E, 0x10                     // .....
                                })
                            }

                        }

                        Return ("ERR-T")
                    }

                    Return ("ERR-M")
                }
            }

            Device (SSP2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SSPX0000" /* Intel SSP Device */)  // _HID: Hardware ID
                Name (_CID, "SSPX0000" /* Intel SSP Device */)  // _CID: Compatible ID
                Name (_DDN, "Intel(R) SSP Device")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((OSSL == One))
                    {
                        If ((BDID == 0x03))
                        {
                            Return (0x0F)
                        }
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xDF4A2000,         // Address Base
                            0x00001000,         // Address Length
                            _Y0D)
                        Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                        {
                            0x0000001C,
                        }
                    })
                    CreateDWordField (RBUF, \_SB.LPEA.SSP2._CRS._Y0D._BAS, B0BA)  // _BAS: Base Address
                    B0BA = (LPE0 + 0x000A2000)
                    Return (RBUF) /* \_SB_.LPEA.SSP2._CRS.RBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("886a3f26-600c-4401-b7b1-01e9c2e7e77e")))
                    {
                        Return ("MODEM")
                    }

                    If ((Arg0 == ToUUID ("30d3f83e-2ee1-4bf0-86e9-f69ded2887ee")))
                    {
                        Return (0x02)
                    }

                    If ((Arg0 == ToUUID ("208b1400-f7c8-4325-ab32-53cd79b7d0a6")))
                    {
                        Return (0xFF2A2000)
                    }

                    If ((Arg0 == ToUUID ("e6e37c60-e78b-4fbd-bd26-5bd3667a6c9a")))
                    {
                        Switch (ToInteger (Arg1))
                        {
                            Case (0x08)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x00, 0x01, 0x00, 0x00, 0x01                     // .....
                                })
                            }
                            Case (0x10)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x06, 0x02, 0x00, 0x0E, 0x10                     // .....
                                })
                            }
                            Case (0x30)
                            {
                                Return (Buffer (0x05)
                                {
                                     0x06, 0x02, 0x00, 0x0E, 0x10                     // .....
                                })
                            }

                        }

                        Return ("ERR-T")
                    }

                    Return ("ERR-M")
                }
            }
        }

        Device (VIBR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "VIB8601")  // _HID: Hardware ID
            Name (_CID, "VIB8601")  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Vibra Driver - VIB8601")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                })
                Return (RBUF) /* \_SB_.VIBR._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((BDID == 0x03))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }

        Device (AMCR)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "AMCR0F28" /* Intel Audio Machine Driver */)  // _HID: Hardware ID
            Name (_CID, "AMCR0F28" /* Intel Audio Machine Driver */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) Audio Machine Driver - AMCR0F28")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GPO2,
                ^I2C2.RTEK
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001B
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0008
                        }
                })
                Return (RBUF) /* \_SB_.AMCR._CRS.RBUF */
            }
        }

        Device (HAD)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "HAD0F28" /* Intel HDMI Audio Driver */)  // _HID: Hardware ID
            Name (_CID, "HAD0F28" /* Intel HDMI Audio Driver */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HDMI Audio Driver - HAD")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00065800,         // Address Base
                        0x00000140,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.HAD_._CRS.RBUF */
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Scope (XHC1)
        {
            Name (_DDN, "Baytrail XHCI controller (CCG core/Host only)")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_STR, Unicode ("Baytrail XHCI controller (CCG core/Host only)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Name (MSET, Zero)
            Name (DDST, Zero)
            OperationRegion (PCSL, SystemMemory, 0xE00A0074, One)
            Field (PCSL, ByteAcc, NoLock, WriteAsZeros)
            {
                PMPS,   2
            }

            OperationRegion (PCSH, SystemMemory, 0xE00A0075, One)
            Field (PCSH, ByteAcc, NoLock, Preserve)
            {
                PMCH,   8
            }

            OperationRegion (XMSE, SystemMemory, 0xE00A0000, 0x0100)
            Field (XMSE, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04),
                    ,   1,
                CMSE,   1,
                Offset (0x10),
                BAR0,   32,
                Offset (0x74),
                PMCS,   16,
                Offset (0xB0),
                    ,   13,
                PHY2,   2,
                    ,   13,
                USHP,   1,
                    ,   1,
                SCFG,   1
            }

            Method (PWOF, 0, Serialized)
            {
                P8XH (Zero, 0xAA)
                SCFG = One
            }

            Method (PWON, 0, Serialized)
            {
                P8XH (Zero, 0xBB)
                SCFG = Zero
            }

            OperationRegion (XPRT, SystemMemory, (PEBS + 0x000A0000), 0x0100)
            Field (XPRT, AnyAcc, NoLock, Preserve)
            {
                DVID,   16,
                Offset (0x74),
                D0D3,   2,
                Offset (0x75),
                PMEE,   1,
                    ,   6,
                PMES,   1,
                Offset (0xB0),
                    ,   13,
                MB13,   1,
                MB14,   1,
                Offset (0xB4),
                Offset (0xD0),
                PR2,    32,
                PR2M,   32,
                PR3,    32,
                PR3M,   32
            }

            OperationRegion (XHCP, SystemMemory, (PEBS + 0x000A0000), 0x0100)
            Field (XHCP, AnyAcc, Lock, Preserve)
            {
                Offset (0x04),
                PDBM,   16,
                Offset (0x10),
                MEMB,   32
            }

            Name (PCHS, Zero)
            Name (SRMB, 0x90800000)
            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
            {
                ADBG ("XHC D0")
                P8XH (Zero, 0xA0)
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                SRMB = (MEMB & 0xFFFFFFF0)
                Local2 = MEMB /* \_SB_.PCI0.XHC1.MEMB */
                Local1 = PDBM /* \_SB_.PCI0.XHC1.PDBM */
                PDBM &= 0xFFFFFFFFFFFFFFF9
                MEMB = SRMB /* \_SB_.PCI0.XHC1.SRMB */
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x510),
                    R510,   32,
                    Offset (0x520),
                    R520,   32,
                    Offset (0x530),
                    R530,   32,
                    Offset (0x540),
                    R540,   32,
                    Offset (0x8058),
                    Offset (0x8059),
                    CDES,   1,
                    Offset (0x805A),
                    STSP,   1,
                        ,   3,
                    CFEC,   1,
                    Offset (0x8060),
                        ,   25,
                    EPRE,   1,
                    Offset (0x8094),
                        ,   14,
                    CMMF,   1,
                        ,   6,
                    ESSP,   1,
                        ,   1,
                    DAPA,   1,
                    Offset (0x80E0),
                        ,   15,
                    AX15,   1,
                    Offset (0x80FC),
                        ,   25,
                    PPL1,   1,
                    Offset (0x8110),
                        ,   1,
                    CRNC,   1,
                    Offset (0x8111),
                    EPTD,   1,
                        ,   2,
                    HTPP,   1,
                        ,   8,
                    TRMC,   1,
                    Offset (0x8140),
                    MIDS,   12,
                    AWPC,   12,
                    EIHR,   8,
                        ,   6,
                    SSII,   1,
                    SSIO,   1,
                    HSII,   1,
                    Offset (0x8154),
                        ,   31,
                    CLK2,   1,
                    Offset (0x8164),
                    ETBC,   1,
                    ERBC,   1,
                    ESAI,   1,
                    ETMA,   1,
                    EOAI,   1,
                    EIAI,   1,
                    TTEA,   1,
                    ECMA,   1,
                    Offset (0x816C),
                        ,   2,
                    CLK0,   1,
                        ,   11,
                    CLK1,   1,
                    Offset (0x8188),
                    Offset (0x818B),
                    FIDD,   1,
                        ,   1,
                    FTSS,   1
                }

                Local3 = D0D3 /* \_SB_.PCI0.XHC1.D0D3 */
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                    Sleep (0x0A)
                }

                If ((PCHS == 0x02))
                {
                    MB13 = Zero
                    MB14 = Zero
                    CLK0 = Zero
                    CLK1 = Zero
                }

                CLK2 = One
                CDES = One
                STSP = One
                CFEC = Zero
                EPRE = One
                DAPA = One
                ESSP = One
                CMMF = One
                PPL1 = One
                CRNC = Zero
                EPTD = Zero
                HTPP = One
                TRMC = One
                MIDS = 0x3C
                AWPC = 0x0F
                EIHR = 0xFF
                SSII = One
                SSIO = One
                HSII = One
                ERBC = One
                ETBC = One
                ESAI = One
                ETMA = One
                EOAI = One
                EIAI = One
                TTEA = One
                ECMA = One
                FIDD = One
                FTSS = One
                USHP = Zero
                If ((PCHS == 0x02))
                {
                    While (((((R510 & 0x03FB) == 0x02E0) || ((R520 &
                        0x03FB) == 0x02E0)) || (((R530 & 0x03FB) == 0x02E0) || ((R540 &
                        0x03FB) == 0x02E0))))
                    {
                        Stall (0x32)
                    }

                    Local0 = R510 /* \_SB_.PCI0.XHC1._PS0.R510 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R510 = (Local0 | 0x80000000)
                        While (((R510 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R510 & 0xFFFFFFFFFFFFFFFD)
                        R510 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R520 /* \_SB_.PCI0.XHC1._PS0.R520 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R520 = (Local0 | 0x80000000)
                        While (((R520 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R520 & 0xFFFFFFFFFFFFFFFD)
                        R520 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R530 /* \_SB_.PCI0.XHC1._PS0.R530 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R530 = (Local0 | 0x80000000)
                        While (((R530 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R530 & 0xFFFFFFFFFFFFFFFD)
                        R530 = (Local0 | 0x00FE0000)
                    }

                    Local0 = R540 /* \_SB_.PCI0.XHC1._PS0.R540 */
                    If (((Local0 & 0x000203FB) == 0x02A0))
                    {
                        R540 = (Local0 | 0x80000000)
                        While (((R540 & 0x00180000) == Zero))
                        {
                            Stall (0x32)
                        }

                        Local0 = (R540 & 0xFFFFFFFFFFFFFFFD)
                        R540 = (Local0 | 0x00FE0000)
                    }

                    AX15 = One
                }

                If ((Local3 == 0x03))
                {
                    ADBG ("PS0->D3")
                    P8XH (Zero, 0xA1)
                    D0D3 = 0x03
                }
                Else
                {
                    P8XH (Zero, 0xA2)
                }

                PDBM &= 0xFFFFFFFFFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
            {
                ADBG ("XHC D3")
                P8XH (Zero, 0xB0)
                If ((DVID == 0xFFFF))
                {
                    Return (Zero)
                }

                SRMB = (MEMB & 0xFFFFFFF0)
                Local2 = MEMB /* \_SB_.PCI0.XHC1.MEMB */
                Local1 = PDBM /* \_SB_.PCI0.XHC1.PDBM */
                PDBM &= 0xFFFFFFFFFFFFFFF9
                MEMB = SRMB /* \_SB_.PCI0.XHC1.SRMB */
                PDBM |= 0x02
                OperationRegion (MCA1, SystemMemory, SRMB, 0x9000)
                Field (MCA1, DWordAcc, Lock, Preserve)
                {
                    Offset (0x80E0),
                        ,   15,
                    AX15,   1,
                    Offset (0x8154),
                        ,   31,
                    CLK2,   1,
                    Offset (0x816C),
                        ,   2,
                    CLK0,   1,
                        ,   11,
                    CLK1,   1,
                    Offset (0x8170)
                }

                Local3 = D0D3 /* \_SB_.PCI0.XHC1.D0D3 */
                If ((Local3 == 0x03))
                {
                    D0D3 = Zero
                }

                If ((PCHS == 0x02))
                {
                    MB13 = One
                    MB14 = One
                    CLK0 = One
                    CLK1 = One
                }

                CLK2 = Zero
                If ((PCHS == 0x02))
                {
                    AX15 = Zero
                }

                If ((PMEE == One))
                {
                    USHP = One
                }

                If ((Local3 == 0x03))
                {
                    ADBG ("PS3->D3")
                    P8XH (Zero, 0xB1)
                    D0D3 = 0x03
                }
                Else
                {
                    P8XH (Zero, 0xB2)
                }

                PDBM &= 0xFFFFFFFFFFFFFFFD
                MEMB = Local2
                PDBM = Local1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((XHCI != Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Device (RHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (SSP1)
                {
                    Name (_ADR, 0x07)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x06,
                            Zero,
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x4B, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // K.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.SSP1._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM11")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM12")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM13")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("SSP1 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("SSP1 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0x06,
                            Zero,
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS01._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x4B, 0x19, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // K.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS01._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM21")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM22")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM23")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS01 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS01 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (UPCR, Package (0x04)
                        {
                            0xFF,
                            Zero,
                            Zero,
                            Zero
                        })
                        If ((BDID == 0x02))
                        {
                            Return (UPCR) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCR */
                        }
                        Else
                        {
                            Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS02._UPC.UPCP */
                        }
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // @.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Name (PLDR, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x41, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // A.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        If ((BDID == 0x02))
                        {
                            Return (PLDR) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDR */
                        }
                        Else
                        {
                            Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS02._PLD.PLDP */
                        }
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM31")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM32")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM33")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS02 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS02 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Name (_DEP, Package (0x01)  // _DEP: Dependencies
                    {
                        GPO2
                    })
                    Name (PSTS, Zero)
                    PowerResource (WWPR, 0x00, 0x0000)
                    {
                        Name (_DEP, Package (0x01)  // _DEP: Dependencies
                        {
                            GPO2
                        })
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If ((\_SB.GPO2.AVBL == One))
                            {
                                Return (\_SB.GPO2.WWD3)
                            }

                            Return (Zero)
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            If ((PSTS == Zero))
                            {
                                If ((\_SB.GPO2.AVBL == One))
                                {
                                    Sleep (0x0200)
                                    \_SB.GPO2.WWD3 = One
                                    PSTS = One
                                }
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            If ((\_SB.GPO2.AVBL == One))
                            {
                                \_SB.GPO2.WWD3 = Zero
                                PSTS = Zero
                            }
                        }
                    }

                    Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                    Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                    {
                        WWPR
                    })
                    Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                    {
                        WWPR
                    })
                    Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                    {
                        WWPR
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS03._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS03._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM41")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM42")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM43")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS03 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS03 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Device (MODM)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                        {
                            WWPR
                        })
                        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                        {
                            WWPR
                        })
                        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                        {
                            WWPR
                        })
                    }
                }

                Device (HS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HS04._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HS04._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM51")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM52")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM53")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HS04 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HS04 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (Zero)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }

                Device (HSC1)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Name (_DEP, Package (0x01)  // _DEP: Dependencies
                    {
                        GPO2
                    })
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC1._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM61")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM62")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM63")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HSIC1 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HSIC1 DSM")
                                    Debug = "Method _DSM Function Index2"
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }

                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0006
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0016
                            }
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (RBUF) /* \_SB_.PCI0.XHC1.RHUB.HSC1.RBUF */
                    }
                }

                Device (HSC2)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Return (UPCP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Package (0x01)
                        {
                            Buffer (0x14)
                            {
                                /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                /* 0008 */  0x30, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // 0.......
                                /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                            }
                        })
                        Return (PLDP) /* \_SB_.PCI0.XHC1.RHUB.HSC2._PLD.PLDP */
                    }

                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        ADBG ("DSM71")
                        If ((Arg0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            ADBG ("DSM72")
                            If ((Arg1 == Zero))
                            {
                                ADBG ("DSM73")
                                If ((Arg2 == Zero))
                                {
                                    ADBG ("HSIC2 QUERY")
                                    Debug = "Method _DSM Function Query"
                                    Return (Buffer (One)
                                    {
                                         0x05                                             // .
                                    })
                                }

                                If ((Arg2 == 0x02))
                                {
                                    ADBG ("HSIC2 DSM called")
                                    Debug = "Method _DSM Function Index2"
                                    Return (One)
                                }
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (Zero)
                    }
                }
            }
        }

        Device (OTG1)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Name (_DDN, "Baytrail XHCI controller (Synopsys core/OTG)")  // _DDN: DOS Device Name
            Name (_STR, Unicode ("Baytrail XHCI controller (Synopsys core/OTG)"))  // _STR: Description String
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            OperationRegion (GENR, PCI_Config, 0xA0, 0x10)
            Field (GENR, WordAcc, NoLock, Preserve)
            {
                    ,   18,
                CPME,   1,
                U2EN,   1,
                U3EN,   1
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                CPME = One
                U2EN = One
                U3EN = One
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                CPME = Zero
                U2EN = Zero
                U3EN = Zero
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((OTGM != Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Device (GLAN)
        {
            Name (_ADR, 0x00190000)  // _ADR: Address
            OperationRegion (GBER, PCI_Config, 0xCC, 0x04)
            Field (GBER, WordAcc, NoLock, Preserve)
            {
                Offset (0x01),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }
        }

        Device (HDEF)
        {
            Name (_ADR, 0x001B0000)  // _ADR: Address
            OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
            Field (HDAR, WordAcc, NoLock, Preserve)
            {
                DCKA,   1,
                Offset (0x01),
                DCKM,   1,
                    ,   6,
                DCKS,   1,
                Offset (0x08),
                Offset (0x09),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }
        }

        Scope (\_SB)
        {
            PowerResource (USBC, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                }
            }
        }

        Scope (EHC1)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            OperationRegion (PWKE, PCI_Config, 0x62, 0x04)
            Field (PWKE, DWordAcc, NoLock, Preserve)
            {
                    ,   1,
                PWUC,   8
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (Arg0)
                {
                    PWUC = Ones
                }
                Else
                {
                    PWUC = Zero
                }
            }

            Device (HUBN)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (PR01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                    {
                        0xFF,
                        Zero,
                        Zero,
                        Zero
                    })
                    Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                    {
                        ToPLD (
                            PLD_Revision           = 0x1,
                            PLD_IgnoreColor        = 0x1,
                            PLD_Red                = 0x0,
                            PLD_Green              = 0x0,
                            PLD_Blue               = 0x0,
                            PLD_Width              = 0x0,
                            PLD_Height             = 0x0,
                            PLD_UserVisible        = 0x0,
                            PLD_Dock               = 0x0,
                            PLD_Lid                = 0x0,
                            PLD_Panel              = "UNKNOWN",
                            PLD_VerticalPosition   = "UPPER",
                            PLD_HorizontalPosition = "LEFT",
                            PLD_Shape              = "UNKNOWN",
                            PLD_GroupOrientation   = 0x0,
                            PLD_GroupToken         = 0x0,
                            PLD_GroupPosition      = 0x0,
                            PLD_Bay                = 0x0,
                            PLD_Ejectable          = 0x0,
                            PLD_EjectRequired      = 0x0,
                            PLD_CabinetNumber      = 0x0,
                            PLD_CardCageNumber     = 0x0,
                            PLD_Reference          = 0x0,
                            PLD_Rotation           = 0x0,
                            PLD_Order              = 0x0)

                    })
                    Device (PR11)
                    {
                        Name (_ADR, One)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "LEFT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PR12)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PR13)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "CENTER",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }

                    Device (PR14)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "FRONT",
                                PLD_VerticalPosition   = "",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR15)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR16)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR17)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            If ((Arg0 == ToUUID ("a5fc708f-8775-4ba6-bd0c-ba90a1ec72f8")))
                            {
                                Switch (ToInteger (Arg2))
                                {
                                    Case (Zero)
                                    {
                                        If ((Arg1 == One))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x07                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x00                                             // .
                                            })
                                        }
                                    }
                                    Case (One)
                                    {
                                        If ((SDGV == 0xFF))
                                        {
                                            Return (Zero)
                                        }
                                        Else
                                        {
                                            Return (One)
                                        }
                                    }
                                    Case (0x02)
                                    {
                                        Return (SDGV) /* \SDGV */
                                    }

                                }
                            }

                            Return (Zero)
                        }
                    }

                    Device (PR18)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                        {
                            0xFF,
                            0xFF,
                            Zero,
                            Zero
                        })
                        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                        {
                            ToPLD (
                                PLD_Revision           = 0x1,
                                PLD_IgnoreColor        = 0x1,
                                PLD_Red                = 0x0,
                                PLD_Green              = 0x0,
                                PLD_Blue               = 0x0,
                                PLD_Width              = 0x0,
                                PLD_Height             = 0x0,
                                PLD_UserVisible        = 0x1,
                                PLD_Dock               = 0x0,
                                PLD_Lid                = 0x0,
                                PLD_Panel              = "UNKNOWN",
                                PLD_VerticalPosition   = "LOWER",
                                PLD_HorizontalPosition = "RIGHT",
                                PLD_Shape              = "UNKNOWN",
                                PLD_GroupOrientation   = 0x0,
                                PLD_GroupToken         = 0x0,
                                PLD_GroupPosition      = 0x0,
                                PLD_Bay                = 0x0,
                                PLD_Ejectable          = 0x0,
                                PLD_EjectRequired      = 0x0,
                                PLD_CabinetNumber      = 0x0,
                                PLD_CardCageNumber     = 0x0,
                                PLD_Reference          = 0x0,
                                PLD_Rotation           = 0x0,
                                PLD_Order              = 0x0)

                        })
                    }
                }
            }

            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (USBR, PCI_Config, 0x54, 0x04)
            Field (USBR, WordAcc, NoLock, Preserve)
            {
                Offset (0x01),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((XHCI == Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
            {
                Return (Zero)
            }

            Method (_PR3, 0, NotSerialized)  // _PR3: Power Resources for D3hot
            {
                Return (Package (0x01)
                {
                    USBC
                })
            }
        }

        Device (SEC0)
        {
            Name (_ADR, 0x001A0000)  // _ADR: Address
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            OperationRegion (PMEB, PCI_Config, 0x84, 0x04)
            Field (PMEB, WordAcc, NoLock, Preserve)
            {
                Offset (0x01),
                PMEE,   1,
                    ,   6,
                PMES,   1
            }

            Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
            {
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x1F000000,         // Address Base
                        0x01000000,         // Address Length
                        )
                })
                If ((PAVP == 0x02))
                {
                    Return (RBUF) /* \_SB_.PCI0.SEC0._CRS.RBUF */
                }

                Return (Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
            }
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000000, 0x00){}
        Processor (CPU1, 0x02, 0x00000000, 0x00){}
        Processor (CPU2, 0x03, 0x00000000, 0x00){}
        Processor (CPU3, 0x04, 0x00000000, 0x00){}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x04)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32
    }

    Method (P8XH, 2, Serialized)
    {
        If ((Arg0 == Zero))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == One))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P80D */
    }

    OperationRegion (SPRT, SystemIO, 0xB2, 0x02)
    Field (SPRT, ByteAcc, Lock, Preserve)
    {
        SSMP,   8
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        GPIC = Arg0
        PICM = Arg0
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8,
        Offset (0x04),
        G1E,    8,
        Offset (0x0A),
        G1S2,   8,
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x2C)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
        Offset (0x20),
        G0S,    32,
        Offset (0x28),
        G0EN,   32
    }

    Method (PPTS, 1, NotSerialized)
    {
        P80D = Zero
        P8XH (Zero, Arg0)
        G1S3 = Ones
        G1S2 = Ones
        G1S = One
        G1E = One
        G0S = Ones
        If (CondRefOf (TCGM))
        {
            \_SB.PCI0.LPCB.TPM.PTS (Arg0)
        }
    }

    Method (PWAK, 1, Serialized)
    {
        P8XH (One, 0xAB)
        If (NEXP)
        {
            If ((OSCC & 0x02))
            {
                \_SB.PCI0.NHPG ()
            }

            If ((OSCC & 0x04))
            {
                \_SB.PCI0.NPME ()
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            If ((PFLV == FMBL))
            {
                If ((Arg0 == 0x04))
                {
                    PNOT ()
                }
            }

            If ((CFGD & 0x01000000)){}
            If ((OSYS == 0x07D2))
            {
                If ((CFGD & One))
                {
                    If ((\_PR.CPU0._PPC > Zero))
                    {
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                        \_PR.CPU0._PPC += One
                        PNOT ()
                    }
                    Else
                    {
                        \_PR.CPU0._PPC += One
                        PNOT ()
                        \_PR.CPU0._PPC -= One
                        PNOT ()
                    }
                }
            }
        }
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If ((PDC0 & 0x08))
            {
                Notify (\_PR.CPU0, 0x80) // Performance Capability Change
                If ((PDC0 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81) // C-State Change
                }
            }

            If ((PDC1 & 0x08))
            {
                Notify (\_PR.CPU1, 0x80) // Performance Capability Change
                If ((PDC1 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81) // C-State Change
                }
            }

            If ((PDC2 & 0x08))
            {
                Notify (\_PR.CPU2, 0x80) // Performance Capability Change
                If ((PDC2 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81) // C-State Change
                }
            }

            If ((PDC3 & 0x08))
            {
                Notify (\_PR.CPU3, 0x80) // Performance Capability Change
                If ((PDC3 & 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81) // C-State Change
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80) // Performance Capability Change
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81) // C-State Change
        }
    }

    Scope (_SB)
    {
        Name (CRTT, 0x6E)
        Name (ACTT, 0x55)
        Name (SCR0, 0x0102)
        Name (SCR1, 0x0102)
        Name (SCR2, 0x0102)
        Name (SCR3, 0x0102)
        Name (GCR0, 0x46)
        Name (GCR1, 0x46)
        Name (GCR2, 0x46)
        Name (GCR3, 0x46)
        Name (GCR4, 0x46)
        Name (PST0, 0x3C)
        Name (PST1, 0x3C)
        Name (PST2, 0x3C)
        Name (PST3, 0x3C)
        Name (PST4, 0x3C)
        Name (LPMV, 0x03)
        Name (PDBG, Zero)
        Name (PDPM, One)
        Name (PDBP, One)
        Name (DLPO, Package (0x06)
        {
            One,
            One,
            One,
            0x19,
            One,
            One
        })
        Name (BRQD, Zero)
        Name (PSC1, Zero)
        Name (PSC2, Zero)
        Name (PSC3, Zero)
        Name (PSA1, Zero)
        Name (PSA2, Zero)
        Name (PSA3, Zero)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            CRTT = DPCT /* \DPCT */
            ACTT = DPPT /* \DPPT */
            GCR0 = DGC0 /* \DGC0 */
            GCR1 = DGC1 /* \DGC1 */
            GCR2 = DGC2 /* \DGC2 */
            GCR3 = DGC3 /* \DGC3 */
            GCR4 = DGC4 /* \DGC4 */
            PST0 = DGP0 /* \DGP0 */
            PST1 = DGP1 /* \DGP1 */
            PST2 = DGP2 /* \DGP2 */
            PST3 = DGP3 /* \DGP3 */
            PST4 = DGP4 /* \DGP4 */
            SCR0 = DSC0 /* \DSC0 */
            SCR1 = DSC1 /* \DSC1 */
            SCR2 = DSC2 /* \DSC2 */
            SCR3 = DSC3 /* \DSC3 */
            LPMV = DLPM /* \DLPM */
            PDBG = DDBG /* \DDBG */
            DLPO [One] = LPOE /* \LPOE */
            DLPO [0x02] = LPPS /* \LPPS */
            DLPO [0x03] = LPST /* \LPST */
            DLPO [0x04] = LPPC /* \LPPC */
            DLPO [0x05] = LPPF /* \LPPF */
            PDPM = DPME /* \DPME */
        }

        Scope (PCI0)
        {
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                OSYS = 0x07D0
                If (CondRefOf (\_OSI, Local0))
                {
                    If (_OSI ("Windows 2001"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        OSYS = 0x07D1
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        OSYS = 0x07D2
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        OSYS = 0x07D6
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        OSYS = 0x07D9
                    }

                    If (_OSI ("Windows 2012"))
                    {
                        OSYS = 0x07DC
                    }

                    If (_OSI ("Windows 2013"))
                    {
                        OSYS = 0x07DD
                    }
                }
            }

            Method (NHPG, 0, Serialized)
            {
            }

            Method (NPME, 0, Serialized)
            {
            }
        }

        Device (GPED)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT0002" /* Virtual GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT0002" /* Virtual GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "Virtual GPIO controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (INST, One)
            Name (XTMP, Zero)
            OperationRegion (SCIS, SystemMemory, 0xFED030C0, 0x04)
            Field (SCIS, DWordAcc, NoLock, Preserve)
            {
                LGBE,   1,
                LHAD,   1,
                LATA,   1,
                LDIO,   1,
                LARD,   1,
                LIO1,   1,
                LCEP,   1,
                LANB,   1,
                LHCI,   1,
                LOTG,   1,
                LECI,   1,
                LHSI,   1
            }

            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("8b38b469-6f95-4b08-9b02-2defcc2d2c35")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Return ((PMBS + 0x20))
                    }

                    Return (Zero)
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x00000009,
                    }
                })
                Return (RBUF) /* \_SB_.GPED._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.GPED", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                Return (RBUF) /* \_SB_.GPED._AEI.RBUF */
            }

            Method (_L02, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If ((STEP <= 0x04))
                {
                    If ((^^PCI0.GLAN.PMES == One))
                    {
                        ^^PCI0.GLAN.PMEE = Zero
                        Local0 = ^^PCI0.GLAN.PMEE /* \_SB_.PCI0.GLAN.PMEE */
                        Notify (^^PCI0.GLAN, 0x02) // Device Wake
                    }
                }

                If ((STEP <= 0x04))
                {
                    If ((^^PCI0.HDEF.PMES == One))
                    {
                        ^^PCI0.HDEF.PMEE = Zero
                        Local0 = ^^PCI0.HDEF.PMEE /* \_SB_.PCI0.HDEF.PMEE */
                        Notify (^^PCI0.HDEF, 0x02) // Device Wake
                    }
                }

                If ((XHCI == Zero))
                {
                    If ((^^PCI0.EHC1.PMES == One))
                    {
                        ^^PCI0.EHC1.PMEE = Zero
                        Local0 = ^^PCI0.EHC1.PMEE /* \_SB_.PCI0.EHC1.PMEE */
                        Notify (^^PCI0.EHC1, 0x02) // Device Wake
                    }
                }
                ElseIf ((SOCS > 0x05))
                {
                    XTMP = (^^PCI0.XHC1.PMCS & 0x8000)
                    If ((XTMP == 0x8000))
                    {
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                }
                ElseIf ((SOCS > 0x02))
                {
                    XTMP = (^^PCI0.XHC1.PMCS & 0x8000)
                    If ((XTMP == 0x8000))
                    {
                        ^^PCI0.XHC1.PMCH = 0x81
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                }
                Else
                {
                    XTMP = (^^PCI0.XHC1.PMCS & 0x0103)
                    If ((XTMP == 0x0103))
                    {
                        ^^PCI0.XHC1.PMCS = 0x0100
                        Sleep (0x0A)
                        XTMP = (^^PCI0.XHC1.PMCS & 0x8000)
                        If ((XTMP == 0x8000))
                        {
                            ^^PCI0.XHC1.PMCH = 0x81
                        }
                        Else
                        {
                            ^^PCI0.XHC1.PMCS = 0x0103
                        }

                        Sleep (0x0A)
                        Notify (^^PCI0.XHC1, 0x02) // Device Wake
                    }
                    Else
                    {
                        ^^PCI0.XHC1.PMCH = 0x81
                        Sleep (0x0A)
                    }
                }

                If ((OTGM != Zero))
                {
                    If ((^^PCI0.OTG1.PMES == One))
                    {
                        ADBG ("OTG wake")
                        ^^PCI0.OTG1.PMEE = Zero
                        ^^PCI0.OTG1.CPME = Zero
                        ^^PCI0.OTG1.U2EN = Zero
                        ^^PCI0.OTG1.U3EN = Zero
                        Notify (^^PCI0.OTG1, 0x02) // Device Wake
                    }
                }

                If ((^^PCI0.SEC0.PMES == One))
                {
                    ^^PCI0.SEC0.PMEE = Zero
                    Local0 = ^^PCI0.SEC0.PMEE /* \_SB_.PCI0.SEC0.PMEE */
                    Notify (^^PCI0.SEC0, 0x02) // Device Wake
                }
            }
        }

        Device (GPO0)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView General Purpose Input/Output (GPIO) controller")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0C000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000031,
                    }
                })
                Return (RBUF) /* \_SB_.GPO0._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0035
                        }
                ),
                BTD3,   1,
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003A
                        }
                ),
                SUSB,   1,
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003B
                        }
                ),
                SHD3,   1,
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003C
                        }
                ),
                TCD3,   1
            }
        }

        Device (GPO1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPNCORE controller")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0D000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000030,
                    }
                })
                Return (RBUF) /* \_SB_.GPO1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (GPO2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "INT33FC" /* Intel Baytrail GPIO Controller */)  // _CID: Compatible ID
            Name (_DDN, "ValleyView GPSUS controller")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFED0E000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                    {
                        0x00000032,
                    }
                })
                Return (RBUF) /* \_SB_.GPO2._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0012
                        }
                })
                Name (FBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0012
                        }
                })
                If ((FSAS == One))
                {
                    Return (FBUF) /* \_SB_.GPO2._AEI.FBUF */
                }

                Return (RBUF) /* \_SB_.GPO2._AEI.RBUF */
            }

            Name (BFSA, Buffer (0x03)
            {
                 0x00, 0x01, 0x00                                 // ...
            })
            CreateByteField (BFSA, Zero, BYYY)
            CreateByteField (BFSA, 0x02, DATT)
            Name (BFSB, Buffer (0x03)
            {
                 0x00, 0x01, 0x00                                 // ...
            })
            CreateByteField (BFSB, Zero, YYYY)
            CreateByteField (BFSB, 0x02, DTTT)
            Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                If (((^^I2C3.AVBL == One) && ((^^I2C7.PMIC.AVBL == One) && (^^I2C7.PMIC.AVBG == One))))
                {
                    BFSA = ^^I2C3.FSRC /* \_SB_.I2C3.FSRC */
                    DATT &= 0x1F
                    BFSB = ^^I2C3.FSDT /* \_SB_.I2C3.FSDT */
                    DTTT &= One
                    If ((DATT == Zero))
                    {
                        ^^PCI0.XHC1.PWOF ()
                    }
                    Else
                    {
                        ^^PCI0.XHC1.PWON ()
                    }

                    If ((DATT == 0x16))
                    {
                        If ((DTTT == Zero))
                        {
                            If ((^^I2C7.PMIC.AVBL == One))
                            {
                                ^^I2C7.PMIC.VBUS = One
                                If ((^^I2C7.PMIC.AVBG == One))
                                {
                                    ^^I2C7.PMIC.GBUS = One
                                    Sleep (0x1E)
                                }
                            }
                        }

                        BFSB = ^^I2C3.FSIM /* \_SB_.I2C3.FSIM */
                        DTTT |= One
                        ^^I2C3.FSIM = BFSB /* \_SB_.GPO2.BFSB */
                        DTTT &= 0xFE
                        Sleep (0x64)
                        ^^I2C3.FSIM = BFSB /* \_SB_.GPO2.BFSB */
                        BFSB = ^^I2C3.FSIN /* \_SB_.I2C3.FSIN */
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x03))
                            {
                                If ((^^GPO0.AVBL == One))
                                {
                                    ^^GPO0.SUSB = Zero
                                }
                            }
                        }
                    }

                    If ((((DATT == 0x11) || (DATT == 0x0D)) || (DATT == 0x0A)))
                    {
                        BFSB = ^^I2C3.FSIN /* \_SB_.I2C3.FSIN */
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x03))
                            {
                                If ((^^GPO0.AVBL == One))
                                {
                                    ^^GPO0.SUSB = Zero
                                }
                            }
                        }
                    }
                    ElseIf ((DATT == 0x0C))
                    {
                        BFSB = ^^I2C3.FSMS /* \_SB_.I2C3.FSMS */
                        DTTT &= 0x03
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x02))
                            {
                                DTTT |= 0x6C
                            }

                            If ((FBID == 0x03))
                            {
                                DTTT |= 0x48
                            }
                        }

                        ^^I2C3.FSMS = BFSB /* \_SB_.GPO2.BFSB */
                        BFSB = ^^I2C3.FSIN /* \_SB_.I2C3.FSIN */
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x03))
                            {
                                If ((^^GPO0.AVBL == One))
                                {
                                    ^^GPO0.SUSB = Zero
                                }
                            }
                        }
                    }
                    ElseIf ((DATT == 0x05))
                    {
                        BFSB = ^^I2C3.FSMS /* \_SB_.I2C3.FSMS */
                        DTTT &= 0x03
                        DTTT |= 0x48
                        ^^I2C3.FSMS = BFSB /* \_SB_.GPO2.BFSB */
                        BFSB = ^^I2C3.FSIN /* \_SB_.I2C3.FSIN */
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x03))
                            {
                                If ((^^GPO0.AVBL == One))
                                {
                                    ^^GPO0.SUSB = Zero
                                }
                            }
                        }
                    }
                    ElseIf ((DATT == Zero))
                    {
                        If ((^^I2C7.PMIC.AVBL == One))
                        {
                            ^^I2C7.PMIC.VBUS = Zero
                            If ((^^I2C7.PMIC.AVBG == One))
                            {
                                ^^I2C7.PMIC.GBUS = One
                                Sleep (0x1E)
                            }
                        }

                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x03))
                            {
                                If ((^^GPO0.AVBL == One))
                                {
                                    ^^GPO0.SUSB = One
                                }
                            }
                        }

                        DTTT = 0x27
                        ^^I2C3.FSMS = BFSB /* \_SB_.GPO2.BFSB */
                        BFSB = ^^I2C3.FSIN /* \_SB_.I2C3.FSIN */
                    }
                    Else
                    {
                        BFSB = ^^I2C3.FSIN /* \_SB_.I2C3.FSIN */
                    }
                }
            }

            Name (BUFF, Buffer (0x07)
            {
                 0xFF                                             // .
            })
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, One, LEN)
            CreateByteField (BUFF, 0x02, TMP0)
            CreateByteField (BUFF, 0x03, AX00)
            CreateByteField (BUFF, 0x04, AX01)
            CreateByteField (BUFF, 0x05, AX10)
            CreateByteField (BUFF, 0x06, AX11)
            Method (_L12, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
            {
                Local0 = Zero
                If (CondRefOf (\_SB.I2C1.BATC, Local1))
                {
                    Local0 = ^^I2C1.BATC.INTR ()
                    If ((0xFF == Local0))
                    {
                        ADBG ("INTR RD FAIL")
                        Return (Zero)
                    }

                    If ((Zero == Local0))
                    {
                        Return (Zero)
                    }

                    ADBG ("ULPMC INTR")
                    ADBG (Local0)
                    Notify (ADP1, 0x80) // Status Change
                    Notify (^^I2C1.BATC, 0x80) // Status Change
                    Notify (^^I2C1.BATC, 0x81) // Information Change
                }

                If ((Local0 == 0x0E))
                {
                    Notify (STR3, 0x90) // Device-Specific
                    If ((^^I2C1.AVBL == One))
                    {
                        BUFF = ^^I2C1.THRM /* \_SB_.I2C1.THRM */
                        If ((STAT == Zero))
                        {
                            Local4 = AX01 /* \_SB_.GPO2.AX01 */
                            Local4 &= 0xEF
                            Local5 = AX11 /* \_SB_.GPO2.AX11 */
                            Local5 &= 0xEF
                            AX01 = Local4
                            AX11 = Local5
                            ^^I2C1.THRM = BUFF /* \_SB_.GPO2.BUFF */
                        }
                    }
                }

                If (CondRefOf (\_SB.DPTF, Local3))
                {
                    If (((Local0 == One) || (Local0 == 0x02)))
                    {
                        Notify (DPTF, 0x86) // Device-Specific
                        Notify (TCHG, 0x80) // Status Change
                    }

                    If (((Local0 == 0x07) || (Local0 == 0x08)))
                    {
                        Notify (DPTF, 0x86) // Device-Specific
                        Notify (TCHG, 0x80) // Status Change
                    }
                }
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    AVBL = Arg1
                }
            }

            OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0C)
            Field (GPOP, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0014
                        }
                ),
                WFD3,   1,
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0016
                        }
                ),
                WWD3,   1,
                Connection (
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x001D
                        }
                ),
                WWR3,   1
            }
        }

        Device (PEPD)
        {
            Name (_HID, "INT3396" /* Standard Power Management Controller */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0D80") /* Windows-compatible System Power Management Controller */)  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PEPP, Zero)
            Name (DEVS, Package (0x01)
            {
                Zero
            })
            Name (DEVX, Package (0x12)
            {
                Package (0x02)
                {
                    "\\_SB.PCI0.XHC1",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.PCI0.EHC1",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.PCI0.GFX0.ISP0",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.PCI0.SEC0",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.I2C1",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.I2C2",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.I2C3",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.I2C4",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.I2C5",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.I2C6",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.I2C7",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.SDHA",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.SDHB",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.SDHC",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.SPI1",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.URT1",
                    One
                },

                Package (0x02)
                {
                    "\\_SB.URT2",
                    One
                }
            })
            Name (CDMP, Package (0x02){})
            Name (DEVY, Package (0x16)
            {
                Package (0x03)
                {
                    "\\_PR.CPU0",
                    One,
                    Package (0x02)
                    {
                        Zero,
                        Package (0x02)
                        {
                            0xFF,
                            Zero
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_PR.CPU1",
                    One,
                    Package (0x02)
                    {
                        Zero,
                        Package (0x02)
                        {
                            0xFF,
                            Zero
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_PR.CPU2",
                    One,
                    Package (0x02)
                    {
                        Zero,
                        Package (0x02)
                        {
                            0xFF,
                            Zero
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_PR.CPU3",
                    One,
                    Package (0x02)
                    {
                        Zero,
                        Package (0x02)
                        {
                            0xFF,
                            Zero
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0",
                    One,
                    Package (0x02)
                    {
                        Zero,
                        Package (0x02)
                        {
                            0xFF,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.PCI0.GFX0.ISP0",
                    One,
                    Package (0x02)
                    {
                        Zero,
                        Package (0x02)
                        {
                            0xFF,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.I2C1",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.I2C2",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.I2C3",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.I2C4",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.I2C5",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.I2C6",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.I2C7",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.PCI0.XHC1",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            0x03
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.PCI0.SEC0",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.LPEA",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            Zero
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.SDHA",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.SDHB",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.SDHC",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.SPI1",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.URT1",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                },

                Package (0x03)
                {
                    "\\_SB.URT2",
                    One,
                    Package (0x05)
                    {
                        Zero,
                        Package (0x02)
                        {
                            Zero,
                            Zero
                        },

                        Package (0x02)
                        {
                            One,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x02,
                            0x03
                        },

                        Package (0x02)
                        {
                            0x03,
                            0x03
                        }
                    }
                }
            })
            Name (BCCD, Package (0x01)
            {
                Package (0x02)
                {
                    "\\_SB.SDHA",
                    Package (0x01)
                    {
                        Package (0x03)
                        {
                            Package (0x05)
                            {
                                Zero,
                                0x20,
                                Zero,
                                0x03,
                                Ones
                            },

                            Package (0x03)
                            {
                                0xFFFFFFFC,
                                Zero,
                                0x04
                            },

                            Zero
                        }
                    }
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("b8febfe0-baf8-454b-aecd-49fb91137b21")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x0F                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        PEPP = One
                        Return (0x0F)
                    }

                    If ((Arg2 == 0x02))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (DEVS) /* \_SB_.PEPD.DEVS */
                        }

                        If ((Arg1 == One))
                        {
                            Return (DEVX) /* \_SB_.PEPD.DEVX */
                        }
                    }

                    If ((Arg2 == 0x03))
                    {
                        CDMP [Zero] = "\\_SB.SDHA"
                        CDMP [One] = EM1A /* \EM1A */
                        Return (CDMP) /* \_SB_.PEPD.CDMP */
                    }
                }

                If ((Arg0 == ToUUID ("c4eb40a0-6cd2-11e2-bcfd-0800200c9a66")))
                {
                    If ((Arg2 == Zero))
                    {
                        Return (Buffer (One)
                        {
                             0x07                                             // .
                        })
                    }

                    If ((Arg2 == One))
                    {
                        Return (DEVY) /* \_SB_.PEPD.DEVY */
                    }

                    If ((Arg2 == 0x02))
                    {
                        Local0 = EM1A /* \EM1A */
                        Local0 += 0x84
                        DerefOf (DerefOf (DerefOf (DerefOf (BCCD [Zero]
                            ) [One]) [Zero]) [Zero]) [0x04] = Local0
                        Return (BCCD) /* \_SB_.PEPD.BCCD */
                    }
                }

                Return (One)
            }
        }

        Device (SDHA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) eMMC Controller - 80860F14")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBF1, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002D,
                }
            })
            Name (RBF2, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y0F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002C,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBF1, \_SB.SDHA._Y0E._BAS, B0B1)  // _BAS: Base Address
                CreateDWordField (RBF1, \_SB.SDHA._Y0E._LEN, B0L1)  // _LEN: Length
                B0B1 = EM0A /* \EM0A */
                B0L1 = EM0L /* \EM0L */
                CreateDWordField (RBF2, \_SB.SDHA._Y0F._BAS, B0B2)  // _BAS: Base Address
                CreateDWordField (RBF2, \_SB.SDHA._Y0F._LEN, B0L2)  // _LEN: Length
                B0B2 = EM0A /* \EM0A */
                B0L2 = EM0L /* \EM0L */
                If ((EMVR == One))
                {
                    Return (RBF2) /* \_SB_.SDHA.RBF2 */
                }

                Return (RBF1) /* \_SB_.SDHA.RBF1 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
                If (((SOCS < 0x02) || ((SOCS == 0x02) && (EMVR == One))))
                {
                    Sleep (0x02)
                }
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
                If (((SOCS < 0x02) || ((SOCS == 0x02) && (EMVR == One))))
                {
                    Sleep (0x02)
                }
            }

            OperationRegion (KEYS, SystemMemory, EM1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Device (EMMD)
            {
                Name (_ADR, 0x08)  // _ADR: Address
                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Device (SDHB)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "INT33BB" /* Intel Baytrail SD Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SDIO Controller - 80860F15")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD,
                GPO2
            })
            Name (PSTS, Zero)
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y10)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002E,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHB._Y10._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHB._Y10._LEN, B0LN)  // _LEN: Length
                B0BA = SI0A /* \SI0A */
                B0LN = SI0L /* \SI0L */
                Return (RBUF) /* \_SB_.SDHB.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((STEP <= 0x04))
                {
                    _HRV = SDMD /* \SDMD */
                }

                If (((SI0A == Zero) || (SD2D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
                If ((PSTS == Zero))
                {
                    If ((^^GPO2.AVBL == One))
                    {
                        ^^GPO2.WFD3 = One
                        PSTS = One
                    }
                }
            }

            OperationRegion (KEYS, SystemMemory, SI1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (BRCM)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero,
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000049,
                        }
                    })
                    Return (RBUF) /* \_SB_.SDHB.BRCM._CRS.RBUF */
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If ((^^^GPO2.AVBL == One))
                    {
                        ^^^GPO2.WFD3 = Zero
                        PSTS = Zero
                    }
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If ((PSTS == Zero))
                    {
                        If ((^^^GPO2.AVBL == One))
                        {
                            ^^^GPO2.WFD3 = One
                            PSTS = One
                        }
                    }
                }
            }

            Device (BRC2)
            {
                Name (_ADR, 0x02)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (NAM, Buffer (0x0F)
                    {
                        "\\_SB.SDHB.BRCM"
                    })
                    Name (SPB, Buffer (0x0C)
                    {
                        /* 0000 */  0x8E, 0x18, 0x00, 0x01, 0x00, 0xC0, 0x02, 0x00,  // ........
                        /* 0008 */  0x00, 0x01, 0x00, 0x00                           // ....
                    })
                    Name (END, Buffer (0x02)
                    {
                         0x79, 0x00                                       // y.
                    })
                    Concatenate (SPB, NAM, Local0)
                    Concatenate (Local0, END, Local1)
                    Return (Local1)
                }
            }

            Device (BRC3)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    GPO2
                })
                Name (_HID, "BCM4321")  // _HID: Hardware ID
                Name (_CID, "BCM43241")  // _CID: Compatible ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    Zero,
                    Zero
                })
                Name (_S4W, 0x02)  // _S4W: S4 Device Wake State
                Name (_S0W, 0x02)  // _S0W: S0 Device Wake State
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000049,
                        }
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                    })
                    Return (RBUF) /* \_SB_.SDHB.BRC3._CRS.RBUF */
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    If ((^^^GPO2.AVBL == One))
                    {
                        ^^^GPO2.WFD3 = Zero
                        PSTS = Zero
                    }
                }

                Method (_PS2, 0, NotSerialized)  // _PS2: Power State 2
                {
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    If ((PSTS == Zero))
                    {
                        If ((^^^GPO2.AVBL == One))
                        {
                            ^^^GPO2.WFD3 = One
                            PSTS = One
                        }
                    }
                }
            }
        }

        Device (SDHC)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F14" /* Intel Baytrail SDIO/MMC Host Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0D40" /* SDA Standard Compliant SD Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) SD Card Controller - 80860F16")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PEPD,
                GPO0
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y11)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
            })
            Name (ABUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y12)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002F,
                }
                GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x2710,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0026
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0028
                    }
                GpioIo (Shared, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0029
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SDHC._Y11._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SDHC._Y11._LEN, B0LN)  // _LEN: Length
                B0BA = SD0A /* \SD0A */
                B0LN = SD0L /* \SD0L */
                CreateDWordField (ABUF, \_SB.SDHC._Y12._BAS, B0BX)  // _BAS: Base Address
                CreateDWordField (ABUF, \_SB.SDHC._Y12._LEN, B0LX)  // _LEN: Length
                B0BX = SD0A /* \SD0A */
                B0LX = SD0L /* \SD0L */
                Return (ABUF) /* \_SB_.SDHC.ABUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SD0A == Zero) || (SD3D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, SD1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }
        }

        Device (GDM1)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #1 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y13)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002A,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM1._Y13._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM1._Y13._LEN, B0LN)  // _LEN: Length
                B0BA = D10A /* \D10A */
                B0LN = D10L /* \D10L */
                Return (RBUF) /* \_SB_.GDM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D10A == Zero) || (L10D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (GDM2)
        {
            Name (_HID, "INTL9C60" /* Intel Baytrail SOC DMA Controller */)  // _HID: Hardware ID
            Name (_DDN, "Intel(R) DMA Controller #2 - INTL9C60")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    _Y14)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x0000002B,
                }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.GDM2._Y14._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.GDM2._Y14._LEN, B0LN)  // _LEN: Length
                B0BA = D20A /* \D20A */
                B0LN = D20L /* \D20L */
                Return (RBUF) /* \_SB_.GDM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((D20A == Zero) || (L20D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (PWM1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09" /* Intel PWM Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F09" /* Intel PWM Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #1 - 80860F08")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y15)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM1._Y15._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM1._Y15._LEN, B0LN)  // _LEN: Length
                B0BA = P10A /* \P10A */
                B0LN = P10L /* \P10L */
                Return (RBUF) /* \_SB_.PWM1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((P10A == Zero) || (L11D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (PWM2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F09" /* Intel PWM Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F09" /* Intel PWM Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) PWM Controller #2 - 80860F09")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y16)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.PWM2._Y16._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.PWM2._Y16._LEN, B0LN)  // _LEN: Length
                B0BA = P20A /* \P20A */
                B0LN = P20L /* \P20L */
                Return (RBUF) /* \_SB_.PWM2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((P20A == Zero) || (L12D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }
        }

        Device (URT1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A" /* Intel Atom UART Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0A" /* Intel Atom UART Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #1 - 80860F0A")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y17)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000027,
                }
                FixedDMA (0x0002, 0x0002, Width32bit, )
                FixedDMA (0x0003, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT1._Y17._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT1._Y17._LEN, B0LN)  // _LEN: Length
                B0BA = U10A /* \U10A */
                B0LN = U10L /* \U10L */
                Return (RBUF) /* \_SB_.URT1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((U10A == Zero) || (L13D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, U11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (BTH0)
            {
                Name (_HID, "BCM2E3A")  // _HID: Hardware ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0009
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                    })
                    Name (PBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0009
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                    })
                    If ((BDID == 0x04))
                    {
                        If ((FBID == Zero))
                        {
                            Return (PBUF) /* \_SB_.URT1.BTH0._CRS.PBUF */
                        }
                    }

                    Return (UBUF) /* \_SB_.URT1.BTH0._CRS.UBUF */
                }
            }

            Device (BTH1)
            {
                Name (_HID, "BCM2E1A")  // _HID: Hardware ID
                Name (UART, Zero)
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0093
                            }
                    })
                    Name (PBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlNone,
                            0x0020, 0x0020, "\\_SB.URT1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, ExclusiveAndWake, ,, )
                        {
                            0x00000046,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0093
                            }
                    })
                    If ((BDID == 0x04))
                    {
                        If ((FBID == Zero))
                        {
                            Return (PBUF) /* \_SB_.URT1.BTH1._CRS.PBUF */
                        }
                    }

                    Return (UBUF) /* \_SB_.URT1.BTH1._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }
            }
        }

        Device (URT2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0A" /* Intel Atom UART Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0A" /* Intel Atom UART Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) HS-UART Controller #2 - 80860F0C")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y18)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000028,
                }
                FixedDMA (0x0004, 0x0004, Width32bit, )
                FixedDMA (0x0005, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.URT2._Y18._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.URT2._Y18._LEN, B0LN)  // _LEN: Length
                B0BA = U20A /* \U20A */
                B0LN = U20L /* \U20L */
                Return (RBUF) /* \_SB_.URT2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((U20A == Zero) || (L14D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, U21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (GPS0)
            {
                Name (_HID, "BCM4752")  // _HID: Hardware ID
                Name (UART, One)
                Name (ENAB, Zero)
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                            0xFC, LittleEndian, ParityTypeNone, FlowControlHardware,
                            0x0020, 0x0020, "\\_SB.URT2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0001
                            }
                    })
                    Return (UBUF) /* \_SB_.URT2.GPS0._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }
        }

        Device (SPI1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F0E" /* Intel SPI Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F0E" /* Intel SPI Controller */)  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) SPI Controller - 80860F0E")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y19)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000029,
                }
                FixedDMA (0x0000, 0x0000, Width32bit, )
                FixedDMA (0x0001, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.SPI1._Y19._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.SPI1._Y19._LEN, B0LN)  // _LEN: Length
                B0BA = SP0A /* \SP0A */
                B0LN = SP0L /* \SP0L */
                Return (RBUF) /* \_SB_.SPI1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((SP0A == Zero) || (L15D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, SP1A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (FPNT)
            {
                Name (_HID, "AUTH2750" /* AuthenTec AES2750 */)  // _HID: Hardware ID
                Name (_DDN, "AuthenTec AES2750")  // _DDN: DOS Device Name
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (UBUF, ResourceTemplate ()
                    {
                        SpiSerialBusV2 (0x0001, PolarityLow, FourWireMode, 0x08,
                            ControllerInitiated, 0x007A1200, ClockPolarityLow,
                            ClockPhaseSecond, "\\_SB.SPI1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000048,
                        }
                    })
                    Return (UBUF) /* \_SB_.SPI1.FPNT._CRS.UBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }

        Device (NFC2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "NXP5442" /* NXP 5442 Near Field Communications Controller */)  // _HID: Hardware ID
            Name (_CID, "NXP5442" /* NXP 5442 Near Field Communications Controller */)  // _CID: Compatible ID
            Name (_DDN, "NXP NFC")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Device (I2C1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #1 - 80860F41")  // _DDN: DOS Device Name
            Name (_UID, One)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1A)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000020,
                }
                FixedDMA (0x0010, 0x0000, Width32bit, )
                FixedDMA (0x0011, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C1._Y1A._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C1._Y1A._LEN, B0LN)  // _LEN: Length
                B0BA = I10A /* \I10A */
                B0LN = I10L /* \I10L */
                Return (RBUF) /* \_SB_.I2C1.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I10A == Zero) || (L21D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I11A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (MNZX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "MNZX2000")  // _HID: Hardware ID
                Name (_CID, "MNZX2000")  // _CID: Compatible ID
                Name (_DDN, "Monzax-2K PSS Controller")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (((BDID == 0x03) && (OSSL == One)))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.MNZX._CRS.SBUF */
                }
            }
        }

        Device (I2C2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (_DDN, "Intel(R) I2C Controller #2 - 80860F42")  // _DDN: DOS Device Name
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1B)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000021,
                }
                FixedDMA (0x0012, 0x0002, Width32bit, )
                FixedDMA (0x0013, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C2._Y1B._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C2._Y1B._LEN, B0LN)  // _LEN: Length
                B0BA = I20A /* \I20A */
                B0LN = I20L /* \I20L */
                Return (RBUF) /* \_SB_.I2C2.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I20A == Zero) || (L22D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I21A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (RTEK)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "10EC5640" /* Realtek I2S Audio Codec */)  // _HID: Hardware ID
                Name (_CID, "10EC5640" /* Realtek I2S Audio Codec */)  // _CID: Compatible ID
                Name (_DDN, "RTEK Codec Controller ")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x001C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0009
                            }
                        GpioIo (Exclusive, PullDown, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0008
                            }
                    })
                    Return (SBUF) /* \_SB_.I2C2.RTEK._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
                {
                    CKC3 = Zero
                }

                Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
                {
                    CKC3 = One
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                }
            }

            Device (CAPS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "CAP1106")  // _HID: Hardware ID
                Name (_CID, "CAP1106")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0028, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C2",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C2.CAPS._CRS.RBUF */
                }
            }
        }

        Device (I2C3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #3 - 80860F43")  // _DDN: DOS Device Name
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1C)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000022,
                }
                FixedDMA (0x0014, 0x0004, Width32bit, )
                FixedDMA (0x0015, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C3._Y1C._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C3._Y1C._LEN, B0LN)  // _LEN: Length
                B0BA = I30A /* \I30A */
                B0LN = I30L /* \I30L */
                Return (RBUF) /* \_SB_.I2C3.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I30A == Zero) || (L23D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I31A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (NFCD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "BCM2079")  // _HID: Hardware ID
                Name (_CID, "BCM2079")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0077, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C3",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Shared, PullDown, 0x0000,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C3.NFCD._CRS.RBUF */
                }
            }
        }

        Device (I2C4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #4 - 80860F44")  // _DDN: DOS Device Name
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1D)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000023,
                }
                FixedDMA (0x0016, 0x0006, Width32bit, )
                FixedDMA (0x0017, 0x0007, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C4._Y1D._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C4._Y1D._LEN, B0LN)  // _LEN: Length
                B0BA = I40A /* \I40A */
                B0LN = I40L /* \I40L */
                Return (RBUF) /* \_SB_.I2C4.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I40A == Zero) || (L24D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I41A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            PowerResource (CLK0, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC0) /* \CKC0 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC0 = One
                    CKF0 = One
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC0 = 0x02
                }
            }

            PowerResource (CLK1, 0x00, 0x0000)
            {
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (CKC1) /* \CKC1 */
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    CKC1 = One
                    CKF1 = One
                    Sleep (0x20)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    CKC1 = 0x02
                }
            }

            Device (CAM1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INTCF1A" /* Sony IMX175 Camera Sensor */)  // _HID: Hardware ID
                Name (_CID, "INTCF1A" /* Sony IMX175 Camera Sensor */)  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "Sony IMX175")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7,
                    ^^I2C7.PMIC
                })
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    CPR1
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // i.......
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.I2C4.CAM1.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0054, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C4.CAM1._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("INTCF1A")
                    }

                    If ((Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c")))
                    {
                        Return ("IMX175")
                    }

                    If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("13P2BA807")
                    }

                    If ((Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If ((FBID == 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If ((Arg0 == ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea")))
                    {
                        Return (0x0104)
                    }

                    If ((Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d")))
                    {
                        Return (0x02)
                    }

                    If ((Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (0x03)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x04001000)
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (0x04000C01)
                        }

                        If ((Arg2 == 0x04))
                        {
                            Return (0x04005402)
                        }
                    }

                    If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x01001800)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INTCF1B")  // _HID: Hardware ID
                Name (_CID, "INTCF1B")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "Sony IMX134")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7,
                    ^^I2C7.PMIC
                })
                Name (_PR0, Package (0x03)  // _PR0: Power Resources for D0
                {
                    P28X,
                    P18X,
                    CLK0
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x69, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // i.......
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.I2C4.CAM3.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0018
                            }
                        I2cSerialBusV2 (0x0010, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        I2cSerialBusV2 (0x0054, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C4.CAM3._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("INTCF1A")
                    }

                    If ((Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c")))
                    {
                        Return ("IMX175")
                    }

                    If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("13P2BA807")
                    }

                    If ((Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If ((FBID == 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If ((Arg0 == ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea")))
                    {
                        Return (0x0104)
                    }

                    If ((Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d")))
                    {
                        Return (0x02)
                    }

                    If ((Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (0x03)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x04001000)
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (0x04000C01)
                        }

                        If ((Arg2 == 0x04))
                        {
                            Return (0x04005402)
                        }
                    }

                    If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x01001800)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (CAM2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FB" /* MIPI-CSI Camera Sensor OV2722 */)  // _HID: Hardware ID
                Name (_CID, "INT33FB" /* MIPI-CSI Camera Sensor OV2722 */)  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "OV2722")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7,
                    ^^I2C7.PMIC
                })
                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    CPR2
                })
                Name (PLDB, Package (0x01)
                {
                    Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x61, 0x0C, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00,  // a.......
                        /* 0010 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
                    }
                })
                Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                {
                    Return (PLDB) /* \_SB_.I2C4.CAM2.PLDB */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((BDID == 0x03))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0016
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0019
                            }
                        I2cSerialBusV2 (0x0036, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C4.CAM2._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("INT33FB")
                    }

                    If ((Arg0 == ToUUID ("3c62aaaa-d8e0-401a-84c3-fc05656fa28c")))
                    {
                        Return ("OV2722")
                    }

                    If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("13P2SF206")
                    }

                    If ((Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If ((FBID == 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If ((Arg0 == ToUUID ("918ab242-c37c-450a-9d0f-f47ab97c3dea")))
                    {
                        Return (0x0101)
                    }

                    If ((Arg0 == ToUUID ("ea3b7bd8-e09b-4239-ad6e-ed525f3f26ab")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("b65ac492-9e30-4d60-b5b2-f497c790d9cf")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("e770ab0f-2644-4bab-8628-d62f1683fb9d")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("1ea54ab2-cd84-48cc-9dd4-7f594ec3b015")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("8dbe2651-70c1-4c6f-ac87-a37cb46e4af6")))
                    {
                        Return (One)
                    }

                    If ((Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x04003600)
                        }
                    }

                    If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (0x02)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x01001600)
                        }

                        If ((Arg2 == 0x03))
                        {
                            If ((BDID == 0x03))
                            {
                                Return (0x1901)
                            }

                            Return (0x01001901)
                        }
                    }

                    Return (Zero)
                }
            }

            Device (STRA)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INTCF1C")  // _HID: Hardware ID
                Name (_CID, "INTCF1C")  // _CID: Compatible ID
                Name (_SUB, "INTL0000")  // _SUB: Subsystem ID
                Name (_DDN, "Flash LM3554")  // _DDN: DOS Device Name
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0013
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0014
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0010
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                        I2cSerialBusV2 (0x0053, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C4",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C4.STRA._CRS.SBUF */
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("377ba76a-f390-4aff-ab38-9b1bf33a3015")))
                    {
                        Return ("INTCF1C")
                    }

                    If ((Arg0 == ToUUID ("822ace8f-2814-4174-a56b-5f029fe079ee")))
                    {
                        Return ("LM3554")
                    }

                    If ((Arg0 == ToUUID ("2959512a-028c-4646-b73d-4d1b5672fad8")))
                    {
                        If ((BDID == 0x04))
                        {
                            If ((FBID == 0x02))
                            {
                                Return ("INTEL_FFRD")
                            }

                            If ((FBID == 0x03))
                            {
                                Return ("INTEL_FFRD")
                            }
                        }

                        Return ("INTEL_RVP")
                    }

                    If ((Arg0 == ToUUID ("75c9a639-5c8a-4a00-9f48-a9c3b5da789f")))
                    {
                        Return (Zero)
                    }

                    If ((Arg0 == ToUUID ("26257549-9271-4ca4-bb43-c4899d5a4881")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x04005300)
                        }
                    }

                    If ((Arg0 == ToUUID ("79234640-9e10-4fea-a5c1-b5aa8b19756f")))
                    {
                        If ((Arg2 == One))
                        {
                            Return (0x04)
                        }

                        If ((Arg2 == 0x02))
                        {
                            Return (0x01001302)
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (0x01001403)
                        }

                        If ((Arg2 == 0x04))
                        {
                            Return (0x01001001)
                        }

                        If ((Arg2 == 0x05))
                        {
                            Return (0x01001104)
                        }
                    }

                    Return (Zero)
                }
            }
        }

        Device (I2C5)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #5 - 80860F45")  // _DDN: DOS Device Name
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1E)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000024,
                }
                FixedDMA (0x0018, 0x0000, Width32bit, )
                FixedDMA (0x0019, 0x0001, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C5._Y1E._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C5._Y1E._LEN, B0LN)  // _LEN: Length
                B0BA = I50A /* \I50A */
                B0LN = I50L /* \I50L */
                Return (RBUF) /* \_SB_.I2C5.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I50A == Zero) || (L25D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I51A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            Device (SHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "SMO91D0" /* Sensor Hub */)  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        If ((Arg2 == Zero))
                        {
                            If ((Arg1 == One))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                        }

                        If ((Arg2 == One))
                        {
                            Return (One)
                        }

                        Return (Zero)
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.SHD3 = Zero
                    }
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.SHD3 = One
                        Sleep (0x32)
                    }
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0040, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000044,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005F
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003B
                            }
                    })
                    Return (SBUF) /* \_SB_.I2C5.SHUB._CRS.SBUF */
                }
            }

            Device (SAR1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT9918")  // _HID: Hardware ID
                Name (_CID, "INT9918")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        GpioInt (Edge, ActiveBoth, Exclusive, PullDown, 0x0000,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C5.SAR1._CRS.RBUF */
                }
            }

            Device (SENS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "KXJ2109")  // _HID: Hardware ID
                Name (_CID, "KXJ2109")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO0,
                    I2C5
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x000F, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                            "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0003
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C5.SENS._CRS.RBUF */
                }

                Name (CNF0, Package (0x04)
                {
                    Package (0x04)
                    {
                        "KXJ2109",
                        0x0F,
                        One,
                        0x04
                    },

                    Package (0x04)
                    {
                        "KXJ2109",
                        0x0F,
                        One,
                        0x04
                    },

                    Package (0x04)
                    {
                        "AK09911",
                        0x0C,
                        0x02,
                        0x07
                    },

                    Package (0x00){}
                })
                Method (CNFG, 0, NotSerialized)
                {
                    Return (CNF0) /* \_SB_.I2C5.SENS.CNF0 */
                }
            }

            Device (ALSD)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ALS3320")  // _HID: Hardware ID
                Name (_CID, "ALS3320")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x001C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Level, ActiveHigh, Shared, PullDown, 0x0000,
                            "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0011
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C5.ALSD._CRS.RBUF */
                }
            }

            Device (COMP)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "AKM9911")  // _HID: Hardware ID
                Name (_CID, "AKM9911")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x000C, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (RBUF) /* \_SB_.I2C5.COMP._CRS.RBUF */
                }
            }

            Device (CAPS)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "CAP1106")  // _HID: Hardware ID
                Name (_CID, "CAP1106")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0028, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C5",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    })
                    Return (RBUF) /* \_SB_.I2C5.CAPS._CRS.RBUF */
                }
            }
        }

        Device (I2C6)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #6 - 80860F46")  // _DDN: DOS Device Name
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1F)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000025,
                }
                FixedDMA (0x001A, 0x0002, Width32bit, )
                FixedDMA (0x001B, 0x0003, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C6._Y1F._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C6._Y1F._LEN, B0LN)  // _LEN: Length
                B0BA = I60A /* \I60A */
                B0LN = I60L /* \I60L */
                Return (RBUF) /* \_SB_.I2C6.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I60A == Zero) || (L26D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I61A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }

            PowerResource (TCPR, 0x00, 0x0000)
            {
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    I2C7,
                    ^^I2C7.PMIC
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((^^^I2C7.PMIC.AVBL == One))
                    {
                        Return (^^^I2C7.PMIC.TCON) /* \_SB_.I2C7.PMIC.TCON */
                    }

                    Return (Zero)
                }

                Method (_ON, 0, NotSerialized)  // _ON_: Power On
                {
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = Zero
                    }

                    Sleep (0x05)
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = One
                    }

                    Sleep (0x0A)
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = One
                    }

                    Sleep (0x50)
                }

                Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                {
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = Zero
                    }
                }
            }

            Device (TCS0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "ATML1000" /* Atmel Touchscreen Controller */)  // _HID: Hardware ID
                Name (_CID, "PNP0C50" /* HID Protocol Device (I2C bus) */)  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO0,
                    I2C7
                })
                Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                {
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = Zero
                    }
                }

                Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                {
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = Zero
                    }

                    Sleep (0x05)
                    If ((^^^I2C7.PMIC.AVBG == One))
                    {
                        ^^^I2C7.PMIC.TCON = One
                    }

                    Sleep (0x1E)
                    If ((^^^GPO0.AVBL == One))
                    {
                        ^^^GPO0.TCD3 = One
                    }

                    Sleep (0x78)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (RBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x004A, ControllerInitiated, 0x0019F0A0,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                    })
                    Name (PBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x004B, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                    })
                    Name (ABUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x004A, ControllerInitiated, 0x0019F0A0,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000B
                            }
                    })
                    If ((ITSA == 0x4B))
                    {
                        Return (PBUF) /* \_SB_.I2C6.TCS0._CRS.PBUF */
                    }
                    ElseIf (((BDID == 0x03) && (OSSL == One)))
                    {
                        Return (ABUF) /* \_SB_.I2C6.TCS0._CRS.ABUF */
                    }
                    Else
                    {
                        Return (RBUF) /* \_SB_.I2C6.TCS0._CRS.RBUF */
                    }
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Debug = "Method _DSM begin"
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Debug = "Method _DSM Function Query"
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                Debug = "Method _DSM Function HID"
                                Return (Zero)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }

            Device (TCHX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "HAX8529")  // _HID: Hardware ID
                Name (_CID, "HAX8529")  // _CID: Compatible ID
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO0,
                    I2C7
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                        I2cSerialBusV2 (0x0048, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C6.TCHX._CRS.SBUF */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Debug = "Method _DSM begin"
                    If ((Arg0 == ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Switch (ToInteger (Arg1))
                                {
                                    Case (One)
                                    {
                                        Debug = "Method _DSM Function Query"
                                        Return (Buffer (One)
                                        {
                                             0x03                                             // .
                                        })
                                    }
                                    Default
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                }
                            }
                            Case (One)
                            {
                                Debug = "Method _DSM Function HID"
                                Return (Zero)
                            }
                            Default
                            {
                                Return (Zero)
                            }

                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }

            Device (GDIX)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "GDIX1001")  // _HID: Hardware ID
                Name (_CID, "ACPI0C50")  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO2,
                    GPO1
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (ABUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0014, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveLow, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                    })
                    Return (ABUF) /* \_SB_.I2C6.GDIX._CRS.ABUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }
            }

            Device (NVTK)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "NTK11205")  // _HID: Hardware ID
                Name (_CID, "ACPI0C50")  // _CID: Compatible ID
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_DEP, Package (0x02)  // _DEP: Dependencies
                {
                    GPO2,
                    GPO1
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (ABUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x0003, ControllerInitiated, 0x00061A80,
                            AddressingMode7Bit, "\\_SB.I2C6",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Edge, ActiveLow, Exclusive, ,, )
                        {
                            0x00000045,
                        }
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x003C
                            }
                    })
                    Return (ABUF) /* \_SB_.I2C6.NVTK._CRS.ABUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (Zero)
                }
            }
        }

        Device (I2C7)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _HID: Hardware ID
            Name (_CID, "80860F41" /* Intel Baytrail I2C Host Controller */)  // _CID: Compatible ID
            Name (_DDN, "Intel(R) I2C Controller #7 - 80860F47")  // _DDN: DOS Device Name
            Name (_UID, 0x07)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PEPD
            })
            Name (RBUF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y20)
                Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                {
                    0x00000026,
                }
                FixedDMA (0x001C, 0x0004, Width32bit, )
                FixedDMA (0x001D, 0x0005, Width32bit, )
            })
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (SOCS) /* \SOCS */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (RBUF, \_SB.I2C7._Y20._BAS, B0BA)  // _BAS: Base Address
                CreateDWordField (RBUF, \_SB.I2C7._Y20._LEN, B0LN)  // _LEN: Length
                B0BA = I70A /* \I70A */
                B0LN = I70L /* \I70L */
                Return (RBUF) /* \_SB_.I2C7.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((I70A == Zero) || (L27D == One)))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                PSAT |= 0x03
                PSAT |= Zero
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                PSAT &= 0xFFFFFFFC
                PSAT |= Zero
            }

            OperationRegion (KEYS, SystemMemory, I71A, 0x0100)
            Field (KEYS, DWordAcc, NoLock, WriteAsZeros)
            {
                Offset (0x84),
                PSAT,   32
            }
        }

        Scope (I2C7)
        {
            Device (PMIC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _HID: Hardware ID
                Name (_CID, "INT33FD" /* Intel Baytrail Power Management IC */)  // _CID: Compatible ID
                Name (_DDN, "PMIC GPIO Controller")  // _DDN: DOS Device Name
                Name (_HRV, 0x02)  // _HRV: Hardware Revision
                Name (_UID, One)  // _UID: Unique ID
                Name (_DEP, Package (0x01)  // _DEP: Dependencies
                {
                    I2C7
                })
                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000F4240,
                            AddressingMode7Bit, "\\_SB.I2C7",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                        {
                            0x00000043,
                        }
                    })
                    Return (SBUF) /* \_SB_.I2C7.PMIC._CRS.SBUF */
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PMEN == Zero))
                    {
                        Return (Zero)
                    }

                    Return (0x0F)
                }

                OperationRegion (DPTF, 0x8C, Zero, 0x0100)
                Field (DPTF, DWordAcc, NoLock, Preserve)
                {
                    TMP0,   32,
                    AX00,   32,
                    AX01,   32,
                    TMP1,   32,
                    AX10,   32,
                    AX11,   32,
                    TMP2,   32,
                    AX20,   32,
                    AX21,   32,
                    TMP3,   32,
                    AX30,   32,
                    AX31,   32,
                    TMP4,   32,
                    AX40,   32,
                    AX41,   32,
                    TMP5,   32,
                    AX50,   32,
                    AX51,   32,
                    PEN0,   32,
                    PEN1,   32,
                    PEN2,   32,
                    PEN3,   32,
                    PEN4,   32,
                    PEN5,   32
                }

                OperationRegion (PMOP, 0x8D, Zero, 0x0100)
                Field (PMOP, DWordAcc, NoLock, Preserve)
                {
                    VSYS,   32,
                    SYSX,   32,
                    SYSU,   32,
                    SYSS,   32,
                    V50S,   32,
                    HOST,   32,
                    VBUS,   32,
                    HDMI,   32,
                    S285,   32,
                    X285,   32,
                    V33A,   32,
                    V33S,   32,
                    V33U,   32,
                    V33I,   32,
                    V18A,   32,
                    REFQ,   32,
                    V12A,   32,
                    V18S,   32,
                    V18X,   32,
                    V18U,   32,
                    V12X,   32,
                    V12S,   32,
                    V10A,   32,
                    V10S,   32,
                    V10X,   32,
                    V105,   32
                }

                OperationRegion (GPOP, GeneralPurposeIo, Zero, 0x0100)
                Field (GPOP, ByteAcc, NoLock, Preserve)
                {
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0020
                            }
                    ),
                    GMP0,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0021
                            }
                    ),
                    GX00,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0022
                            }
                    ),
                    GX01,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0023
                            }
                    ),
                    GMP1,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0024
                            }
                    ),
                    GX10,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0025
                            }
                    ),
                    GX11,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0026
                            }
                    ),
                    GMP2,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0027
                            }
                    ),
                    GX20,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0028
                            }
                    ),
                    GX21,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0029
                            }
                    ),
                    GMP3,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002A
                            }
                    ),
                    GX30,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002B
                            }
                    ),
                    GX31,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002C
                            }
                    ),
                    GMP4,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002D
                            }
                    ),
                    GX40,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002E
                            }
                    ),
                    GX41,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x002F
                            }
                    ),
                    GMP5,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0030
                            }
                    ),
                    GX50,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0031
                            }
                    ),
                    GX51,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0032
                            }
                    ),
                    GEN0,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0033
                            }
                    ),
                    GEN1,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0034
                            }
                    ),
                    GEN2,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0035
                            }
                    ),
                    GEN3,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0036
                            }
                    ),
                    GEN4,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0037
                            }
                    ),
                    GEN5,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0040
                            }
                    ),
                    GSYS,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0041
                            }
                    ),
                    GYSX,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0042
                            }
                    ),
                    GYSU,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0043
                            }
                    ),
                    GYSS,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0044
                            }
                    ),
                    G50S,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0045
                            }
                    ),
                    GOST,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0046
                            }
                    ),
                    GBUS,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0047
                            }
                    ),
                    GDMI,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0048
                            }
                    ),
                    G28S,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0049
                            }
                    ),
                    G28X,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004A
                            }
                    ),
                    G33A,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004B
                            }
                    ),
                    G33S,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004C
                            }
                    ),
                    G33U,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004D
                            }
                    ),
                    G33I,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004E
                            }
                    ),
                    G18A,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x004F
                            }
                    ),
                    GEFQ,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0050
                            }
                    ),
                    G12A,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0051
                            }
                    ),
                    G18S,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0052
                            }
                    ),
                    G18X,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0053
                            }
                    ),
                    G18U,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0054
                            }
                    ),
                    G12X,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0055
                            }
                    ),
                    G12S,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0056
                            }
                    ),
                    G10A,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0057
                            }
                    ),
                    G10S,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0058
                            }
                    ),
                    G10X,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x0059
                            }
                    ),
                    G105,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x005E
                            }
                    ),
                    FCOT,   1,
                    Connection (
                        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                            "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                            )
                            {   // Pin list
                                0x000B
                            }
                    ),
                    TCON,   1
                }

                Name (AVBL, Zero)
                Name (AVBD, Zero)
                Name (AVBG, Zero)
                Name (SYN1, Zero)
                Name (SYN2, Zero)
                Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                {
                    If ((Arg0 == 0x08))
                    {
                        AVBG = Arg1
                    }

                    If ((Arg0 == 0x8D))
                    {
                        AVBL = Arg1
                    }

                    If ((Arg0 == 0x8C))
                    {
                        AVBD = Arg1
                    }
                }

                Name (LPAT, Package (0x30)
                {
                    0x09E3,
                    0x03D1,
                    0x0A15,
                    0x03C1,
                    0x0A47,
                    0x03AD,
                    0x0A79,
                    0x0395,
                    0x0AAB,
                    0x0377,
                    0x0ADD,
                    0x0355,
                    0x0B0F,
                    0x032D,
                    0x0B41,
                    0x0301,
                    0x0B73,
                    0x02D0,
                    0x0BA5,
                    0x029D,
                    0x0BD7,
                    0x0267,
                    0x0C09,
                    0x0231,
                    0x0C3B,
                    0x01FC,
                    0x0C6D,
                    0x01C8,
                    0x0C9F,
                    0x0197,
                    0x0CD1,
                    0x0165,
                    0x0D03,
                    0x013B,
                    0x0D35,
                    0x0115,
                    0x0D67,
                    0xF3,
                    0x0D99,
                    0xD4,
                    0x0DCB,
                    0xBA,
                    0x0DFD,
                    0xA2,
                    0x0E2F,
                    0x8C,
                    0x0E93,
                    0x6B
                })
                Device (COMP)
                {
                    Name (_ADR, Zero)  // _ADR: Address
                    Name (_HID, "YOB8251")  // _HID: Hardware ID
                    Name (_CID, "YOB8251")  // _CID: Compatible ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (RBUF, ResourceTemplate ()
                        {
                            GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x0000,
                                "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                                )
                                {   // Pin list
                                    0x000C
                                }
                        })
                        Return (RBUF) /* \_SB_.I2C7.PMIC.COMP._CRS.RBUF */
                    }
                }
            }
        }

        Scope (I2C1)
        {
            Device (IMP1)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0001")  // _HID: Hardware ID
                Name (_CID, "IMPJ0001")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSSD == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.IMP1._CRS.SBUF */
                }
            }

            Device (IMP2)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0002")  // _HID: Hardware ID
                Name (_CID, "IMPJ0002")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSSD == One))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006F, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.IMP2._CRS.SBUF */
                }
            }

            Device (IMP3)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_HID, "IMPJ0003")  // _HID: Hardware ID
                Name (_CID, "IMPJ0003")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If ((PSSD == 0x02))
                    {
                        Return (0x0F)
                    }

                    Return (Zero)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    Name (SBUF, ResourceTemplate ()
                    {
                        I2cSerialBusV2 (0x006E, ControllerInitiated, 0x000186A0,
                            AddressingMode7Bit, "\\_SB.I2C1",
                            0x00, ResourceConsumer, , Exclusive,
                            )
                    })
                    Return (SBUF) /* \_SB_.I2C1.IMP3._CRS.SBUF */
                }
            }
        }

        PowerResource (P28X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C7,
                ^I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^I2C7.PMIC.AVBG == One))
                {
                    ^^I2C7.PMIC.G28X = Zero
                    If ((^^I2C7.PMIC.AVBL == One))
                    {
                        Return (^^I2C7.PMIC.X285) /* \_SB_.I2C7.PMIC.X285 */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.X285 = One
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G28X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.X285 = Zero
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G28X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (P18X, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C7,
                ^I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((^^I2C7.PMIC.AVBG == One))
                {
                    ^^I2C7.PMIC.G18X = Zero
                    If ((^^I2C7.PMIC.AVBL == One))
                    {
                        Return (^^I2C7.PMIC.V18X) /* \_SB_.I2C7.PMIC.V18X */
                    }
                }

                Return (Zero)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.V18X = One
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G18X = One
                        Sleep (0x1E)
                    }
                }
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                If ((^^I2C7.PMIC.AVBL == One))
                {
                    ^^I2C7.PMIC.V18X = Zero
                    If ((^^I2C7.PMIC.AVBG == One))
                    {
                        ^^I2C7.PMIC.G18X = One
                        Sleep (0x1E)
                    }
                }
            }
        }

        PowerResource (CPR1, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C7,
                ^I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (One)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ^^I2C7.PMIC.SYN1 = One
                ^^P28X._ON ()
                ^^P18X._ON ()
                ^^I2C4.CLK0._ON ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ^^I2C4.CLK0._OFF ()
                If ((One == ^^I2C7.PMIC.SYN2)){}
                Else
                {
                    ^^P28X._OFF ()
                    ^^P18X._OFF ()
                }

                ^^I2C7.PMIC.SYN2 = Zero
            }
        }

        PowerResource (CPR2, 0x05, 0x0000)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                I2C7,
                ^I2C7.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (One)
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ^^I2C7.PMIC.SYN2 = One
                ^^P28X._ON ()
                ^^P18X._ON ()
                ^^I2C4.CLK1._ON ()
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ^^I2C4.CLK1._OFF ()
                If ((One == ^^I2C7.PMIC.SYN1)){}
                Else
                {
                    ^^P28X._OFF ()
                    ^^P18X._OFF ()
                }

                ^^I2C7.PMIC.SYN1 = Zero
            }
        }

        Device (TBAD)
        {
            Name (_HID, "INTCFD9" /* Intel Baytrail SOC GPIO Controller */)  // _HID: Hardware ID
            Name (_CID, "PNP0C40" /* Standard Button Controller */)  // _CID: Compatible ID
            Name (_DDN, "Keyboard less system - 5 Button Array Device")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x04)  // _DEP: Dependencies
            {
                GPO0,
                GPO2,
                I2C7,
                ^I2C7.PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0000
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.I2C7.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                })
                Name (PBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0010
                        }
                    GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0005
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0004
                        }
                    GpioInt (Edge, ActiveBoth, Exclusive, PullDefault, 0x0000,
                        "\\_SB.GPO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                })
                If ((BDID == 0x04))
                {
                    If ((FBID == 0x02))
                    {
                        Return (PBUF) /* \_SB_.TBAD._CRS.PBUF */
                    }

                    If ((FBID == 0x03))
                    {
                        Return (PBUF) /* \_SB_.TBAD._CRS.PBUF */
                    }
                }
                ElseIf ((BDID == 0x02))
                {
                    If ((FBID == 0x02))
                    {
                        Return (PBUF) /* \_SB_.TBAD._CRS.PBUF */
                    }
                }

                Return (PBUF) /* \_SB_.TBAD._CRS.PBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((OSYS == 0x07DD))
                {
                    ^^I2C7.PMIC.FCOT = One
                }
                Else
                {
                    ^^I2C7.PMIC.FCOT = Zero
                }

                If ((Arg0 == ToUUID ("dfbcf3c5-e7a5-44e6-9c1f-29c76f6e059c") /* Power Button Device */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                        Case (One)
                        {
                            Return (0x07)
                        }

                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)
            }
        }

        Device (MBID)
        {
            Name (_HID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _HID: Hardware ID
            Name (_CID, "INT33BD" /* Intel Baytrail Mailbox Device */)  // _CID: Compatible ID
            Name (_HRV, 0x02)  // _HRV: Hardware Revision
            Name (_UID, One)  // _UID: Unique ID
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE00000D0,         // Address Base
                        0x0000000C,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.MBID._CRS.RBUF */
            }

            OperationRegion (REGS, 0x87, Zero, 0x30)
            Field (REGS, DWordAcc, NoLock, Preserve)
            {
                PORT,   32,
                REG,    32,
                DATA,   32,
                MASK,   32,
                BE,     32,
                OP,     32
            }

            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x87))
                {
                    AVBL = Arg1
                }
            }

            Method (READ, 3, Serialized)
            {
                Local0 = 0xFFFFFFFF
                If ((AVBL == One))
                {
                    OP = Zero
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    Local0 = DATA /* \_SB_.MBID.DATA */
                }

                Return (Local0)
            }

            Method (WRIT, 4, Serialized)
            {
                If ((AVBL == One))
                {
                    OP = One
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                }
            }

            Method (MODI, 5, Serialized)
            {
                If ((AVBL == One))
                {
                    OP = 0x02
                    PORT = Arg0
                    REG = Arg1
                    BE = Arg2
                    DATA = Arg3
                    MASK = Arg4
                }
            }
        }

        Device (PAGD)
        {
            Name (_HID, "ACPI000C" /* Processor Aggregator Device */)  // _HID: Hardware ID
            Name (_CID, "ACPI000C" /* Processor Aggregator Device */)  // _CID: Compatible ID
            Name (IDCN, Zero)
            Name (PURP, Package (0x02)
            {
                One,
                Zero
            })
            Method (_PUR, 0, Serialized)  // _PUR: Processor Utilization Request
            {
                PURP [One] = IDCN /* \_SB_.PAGD.IDCN */
                Return (PURP) /* \_SB_.PAGD.PURP */
            }

            Method (_OST, 3, Serialized)  // _OST: OSPM Status Indication
            {
                Debug = "_OST is invoked"
            }
        }
    }

    Name (PICM, Zero)
    Device (MDM)
    {
        Name (_HID, EisaId ("MCD0001"))  // _HID: Hardware ID
        Name (_CID, "MCD0001")  // _CID: Compatible ID
        Name (CPU, "ValleyView2")
        Name (MDMN, "XMM_7160")
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If ((BDID == 0x03))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
        {
            Name (UBUF, ResourceTemplate ()
            {
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO1", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001A
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionInputOnly,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001E
                    }
                GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001D
                    }
            })
            Return (UBUF) /* \MDM_._CRS.UBUF */
        }

        Name (PMIC, Package (0x04)
        {
            0x29,
            One,
            Zero,
            0xFC
        })
        Name (EPWR, Package (0x02)
        {
            Zero,
            One
        })
    }

    Scope (_TZ)
    {
        ThermalZone (TZ00)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C7,
                \_SB.I2C7.PMIC
            })
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.I2C7.PMIC.AVBG == One))
                {
                    \_SB.I2C7.PMIC.GMP2 = Zero
                    If ((\_SB.I2C7.PMIC.AVBD == One))
                    {
                        Return (\_SB.I2C7.PMIC.TMP2)
                    }
                }

                Return (0x0AAC)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xE0000000,         // Address Base
                    0x10000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED01000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED03000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED04000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED0C000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED08000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED1C000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFEE00000,         // Address Base
                    0x00100000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFEF00000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (((DID1 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (((DID2 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (((DID3 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (((DID4 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (((DID5 & 0x0F00) == 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (CondRefOf (NDN3))
        {
            NDN3 (Arg0)
        }
    }

    Scope (_SB.I2C3)
    {
        Name (AVBL, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If ((Arg0 == 0x09))
            {
                AVBL = Arg1
            }
        }

        Name (FSAW, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0025, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C3",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        OperationRegion (FSAO, GenericSerialBus, Zero, 0x0100)
        Field (FSAO, BufferAcc, NoLock, Preserve)
        {
            Connection (FSAW),
            Offset (0x02),
            AccessAs (BufferAcc, AttribByte),
            FSIM,   8
        }

        Field (FSAO, BufferAcc, NoLock, Preserve)
        {
            Connection (FSAW),
            Offset (0x03),
            AccessAs (BufferAcc, AttribByte),
            FSIN,   8
        }

        Field (FSAO, BufferAcc, NoLock, Preserve)
        {
            Connection (FSAW),
            Offset (0x07),
            AccessAs (BufferAcc, AttribByte),
            FSRC,   8
        }

        Field (FSAO, BufferAcc, NoLock, Preserve)
        {
            Connection (FSAW),
            Offset (0x0A),
            AccessAs (BufferAcc, AttribByte),
            FSDT,   8
        }

        Field (FSAO, BufferAcc, NoLock, Preserve)
        {
            Connection (FSAW),
            Offset (0x13),
            AccessAs (BufferAcc, AttribByte),
            FSMS,   8
        }

        Device (SFSA)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "SFSA9285")  // _HID: Hardware ID
            Name (_CID, "SFSA9285")  // _CID: Compatible ID
            Name (_DDN, "FSA USB SWITCH")  // _DDN: DOS Device Name
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2C3
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0025, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C3",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0001
                        }
                })
                Name (BUF1, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0025, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB.I2C3",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullNone, 0x0000,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0003
                        }
                    GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionOutputOnly,
                        "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x003A
                        }
                })
                If ((BDID == 0x03))
                {
                    Return (BUF0) /* \_SB_.I2C3.SFSA._CRS.BUF0 */
                }

                Return (BUF1) /* \_SB_.I2C3.SFSA._CRS.BUF1 */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (((BDID == 0x03) && (FBID == One)))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.I2C1)
    {
        Device (SMFG)
        {
            Name (_HID, "UPIG3105")  // _HID: Hardware ID
            Name (_CID, "UPIG3105")  // _CID: Compatible ID
            Name (_DDN, "Fuel Gauge Controller")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0070, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0012
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C1.SMFG.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (SMCG)
        {
            Name (_HID, "SMB0347")  // _HID: Hardware ID
            Name (_CID, "SMB0347")  // _CID: Compatible ID
            Name (_DDN, "Charger")  // _DDN: DOS Device Name
            Name (RBUF, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x006A, ControllerInitiated, 0x000186A0,
                    AddressingMode7Bit, "\\_SB.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
                GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.GPO2", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x001D
                    }
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (RBUF) /* \_SB_.I2C1.SMCG.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Name (UMPC, ResourceTemplate ()
        {
            I2cSerialBusV2 (0x0078, ControllerInitiated, 0x000186A0,
                AddressingMode7Bit, "\\_SB.I2C1",
                0x00, ResourceConsumer, , Exclusive,
                )
        })
        Name (AVBL, Zero)
        Method (_REG, 2, NotSerialized)  // _REG: Region Availability
        {
            If ((Arg0 == 0x09))
            {
                AVBL = Arg1
            }
        }

        OperationRegion (DVUM, GenericSerialBus, Zero, 0x0100)
        Field (DVUM, BufferAcc, NoLock, Preserve)
        {
            Connection (UMPC),
            AccessAs (BufferAcc, AttribBytes (0x39)),
            FGC0,   8
        }

        Field (DVUM, BufferAcc, NoLock, Preserve)
        {
            Connection (UMPC),
            Offset (0x2F),
            AccessAs (BufferAcc, AttribByte),
            FL2F,   8
        }

        Field (DVUM, BufferAcc, NoLock, Preserve)
        {
            Connection (UMPC),
            Offset (0x30),
            AccessAs (BufferAcc, AttribBytes (0x04)),
            FL30,   8
        }

        Field (DVUM, BufferAcc, NoLock, Preserve)
        {
            Connection (UMPC),
            Offset (0x4E),
            AccessAs (BufferAcc, AttribByte),
            FL4E,   8
        }

        Field (DVUM, BufferAcc, NoLock, Preserve)
        {
            Connection (UMPC),
            Offset (0x4F),
            AccessAs (BufferAcc, AttribByte),
            FL4F,   8
        }

        Field (DVUM, BufferAcc, NoLock, Preserve)
        {
            Connection (UMPC),
            Offset (0x50),
            AccessAs (BufferAcc, AttribByte),
            FL50,   8,
            FL51,   8,
            FL52,   8,
            FL53,   8
        }

        Field (DVUM, BufferAcc, NoLock, Preserve)
        {
            Connection (UMPC),
            Offset (0x34),
            AccessAs (BufferAcc, AttribBytes (0x05)),
            THRM,   8
        }

        Device (BATC)
        {
            Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (BCCC, 0x80)
            Name (BCCE, One)
            Name (BCCV, 0x37)
            Name (BCCL, 0xFFFFFFFF)
            Name (BCLP, 0x1004)
            Name (DSCP, 0x1004)
            Name (DSVO, 0x0EA6)
            Name (BTPC, Zero)
            Name (SOCC, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                I2C1
            })
            Name (BFFG, Buffer (0x40)
            {
                 0xFF                                             // .
            })
            CreateByteField (BFFG, Zero, STAT)
            CreateByteField (BFFG, One, LEN)
            CreateWordField (BFFG, 0x02, CNTL)
            CreateWordField (BFFG, 0x04, ATRA)
            CreateWordField (BFFG, 0x06, ARTE)
            CreateWordField (BFFG, 0x08, TEMP)
            CreateWordField (BFFG, 0x0A, VOLT)
            CreateWordField (BFFG, 0x0C, FLAG)
            CreateWordField (BFFG, 0x0E, NACT)
            CreateWordField (BFFG, 0x10, FACT)
            CreateWordField (BFFG, 0x12, RECT)
            CreateWordField (BFFG, 0x14, FCCT)
            CreateWordField (BFFG, 0x16, AVRC)
            CreateWordField (BFFG, 0x18, TTET)
            CreateWordField (BFFG, 0x1A, TTFL)
            CreateWordField (BFFG, 0x1C, STDC)
            CreateWordField (BFFG, 0x1E, STTE)
            CreateWordField (BFFG, 0x20, MALC)
            CreateWordField (BFFG, 0x22, MLTE)
            CreateWordField (BFFG, 0x24, AVEE)
            CreateWordField (BFFG, 0x26, AVEP)
            CreateWordField (BFFG, 0x28, TECP)
            CreateWordField (BFFG, 0x2A, DSSP)
            CreateWordField (BFFG, 0x2C, CYLC)
            CreateWordField (BFFG, 0x2E, SOCH)
            CreateByteField (BFFG, 0x30, CHST)
            CreateByteField (BFFG, 0x31, CHCU)
            CreateDWordField (BFFG, 0x32, BTRP)
            CreateByteField (BFFG, 0x36, SKT0)
            CreateWordField (BFFG, 0x37, ST00)
            CreateWordField (BFFG, 0x39, ST01)
            Name (BUFF, Buffer (0x03)
            {
                 0x00, 0x01, 0x00                                 // ...
            })
            CreateByteField (BUFF, Zero, BYAT)
            CreateByteField (BUFF, 0x02, DATA)
            Name (BUF1, Buffer (0x06)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00               // ......
            })
            CreateByteField (BUF1, Zero, BSTA)
            CreateByteField (BUF1, One, BLEN)
            CreateDWordField (BUF1, 0x02, DAT1)
            Name (BIXP, Package (0x14)
            {
                Zero,
                One,
                0xFFFFFFFF,
                0xFFFFFFFF,
                One,
                0xFFFFFFFF,
                0x0A,
                0x04,
                Zero,
                0x00017318,
                0xFFFFFFFF,
                0xFFFFFFFF,
                0x88B8,
                0x61A8,
                One,
                One,
                "SR Real Battery",
                "123456789",
                "LION",
                "Intel SR 1"
            })
            Name (BSTP, Package (0x04)
            {
                Zero,
                0xFFFFFFFF,
                0xFFFFFFFF,
                0xFFFFFFFF
            })
            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != One))
                    {
                        If ((CYLC != BCCL))
                        {
                            BCCL = CYLC /* \_SB_.I2C1.BATC.CYLC */
                            BCLP = FCCT /* \_SB_.I2C1.BATC.FCCT */
                        }

                        BIXP [0x03] = BCLP /* \_SB_.I2C1.BATC.BCLP */
                        BIXP [0x08] = CYLC /* \_SB_.I2C1.BATC.CYLC */
                    }

                    If ((DSSP != Zero))
                    {
                        DSCP = DSSP /* \_SB_.I2C1.BATC.DSSP */
                    }
                }

                BIXP [0x02] = DSCP /* \_SB_.I2C1.BATC.DSCP */
                BIXP [0x05] = DSVO /* \_SB_.I2C1.BATC.DSVO */
                Divide (DSCP, 0x0A, Local0, Local1)
                BIXP [0x06] = Local1
                Divide (DSCP, 0x14, Local0, Local1)
                BIXP [0x07] = Local1
                Return (BIXP) /* \_SB_.I2C1.BATC.BIXP */
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != One))
                    {
                        Local0 = (CHST >> 0x04)
                        Local0 &= 0x03
                        If (((Local0 == One) || (Local0 == 0x02)))
                        {
                            Local1 = 0x02
                        }

                        If ((Local0 == Zero))
                        {
                            Local1 = One
                        }

                        If ((Local0 == 0x03))
                        {
                            Local1 = Zero
                        }

                        BSTP [Zero] = Local1
                        Local1 = AVRC /* \_SB_.I2C1.BATC.AVRC */
                        If ((Local1 & 0x8000))
                        {
                            Local1 = (0xFFFF - Local1)
                        }

                        BSTP [One] = Local1
                        BSTP [0x02] = RECT /* \_SB_.I2C1.BATC.RECT */
                        BSTP [0x03] = VOLT /* \_SB_.I2C1.BATC.VOLT */
                        SOCC = SOCH /* \_SB_.I2C1.BATC.SOCH */
                        BUFF = FL53 /* \_SB_.I2C1.FL53 */
                        If ((BYAT != One))
                        {
                            If ((BCCE == One))
                            {
                                DATA |= One
                                FL53 = BUFF /* \_SB_.I2C1.BATC.BUFF */
                            }
                            Else
                            {
                                DATA &= 0xFE
                                FL53 = BUFF /* \_SB_.I2C1.BATC.BUFF */
                            }
                        }

                        DATA = BCCC /* \_SB_.I2C1.BATC.BCCC */
                        FL2F = BUFF /* \_SB_.I2C1.BATC.BUFF */
                    }
                }

                Return (BSTP) /* \_SB_.I2C1.BATC.BSTP */
            }

            Method (INTR, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    BUFF = FL4F /* \_SB_.I2C1.FL4F */
                    If ((BYAT != One))
                    {
                        Return (DATA) /* \_SB_.I2C1.BATC.DATA */
                    }

                    Return (0xFF)
                }

                Return (0xFF)
            }

            Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
            {
                BTPC = Arg0
                ADBG ("BTP")
                ADBG (Arg0)
                If ((AVBL == One))
                {
                    DAT1 = Arg0
                    BLEN = 0x04
                    FL30 = BUF1 /* \_SB_.I2C1.BATC.BUF1 */
                }

                BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                ADBG (RECT)
            }

            Method (_BTM, 1, NotSerialized)  // _BTM: Battery Time
            {
                If ((Arg0 > 0x7530))
                {
                    Return (Zero)
                }

                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != One))
                    {
                        If ((Arg0 == Zero))
                        {
                            Local0 = (TTET * 0x3C)
                            Return (Local0)
                        }

                        Local0 = (RECT * 0x0E10)
                        Divide (Local0, Arg0, Local1, Local2)
                        Return (Local2)
                    }
                }

                Return (0xFFFFFFFF)
            }

            Method (_BCT, 1, NotSerialized)  // _BCT: Battery Charge Time
            {
                If (((Arg0 > 0x64) || (Arg0 < One)))
                {
                    Return (Zero)
                }

                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != One))
                    {
                        If ((Arg0 < RECT))
                        {
                            Return (Zero)
                        }

                        Local1 = AVRC /* \_SB_.I2C1.BATC.AVRC */
                        If ((Local1 & 0x8000))
                        {
                            Return (Zero)
                        }

                        Local0 = (BCLP * Arg0)
                        Local0 -= RECT /* \_SB_.I2C1.BATC.RECT */
                        Local0 *= 0x0E10
                        Divide (Local0, Local1, Local2, Local3)
                        Return (Local3)
                    }
                }

                Return (0xFFFFFFFF)
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4c2067e3-887d-475c-9720-4af1d3ed602e") /* Battery Thermal Limit */))
                {
                    If ((Arg2 == 0x02))
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != Zero))
                    {
                        Return (Zero)
                    }

                    If ((BDID == 0x04))
                    {
                        If ((FBID < 0x02))
                        {
                            Return (0x1F)
                        }
                    }

                    BUFF = FL4E /* \_SB_.I2C1.FL4E */
                    If ((BYAT == Zero))
                    {
                        If ((DATA == 0x02))
                        {
                            Return (0x1F)
                        }

                        Return (Zero)
                    }

                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }

            Method (PSOC, 0, NotSerialized)
            {
                Return (SOCC) /* \_SB_.I2C1.BATC.SOCC */
            }

            Method (PMAX, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != One))
                    {
                        Local1 = MALC /* \_SB_.I2C1.BATC.MALC */
                        If ((Local1 & 0x8000))
                        {
                            Local1 = (0xFFFF - Local1)
                        }

                        Local1 *= DSVO
                        Return (Local1)
                    }
                }

                Return (Zero)
            }

            Method (VMIN, 0, NotSerialized)
            {
                Return (0x0DAC)
            }

            Method (APWR, 0, NotSerialized)
            {
                Return (0x0365C040)
            }

            Method (NPWR, 0, NotSerialized)
            {
                Local0 = APWR ()
                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != One))
                    {
                        Local1 = AVRC /* \_SB_.I2C1.BATC.AVRC */
                        If ((Local1 & 0x8000))
                        {
                            Local1 = (0xFFFF - Local1)
                        }

                        Local2 = (VOLT * Local1)
                        Local0 -= Local2
                        Return (Local0)
                    }
                }

                Return (Local0)
            }

            Method (PSRC, 0, NotSerialized)
            {
                If ((AVBL == One))
                {
                    BFFG = FGC0 /* \_SB_.I2C1.FGC0 */
                    If ((STAT != One))
                    {
                        Local0 = CHST /* \_SB_.I2C1.BATC.CHST */
                        ADBG ("BATC.PSRC")
                        ADBG (Local0)
                        Local0 >>= 0x06
                        Local0 &= 0x03
                        If ((Local0 == Zero))
                        {
                            Return (Zero)
                        }

                        If ((Local0 == 0x02))
                        {
                            Return (One)
                        }

                        If ((Local0 == One))
                        {
                            Return (0x02)
                        }

                        If ((Local0 == 0x03))
                        {
                            Return (0x04)
                        }
                    }
                }

                Return (One)
            }

            Method (CTYP, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (ARTG, 0, NotSerialized)
            {
                Return (0x0365C040)
            }
        }
    }

    Scope (_SB)
    {
        Device (ADP1)
        {
            Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (CondRefOf (\_SB.I2C1.BATC, Local1))
                {
                    Local0 = ^^I2C1.BATC.PSRC ()
                    If ((Local0 == One))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (_SB) /* \_SB_ */
            }
        }
    }

    Scope (_SB.I2C5)
    {
        Device (TP1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0001")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x007F, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP1_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)
            }
        }

        Device (TP2)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0002")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0011, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP2_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)
            }
        }

        Device (TP3)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0003")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0012, ControllerInitiated, 0x00061A80,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP3_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)
            }
        }

        Device (TP4)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "STK0004")  // _HID: Hardware ID
            Name (_CID, "WITTTest")  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((WITT == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0013, ControllerInitiated, 0x000F4240,
                        AddressingMode7Bit, "\\_SB_.I2C5",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.I2C5.TP4_._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("4fb3fc66-c8fb-4680-b6eb-9564a980d434")))
                {
                    If ((Arg2 == Zero))
                    {
                        If ((Arg1 == One))
                        {
                            Debug = "Method _DSM Function Query"
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }
                    }

                    If ((Arg2 == One))
                    {
                        Debug = "Method _DSM Function HID"
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Return (Zero)
            }
        }
    }

    Scope (_SB.URT1)
    {
        Device (UART)
        {
            Name (_HID, "UTK0001")  // _HID: Hardware ID
            Name (_CID, "UARTTest")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((UTS == One))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    UartSerialBusV2 (0x0001C200, DataBitsEight, StopBitsOne,
                        0xC0, LittleEndian, ParityTypeNone, FlowControlHardware,
                        0x0020, 0x0020, "\\_SB.URT1",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                })
                Return (RBUF) /* \_SB_.URT1.UART._CRS.RBUF */
            }
        }
    }

    Scope (_SB.URT1)
    {
        Device (ADBG)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, 0x13)  // _UID: Unique ID
            Name (CRS1, ResourceTemplate ()
            {
                IO (Decode16,
                    0x03F8,             // Range Minimum
                    0x03F8,             // Range Maximum
                    0x01,               // Alignment
                    0x1A,               // Length
                    )
            })
            OperationRegion (DBGC, SystemIO, 0x0259, 0x10)
            Field (DBGC, ByteAcc, Lock, Preserve)
            {
                DBGP,   8
            }

            OperationRegion (DBPP, SystemIO, 0x0250, 0x02)
            Field (DBPP, ByteAcc, Lock, Preserve)
            {
                PPDT,   8,
                PPST,   8
            }

            OperationRegion (DB80, SystemIO, 0x80, One)
            Field (DB80, ByteAcc, Lock, Preserve)
            {
                DP80,   8
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS1) /* \_SB_.URT1.ADBG.CRS1 */
            }

            Method (CALL, 0, Serialized)
            {
            }

            Method (PUTD, 1, Serialized)
            {
                Local0 = ((Arg0 & 0x0F) | 0x10)
                Local1 = ((Arg0 >> 0x04) & 0x0F)
                Local2 = (~Local1 & 0x0F)
                Local4 = 0x3FFF
                PPDT = Local0
                Local3 = ((PPST ^ 0x80) >> 0x03)
                While (((Local3 != 0x10) && (Local4 != Zero)))
                {
                    Local3 = ((PPST ^ 0x80) >> 0x03)
                    Local4--
                    Stall (0x1E)
                }

                If ((Local4 == Zero))
                {
                    PPDT = Zero
                    Return (Zero)
                }

                Local4 = 0x3FFF
                PPDT = Local1
                Local3 = ((PPST ^ 0x80) >> 0x03)
                While (((Local3 != Zero) && (Local4 != Zero)))
                {
                    Local3 = ((PPST ^ 0x80) >> 0x03)
                    Local4--
                    Stall (0x1E)
                }

                If ((Local4 == Zero))
                {
                    PPDT = Zero
                    Return (Zero)
                }

                PPDT = Local2
                Return (One)
            }

            Method (OUTS, 1, Serialized)
            {
                If ((DBGP != 0xFF))
                {
                    Local0 = (SizeOf (Arg0) + One)
                    Local1 = Zero
                    Name (BUFF, Buffer (Local0){})
                    BUFF = Arg0
                    Local0 -= One
                    If ((PUTD (0x53) == Zero))
                    {
                        Return (Zero)
                    }

                    While ((DerefOf (BUFF [Local1]) != Zero))
                    {
                        If ((PUTD (DerefOf (BUFF [Local1])) == Zero))
                        {
                            PUTD (Zero)
                            Return (Zero)
                        }

                        Local1++
                    }

                    PUTD (Zero)
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (OUTD, 1, Serialized)
            {
                Name (DEC, Buffer (0x0B)
                {
                    "0123456789"
                })
                Name (TMP, Buffer (0x0B){})
                Local0 = Zero
                Local1 = Arg0
                If ((Local1 == Zero))
                {
                    OUTS ("0")
                }
                Else
                {
                    While ((Local1 > Zero))
                    {
                        Divide (Local1, 0x0A, Local2, Local1)
                        TMP [Local0] = DerefOf (DEC [Local2])
                        Local0++
                        TMP [Local0] = Zero
                    }

                    Local2 = Zero
                    Local0--
                    While ((Local2 < Local0))
                    {
                        Local3 = DerefOf (TMP [Local2])
                        TMP [Local2] = DerefOf (TMP [Local0])
                        TMP [Local0] = Local3
                        Local2++
                        Local0--
                    }

                    OUTS (TMP)
                }
            }

            Method (OUTH, 1, Serialized)
            {
                Name (HEX, Buffer (0x11)
                {
                    "0123456789ABCDEF"
                })
                Name (TMP, Buffer (0x0A){})
                Local0 = Zero
                Local1 = Arg0
                While ((Local0 < 0x08))
                {
                    Local2 = (Local1 & 0x0F)
                    TMP [Local0] = DerefOf (HEX [Local2])
                    Local1 >>= 0x04
                    Local0++
                    TMP [Local0] = Zero
                }

                Local2 = Zero
                Local0--
                While ((Local2 < Local0))
                {
                    Local3 = DerefOf (TMP [Local2])
                    TMP [Local2] = DerefOf (TMP [Local0])
                    TMP [Local0] = Local3
                    Local2++
                    Local0--
                }

                OUTS (TMP)
            }

            OperationRegion (SIO1, SystemIO, 0x03F8, 0x08)
            Field (SIO1, ByteAcc, NoLock, Preserve)
            {
                SOUT,   8,
                Offset (0x05),
                SSAT,   8
            }

            Method (THRE, 0, NotSerialized)
            {
                Local0 = (SSAT & 0x20)
                While ((Local0 == Zero))
                {
                    Local0 = (SSAT & 0x20)
                }
            }

            Method (OUTX, 1, NotSerialized)
            {
                THRE ()
                SOUT = Arg0
            }

            Method (OUTC, 1, NotSerialized)
            {
                If ((Arg0 == 0x0A))
                {
                    OUTX (0x0D)
                }

                OUTX (Arg0)
            }

            Method (DBGN, 1, NotSerialized)
            {
                Local0 = (Arg0 & 0x0F)
                If ((Local0 < 0x0A))
                {
                    Local0 += 0x30
                }
                Else
                {
                    Local0 += 0x37
                }

                OUTC (Local0)
            }

            Method (DBGB, 1, NotSerialized)
            {
                Local0 = (Arg0 >> 0x04)
                DBGN (Local0)
                DBGN (Arg0)
            }

            Method (DBGW, 1, NotSerialized)
            {
                Local0 = (Arg0 >> 0x08)
                DBGB (Local0)
                DBGB (Arg0)
            }

            Method (DBGD, 1, NotSerialized)
            {
                Local0 = (Arg0 >> 0x10)
                DBGW (Local0)
                DBGW (Arg0)
            }

            Method (DBGQ, 1, NotSerialized)
            {
                Local0 = (Arg0 >> 0x30)
                DBGW (Local0)
                Local0 = (Arg0 >> 0x20)
                DBGW (Local0)
                Local0 = (Arg0 >> 0x10)
                DBGW (Local0)
                DBGW (Arg0)
            }

            Name (DBGZ, Buffer (0x50){})
            Method (GETC, 2, NotSerialized)
            {
                CreateByteField (Arg0, Arg1, DBGC)
                Return (DBGC) /* \_SB_.URT1.ADBG.GETC.DBGC */
            }

            Method (MNIO, 1, NotSerialized)
            {
                If ((ObjectType (Arg0) == One))
                {
                    If ((Arg0 > 0xFFFFFFFF))
                    {
                        DBGQ (Arg0)
                    }
                    ElseIf ((Arg0 > 0xFFFF))
                    {
                        DBGD (Arg0)
                    }
                    ElseIf ((Arg0 > 0xFF))
                    {
                        DBGW (Arg0)
                    }
                    Else
                    {
                        DBGB (Arg0)
                    }

                    Return (Zero)
                }

                If ((ObjectType (Arg0) == 0x02))
                {
                    DBGZ = Arg0
                    Local1 = Zero
                    While (One)
                    {
                        Local0 = GETC (DBGZ, Local1)
                        If ((Local0 == Zero))
                        {
                            Return (Zero)
                        }

                        OUTC (Local0)
                        Local1++
                    }

                    Return (Zero)
                }

                If ((ObjectType (Arg0) == 0x03))
                {
                    Local0 = Zero
                    While ((Local0 < SizeOf (Arg0)))
                    {
                        Local1 = GETC (Arg0, Local0)
                        If ((Local0 > Zero))
                        {
                            OUTC (0x20)
                        }

                        DBGB (Local1)
                        Local0++
                    }

                    Return (Zero)
                }

                If ((ObjectType (Arg0) == 0x04))
                {
                    Local0 = Zero
                    While ((Local0 < SizeOf (Arg0)))
                    {
                        OUTC (0x20)
                        OUTC (0x20)
                        MNIO (DerefOf (Arg0 [Local0]))
                        OUTC (0x0A)
                        Local0++
                    }

                    Return (Zero)
                }

                Return (One)
            }
        }
    }

    Scope (\)
    {
        OperationRegion (GPSC, SystemIO, 0xB2, 0x02)
        Field (GPSC, ByteAcc, NoLock, Preserve)
        {
            SMCM,   8,
            SMST,   8
        }

        Method (MNIO, 1, NotSerialized)
        {
            \_SB.URT1.ADBG.MNIO (Arg0)
        }
    }
}
