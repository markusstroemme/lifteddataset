@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_b7fa8 = external constant i64
@global_var_bb9b5 = external constant [5 x i8]
@0 = external global i32
@global_var_1000 = external global i32
@global_var_320 = external constant i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_73568:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7672b:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  store i64 %0, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_76745

dec_label_pc_76745:                               ; preds = %dec_label_pc_76745, %dec_label_pc_7672b
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %1 = add i64 %storemerge.reload, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %storemerge.reg2mem, align 8
  br i1 %5, label %dec_label_pc_76745, label %dec_label_pc_76752

dec_label_pc_76752:                               ; preds = %dec_label_pc_76745
  ret i64 %storemerge.reload
}

define i64 @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr %arg1) local_unnamed_addr {
dec_label_pc_76758:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  store i64 %0, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_76772

dec_label_pc_76772:                               ; preds = %dec_label_pc_76772, %dec_label_pc_76758
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %1 = add i64 %storemerge.reload, 24
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %storemerge.reg2mem, align 8
  br i1 %5, label %dec_label_pc_76772, label %dec_label_pc_7677f

dec_label_pc_7677f:                               ; preds = %dec_label_pc_76772
  ret i64 %storemerge.reload
}

define void @_ZNSt15_Rb_tree_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76786:
  %0 = bitcast ptr %result to ptr
  store i32 0, ptr %0, align 4
  %1 = call i64 @_ZNSt15_Rb_tree_header8_M_resetEv(ptr %result)
  ret void
}

define i64 @_ZNSt15_Rb_tree_header8_M_resetEv(ptr %result) local_unnamed_addr {
dec_label_pc_767b0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  store i64 %0, ptr %4, align 8
  %5 = add i64 %0, 24
  %6 = inttoptr i64 %5 to ptr
  store i64 %0, ptr %6, align 8
  %7 = add i64 %0, 32
  %8 = inttoptr i64 %7 to ptr
  store i64 0, ptr %8, align 8
  ret i64 %0
}

define void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_76b0a:
  ret void
}

define i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_76c68:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %1 to i32
  %4 = trunc i64 %2 to i32
  %5 = sub i32 %3, %4
  %6 = xor i64 %2, %1
  %7 = trunc i64 %6 to i32
  %8 = xor i32 %5, %3
  %9 = and i32 %8, %7
  %10 = icmp slt i32 %9, 0
  %11 = icmp slt i32 %5, 0
  %12 = icmp ne i1 %11, %10
  %13 = zext i1 %12 to i64
  %14 = and i64 %2, 4294967040
  %15 = or i64 %14, %13
  ret i64 %15
}

define ptr @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_76c8f:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @_ZSt16forward_as_tupleIJiEESt5tupleIJDpOT_EES3_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_76ca1:
  %0 = ptrtoint ptr %result to i64
  %1 = inttoptr i64 %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %1)
  call void @_ZNSt5tupleIJOiEEC2IJiELb1ELb1EEEDpOT_(i64 %0)
  ret i64 %0
}

define ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_770c4:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt5tupleIJOiEEC2IJiELb1ELb1EEEDpOT_(i64 %arg1) local_unnamed_addr {
dec_label_pc_770d6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %2)
  %4 = inttoptr i64 %arg1 to ptr
  call void @_ZNSt11_Tuple_implILm0EJOiEEC2IiEEOT_(ptr %4, ptr %3)
  ret void
}

define ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_7710d:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_7711f:
  ret ptr %arg1
}

define ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_77131:
  ret ptr %arg1
}

define void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_77742:
  ret void
}

define void @_ZNSt11_Tuple_implILm0EJOiEEC2IiEEOT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_77988:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %0)
  call void @_ZNSt10_Head_baseILm0EOiLb0EEC2IiEEOT_(ptr %result, ptr %1)
  ret void
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_77b64:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  %2 = bitcast ptr %arg3 to ptr
  %3 = call ptr @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(ptr %2)
  %4 = load ptr, ptr %3, align 8
  %5 = ptrtoint ptr %4 to i64
  %6 = add i64 %1, 8
  %7 = inttoptr i64 %6 to ptr
  store i64 %5, ptr %7, align 8
  ret void
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_77d56:
  %0 = ptrtoint ptr %result to i64
  %1 = bitcast ptr %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(ptr %1)
  %3 = load ptr, ptr %2, align 8
  %4 = ptrtoint ptr %3 to i64
  store i64 %4, ptr %result, align 8
  %5 = bitcast ptr %arg3 to ptr
  %6 = call ptr @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = add i64 %0, 8
  %10 = inttoptr i64 %9 to ptr
  store i64 %8, ptr %10, align 8
  ret void
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_77df6:
  %0 = ptrtoint ptr %result to i64
  %1 = bitcast ptr %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(ptr %1)
  %3 = load ptr, ptr %2, align 8
  %4 = ptrtoint ptr %3 to i64
  store i64 %4, ptr %result, align 8
  %5 = add i64 %0, 8
  %6 = inttoptr i64 %5 to ptr
  store i64 %4, ptr %6, align 8
  ret void
}

define void @_ZNSt10_Head_baseILm0EOiLb0EEC2IiEEOT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_780da:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_781a2:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt5tupleIJOiEEC2EOS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_783ae:
  call void @_ZNSt11_Tuple_implILm0EJOiEEC2EOS1_(ptr %result, ptr %arg2)
  ret void
}

define void @_ZNSt11_Tuple_implILm0EJOiEEC2EOS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_78514:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZSt3getILm0EJOiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_78662:
  %0 = call ptr @_ZSt12__get_helperILm0EOiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(ptr %arg1)
  %1 = bitcast ptr %0 to ptr
  ret ptr %1
}

define ptr @_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_78680:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define ptr @_ZSt12__get_helperILm0EOiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(ptr %arg1) local_unnamed_addr {
dec_label_pc_786cf:
  %0 = call i64 @_ZNSt11_Tuple_implILm0EJOiEE7_M_headERS1_(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  ret ptr %1
}

define i64 @_ZNSt11_Tuple_implILm0EJOiEE7_M_headERS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7873f:
  %0 = call i64 @_ZNSt10_Head_baseILm0EOiLb0EE7_M_headERS1_(ptr %arg1)
  ret i64 %0
}

define i64 @_ZNSt10_Head_baseILm0EOiLb0EE7_M_headERS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7875d:
  %0 = ptrtoint ptr %arg1 to i64
  ret i64 %0
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7cb4e:
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7cb6e:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7cb8e:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7cbae:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEC2ERKS7_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7cbce:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2ERKS9_(ptr %result, ptr %arg2)
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7cbf8:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEEC2Ev(ptr %result)
  call void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2Ev(ptr %result)
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  call void @_ZNSt15_Rb_tree_headerC2Ev(ptr %2)
  ret void
}

