use std::sync::Arc;


//todo


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

#[derive(Debug, Clone, PartialEq)]
pub enum GlobalAttr {
    // todo!!!
    Section(),
    Comdat(),
    Alignment(),
    MetadataAttachments(),
}

#[derive(Debug, Clone, PartialEq)]
pub enum FuncAttr {
    // todo!!!

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
pub struct FunctionHeader {
    opt_preemption_specifier: Option<PreemptionSpecifier>,
    opt_visibility: Option<Visibility>,
    opt_dll_storage_class: Option<DLLStorageClass>,
    opt_calling_conv: Option<CallingConvention>,
    return_attrs: Vec<ReturnAttr>,
    type_: Type,
    global_ident: GlobalIdent,
    params: Params,
    opt_unnamed_addr: Option<UnnamedAddr>,
    func_attrs: Vec<FuncAttr>,
    opt_section: Option<Section>,
    opt_comdat: Option<Comdat>,
    opt_gc: Option<Gc>,
    opt_prefix: Option<Prefix>,
    opt_prologue: Option<Prologue>,
    opt_personality: Option<Personality>,
}

pub type Params = Option<ParamList>;

type ParamList = Vec<Param>;

#[derive(Debug, Clone, PartialEq)]
pub struct Param {
    type_: Type,
    param_attrs: Vec<ParamAttr>,
    local_ident: Option<LocalIdent>,
}

#[derive(Debug, Clone, PartialEq)]
pub enum ParamAttr {
    // todo !!!
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
    // todo !!!
}


#[derive(Debug, Clone, PartialEq)]
pub enum Terminator {
    // todo !!!
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
    // todo !!!
    MetadataID(MetadataID),
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

#[derive(Debug, Clone, PartialEq)]
pub struct InlineAsm {
    // todo
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
pub enum OverFlowFlag {
    Nsw,
    Nuw,
}

pub type OverFlowFlags = Vec<OverFlowFlag>;

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
    AddExpr(OverFlowFlags, Type, Constant, Type, Constant),
    FAddExpr(Type, Constant, Type, Constant),
    SubExpr(OverFlowFlags, Type, Constant, Type, Constant),
    FSubExpr(Type, Constant, Type, Constant),
    MulExpr(OverFlowFlags, Type, Constant, Type, Constant),
    FMulExpr(Type, Constant, Type, Constant),
    UDivExpr(OptExact, Type, Constant, Type, Constant),
    SDivExpr(OptExact, Type, Constant, Type, Constant),
    FDivExpr(Type, Constant, Type, Constant),
    URemExpr(Type, Constant, Type, Constant),
    SRemExpr(Type, Constant, Type, Constant),
    FRemExpr(Type, Constant, Type, Constant),
    ShlExpr(OverFlowFlags, Type, Constant, Type, Constant),
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
pub enum Type {
    Void,
    // todo
}
