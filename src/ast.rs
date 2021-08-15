use std::sync::Arc;


#[derive(Debug, Clone, PartialEq)]
pub struct Module(pub Vec<TopLevelEntity>);

#[derive(Debug, Clone, PartialEq)]
pub enum TopLevelEntity {
    SourceFilename(StringLit),
    TargetDefinition(TargetDefinition),
    ModuleAsm(StringLit),
    TypeDef(TypeDef),
    ComdatDef(ComdatDef),
    GlobalDecl(GlobalDecl),
    GlobalDef(GlobalDef),
    IndirectSymbolDef(IndirectSymbolDef),
    FunctionDecl(FunctionDecl),
    FunctionDef(FunctionDef),
    AttrGroupDef(AttrGroupDef),
    NamedMetadataDef(NamedMetadataDef),
    MetadataDef(MetadataDef),
    UseListOrder(UseListOrder),
    UseListOrderBB(UseListOrderBB),
}

#[derive(Debug, Clone, PartialEq)]
pub struct StringLit(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct IntLit(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct LocalIdent(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct GlobalIdent(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct LabelIdent(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct ComdatName(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct MetadataID(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct MetadataName(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct AttrGroupID(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct Section(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct TargetDefinition {
    pub target_type: TargetType,
    pub string_lit: StringLit,
}


#[derive(Debug, Clone, PartialEq)]
pub struct TypeDef {
    local_ident: LocalIdent,
    type_: Option<Type>,
}


#[derive(Debug, Clone, PartialEq)]
pub struct ComdatDef {
    comdat_name: ComdatName,
    type_: Option<Type>,
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum ExternLinkage {
    ExternWeak,
    External
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Visibility {
    Default,
    Hidden,
    Protected,
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Linkage {
    Appending,
    AvailableExternally,
    Common,
    Internal,
    Linkonce,
    LinkonceODR,
    Private,
    Weak,
    WeakODR,
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum PreemptionSpecifier {
    DSOLocal,
    DSOPreemptable,
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum ThreadLocal {
    Initialexec,
    Localdynamic,
    Localexec,
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum UnnamedAddr {
    LocalUnnamedAddr,
    UnnamedAddr
}

#[derive(Debug, Clone, PartialEq)]
pub struct AddrSpace(pub String);

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum DLLStorageClass {
    Dllexport,
    Dllimport
}


#[derive(Debug, Clone, PartialEq)]
pub struct OptExternallyInitialized(pub bool);

type Comdat = Option<ComdatName>;

#[derive(Debug, Clone, PartialEq)]
pub enum GlobalAttr {
    Section(Section),
    Comdat(Comdat),
    Alignment(Alignment),
    MetadataAttachments(MetadataAttachment),
}

#[derive(Debug, Clone, PartialEq)]
pub struct AllocSize(pub String);

#[derive(Debug, Clone, PartialEq)]
pub struct StackAlignment(pub String);

#[derive(Debug, Clone, PartialEq)]
pub enum FuncAttr {
    AttrGroupID(AttrGroupID),
    Align(String),
    Alignstack(String),
    Alignment(Alignment),
    AllocSize(AllocSize),
    StackAlignment(StackAlignment),
    StringLit(StringLit),
    Bind(StringLit, StringLit),
    Alwaysinline,
    Argmemonly,
    Builtin,
    Cold,
    Convergent,
    InaccessiblmemOrArgmemonly,
    Inaccessiblememory,
    Inlinehint,
    Jumptable,
    Minsize,
    Naked,
    Nobuiltin,
    Noduplicate,
    Noimplicitfloat,
    Noinline,
    Nonlazybind,
    Norecurse,
    Noredzone,
    Noreturn,
    Nounwind,
    Optnone,
    Optsize,
    Readnone,
    Readonly,
    ReturnsTwice,
    Safestack,
    SanitizeAddress,
    SanitizeHwaddress,
    SanitizeMemory,
    SanitizeThread,
    Speculatable,
    Ssp,
    Sspreq,
    Sspstrong,
    Strictfp,
    Uwtable,
    Writeonly
}


#[derive(Debug, Clone, PartialEq)]
pub struct GlobalDecl {
    global_ident: GlobalIdent,
    extern_linkage: ExternLinkage,
    opt_preemption_specifier: Option<PreemptionSpecifier>,
    opt_visibility: Option<Visibility>,
    opt_dll_storage_class: Option<DLLStorageClass>,
    opt_thread_local: Option<ThreadLocal>,
    opt_unnamed_addr: Option<UnnamedAddr>,
    opt_addr_space: Option<AddrSpace>,
    opt_externally_initialized: OptExternallyInitialized,
    immutable: bool,
    type_: Type,
    global_attrs: Vec<GlobalAttr>,
    func_attrs: Vec<FuncAttr>,
}

#[derive(Debug, Clone, PartialEq)]
pub struct GlobalDef {
    global_ident: GlobalIdent,
    opt_linkage: Option<Linkage>,
    opt_preemption_specifier: Option<PreemptionSpecifier>,
    opt_visibility: Option<Visibility>,
    opt_dll_storage_class: Option<DLLStorageClass>,
    opt_thread_local: Option<ThreadLocal>,
    opt_unnamed_addr: Option<UnnamedAddr>,
    opt_addr_space: Option<AddrSpace>,
    opt_externally_initialized: OptExternallyInitialized,
    immutable: bool,
    type_: Type,
    constant: Constant,
    global_attrs: Vec<GlobalAttr>,
    func_attrs: Vec<FuncAttr>,
}


#[derive(Debug, Clone, PartialEq)]
pub struct IndirectSymbolDef {
    global_ident: GlobalIdent,
    term_linkage: TermLinkage,
    opt_preemption_specifier: Option<PreemptionSpecifier>,
    opt_visibility: Option<Visibility>,
    opt_dll_storage_class: Option<DLLStorageClass>,
    opt_thread_local: Option<ThreadLocal>,
    opt_unnamed_addr: Option<UnnamedAddr>,
    alias: Alias,
    type1: Type,
    type2: Type,
    global_attrs: Vec<GlobalAttr>,
    func_attrs: Vec<FuncAttr>,
}


#[derive(Debug, Clone, PartialEq)]
pub enum TermLinkage {
    ExternLinkage(ExternLinkage),
    OptLinkage(Option<Linkage>),
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum Alias {
    Alias,
    Ifunc,
}

#[derive(Debug, Clone, PartialEq)]
pub struct MDString(StringLit);

#[derive(Debug, Clone, PartialEq)]
pub enum SpecializedMDNode {
    // todo!!!
}

#[derive(Debug, Clone, PartialEq)]
pub enum MetaData {
    TypeValueBind(Type, Value),
    MDString(MDString),
    MDTuple(MDTuple),
    MetadataID(MetadataID),
    SpecializedMDNode(SpecializedMDNode),
}

pub type MDField = Option<MetaData>;

pub type MDFieldList = Vec<MDField>;

pub type MDFields = Option<MDFieldList>;

#[derive(Debug, Clone, PartialEq)]
pub struct MDTuple(MDFields);

#[derive(Debug, Clone, PartialEq)]
pub enum MDNode {
    MDTuple(MDTuple),
    MetadataID(MetadataID),
    SpecializedMDNode(SpecializedMDNode),
}

#[derive(Debug, Clone, PartialEq)]
pub struct MetadataAttachment {
    metadata_name: MetadataName,
    md_node: MDNode,
}

pub type MetadataAttachments = Vec<MetadataAttachment>;

#[derive(Debug, Clone, PartialEq)]
pub struct FunctionDecl {
    metadata_attachments: MetadataAttachments,
    opt_extern_linkage: Option<ExternLinkage>,
    function_header: FunctionHeader
}


#[derive(Debug, Clone, PartialEq)]
pub struct FunctionDef {
    opt_linkage: Option<Linkage>,
    function_header: FunctionHeader,
    metadata_attachments: MetadataAttachments,
    function_body: FunctionBody,
}

#[derive(Debug, Clone, PartialEq)]
pub enum CallingConv {
    AmdgpuCs,
    AmdgpuEs,
    AmdgpuGs,
    AmdgpuHs,
    AmdgpuKernel,
    AmdgpuLs,
    AmdgpuPs,
    AmdgpuVs,
    Anyregcc,
    ArmAapcsVfpcc,
    ArmAapcscc,
    ArmApcscc,
    AvrIntrcc,
    AvrSignalcc,
    Ccc,
    Coldcc,
    CxxFastTlscc,
    Fastcc,
    Ghccc,
    HhvmCcc,
    Hhvmcc,
    IntelOclBicc,
    Msp430Intrcc,
    PreserveAllcc,
    PreserveMostcc,
    PtxDevice,
    PtxKernel,
    SpirFunc,
    SpirKernel,
    Swiftcc,
    WebkitJscc,
    Win64cc,
    X86_64Sysvcc,
    X86Fastcallcc,
    X86Intrcc,
    X86Regcallcc,
    X86Stdcallcc,
    X86Thiscallcc,
    X86Vectorcallcc,
    Cc(IntLit)
}


#[derive(Debug, Clone, PartialEq)]
pub struct FunctionHeader (
    pub Option<PreemptionSpecifier>,
    pub Option<Visibility>,
    pub Option<DLLStorageClass>,
    pub Option<CallingConv>,
    pub Vec<ReturnAttr>,
    pub Type,
    pub GlobalIdent,
    pub Params,
    pub Option<UnnamedAddr>,
    pub Vec<FuncAttr>,
    pub Option<Section>,
    pub Option<Comdat>,
    pub Option<Gc>,
    pub Option<Prefix>,
    pub Option<Prologue>,
    pub Option<Personality>,
);

pub type Params = Option<ParamList>;

type ParamList = Vec<Param>;

#[derive(Debug, Clone, PartialEq)]
pub struct Param (
    pub Type,
    pub Vec<ParamAttr>,
    pub Option<LocalIdent>,
);

#[derive(Debug, Clone, PartialEq)]
pub struct Alignment(String);

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum DereferenceableType {
    Dereferenceable,
    DereferenceableOrNull,
}

#[derive(Debug, Clone, PartialEq)]
pub struct Dereferenceable(DereferenceableType, String);

#[derive(Debug, Clone, PartialEq)]
pub enum ParamAttr {
    Alignment(Alignment),
    Dereferenceable(Dereferenceable),
    StringLit(StringLit),
    Byval,
    Inalloca,
    Inreg,
    Nest,
    Noalias,
    Nocapture,
    Nonnull,
    Readnone,
    Readonly,
    Returned,
    Signext,
    Sret,
    Swifterror,
    Swiftself,
    Writeonly,
    Zeroext
}

#[derive(Debug, Clone, PartialEq)]
pub enum ReturnAttr {
    Alignment(Alignment),
    Dereferenceable(Dereferenceable),
    StringLit(StringLit),
    Inreg,
    Noalias,
    Nonnull,
    Signext,
    Zeroext
}

#[derive(Debug, Clone, PartialEq)]
pub struct Gc(pub StringLit);

#[derive(Debug, Clone, PartialEq)]
pub struct Prefix(pub Type, pub Constant);

#[derive(Debug, Clone, PartialEq)]
pub struct Prologue(pub Type, pub Constant);

#[derive(Debug, Clone, PartialEq)]
pub struct Personality(pub Type, pub Constant);


#[derive(Debug, Clone, PartialEq)]
pub struct FunctionBody {
    basic_block_list: Vec<BasicBlock>,
    use_list_orders: Vec<UseListOrder>,
}

#[derive(Debug, Clone, PartialEq)]
pub struct BasicBlock {
    opt_label_ident: Option<LabelIdent>,
    instructions: Vec<Instruction>,
    terminator: Terminator,
}

#[derive(Debug, Clone, PartialEq)]
pub enum Instruction {
    StoreInst(StoreInst),
    FenceInst(FenceInst),
    CmpXchgInst(CmpXchgInst),
    AtomicRMWInst(AtomicRMWInst),
    BindInst(LocalIdent, ValueInstruction),
    ValueInstruction(ValueInstruction)
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub struct OptVolatile (pub bool);

#[derive(Debug, Clone, PartialEq)]
pub struct StoreInstType1 (
    pub OptVolatile,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct StoreInstType2 (
    pub OptVolatile,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub Alignment,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct StoreInstType3 (
    pub OptVolatile,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptSyncScope,
    pub AtomicOrdering,
    pub OptCommaSepMetadataAttachmentList
);


#[derive(Debug, Clone, PartialEq)]
pub struct StoreInstType4 (
    pub OptVolatile,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptSyncScope,
    pub AtomicOrdering,
    pub Alignment,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub enum StoreInst {
    Type1(StoreInstType1),
    Type2(StoreInstType2),
    Type3(StoreInstType3),
    Type4(StoreInstType4),
}

#[derive(Debug, Clone, PartialEq)]
pub struct FenceInst (
    pub OptSyncScope,
    pub AtomicOrdering,
    pub OptCommaSepMetadataAttachmentList
);

pub type OptWeak = bool;

#[derive(Debug, Clone, PartialEq)]
pub struct CmpXchgInst (
    pub OptWeak,
    pub OptVolatile,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptSyncScope,
    pub AtomicOrdering,
    pub AtomicOrdering,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct AtomicRMWInst(
    pub OptVolatile,
    pub BinOp,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptSyncScope,
    pub AtomicOrdering,
    pub OptCommaSepMetadataAttachmentList,
);

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum BinOp {
    Add,
    And,
    Max,
    Min,
    Nand,
    Or,
    Sub,
    Umax,
    Umin,
    Xchg,
    Xor
}

pub type OptSyncScope = Option<StringLit>;

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum AtomicOrdering {
    AcqRel,
    Acquire,
    Monotonic,
    Release,
    SeqCst,
    Unordered
}

pub type OptCommaSepMetadataAttachmentList = Option<MetadataAttachmentList>;

pub type MetadataAttachmentList = Vec<MetadataAttachment>;

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum OverflowFlag {
    Nsw,
    Nuw,
}

pub type OverflowFlagList = Vec<OverflowFlag>;

pub type OverflowFlags = Option<OverflowFlagList>;

#[derive(Debug, Clone, PartialEq)]
pub struct AddInst(
    pub OverflowFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum FastMathFlag {
    Afn,
    Arcp,
    Contract,
    Fast,
    Ninf,
    Nnan,
    Nsz,
    Reassoc
}

pub type FastMathFlagsList = Vec<FastMathFlag>;

pub type FastMathFlags = Option<FastMathFlagsList>;

#[derive(Debug, Clone, PartialEq)]
pub struct FAddInst(
    pub FastMathFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);


#[derive(Debug, Clone, PartialEq)]
pub struct SubInst(
    pub OverflowFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);


#[derive(Debug, Clone, PartialEq)]
pub struct FSubInst(
    pub FastMathFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);


#[derive(Debug, Clone, PartialEq)]
pub struct MulInst(
    pub OverflowFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);


#[derive(Debug, Clone, PartialEq)]
pub struct FMulInst(
    pub FastMathFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct UDivInst(
    pub OptExact,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct SDivInst(
    pub OptExact,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct FDivInst(
    pub FastMathFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct URemInst(
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct SRemInst(
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct FRemInst(
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct ShlInst(
    pub OverflowFlags,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct LShrInst(
    pub OptExact,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct AShrInst(
    pub OptExact,
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct AndInst(
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct OrInst(
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct XorInst(
    pub Type,
    pub Value,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct ExtractElementInst(
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct InsertElementInst(
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct ShuffleVectorInst(
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub Type,
    pub Value,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct ExtractValueInst(
    pub Type,
    pub Value,
    pub IndexList,
    pub OptCommaSepMetadataAttachmentList
);

#[derive(Debug, Clone, PartialEq)]
pub struct InsertValueInst(
    pub Type,
    pub Value,
    pub IndexList,
    pub OptCommaSepMetadataAttachmentList
);

// todo

#[derive(Debug, Clone, PartialEq)]
pub enum ValueInstruction {
    AddInst(AddInst),
    FAddInst(FAddInst),
    SubInst(SubInst),
    FSubInst(FSubInst),
    MulInst(MulInst),
    FMulInst(FMulInst),
    UDivInst(UDivInst),
    SDivInst(SDivInst),
    FDivInst(FDivInst),
    URemInst(URemInst),
    SRemInst(SRemInst),
    FRemInst(FRemInst),
    ShlInst(ShlInst),
    LShrInst(LShrInst),
    AShrInst(AShrInst),
    AndInst(AndInst),
    OrInst(OrInst),
    XorInst(XorInst),
    ExtractElementInst(ExtractElementInst),
    InsertElementInst(InsertElementInst),
    ShuffleVectorInst(ShuffleVectorInst),
    ExtractValueInst(ExtractValueInst),
    InsertValueInst(InsertValueInst),
    AllocaInst(AllocaInst),
    LoadInst(LoadInst),
    GetElementPtrInst(GetElementPtrInst),
    TruncInst(TruncInst),
    ZExtInst(ZExtInst),
    SExtInst(SExtInst),
    FPTruncInst(FPTruncInst),
    FPExtInst(FPExtInst),
    FPToUIInst(FPToUIInst),
    FPToSIInst(FPToSIInst),
    UIToFPInst(UIToFPInst),
    SIToFPInst(SIToFPInst),
    PtrToIntInst(PtrToIntInst),
    IntToPtrInst(IntToPtrInst),
    BitCastInst(BitCastInst),
    AddrSpaceCastInst(AddrSpaceCastInst),
    ICmpInst(ICmpInst),
    FCmpInst(FCmpInst),
    PhiInst(PhiInst),
    SelectInst(SelectInst),
    CallInst(CallInst),
    VAArgInst(VAArgInst),
    LandingPadInst(LandingPadInst),
    CatchPadInst(CatchPadInst),
    CleanupPadInst(CleanupPadInst)
}

#[derive(Debug, Clone, PartialEq)]
pub enum Terminator {
    // todo !!!
    RetTerm,
    BrTerm,
    CondBrTerm,
    SwitchTerm,
    IndirectBrTerm,
    InvokeTerm,
    ResumeTerm,
    CatchSwitchTerm,
    CatchRetTerm,
    CleanupRetTerm,
    UnreachableTerm
}

#[derive(Debug, Clone, PartialEq)]
pub struct AttrGroupDef {
    attr_group_id: AttrGroupID,
    func_attrs: Vec<FuncAttr>,
}


#[derive(Debug, Clone, PartialEq)]
pub struct NamedMetadataDef {
    metadata_name: MetadataName,
    metadata_nodes: Vec<MetadataNode>,
}


#[derive(Debug, Clone, PartialEq)]
pub enum MetadataNode {
    MetadataID(MetadataID),
    // todo !!!
    // DIExpression(DIExpression),
}

#[derive(Debug, Clone, PartialEq)]
pub struct MetadataDef {
    metadata_id: MetadataID,
    opt_distinct: OptDistinct,
    temp_metadata_body: TempMetadataBody
}

pub type OptDistinct = bool;

#[derive(Debug, Clone, PartialEq)]
pub enum TempMetadataBody {
    MDTuple(MDTuple),
    SpecializedMDNode(SpecializedMDNode),
}


#[derive(Debug, Clone, PartialEq)]
pub struct UseListOrder {
    type_: Type,
    value: Value,
    index_list: Vec<Index>,
}


#[derive(Debug, Clone, PartialEq)]
pub struct UseListOrderBB {
    global_ident: GlobalIdent,
    local_ident: LocalIdent,
    index_list: Vec<Index>,
}

#[derive(Debug, Clone, PartialEq)]
pub enum Value {
    Constant(Constant),
    LocalIdent(LocalIdent),
    InlineAsm(InlineAsm),
}

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct OptSideEffect(bool);

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct OptAlignStack(bool);

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct OptIntelDialect(bool);

#[derive(Debug, Clone, PartialEq)]
pub struct InlineAsm {
    opt_side_effect: OptSideEffect,
    opt_align_stack: OptAlignStack,
    opt_intel_dialect: OptIntelDialect,
    string_lit1: StringLit,
    string_lit2: StringLit,
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum SelectionKind {
    Any,
    Exactmatch,
    Largest,
    Noduplicates,
    Samesize,
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum TargetType {
    Datalayout,
    Triple,
}

pub type TypeConsts = Vec<TypeConst>;

#[derive(Debug, Clone, PartialEq)]
pub struct TypeConst {
    type_: Type,
    constant: Constant,
}

#[derive(Debug, Clone, PartialEq)]
pub struct ArrayConst(pub TypeConsts);

#[derive(Debug, Clone, PartialEq)]
pub struct VectorConst(pub TypeConsts);

#[derive(Debug, Clone, PartialEq)]
pub struct CharArrayConst(pub StringLit);

#[derive(Debug, Clone, PartialEq)]
pub struct StructConst(pub TypeConsts);

#[derive(Debug, Clone, PartialEq)]
pub struct BlockAddressConst(pub GlobalIdent, pub LocalIdent);

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct OptExact(pub bool);

#[derive(Debug, Clone, Copy, PartialEq)]
pub struct OptInBounds(pub bool);

#[derive(Debug, Clone, PartialEq)]
pub struct Index(String);

#[derive(Debug, Clone, PartialEq)]
pub struct IndexList(Vec<Index>);

pub type Indices = Option<IndexList>;

#[derive(Debug, Clone, PartialEq)]
pub enum ConstantExpr {
    AddExpr(OverflowFlags, Type, Constant, Type, Constant),
    FAddExpr(Type, Constant, Type, Constant),
    SubExpr(OverflowFlags, Type, Constant, Type, Constant),
    FSubExpr(Type, Constant, Type, Constant),
    MulExpr(OverflowFlags, Type, Constant, Type, Constant),
    FMulExpr(Type, Constant, Type, Constant),
    UDivExpr(OptExact, Type, Constant, Type, Constant),
    SDivExpr(OptExact, Type, Constant, Type, Constant),
    FDivExpr(Type, Constant, Type, Constant),
    URemExpr(Type, Constant, Type, Constant),
    SRemExpr(Type, Constant, Type, Constant),
    FRemExpr(Type, Constant, Type, Constant),
    ShlExpr(OverflowFlags, Type, Constant, Type, Constant),
    LShrExpr(OptExact, Type, Constant, Type, Constant),
    AShrExpr(OptExact, Type, Constant, Type, Constant),
    AndExpr(Type, Constant, Type, Constant),
    OrExpr(Type, Constant, Type, Constant),
    XorExpr(Type, Constant, Type, Constant),
    ExtractElementExpr(Type, Constant, Type, Constant),
    InsertElementExpr(Type, Constant, Type, Constant, Type, Constant),
    ShuffleVectorExpr(Type, Constant, Type, Constant, Type, Constant),
    ExtractValueExpr(Type, Constant, Indices),
    InsertValueExpr(Type, Constant, Type, Constant, Indices),
    GetElementPtrExpr(OptInBounds, Type, Type, Constant, GEPConstIndices),
    TruncExpr(Type, Constant, Type),
    ZExtExpr(Type, Constant, Type),
    SExtExpr(Type, Constant, Type),
    FPTruncExpr(Type, Constant, Type),
    FPExtExpr(Type, Constant, Type),
    FPToUIExpr(Type, Constant, Type),
    FPToSIExpr(Type, Constant, Type),
    UIToFPExpr(Type, Constant, Type),
    SIToFPExpr(Type, Constant, Type),
    PtrToIntExpr(Type, Constant, Type),
    IntToPtrExpr(Type, Constant, Type),
    BitCastExpr(Type, Constant, Type),
    AddrSpaceCastExpr(Type, Constant, Type),
    ICmpExpr(IPred, Type, Constant, Type, Constant),
    FCmpExpr(FPred, Type, Constant, Type, Constant),
    SelectExpr(Type, Constant, Type, Constant, Type, Constant),
}

type GEPConstIndices = (); // todo

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum IPred {
    Eq,
    Ne,
    Sge,
    Sgt,
    Sle,
    Slt,
    Uge,
    Ugt,
    Ule,
    Ult,
}


#[derive(Debug, Clone, Copy, PartialEq)]
pub enum FPred {
    False,
    Oeq,
    Oge,
    Ogt,
    Ole,
    Olt,
    One,
    Ord,
    True,
    Ueq,
    Uge,
    Ugt,
    Ule,
    Ult,
    Une,
    Uno,
}


#[derive(Debug, Clone, PartialEq)]
pub enum Constant {
    Null,
    None,
    ZeroInitializer,
    UndefConst,
    Bool(bool),
    Int(i64),
    Float(f64),
    Array(ArrayConst),
    Vector(VectorConst),
    CharArray(CharArrayConst),
    Struct(StructConst),
    GlobalIdent(GlobalIdent),
    BlockAddress(BlockAddressConst),
    ConstantExpr(Arc<ConstantExpr>),
}

#[derive(Debug, Clone, PartialEq)]
pub struct IntType(String);

#[derive(Debug, Clone, Copy, PartialEq)]
pub enum FloatKind {
    Half,
    Float,
    Double,
    X86Fp80,
    Fp128,
    PpcFp128
}

#[derive(Debug, Clone, PartialEq)]
pub struct VectorType(IntLit, Arc<Type>);

#[derive(Debug, Clone, PartialEq)]
pub struct ArrayType(IntLit, Arc<Type>);

type TypeList = Vec<Type>;

#[derive(Debug, Clone, PartialEq)]
pub struct StructType(TypeList);

#[derive(Debug, Clone, PartialEq)]
pub struct NamedType(LocalIdent);

#[derive(Debug, Clone, PartialEq)]
pub enum Type {
    VoidType,
    IntType(IntType),
    FloatType(FloatKind),
    VectorType(VectorType),
    ArrayType(ArrayType),
    StructType(StructType),
    NamedType(NamedType),
    MMXType,
    LabelType,
    TokenType,
    MetaDataType,
    FuncType(Arc<Type>, Params),
    PointerType(Arc<Type>, Option<AddrSpace>),
}