define void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7cc34:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7cc54:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %1)
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEixEOi(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7cc92:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-57 = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEE11lower_boundERS4_(ptr %result, ptr %arg2)
  store i64 %1, ptr %stack_var_-56, align 8
  %2 = call i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEE3endEv(ptr %result)
  store i64 %2, ptr %stack_var_-40, align 8
  %3 = call i64 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiPlEES6_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-40)
  %4 = trunc i64 %3 to i8
  %5 = icmp eq i8 %4, 0
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_7cd36, label %dec_label_pc_7ccf4

dec_label_pc_7ccf4:                               ; preds = %dec_label_pc_7cc92
  %7 = call i64 @_ZNKSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEE8key_compEv(ptr %result)
  %8 = call i64 @_ZNKSt17_Rb_tree_iteratorISt4pairIKiPlEEdeEv(ptr nonnull %stack_var_-56)
  %9 = inttoptr i64 %8 to ptr
  %10 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr nonnull %stack_var_-48, ptr %arg2, ptr %9)
  %11 = trunc i64 %10 to i8
  %12 = icmp ne i8 %11, 0
  %phitmp = icmp eq i1 %12, false
  br i1 %phitmp, label %dec_label_pc_7cd93, label %dec_label_pc_7cd36

dec_label_pc_7cd36:                               ; preds = %dec_label_pc_7cc92, %dec_label_pc_7ccf4
  %13 = ptrtoint ptr %result to i64
  %14 = bitcast ptr %arg2 to ptr
  %15 = call ptr @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(ptr %14)
  %16 = ptrtoint ptr %15 to i64
  %17 = call i64 @_ZSt16forward_as_tupleIJiEESt5tupleIJDpOT_EES3_(ptr nonnull %stack_var_-48, i64 %16)
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKiPlEEC2ERKSt17_Rb_tree_iteratorIS3_E(ptr nonnull %stack_var_-40, ptr nonnull %stack_var_-56)
  %18 = load i64, ptr %stack_var_-40, align 8
  %19 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(i64 %13, i64 %18, ptr nonnull @global_var_b7fa8, ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-57)
  store i64 %19, ptr %stack_var_-56, align 8
  br label %dec_label_pc_7cd93

dec_label_pc_7cd93:                               ; preds = %dec_label_pc_7cd36, %dec_label_pc_7ccf4
  %20 = call i64 @_ZNKSt17_Rb_tree_iteratorISt4pairIKiPlEEdeEv(ptr nonnull %stack_var_-56)
  %21 = add i64 %20, 8
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 %21, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_7cdb7, label %dec_label_pc_7cdb2

dec_label_pc_7cdb2:                               ; preds = %dec_label_pc_7cd93
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7cdb7

dec_label_pc_7cdb7:                               ; preds = %dec_label_pc_7cdb2, %dec_label_pc_7cd93
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EEC2ERKS9_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7cdbe:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2ERKSB_(ptr %result, ptr %arg2)
  %0 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(ptr %arg2)
  %1 = icmp eq i64 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_7ce41, label %dec_label_pc_7cdfc

dec_label_pc_7cdfc:                               ; preds = %dec_label_pc_7cdbe
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyERKS9_(ptr %result, ptr %arg2)
  %5 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(ptr %result)
  %6 = inttoptr i64 %5 to ptr
  store i64 %4, ptr %6, align 8
  br label %dec_label_pc_7ce41

dec_label_pc_7ce41:                               ; preds = %dec_label_pc_7cdfc, %dec_label_pc_7cdbe
  ret void
}

define void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7ce48:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7ce68:
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7ce78:
  %rax.0.lcssa.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  %1 = icmp eq i1 %0, false
  br i1 %1, label %dec_label_pc_7ce8e.lr.ph, label %dec_label_pc_7cede

dec_label_pc_7ce8e.lr.ph:                         ; preds = %dec_label_pc_7ce78
  %2 = ptrtoint ptr %arg2 to i64
  store i64 %2, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_7ce8e

dec_label_pc_7ce8e:                               ; preds = %dec_label_pc_7ce8e.lr.ph, %dec_label_pc_7ce8e
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %3 = inttoptr i64 %storemerge1.reload to ptr
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %3)
  %5 = inttoptr i64 %4 to ptr
  %6 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %5)
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %3)
  %8 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %3)
  %9 = icmp eq i64 %7, 0
  %10 = icmp eq i1 %9, false
  store i64 %7, ptr %storemerge1.reg2mem, align 8
  store i64 %7, ptr %rax.0.lcssa.reg2mem, align 8
  br i1 %10, label %dec_label_pc_7ce8e, label %dec_label_pc_7cede

dec_label_pc_7cede:                               ; preds = %dec_label_pc_7ce8e, %dec_label_pc_7ce78
  %rax.0.lcssa.reload = load i64, ptr %rax.0.lcssa.reg2mem, align 8
  ret i64 %rax.0.lcssa.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_7cee2:
  %0 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE9_M_mbeginEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEE11lower_boundERS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7cf00:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11lower_boundERS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7cf2a:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE3endEv(ptr %result)
  ret i64 %0
}

define i64 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiPlEES6_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7cf48:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = zext i1 %1 to i64
  %3 = and i64 %0, -256
  %4 = or i64 %3, %2
  ret i64 %4
}

define i64 @_ZNKSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEE8key_compEv(ptr %result) local_unnamed_addr {
dec_label_pc_7cf6e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8key_compEv(ptr %result)
  %3 = and i64 %1, 4294967295
  ret i64 %3
}

define i64 @_ZNKSt17_Rb_tree_iteratorISt4pairIKiPlEEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7cf94:
  %0 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKiPlEEC2ERKSt17_Rb_tree_iteratorIS3_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7cfb6:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4, ptr %arg5) local_unnamed_addr {
dec_label_pc_7cfd8:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg5)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg4)
  %4 = ptrtoint ptr %3 to i64
  %5 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg3)
  %6 = ptrtoint ptr %5 to i64
  %7 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_(i64 %arg1, i64 %6, i64 %4, i64 %2)
  %8 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr %7)
  %9 = inttoptr i64 %arg1 to ptr
  %10 = inttoptr i64 %8 to ptr
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS1_(ptr %9, i64 %arg2, ptr %10)
  %12 = icmp eq i64 %8, 0
  br i1 %12, label %dec_label_pc_7d09a, label %dec_label_pc_7d080

dec_label_pc_7d080:                               ; preds = %dec_label_pc_7cfd8
  %13 = inttoptr i64 %11 to ptr
  %14 = inttoptr i64 %8 to ptr
  %15 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(ptr %9, ptr %13, ptr %14, ptr %7)
  store i64 %15, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7d0c4

dec_label_pc_7d09a:                               ; preds = %dec_label_pc_7cfd8
  %16 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr %9, ptr %7)
  %17 = inttoptr i64 %11 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-72, ptr %17)
  %18 = load i64, ptr %stack_var_-72, align 8
  store i64 %18, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7d0c4

dec_label_pc_7d0c4:                               ; preds = %dec_label_pc_7d09a, %dec_label_pc_7d080
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_7d115, label %dec_label_pc_7d110

dec_label_pc_7d110:                               ; preds = %dec_label_pc_7d0c4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d115

dec_label_pc_7d115:                               ; preds = %dec_label_pc_7d110, %dec_label_pc_7d0c4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_Rb_tree_implIS7_Lb1EEC2ERKSB_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d11e:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-17 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEES6_E17_S_select_on_copyERKS7_(ptr nonnull %stack_var_-17, ptr %arg2)
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEEC2ERKS5_(ptr %result, ptr nonnull %stack_var_-17)
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEED2Ev(ptr nonnull %stack_var_-17)
  call void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2ERKS1_(ptr %result, ptr %arg2)
  %3 = add i64 %0, 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt15_Rb_tree_headerC2Ev(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_7d1ab, label %dec_label_pc_7d1a6

dec_label_pc_7d1a6:                               ; preds = %dec_label_pc_7d11e
  call void @__stack_chk_fail()
  br label %dec_label_pc_7d1ab

dec_label_pc_7d1ab:                               ; preds = %dec_label_pc_7d1a6, %dec_label_pc_7d11e
  ret void
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(ptr %result) local_unnamed_addr {
dec_label_pc_7d1ae:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_rootEv(ptr %result) local_unnamed_addr {
dec_label_pc_7d1c4:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  ret i64 %1
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyERKS9_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d1da:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeC2ERS9_(ptr nonnull %stack_var_-24, ptr %result)
  %1 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ERKS9_RT0_(ptr %result, ptr %arg2, ptr nonnull %stack_var_-24)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7d23b, label %dec_label_pc_7d236

dec_label_pc_7d236:                               ; preds = %dec_label_pc_7d1da
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d23b

dec_label_pc_7d23b:                               ; preds = %dec_label_pc_7d236, %dec_label_pc_7d1da
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7d23e:
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_7d24d:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = add i64 %0, 24
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_7d263:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d27a:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %arg2)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %arg2)
  ret i64 %1
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE9_M_mbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_7d2b8:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11lower_boundERS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d2ce:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(ptr %result)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(ptr %result)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS1_(ptr %result, ptr %2, ptr %3, ptr %arg2)
  ret i64 %4
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7d31e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_7d36c, label %dec_label_pc_7d367

dec_label_pc_7d367:                               ; preds = %dec_label_pc_7d31e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d36c

dec_label_pc_7d36c:                               ; preds = %dec_label_pc_7d367, %dec_label_pc_7d31e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8key_compEv(ptr %result) local_unnamed_addr {
dec_label_pc_7d36e:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7d37e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 32
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPlEE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEPSt13_Rb_tree_nodeIS3_EDpOT_(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_7d3a0:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_get_nodeEv(ptr %0)
  %2 = inttoptr i64 %arg4 to ptr
  %3 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = inttoptr i64 %arg3 to ptr
  %6 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = inttoptr i64 %arg2 to ptr
  %9 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %8)
  %10 = ptrtoint ptr %9 to i64
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_(i64 %arg1, i64 %1, i64 %10, i64 %7, i64 %4)
  %11 = inttoptr i64 %1 to ptr
  ret ptr %11
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS1_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7d420:
  %rax.1.reg2mem = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-64 = alloca i64, align 8
  %stack_var_-80 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-104, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKiPlEE13_M_const_castEv(ptr nonnull %stack_var_-104)
  store i64 %1, ptr %stack_var_-80, align 8
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(ptr %result)
  %3 = icmp eq i64 %1, %2
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_7d51a, label %dec_label_pc_7d476

dec_label_pc_7d476:                               ; preds = %dec_label_pc_7d420
  %5 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE4sizeEv(ptr %result)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %dec_label_pc_7d4c2, label %dec_label_pc_7d487

dec_label_pc_7d487:                               ; preds = %dec_label_pc_7d476
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(ptr %result)
  %8 = inttoptr i64 %7 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %10)
  %12 = inttoptr i64 %11 to ptr
  %13 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %12, ptr %arg3)
  %14 = trunc i64 %13 to i8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %dec_label_pc_7d4c2, label %dec_label_pc_7d4cb

dec_label_pc_7d4c2:                               ; preds = %dec_label_pc_7d487, %dec_label_pc_7d476
  %16 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg3)
  store i64 %16, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d4cb:                               ; preds = %dec_label_pc_7d487
  %17 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(ptr %result)
  store i64 0, ptr %stack_var_-64, align 8
  %18 = bitcast ptr %stack_var_-64 to ptr
  %19 = inttoptr i64 %17 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %18, ptr %19)
  %20 = load i64, ptr %stack_var_-56, align 8
  store i64 %20, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d51a:                               ; preds = %dec_label_pc_7d420
  %21 = inttoptr i64 %1 to ptr
  %22 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %21)
  %23 = inttoptr i64 %22 to ptr
  %24 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg3, ptr %23)
  %25 = trunc i64 %24 to i8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %dec_label_pc_7d658, label %dec_label_pc_7d544

dec_label_pc_7d544:                               ; preds = %dec_label_pc_7d51a
  store i64 %1, ptr %stack_var_-72, align 8
  %27 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(ptr %result)
  %28 = inttoptr i64 %27 to ptr
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %1, %29
  %31 = icmp eq i1 %30, false
  br i1 %31, label %dec_label_pc_7d5a6, label %dec_label_pc_7d569

dec_label_pc_7d569:                               ; preds = %dec_label_pc_7d544
  %32 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(ptr %result)
  %33 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(ptr %result)
  %34 = inttoptr i64 %33 to ptr
  %35 = inttoptr i64 %32 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr %34, ptr %35)
  %36 = load i64, ptr %stack_var_-56, align 8
  store i64 %36, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d5a6:                               ; preds = %dec_label_pc_7d544
  %37 = call i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEmmEv(ptr nonnull %stack_var_-72)
  %38 = inttoptr i64 %37 to ptr
  %39 = load i64, ptr %38, align 8
  %40 = inttoptr i64 %39 to ptr
  %41 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %40)
  %42 = inttoptr i64 %41 to ptr
  %43 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %42, ptr %arg3)
  %44 = trunc i64 %43 to i8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %dec_label_pc_7d640, label %dec_label_pc_7d5da

dec_label_pc_7d5da:                               ; preds = %dec_label_pc_7d5a6
  %46 = load i64, ptr %stack_var_-72, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %47)
  %49 = icmp eq i64 %48, 0
  %50 = icmp eq i1 %49, false
  br i1 %50, label %dec_label_pc_7d61c, label %dec_label_pc_7d5f0

dec_label_pc_7d5f0:                               ; preds = %dec_label_pc_7d5da
  store i64 0, ptr %stack_var_-64, align 8
  %51 = bitcast ptr %stack_var_-64 to ptr
  %52 = bitcast ptr %stack_var_-72 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %51, ptr nonnull %52)
  %53 = load i64, ptr %stack_var_-56, align 8
  store i64 %53, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d61c:                               ; preds = %dec_label_pc_7d5da
  %54 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %54, ptr nonnull %54)
  %55 = load i64, ptr %stack_var_-56, align 8
  store i64 %55, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d640:                               ; preds = %dec_label_pc_7d5a6
  %56 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg3)
  store i64 %56, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d658:                               ; preds = %dec_label_pc_7d51a
  %57 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %21)
  %58 = inttoptr i64 %57 to ptr
  %59 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %58, ptr %arg3)
  %60 = trunc i64 %59 to i8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %dec_label_pc_7d787, label %dec_label_pc_7d685

dec_label_pc_7d685:                               ; preds = %dec_label_pc_7d658
  %62 = load i64, ptr %stack_var_-80, align 8
  store i64 %62, ptr %stack_var_-72, align 8
  %63 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(ptr %result)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = icmp eq i64 %62, %65
  %67 = icmp eq i1 %66, false
  br i1 %67, label %dec_label_pc_7d6e1, label %dec_label_pc_7d6aa

dec_label_pc_7d6aa:                               ; preds = %dec_label_pc_7d685
  %68 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(ptr %result)
  store i64 0, ptr %stack_var_-64, align 8
  %69 = bitcast ptr %stack_var_-64 to ptr
  %70 = inttoptr i64 %68 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %69, ptr %70)
  %71 = load i64, ptr %stack_var_-56, align 8
  store i64 %71, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d6e1:                               ; preds = %dec_label_pc_7d685
  %72 = call i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEppEv(ptr nonnull %stack_var_-72)
  %73 = inttoptr i64 %72 to ptr
  %74 = load i64, ptr %73, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %75)
  %77 = inttoptr i64 %76 to ptr
  %78 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg3, ptr %77)
  %79 = trunc i64 %78 to i8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %dec_label_pc_7d772, label %dec_label_pc_7d712

dec_label_pc_7d712:                               ; preds = %dec_label_pc_7d6e1
  %81 = load i64, ptr %stack_var_-80, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %82)
  %84 = icmp eq i64 %83, 0
  %85 = icmp eq i1 %84, false
  br i1 %85, label %dec_label_pc_7d751, label %dec_label_pc_7d728

dec_label_pc_7d728:                               ; preds = %dec_label_pc_7d712
  store i64 0, ptr %stack_var_-64, align 8
  %86 = bitcast ptr %stack_var_-64 to ptr
  %87 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %86, ptr nonnull %87)
  %88 = load i64, ptr %stack_var_-56, align 8
  store i64 %88, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d751:                               ; preds = %dec_label_pc_7d712
  %89 = bitcast ptr %stack_var_-72 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %89, ptr nonnull %89)
  %90 = load i64, ptr %stack_var_-56, align 8
  store i64 %90, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d772:                               ; preds = %dec_label_pc_7d6e1
  %91 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg3)
  store i64 %91, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d787:                               ; preds = %dec_label_pc_7d658
  store i64 0, ptr %stack_var_-64, align 8
  %92 = bitcast ptr %stack_var_-80 to ptr
  %93 = bitcast ptr %stack_var_-64 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(ptr nonnull %stack_var_-56, ptr nonnull %92, ptr nonnull %93)
  %94 = load i64, ptr %stack_var_-56, align 8
  store i64 %94, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d7ae

dec_label_pc_7d7ae:                               ; preds = %dec_label_pc_7d787, %dec_label_pc_7d772, %dec_label_pc_7d751, %dec_label_pc_7d728, %dec_label_pc_7d6aa, %dec_label_pc_7d640, %dec_label_pc_7d61c, %dec_label_pc_7d5f0, %dec_label_pc_7d569, %dec_label_pc_7d4c2, %dec_label_pc_7d4cb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %95 = call i64 @__readfsqword(i64 40)
  %96 = icmp eq i64 %0, %95
  store i64 %rax.0.reload, ptr %rax.1.reg2mem, align 8
  br i1 %96, label %dec_label_pc_7d7c2, label %dec_label_pc_7d7bd

dec_label_pc_7d7bd:                               ; preds = %dec_label_pc_7d7ae
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_7d7c2

dec_label_pc_7d7c2:                               ; preds = %dec_label_pc_7d7bd, %dec_label_pc_7d7ae
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr %arg1) local_unnamed_addr {
dec_label_pc_7d7c8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-17 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNKSt10_Select1stISt4pairIKiPlEEclERKS3_(ptr nonnull %stack_var_-17, ptr %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_7d819, label %dec_label_pc_7d814

dec_label_pc_7d814:                               ; preds = %dec_label_pc_7d7c8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d819

dec_label_pc_7d819:                               ; preds = %dec_label_pc_7d814, %dec_label_pc_7d7c8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7d81c:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i1, align 1
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq ptr %arg2, null
  %2 = icmp eq i1 %1, false
  store i1 true, ptr %storemerge.reg2mem, align 1
  br i1 %2, label %dec_label_pc_7d8a0, label %dec_label_pc_7d851

dec_label_pc_7d851:                               ; preds = %dec_label_pc_7d81c
  %3 = ptrtoint ptr %arg3 to i64
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(ptr %result)
  %5 = icmp eq i64 %4, %3
  store i1 true, ptr %storemerge.reg2mem, align 1
  br i1 %5, label %dec_label_pc_7d8a0, label %dec_label_pc_7d863

dec_label_pc_7d863:                               ; preds = %dec_label_pc_7d851
  %6 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %arg3)
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr %arg4)
  %8 = inttoptr i64 %7 to ptr
  %9 = inttoptr i64 %6 to ptr
  %10 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %8, ptr %9)
  %11 = trunc i64 %10 to i8
  %12 = icmp ne i8 %11, 0
  store i1 %12, ptr %storemerge.reg2mem, align 1
  br label %dec_label_pc_7d8a0

dec_label_pc_7d8a0:                               ; preds = %dec_label_pc_7d863, %dec_label_pc_7d81c, %dec_label_pc_7d851
  %13 = ptrtoint ptr %result to i64
  %storemerge.reload = load i1, ptr %storemerge.reg2mem, align 1
  %14 = add i64 %13, 8
  %15 = inttoptr i64 %14 to ptr
  %16 = call i64 @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 %storemerge.reload, ptr %arg4, ptr %arg3, ptr %15)
  %17 = add i64 %13, 40
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, 1
  store i64 %20, ptr %18, align 8
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-40, ptr %arg4)
  %21 = load i64, ptr %stack_var_-40, align 8
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 %21, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_7d8fd, label %dec_label_pc_7d8f8

dec_label_pc_7d8f8:                               ; preds = %dec_label_pc_7d8a0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7d8fd

dec_label_pc_7d8fd:                               ; preds = %dec_label_pc_7d8f8, %dec_label_pc_7d8a0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d906:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEES6_E17_S_select_on_copyERKS7_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d924:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE37select_on_container_copy_constructionERKS6_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_7d96e, label %dec_label_pc_7d969

dec_label_pc_7d969:                               ; preds = %dec_label_pc_7d924
  call void @__stack_chk_fail()
  br label %dec_label_pc_7d96e

dec_label_pc_7d96e:                               ; preds = %dec_label_pc_7d969, %dec_label_pc_7d924
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEEC2ERKS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d974:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEEC2ERKS7_(ptr %result, ptr %arg2)
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeC2ERS9_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7d99e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ERKS9_RT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7d9bc:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(ptr %result)
  %3 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE9_M_mbeginEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = inttoptr i64 %2 to ptr
  %6 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %4, ptr %5, ptr %arg3)
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr %6)
  %8 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(ptr %result)
  %9 = inttoptr i64 %8 to ptr
  store i64 %7, ptr %9, align 8
  %10 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr %6)
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(ptr %result)
  %12 = inttoptr i64 %11 to ptr
  store i64 %10, ptr %12, align 8
  %13 = add i64 %0, 40
  %14 = inttoptr i64 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %1, 40
  %17 = inttoptr i64 %16 to ptr
  store i64 %15, ptr %17, align 8
  ret ptr %6
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7da64:
  %0 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %arg2)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(ptr %result)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE7destroyIS4_EEvRS6_PT_(ptr %2, ptr %3)
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7daa6:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE10deallocateERS6_PS5_m(ptr %1, ptr %arg2, i64 1)
  ret i64 %2
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(ptr %result) local_unnamed_addr {
dec_label_pc_7dae0:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS1_(ptr %result, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7daf6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-64.0.ph.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-56.03.reg2mem = alloca i64, align 8
  %stack_var_-56.0.ph5.reg2mem = alloca i64, align 8
  %stack_var_-64.0.ph6.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg3 to i64
  %stack_var_-40 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq ptr %arg2, null
  %3 = icmp eq i1 %2, false
  store i64 %0, ptr %stack_var_-64.0.ph.lcssa.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7db24.lr.ph.lr.ph, label %dec_label_pc_7db81

dec_label_pc_7db24.lr.ph.lr.ph:                   ; preds = %dec_label_pc_7daf6
  %4 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %stack_var_-64.0.ph6.reg2mem, align 8
  store i64 %4, ptr %stack_var_-56.0.ph5.reg2mem, align 8
  br label %dec_label_pc_7db24.lr.ph

dec_label_pc_7db24.lr.ph:                         ; preds = %dec_label_pc_7db24.lr.ph.lr.ph, %dec_label_pc_7db50
  %stack_var_-56.0.ph5.reload = load i64, ptr %stack_var_-56.0.ph5.reg2mem, align 8
  %stack_var_-64.0.ph6.reload = load i64, ptr %stack_var_-64.0.ph6.reg2mem, align 8
  store i64 %stack_var_-56.0.ph5.reload, ptr %stack_var_-56.03.reg2mem, align 8
  br label %dec_label_pc_7db24

dec_label_pc_7db24:                               ; preds = %dec_label_pc_7db24.lr.ph, %dec_label_pc_7db6a
  %stack_var_-56.03.reload = load i64, ptr %stack_var_-56.03.reg2mem, align 8
  %5 = inttoptr i64 %stack_var_-56.03.reload to ptr
  %6 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr %5)
  %7 = inttoptr i64 %6 to ptr
  %8 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %7, ptr %arg4)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %dec_label_pc_7db6a, label %dec_label_pc_7db50

dec_label_pc_7db50:                               ; preds = %dec_label_pc_7db24
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %5)
  %12 = icmp eq i64 %11, 0
  %13 = icmp eq i1 %12, false
  store i64 %stack_var_-56.03.reload, ptr %stack_var_-64.0.ph6.reg2mem, align 8
  store i64 %11, ptr %stack_var_-56.0.ph5.reg2mem, align 8
  store i64 %stack_var_-56.03.reload, ptr %stack_var_-64.0.ph.lcssa.reg2mem, align 8
  br i1 %13, label %dec_label_pc_7db24.lr.ph, label %dec_label_pc_7db81

dec_label_pc_7db6a:                               ; preds = %dec_label_pc_7db24
  %14 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %5)
  %15 = icmp eq i64 %14, 0
  %16 = icmp eq i1 %15, false
  store i64 %14, ptr %stack_var_-56.03.reg2mem, align 8
  store i64 %stack_var_-64.0.ph6.reload, ptr %stack_var_-64.0.ph.lcssa.reg2mem, align 8
  br i1 %16, label %dec_label_pc_7db24, label %dec_label_pc_7db81

dec_label_pc_7db81:                               ; preds = %dec_label_pc_7db50, %dec_label_pc_7db6a, %dec_label_pc_7daf6
  %stack_var_-64.0.ph.lcssa.reload = load i64, ptr %stack_var_-64.0.ph.lcssa.reg2mem, align 8
  %17 = inttoptr i64 %stack_var_-64.0.ph.lcssa.reload to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-40, ptr %17)
  %18 = load i64, ptr %stack_var_-40, align 8
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_7dbac, label %dec_label_pc_7dba7

dec_label_pc_7dba7:                               ; preds = %dec_label_pc_7db81
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7dbac

dec_label_pc_7dbac:                               ; preds = %dec_label_pc_7dba7, %dec_label_pc_7db81
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPlEE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7dbb2:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPlEE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7dbd0:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE8allocateERS6_m(ptr %1, i64 1)
  ret i64 %2
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEEvPSt13_Rb_tree_nodeIS3_EDpOT_(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_7dbfc:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZnwmPv(i64 48, ptr %0)
  %2 = inttoptr i64 %arg5 to ptr
  %3 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = inttoptr i64 %arg4 to ptr
  %6 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = inttoptr i64 %arg3 to ptr
  %8 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %7)
  %9 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %0)
  %10 = inttoptr i64 %arg1 to ptr
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(ptr %10)
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %9 to ptr
  %14 = bitcast ptr %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvRS6_PT_DpOT0_(ptr %12, ptr %13, ptr %14, ptr %6, i64 %4)
  ret void
}

define i64 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKiPlEE13_M_const_castEv(ptr %result) local_unnamed_addr {
dec_label_pc_7dcda:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7dd27, label %dec_label_pc_7dd22

dec_label_pc_7dd22:                               ; preds = %dec_label_pc_7dcda
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7dd27

dec_label_pc_7dd27:                               ; preds = %dec_label_pc_7dd22, %dec_label_pc_7dcda
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7dd2a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 40
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE12_M_rightmostEv(ptr %result) local_unnamed_addr {
dec_label_pc_7dd40:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 32
  ret i64 %1
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_7dd56:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr %arg1)
  ret i64 %0
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7dd74:
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-64 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_beginEv(ptr %result)
  store i64 %1, ptr %stack_var_-88, align 8
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_M_endEv(ptr %result)
  store i64 %2, ptr %stack_var_-80, align 8
  %3 = icmp eq i64 %1, 0
  %4 = icmp eq i1 %3, false
  store i64 %1, ptr %.reg2mem, align 8
  br i1 %4, label %dec_label_pc_7ddbe, label %dec_label_pc_7de18.thread

dec_label_pc_7de18.thread:                        ; preds = %dec_label_pc_7dd74
  %5 = inttoptr i64 %2 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-72, ptr %5)
  br label %dec_label_pc_7de31

dec_label_pc_7ddbe:                               ; preds = %dec_label_pc_7dd74, %dec_label_pc_7de0b
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %stack_var_-80, align 8
  %6 = inttoptr i64 %.reload to ptr
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E(ptr %6)
  %8 = inttoptr i64 %7 to ptr
  %9 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg2, ptr %8)
  %10 = trunc i64 %9 to i8
  %11 = icmp eq i8 %10, 0
  %12 = load i64, ptr %stack_var_-88, align 8
  %13 = inttoptr i64 %12 to ptr
  br i1 %11, label %dec_label_pc_7ddff, label %dec_label_pc_7ddf1

dec_label_pc_7ddf1:                               ; preds = %dec_label_pc_7ddbe
  %14 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %13)
  store i64 %14, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7de0b

dec_label_pc_7ddff:                               ; preds = %dec_label_pc_7ddbe
  %15 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %13)
  store i64 %15, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7de0b

dec_label_pc_7de0b:                               ; preds = %dec_label_pc_7ddff, %dec_label_pc_7ddf1
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  store i64 %storemerge.reload, ptr %stack_var_-88, align 8
  %16 = icmp eq i64 %storemerge.reload, 0
  %17 = icmp eq i1 %16, false
  store i64 %storemerge.reload, ptr %.reg2mem, align 8
  br i1 %17, label %dec_label_pc_7ddbe, label %dec_label_pc_7de18

dec_label_pc_7de18:                               ; preds = %dec_label_pc_7de0b
  %.pre = load i64, ptr %stack_var_-80, align 8
  %18 = inttoptr i64 %.pre to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-72, ptr %18)
  br i1 %11, label %dec_label_pc_7de85, label %dec_label_pc_7de31

dec_label_pc_7de31:                               ; preds = %dec_label_pc_7de18.thread, %dec_label_pc_7de18
  %19 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE5beginEv(ptr %result)
  store i64 %19, ptr %stack_var_-56, align 8
  %20 = call i64 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiPlEES6_(ptr nonnull %stack_var_-72, ptr nonnull %stack_var_-56)
  %21 = trunc i64 %20 to i8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %dec_label_pc_7de79, label %dec_label_pc_7de58

dec_label_pc_7de58:                               ; preds = %dec_label_pc_7de31
  %23 = bitcast ptr %stack_var_-88 to ptr
  %24 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiPlEERS1_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %23, ptr nonnull %24)
  br label %dec_label_pc_7def6

dec_label_pc_7de79:                               ; preds = %dec_label_pc_7de31
  %25 = call i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEmmEv(ptr nonnull %stack_var_-72)
  br label %dec_label_pc_7de85

dec_label_pc_7de85:                               ; preds = %dec_label_pc_7de79, %dec_label_pc_7de18
  %26 = load i64, ptr %stack_var_-72, align 8
  %27 = inttoptr i64 %26 to ptr
  %28 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %27)
  %29 = inttoptr i64 %28 to ptr
  %30 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %29, ptr %arg2)
  %31 = trunc i64 %30 to i8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %dec_label_pc_7decf, label %dec_label_pc_7deae

dec_label_pc_7deae:                               ; preds = %dec_label_pc_7de85
  %33 = bitcast ptr %stack_var_-88 to ptr
  %34 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiPlEERS1_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %33, ptr nonnull %34)
  br label %dec_label_pc_7def6

dec_label_pc_7decf:                               ; preds = %dec_label_pc_7de85
  store i64 0, ptr %stack_var_-64, align 8
  %35 = bitcast ptr %stack_var_-72 to ptr
  %36 = bitcast ptr %stack_var_-64 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(ptr nonnull %stack_var_-56, ptr nonnull %35, ptr nonnull %36)
  br label %dec_label_pc_7def6

dec_label_pc_7def6:                               ; preds = %dec_label_pc_7decf, %dec_label_pc_7deae, %dec_label_pc_7de58
  %rax.0 = load i64, ptr %stack_var_-56, align 8
  %37 = call i64 @__readfsqword(i64 40)
  %38 = icmp eq i64 %0, %37
  store i64 %rax.0, ptr %rax.1.reg2mem, align 8
  br i1 %38, label %dec_label_pc_7df0a, label %dec_label_pc_7df05

dec_label_pc_7df05:                               ; preds = %dec_label_pc_7def6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_7df0a

dec_label_pc_7df0a:                               ; preds = %dec_label_pc_7df05, %dec_label_pc_7def6
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_leftmostEv(ptr %result) local_unnamed_addr {
dec_label_pc_7df10:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 24
  ret i64 %1
}

define i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_7df26:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr %result)
  store i64 %1, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_7df52:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr %result)
  store i64 %1, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7df7e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 32
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPlEE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNKSt10_Select1stISt4pairIKiPlEEclERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7dfa0:
  %0 = ptrtoint ptr %arg2 to i64
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE37select_on_container_copy_constructionERKS6_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7dfb6:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiPlEEEC2ERKS5_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEEC2ERKS7_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7dfe4:
  ret void
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7dff8:
  %stack_var_-64.01.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_M_clone_nodeILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_RT0_(ptr %result, ptr %arg2, ptr %arg4)
  %3 = ptrtoint ptr %2 to i64
  %4 = add i64 %3, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  %6 = add i64 %1, 24
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %dec_label_pc_7e074, label %dec_label_pc_7e049

dec_label_pc_7e049:                               ; preds = %dec_label_pc_7dff8
  %10 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %arg2)
  %11 = inttoptr i64 %10 to ptr
  %12 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %11, ptr %2, ptr %arg4)
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %3, 24
  %15 = inttoptr i64 %14 to ptr
  store i64 %13, ptr %15, align 8
  br label %dec_label_pc_7e074

dec_label_pc_7e074:                               ; preds = %dec_label_pc_7e049, %dec_label_pc_7dff8
  %16 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %arg2)
  %17 = icmp eq i64 %16, 0
  %18 = icmp eq i1 %17, false
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  store i64 %3, ptr %stack_var_-64.01.reg2mem, align 8
  br i1 %18, label %dec_label_pc_7e091, label %dec_label_pc_7e11f

dec_label_pc_7e091:                               ; preds = %dec_label_pc_7e074, %dec_label_pc_7e0fc
  %stack_var_-64.01.reload = load i64, ptr %stack_var_-64.01.reg2mem, align 8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %19 = inttoptr i64 %storemerge2.reload to ptr
  %20 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_M_clone_nodeILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_RT0_(ptr %result, ptr %19, ptr %arg4)
  %21 = ptrtoint ptr %20 to i64
  %22 = add i64 %stack_var_-64.01.reload, 16
  %23 = inttoptr i64 %22 to ptr
  store i64 %21, ptr %23, align 8
  %24 = add i64 %21, 8
  %25 = inttoptr i64 %24 to ptr
  store i64 %stack_var_-64.01.reload, ptr %25, align 8
  %26 = add i64 %storemerge2.reload, 24
  %27 = inttoptr i64 %26 to ptr
  %28 = load i64, ptr %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %dec_label_pc_7e0fc, label %dec_label_pc_7e0d1

dec_label_pc_7e0d1:                               ; preds = %dec_label_pc_7e091
  %30 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %19)
  %31 = inttoptr i64 %30 to ptr
  %32 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_M_copyILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %31, ptr %20, ptr %arg4)
  %33 = ptrtoint ptr %32 to i64
  %34 = add i64 %21, 24
  %35 = inttoptr i64 %34 to ptr
  store i64 %33, ptr %35, align 8
  br label %dec_label_pc_7e0fc

dec_label_pc_7e0fc:                               ; preds = %dec_label_pc_7e0d1, %dec_label_pc_7e091
  %36 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %19)
  %37 = icmp eq i64 %36, 0
  %38 = icmp eq i1 %37, false
  store i64 %36, ptr %storemerge2.reg2mem, align 8
  store i64 %21, ptr %stack_var_-64.01.reg2mem, align 8
  br i1 %38, label %dec_label_pc_7e091, label %dec_label_pc_7e11f

dec_label_pc_7e11f:                               ; preds = %dec_label_pc_7e0fc, %dec_label_pc_7e074
  ret ptr %2
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_7e166:
  %0 = call i64 @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr %arg1)
  ret i64 %0
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_7e184:
  %0 = call i64 @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr %arg1)
  ret i64 %0
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e1a2:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE7destroyIS4_EEvRS6_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7e1b4:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE7destroyIS5_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE10deallocateERS6_PS5_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7e1de:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE10deallocateEPS6_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiPlEE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e210:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE8allocateERS6_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_7e222:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE9constructIS4_JRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvRS6_PT_DpOT0_(ptr %this, ptr %result, ptr %arg3, ptr %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_7e250:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %this to i64
  %2 = inttoptr i64 %arg5 to ptr
  %3 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg4)
  %6 = ptrtoint ptr %5 to i64
  %7 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg3)
  %8 = ptrtoint ptr %7 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE9constructIS5_JRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvPT_DpOT0_(i64 %1, i64 %0, i64 %8, i64 %6, i64 %4)
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e2c0:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 24
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiPlEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-24, ptr %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_7e30e, label %dec_label_pc_7e309

dec_label_pc_7e309:                               ; preds = %dec_label_pc_7e2c0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7e30e

dec_label_pc_7e30e:                               ; preds = %dec_label_pc_7e309, %dec_label_pc_7e2c0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiPlEERS1_Lb1EEEOT_OT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7e310:
  %0 = ptrtoint ptr %result to i64
  %1 = bitcast ptr %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKiPlEEEOT_RNSt16remove_referenceIS8_E4typeE(ptr %1)
  %3 = load ptr, ptr %2, align 8
  %4 = ptrtoint ptr %3 to i64
  store i64 %4, ptr %result, align 8
  %5 = bitcast ptr %arg3 to ptr
  %6 = call ptr @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %7 to i64
  %9 = add i64 %0, 8
  %10 = inttoptr i64 %9 to ptr
  store i64 %8, ptr %10, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPlEE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e358:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPlEE7_M_addrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE13_M_clone_nodeILb0ENS9_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS3_ESE_RT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7e376:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call ptr @_ZSt7forwardIRKSt4pairIKiPlEEOT_RNSt16remove_referenceIS6_E4typeE(ptr %3)
  %5 = call ptr @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeclIRKS3_EEPSt13_Rb_tree_nodeIS3_EOT_(ptr %arg3, ptr %4)
  %6 = ptrtoint ptr %5 to i64
  %7 = trunc i64 %1 to i32
  %8 = bitcast ptr %5 to ptr
  store i32 %7, ptr %8, align 4
  %9 = add i64 %6, 16
  %10 = inttoptr i64 %9 to ptr
  store i64 0, ptr %10, align 8
  %11 = add i64 %6, 24
  %12 = inttoptr i64 %11 to ptr
  store i64 0, ptr %12, align 8
  ret ptr %5
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE7destroyIS5_EEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7e3e2:
  ret void
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE10deallocateEPS6_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7e3f6:
  %0 = mul i64 %arg3, 48
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e434:
  ret i64 192153584101141162
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7e44c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_7e49e, label %dec_label_pc_7e484

dec_label_pc_7e484:                               ; preds = %dec_label_pc_7e44c
  %6 = icmp ult i64 %arg2, 384307168202282326
  br i1 %6, label %dec_label_pc_7e499, label %dec_label_pc_7e494

dec_label_pc_7e494:                               ; preds = %dec_label_pc_7e484
  %7 = call i64 @anon2()
  br label %dec_label_pc_7e499

dec_label_pc_7e499:                               ; preds = %dec_label_pc_7e494, %dec_label_pc_7e484
  %8 = call i64 @anon3()
  br label %dec_label_pc_7e49e

dec_label_pc_7e49e:                               ; preds = %dec_label_pc_7e499, %dec_label_pc_7e44c
  %9 = mul i64 %arg2, 48
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE9constructIS5_JRKSt21piecewise_construct_tSt5tupleIJOiEESC_IJEEEEEvPT_DpOT0_(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_7e4ba:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = inttoptr i64 %arg3 to ptr
  %2 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %1)
  %3 = inttoptr i64 %arg4 to ptr
  %4 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %3)
  %5 = ptrtoint ptr %4 to i64
  call void @_ZNSt5tupleIJOiEEC2EOS1_(ptr nonnull %stack_var_-56, ptr %4)
  %6 = inttoptr i64 %arg5 to ptr
  %7 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %6)
  %8 = inttoptr i64 %arg2 to ptr
  %9 = call ptr @_ZnwmPv(i64 16, ptr %8)
  %10 = ptrtoint ptr %stack_var_-56 to i64
  %11 = bitcast ptr %9 to ptr
  call void @_ZNSt4pairIKiPlEC2IJOiEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE(ptr %11, i64 %10, i64 %5, i64 %arg4)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_7e57a, label %dec_label_pc_7e575

dec_label_pc_7e575:                               ; preds = %dec_label_pc_7e4ba
  call void @__stack_chk_fail()
  br label %dec_label_pc_7e57a

dec_label_pc_7e57a:                               ; preds = %dec_label_pc_7e575, %dec_label_pc_7e4ba
  ret void
}

define ptr @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKiPlEEEOT_RNSt16remove_referenceIS8_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_7e585:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiPlEE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_7e598:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt7forwardIRKSt4pairIKiPlEEOT_RNSt16remove_referenceIS6_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_7e5aa:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define ptr @_ZNKSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_Alloc_nodeclIRKS3_EEPSt13_Rb_tree_nodeIS3_EOT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_7e5bc:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKSt4pairIKiPlEEOT_RNSt16remove_referenceIS6_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt13_Rb_tree_nodeIS3_EDpOT_(ptr %result, i64 %2)
  ret ptr %3
}

define void @_ZNSt4pairIKiPlEC2IJOiEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES6_IJDpT0_EE(ptr %result, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_7e5f6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-25 = alloca i64, align 8
  %2 = inttoptr i64 %arg2 to ptr
  call void @_ZNSt4pairIKiPlEC2IJOiEJLm0EEJEJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE(ptr %result, ptr %2, ptr nonnull %stack_var_-25, i64 %arg2, i64 %1)
  ret void
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE14_M_create_nodeIJRKS3_EEEPSt13_Rb_tree_nodeIS3_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7e624:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE11_M_get_nodeEv(ptr %result)
  %1 = inttoptr i64 %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIRKSt4pairIKiPlEEOT_RNSt16remove_referenceIS6_E4typeE(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  %4 = inttoptr i64 %0 to ptr
  call void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr %result, ptr %4, i64 %3)
  ret ptr %4
}

define void @_ZNSt4pairIKiPlEC2IJOiEJLm0EEJEJEEERSt5tupleIJDpT_EERS5_IJDpT1_EESt12_Index_tupleIJXspT0_EEESE_IJXspT2_EEE(ptr %result, ptr %arg2, ptr %arg3, i64 %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_7e670:
  %0 = ptrtoint ptr %result to i64
  %1 = call ptr @_ZSt3getILm0EJOiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_(ptr %arg2)
  %2 = call ptr @_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE(ptr %1)
  %3 = bitcast ptr %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = bitcast ptr %result to ptr
  store i32 %4, ptr %5, align 4
  %6 = add i64 %0, 8
  %7 = inttoptr i64 %6 to ptr
  store i64 0, ptr %7, align 8
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7e6b4:
  %0 = call ptr @_ZnwmPv(i64 48, ptr %arg2)
  %1 = inttoptr i64 %arg3 to ptr
  %2 = call ptr @_ZSt7forwardIRKSt4pairIKiPlEEOT_RNSt16remove_referenceIS6_E4typeE(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  %4 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiPlEE9_M_valptrEv(ptr %arg2)
  %5 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiPlESt10_Select1stIS3_ESt4lessIiESaIS3_EE21_M_get_Node_allocatorEv(ptr %result)
  %6 = inttoptr i64 %5 to ptr
  %7 = inttoptr i64 %4 to ptr
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_(ptr %6, ptr %7, i64 %3)
  ret void
}

define void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiPlEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7e722:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKSt4pairIKiPlEEOT_RNSt16remove_referenceIS6_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE9constructIS5_JRKS5_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiPlEEE9constructIS5_JRKS5_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7e760:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKSt4pairIKiPlEEOT_RNSt16remove_referenceIS6_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZnwmPv(i64 16, ptr %arg2)
  %4 = ptrtoint ptr %3 to i64
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %5 to i64
  %7 = add i64 %2, 8
  %8 = inttoptr i64 %7 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = bitcast ptr %3 to ptr
  store i64 %6, ptr %10, align 8
  %11 = add i64 %4, 8
  %12 = inttoptr i64 %11 to ptr
  store i64 %9, ptr %12, align 8
  ret void
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_821ac:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-88 = alloca i32, align 4
  %stack_var_-136 = alloca i64, align 8
  %stack_var_-168 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-168 to i64
  %1 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEC2Ev(ptr nonnull %stack_var_-136)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_82207

dec_label_pc_82207:                               ; preds = %dec_label_pc_82207, %dec_label_pc_821ac
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_8221e, label %dec_label_pc_82207

dec_label_pc_8221e:                               ; preds = %dec_label_pc_82207
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 416
  %4 = sub i64 %0, %constexpr1
  %constexpr2 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr3 = udiv i128 %constexpr2, 16
  %constexpr4 = trunc i128 %constexpr3 to i64
  %constexpr5 = sext i64 %constexpr4 to i128
  %constexpr6 = mul i128 %constexpr5, 16
  %constexpr7 = trunc i128 %constexpr6 to i64
  %constexpr8 = and i64 %constexpr7, -4096
  %5 = sub i64 %4, %constexpr8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_8228e

dec_label_pc_8228e:                               ; preds = %dec_label_pc_8228e, %dec_label_pc_8221e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_822a5, label %dec_label_pc_8228e

dec_label_pc_822a5:                               ; preds = %dec_label_pc_8228e
  %constexpr9 = zext i64 add (i64 ptrtoint (ptr @global_var_328 to i64), i64 15) to i128
  %constexpr10 = udiv i128 %constexpr9, 16
  %constexpr11 = trunc i128 %constexpr10 to i64
  %constexpr12 = sext i64 %constexpr11 to i128
  %constexpr13 = mul i128 %constexpr12, 16
  %constexpr14 = trunc i128 %constexpr13 to i64
  %constexpr15 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr16 = and i64 %constexpr14, %constexpr15
  %constexpr17 = sub i64 0, %constexpr16
  %constexpr18 = add i64 %constexpr17, 15
  %8 = add i64 %5, %constexpr18
  %9 = and i64 %8, -16
  store i32 0, ptr %stack_var_-88, align 4
  %10 = call i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEixEOi(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-88)
  %11 = inttoptr i64 %10 to ptr
  store i64 %9, ptr %11, align 8
  store i32 1, ptr %stack_var_-88, align 4
  %12 = call i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEixEOi(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-88)
  %13 = inttoptr i64 %12 to ptr
  store i64 %9, ptr %13, align 8
  store i32 2, ptr %stack_var_-88, align 4
  %14 = call i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEixEOi(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-88)
  %15 = inttoptr i64 %14 to ptr
  store i64 %9, ptr %15, align 8
  %16 = bitcast ptr %stack_var_-88 to ptr
  call void @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEC2ERKS7_(ptr nonnull %16, ptr nonnull %stack_var_-136)
  %17 = ptrtoint ptr %stack_var_-88 to i64
  %18 = call i64 @anon1(i64 %17)
  call void @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEED2Ev(ptr nonnull %16)
  call void @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEED2Ev(ptr nonnull %stack_var_-136)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_823df, label %dec_label_pc_823da

dec_label_pc_823da:                               ; preds = %dec_label_pc_822a5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_823df

dec_label_pc_823df:                               ; preds = %dec_label_pc_823da, %dec_label_pc_822a5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_824a5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-836 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 2, ptr %stack_var_-836, align 4
  %1 = inttoptr i64 %arg1 to ptr
  %2 = call i64 @_ZNSt3mapIiPlSt4lessIiESaISt4pairIKiS0_EEEixEOi(ptr %1, ptr nonnull %stack_var_-836)
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @memmove(ptr %6, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %8 = load i64, ptr %6, align 8
  call void @printLongLongLine(i64 %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_82553, label %dec_label_pc_8254e

dec_label_pc_8254e:                               ; preds = %dec_label_pc_824a5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_82553

dec_label_pc_82553:                               ; preds = %dec_label_pc_8254e, %dec_label_pc_824a5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1, ptr, ptr, ptr) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i64 @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

