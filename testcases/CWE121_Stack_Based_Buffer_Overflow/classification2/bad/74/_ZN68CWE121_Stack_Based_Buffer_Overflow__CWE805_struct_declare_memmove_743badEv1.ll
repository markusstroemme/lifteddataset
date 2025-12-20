@global_var_2f19b = external constant i64
@global_var_30136 = external constant [10 x i8]
@0 = external global i32
@global_var_320 = external constant i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_1d0e4:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr %arg1) local_unnamed_addr {
dec_label_pc_2068f:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  store i64 %0, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_206a9

dec_label_pc_206a9:                               ; preds = %dec_label_pc_206a9, %dec_label_pc_2068f
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %1 = add i64 %storemerge.reload, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %storemerge.reg2mem, align 8
  br i1 %5, label %dec_label_pc_206a9, label %dec_label_pc_206b6

dec_label_pc_206b6:                               ; preds = %dec_label_pc_206a9
  ret i64 %storemerge.reload
}

define i64 @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr %arg1) local_unnamed_addr {
dec_label_pc_206bc:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  store i64 %0, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_206d6

dec_label_pc_206d6:                               ; preds = %dec_label_pc_206d6, %dec_label_pc_206bc
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %1 = add i64 %storemerge.reload, 24
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %storemerge.reg2mem, align 8
  br i1 %5, label %dec_label_pc_206d6, label %dec_label_pc_206e3

dec_label_pc_206e3:                               ; preds = %dec_label_pc_206d6
  ret i64 %storemerge.reload
}

define void @_ZNSt15_Rb_tree_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_206ea:
  %0 = bitcast ptr %result to ptr
  store i32 0, ptr %0, align 4
  %1 = call i64 @_ZNSt15_Rb_tree_header8_M_resetEv(ptr %result)
  ret void
}

define i64 @_ZNSt15_Rb_tree_header8_M_resetEv(ptr %result) local_unnamed_addr {
dec_label_pc_20714:
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

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20754:
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20774:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20794:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_207b4:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EED2Ev(ptr %result)
  ret void
}

define void @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEC2ERKS8_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_207d4:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EEC2ERKSA_(ptr %result, ptr %arg2)
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_207fe:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2Ev(ptr %result)
  call void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2Ev(ptr %result)
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  call void @_ZNSt15_Rb_tree_headerC2Ev(ptr %2)
  ret void
}

define void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_2083a:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_2085a:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_beginEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %1)
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEixEOi(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20898:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-57 = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_(ptr %result, ptr %arg2)
  store i64 %1, ptr %stack_var_-56, align 8
  %2 = call i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEE3endEv(ptr %result)
  store i64 %2, ptr %stack_var_-40, align 8
  %3 = call i64 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEES7_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-40)
  %4 = trunc i64 %3 to i8
  %5 = icmp eq i8 %4, 0
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_2093c, label %dec_label_pc_208fa

dec_label_pc_208fa:                               ; preds = %dec_label_pc_20898
  %7 = call i64 @_ZNKSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEE8key_compEv(ptr %result)
  %8 = call i64 @_ZNKSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEdeEv(ptr nonnull %stack_var_-56)
  %9 = inttoptr i64 %8 to ptr
  %10 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr nonnull %stack_var_-48, ptr %arg2, ptr %9)
  %11 = trunc i64 %10 to i8
  %12 = icmp ne i8 %11, 0
  %phitmp = icmp eq i1 %12, false
  br i1 %phitmp, label %dec_label_pc_20999, label %dec_label_pc_2093c

dec_label_pc_2093c:                               ; preds = %dec_label_pc_20898, %dec_label_pc_208fa
  %13 = ptrtoint ptr %result to i64
  %14 = bitcast ptr %arg2 to ptr
  %15 = call ptr @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(ptr %14)
  %16 = ptrtoint ptr %15 to i64
  %17 = call i64 @_ZSt16forward_as_tupleIJiEESt5tupleIJDpOT_EES3_(ptr nonnull %stack_var_-48, i64 %16)
  call void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKiP14_twoIntsStructEEC2ERKSt17_Rb_tree_iteratorIS4_E(ptr nonnull %stack_var_-40, ptr nonnull %stack_var_-56)
  %18 = load i64, ptr %stack_var_-40, align 8
  %19 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(i64 %13, i64 %18, ptr nonnull @global_var_2f19b, ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-57)
  store i64 %19, ptr %stack_var_-56, align 8
  br label %dec_label_pc_20999

dec_label_pc_20999:                               ; preds = %dec_label_pc_2093c, %dec_label_pc_208fa
  %20 = call i64 @_ZNKSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEdeEv(ptr nonnull %stack_var_-56)
  %21 = add i64 %20, 8
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 %21, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_209bd, label %dec_label_pc_209b8

dec_label_pc_209b8:                               ; preds = %dec_label_pc_20999
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_209bd

dec_label_pc_209bd:                               ; preds = %dec_label_pc_209b8, %dec_label_pc_20999
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EEC2ERKSA_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_209c4:
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2ERKSC_(ptr %result, ptr %arg2)
  %0 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_rootEv(ptr %arg2)
  %1 = icmp eq i64 %0, 0
  %2 = icmp eq i1 %1, false
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_20a47, label %dec_label_pc_20a02

dec_label_pc_20a02:                               ; preds = %dec_label_pc_209c4
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyERKSA_(ptr %result, ptr %arg2)
  %5 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_rootEv(ptr %result)
  %6 = inttoptr i64 %5 to ptr
  store i64 %4, ptr %6, align 8
  br label %dec_label_pc_20a47

dec_label_pc_20a47:                               ; preds = %dec_label_pc_20a02, %dec_label_pc_209c4
  ret void
}

define void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20a4e:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20a6e:
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20a7e:
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20a8e:
  %rax.0.lcssa.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  %1 = icmp eq i1 %0, false
  br i1 %1, label %dec_label_pc_20aa4.lr.ph, label %dec_label_pc_20af4

dec_label_pc_20aa4.lr.ph:                         ; preds = %dec_label_pc_20a8e
  %2 = ptrtoint ptr %arg2 to i64
  store i64 %2, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_20aa4

dec_label_pc_20aa4:                               ; preds = %dec_label_pc_20aa4.lr.ph, %dec_label_pc_20aa4
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %3 = inttoptr i64 %storemerge1.reload to ptr
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %3)
  %5 = inttoptr i64 %4 to ptr
  %6 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %5)
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %3)
  %8 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %3)
  %9 = icmp eq i64 %7, 0
  %10 = icmp eq i1 %9, false
  store i64 %7, ptr %storemerge1.reg2mem, align 8
  store i64 %7, ptr %rax.0.lcssa.reg2mem, align 8
  br i1 %10, label %dec_label_pc_20aa4, label %dec_label_pc_20af4

dec_label_pc_20af4:                               ; preds = %dec_label_pc_20aa4, %dec_label_pc_20a8e
  %rax.0.lcssa.reload = load i64, ptr %rax.0.lcssa.reg2mem, align 8
  ret i64 %rax.0.lcssa.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_20af8:
  %0 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE9_M_mbeginEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEE11lower_boundERS5_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20b16:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11lower_boundERS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_20b40:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE3endEv(ptr %result)
  ret i64 %0
}

define i64 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEES7_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_20b5e:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = zext i1 %1 to i64
  %3 = and i64 %0, -256
  %4 = or i64 %3, %2
  ret i64 %4
}

define i64 @_ZNKSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEE8key_compEv(ptr %result) local_unnamed_addr {
dec_label_pc_20b84:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8key_compEv(ptr %result)
  %3 = and i64 %1, 4294967295
  ret i64 %3
}

define i64 @_ZNKSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_20baa:
  %0 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_20bcc:
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
dec_label_pc_20bf3:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @_ZSt16forward_as_tupleIJiEESt5tupleIJDpOT_EES3_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_20c05:
  %0 = ptrtoint ptr %result to i64
  %1 = inttoptr i64 %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %1)
  call void @_ZNSt5tupleIJOiEEC2IJiELb1ELb1EEEDpOT_(i64 %0)
  ret i64 %0
}

define void @_ZNSt23_Rb_tree_const_iteratorISt4pairIKiP14_twoIntsStructEEC2ERKSt17_Rb_tree_iteratorIS4_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20c3e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4, ptr %arg5) local_unnamed_addr {
dec_label_pc_20c60:
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
  %7 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEEPSt13_Rb_tree_nodeIS4_EDpOT_(i64 %arg1, i64 %6, i64 %4, i64 %2)
  %8 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(ptr %7)
  %9 = inttoptr i64 %arg1 to ptr
  %10 = inttoptr i64 %8 to ptr
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr %9, i64 %arg2, ptr %10)
  %12 = icmp eq i64 %8, 0
  br i1 %12, label %dec_label_pc_20d22, label %dec_label_pc_20d08

dec_label_pc_20d08:                               ; preds = %dec_label_pc_20c60
  %13 = inttoptr i64 %11 to ptr
  %14 = inttoptr i64 %8 to ptr
  %15 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(ptr %9, ptr %13, ptr %14, ptr %7)
  store i64 %15, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_20d4c

dec_label_pc_20d22:                               ; preds = %dec_label_pc_20c60
  %16 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(ptr %9, ptr %7)
  %17 = inttoptr i64 %11 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-72, ptr %17)
  %18 = load i64, ptr %stack_var_-72, align 8
  store i64 %18, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_20d4c

dec_label_pc_20d4c:                               ; preds = %dec_label_pc_20d22, %dec_label_pc_20d08
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_20d9d, label %dec_label_pc_20d98

dec_label_pc_20d98:                               ; preds = %dec_label_pc_20d4c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20d9d

dec_label_pc_20d9d:                               ; preds = %dec_label_pc_20d98, %dec_label_pc_20d4c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_Rb_tree_implIS8_Lb1EEC2ERKSC_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20da6:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-17 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEES7_E17_S_select_on_copyERKS8_(ptr nonnull %stack_var_-17, ptr %arg2)
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2ERKS6_(ptr %result, ptr nonnull %stack_var_-17)
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEED2Ev(ptr nonnull %stack_var_-17)
  call void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2ERKS1_(ptr %result, ptr %arg2)
  %3 = add i64 %0, 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt15_Rb_tree_headerC2Ev(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  br i1 %6, label %dec_label_pc_20e33, label %dec_label_pc_20e2e

dec_label_pc_20e2e:                               ; preds = %dec_label_pc_20da6
  call void @__stack_chk_fail()
  br label %dec_label_pc_20e33

dec_label_pc_20e33:                               ; preds = %dec_label_pc_20e2e, %dec_label_pc_20da6
  ret void
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_rootEv(ptr %result) local_unnamed_addr {
dec_label_pc_20e36:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_rootEv(ptr %result) local_unnamed_addr {
dec_label_pc_20e4c:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  ret i64 %1
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyERKSA_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20e62:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_Alloc_nodeC2ERSA_(ptr nonnull %stack_var_-24, ptr %result)
  %1 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_(ptr %result, ptr %arg2, ptr nonnull %stack_var_-24)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_20ec3, label %dec_label_pc_20ebe

dec_label_pc_20ebe:                               ; preds = %dec_label_pc_20e62
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20ec3

dec_label_pc_20ec3:                               ; preds = %dec_label_pc_20ebe, %dec_label_pc_20e62
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_20ec6:
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_20ed5:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = add i64 %0, 24
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_20eeb:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20f02:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %arg2)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %arg2)
  ret i64 %1
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE9_M_mbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_20f40:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11lower_boundERS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_20f56:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_M_endEv(ptr %result)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_beginEv(ptr %result)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_(ptr %result, ptr %2, ptr %3, ptr %arg2)
  ret i64 %4
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_20fa6:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_20ff4, label %dec_label_pc_20fef

dec_label_pc_20fef:                               ; preds = %dec_label_pc_20fa6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20ff4

dec_label_pc_20ff4:                               ; preds = %dec_label_pc_20fef, %dec_label_pc_20fa6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8key_compEv(ptr %result) local_unnamed_addr {
dec_label_pc_20ff6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_21006:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 32
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_21028:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt5tupleIJOiEEC2IJiELb1ELb1EEEDpOT_(i64 %arg1) local_unnamed_addr {
dec_label_pc_2103a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %2)
  %4 = inttoptr i64 %arg1 to ptr
  call void @_ZNSt11_Tuple_implILm0EJOiEEC2IiEEOT_(ptr %4, ptr %3)
  ret void
}

define ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_21071:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_21083:
  ret ptr %arg1
}

define ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_21095:
  ret ptr %arg1
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEEPSt13_Rb_tree_nodeIS4_EDpOT_(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_210a8:
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_get_nodeEv(ptr %0)
  %2 = inttoptr i64 %arg4 to ptr
  %3 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = inttoptr i64 %arg3 to ptr
  %6 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = inttoptr i64 %arg2 to ptr
  %9 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %8)
  %10 = ptrtoint ptr %9 to i64
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEEvPSt13_Rb_tree_nodeIS4_EDpOT_(i64 %arg1, i64 %1, i64 %10, i64 %7, i64 %4)
  %11 = inttoptr i64 %1 to ptr
  ret ptr %11
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_21128:
  %rax.1.reg2mem = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-64 = alloca i64, align 8
  %stack_var_-80 = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-104, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKiP14_twoIntsStructEE13_M_const_castEv(ptr nonnull %stack_var_-104)
  store i64 %1, ptr %stack_var_-80, align 8
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_M_endEv(ptr %result)
  %3 = icmp eq i64 %1, %2
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_21222, label %dec_label_pc_2117e

dec_label_pc_2117e:                               ; preds = %dec_label_pc_21128
  %5 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE4sizeEv(ptr %result)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %dec_label_pc_211ca, label %dec_label_pc_2118f

dec_label_pc_2118f:                               ; preds = %dec_label_pc_2117e
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_rightmostEv(ptr %result)
  %8 = inttoptr i64 %7 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %10)
  %12 = inttoptr i64 %11 to ptr
  %13 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %12, ptr %arg3)
  %14 = trunc i64 %13 to i8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %dec_label_pc_211ca, label %dec_label_pc_211d3

dec_label_pc_211ca:                               ; preds = %dec_label_pc_2118f, %dec_label_pc_2117e
  %16 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg3)
  store i64 %16, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_211d3:                               ; preds = %dec_label_pc_2118f
  %17 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_rightmostEv(ptr %result)
  store i64 0, ptr %stack_var_-64, align 8
  %18 = bitcast ptr %stack_var_-64 to ptr
  %19 = inttoptr i64 %17 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %18, ptr %19)
  %20 = load i64, ptr %stack_var_-56, align 8
  store i64 %20, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_21222:                               ; preds = %dec_label_pc_21128
  %21 = inttoptr i64 %1 to ptr
  %22 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %21)
  %23 = inttoptr i64 %22 to ptr
  %24 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg3, ptr %23)
  %25 = trunc i64 %24 to i8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %dec_label_pc_21360, label %dec_label_pc_2124c

dec_label_pc_2124c:                               ; preds = %dec_label_pc_21222
  store i64 %1, ptr %stack_var_-72, align 8
  %27 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_leftmostEv(ptr %result)
  %28 = inttoptr i64 %27 to ptr
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %1, %29
  %31 = icmp eq i1 %30, false
  br i1 %31, label %dec_label_pc_212ae, label %dec_label_pc_21271

dec_label_pc_21271:                               ; preds = %dec_label_pc_2124c
  %32 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_leftmostEv(ptr %result)
  %33 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_leftmostEv(ptr %result)
  %34 = inttoptr i64 %33 to ptr
  %35 = inttoptr i64 %32 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr %34, ptr %35)
  %36 = load i64, ptr %stack_var_-56, align 8
  store i64 %36, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_212ae:                               ; preds = %dec_label_pc_2124c
  %37 = call i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEmmEv(ptr nonnull %stack_var_-72)
  %38 = inttoptr i64 %37 to ptr
  %39 = load i64, ptr %38, align 8
  %40 = inttoptr i64 %39 to ptr
  %41 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %40)
  %42 = inttoptr i64 %41 to ptr
  %43 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %42, ptr %arg3)
  %44 = trunc i64 %43 to i8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %dec_label_pc_21348, label %dec_label_pc_212e2

dec_label_pc_212e2:                               ; preds = %dec_label_pc_212ae
  %46 = load i64, ptr %stack_var_-72, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %47)
  %49 = icmp eq i64 %48, 0
  %50 = icmp eq i1 %49, false
  br i1 %50, label %dec_label_pc_21324, label %dec_label_pc_212f8

dec_label_pc_212f8:                               ; preds = %dec_label_pc_212e2
  store i64 0, ptr %stack_var_-64, align 8
  %51 = bitcast ptr %stack_var_-64 to ptr
  %52 = bitcast ptr %stack_var_-72 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %51, ptr nonnull %52)
  %53 = load i64, ptr %stack_var_-56, align 8
  store i64 %53, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_21324:                               ; preds = %dec_label_pc_212e2
  %54 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %54, ptr nonnull %54)
  %55 = load i64, ptr %stack_var_-56, align 8
  store i64 %55, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_21348:                               ; preds = %dec_label_pc_212ae
  %56 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg3)
  store i64 %56, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_21360:                               ; preds = %dec_label_pc_21222
  %57 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %21)
  %58 = inttoptr i64 %57 to ptr
  %59 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %58, ptr %arg3)
  %60 = trunc i64 %59 to i8
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %dec_label_pc_2148f, label %dec_label_pc_2138d

dec_label_pc_2138d:                               ; preds = %dec_label_pc_21360
  %62 = load i64, ptr %stack_var_-80, align 8
  store i64 %62, ptr %stack_var_-72, align 8
  %63 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_rightmostEv(ptr %result)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = icmp eq i64 %62, %65
  %67 = icmp eq i1 %66, false
  br i1 %67, label %dec_label_pc_213e9, label %dec_label_pc_213b2

dec_label_pc_213b2:                               ; preds = %dec_label_pc_2138d
  %68 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_rightmostEv(ptr %result)
  store i64 0, ptr %stack_var_-64, align 8
  %69 = bitcast ptr %stack_var_-64 to ptr
  %70 = inttoptr i64 %68 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %69, ptr %70)
  %71 = load i64, ptr %stack_var_-56, align 8
  store i64 %71, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_213e9:                               ; preds = %dec_label_pc_2138d
  %72 = call i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEppEv(ptr nonnull %stack_var_-72)
  %73 = inttoptr i64 %72 to ptr
  %74 = load i64, ptr %73, align 8
  %75 = inttoptr i64 %74 to ptr
  %76 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %75)
  %77 = inttoptr i64 %76 to ptr
  %78 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg3, ptr %77)
  %79 = trunc i64 %78 to i8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %dec_label_pc_2147a, label %dec_label_pc_2141a

dec_label_pc_2141a:                               ; preds = %dec_label_pc_213e9
  %81 = load i64, ptr %stack_var_-80, align 8
  %82 = inttoptr i64 %81 to ptr
  %83 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %82)
  %84 = icmp eq i64 %83, 0
  %85 = icmp eq i1 %84, false
  br i1 %85, label %dec_label_pc_21459, label %dec_label_pc_21430

dec_label_pc_21430:                               ; preds = %dec_label_pc_2141a
  store i64 0, ptr %stack_var_-64, align 8
  %86 = bitcast ptr %stack_var_-64 to ptr
  %87 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr nonnull %stack_var_-56, ptr nonnull %86, ptr nonnull %87)
  %88 = load i64, ptr %stack_var_-56, align 8
  store i64 %88, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_21459:                               ; preds = %dec_label_pc_2141a
  %89 = bitcast ptr %stack_var_-72 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %89, ptr nonnull %89)
  %90 = load i64, ptr %stack_var_-56, align 8
  store i64 %90, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_2147a:                               ; preds = %dec_label_pc_213e9
  %91 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg3)
  store i64 %91, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_2148f:                               ; preds = %dec_label_pc_21360
  store i64 0, ptr %stack_var_-64, align 8
  %92 = bitcast ptr %stack_var_-80 to ptr
  %93 = bitcast ptr %stack_var_-64 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(ptr nonnull %stack_var_-56, ptr nonnull %92, ptr nonnull %93)
  %94 = load i64, ptr %stack_var_-56, align 8
  store i64 %94, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214b6

dec_label_pc_214b6:                               ; preds = %dec_label_pc_2148f, %dec_label_pc_2147a, %dec_label_pc_21459, %dec_label_pc_21430, %dec_label_pc_213b2, %dec_label_pc_21348, %dec_label_pc_21324, %dec_label_pc_212f8, %dec_label_pc_21271, %dec_label_pc_211ca, %dec_label_pc_211d3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %95 = call i64 @__readfsqword(i64 40)
  %96 = icmp eq i64 %0, %95
  store i64 %rax.0.reload, ptr %rax.1.reg2mem, align 8
  br i1 %96, label %dec_label_pc_214ca, label %dec_label_pc_214c5

dec_label_pc_214c5:                               ; preds = %dec_label_pc_214b6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_214ca

dec_label_pc_214ca:                               ; preds = %dec_label_pc_214c5, %dec_label_pc_214b6
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(ptr %arg1) local_unnamed_addr {
dec_label_pc_214d0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-17 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNKSt10_Select1stISt4pairIKiP14_twoIntsStructEEclERKS4_(ptr nonnull %stack_var_-17, ptr %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_21521, label %dec_label_pc_2151c

dec_label_pc_2151c:                               ; preds = %dec_label_pc_214d0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21521

dec_label_pc_21521:                               ; preds = %dec_label_pc_2151c, %dec_label_pc_214d0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_21524:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i1, align 1
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq ptr %arg2, null
  %2 = icmp eq i1 %1, false
  store i1 true, ptr %storemerge.reg2mem, align 1
  br i1 %2, label %dec_label_pc_215a8, label %dec_label_pc_21559

dec_label_pc_21559:                               ; preds = %dec_label_pc_21524
  %3 = ptrtoint ptr %arg3 to i64
  %4 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_M_endEv(ptr %result)
  %5 = icmp eq i64 %4, %3
  store i1 true, ptr %storemerge.reg2mem, align 1
  br i1 %5, label %dec_label_pc_215a8, label %dec_label_pc_2156b

dec_label_pc_2156b:                               ; preds = %dec_label_pc_21559
  %6 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %arg3)
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(ptr %arg4)
  %8 = inttoptr i64 %7 to ptr
  %9 = inttoptr i64 %6 to ptr
  %10 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %8, ptr %9)
  %11 = trunc i64 %10 to i8
  %12 = icmp ne i8 %11, 0
  store i1 %12, ptr %storemerge.reg2mem, align 1
  br label %dec_label_pc_215a8

dec_label_pc_215a8:                               ; preds = %dec_label_pc_2156b, %dec_label_pc_21524, %dec_label_pc_21559
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
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-40, ptr %arg4)
  %21 = load i64, ptr %stack_var_-40, align 8
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 %21, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_21605, label %dec_label_pc_21600

dec_label_pc_21600:                               ; preds = %dec_label_pc_215a8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21605

dec_label_pc_21605:                               ; preds = %dec_label_pc_21600, %dec_label_pc_215a8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2160e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEES7_E17_S_select_on_copyERKS8_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2162c:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE37select_on_container_copy_constructionERKS7_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_21676, label %dec_label_pc_21671

dec_label_pc_21671:                               ; preds = %dec_label_pc_2162c
  call void @__stack_chk_fail()
  br label %dec_label_pc_21676

dec_label_pc_21676:                               ; preds = %dec_label_pc_21671, %dec_label_pc_2162c
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2ERKS6_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2167c:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2ERKS8_(ptr %result, ptr %arg2)
  ret void
}

define void @_ZNSt20_Rb_tree_key_compareISt4lessIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_216a6:
  ret void
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_Alloc_nodeC2ERSA_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_216ba:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ERKSA_RT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_216d8:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_M_endEv(ptr %result)
  %3 = call i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE9_M_mbeginEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = inttoptr i64 %2 to ptr
  %6 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %4, ptr %5, ptr %arg3)
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr %6)
  %8 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_leftmostEv(ptr %result)
  %9 = inttoptr i64 %8 to ptr
  store i64 %7, ptr %9, align 8
  %10 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr %6)
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_rightmostEv(ptr %result)
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

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_21780:
  %0 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %arg2)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE21_M_get_Node_allocatorEv(ptr %result)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE7destroyIS5_EEvRS7_PT_(ptr %2, ptr %3)
  ret i64 ptrtoint (ptr @0 to i64)
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS4_E(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_217c2:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE21_M_get_Node_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE10deallocateERS7_PS6_m(ptr %1, ptr %arg2, i64 1)
  ret i64 %2
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_M_endEv(ptr %result) local_unnamed_addr {
dec_label_pc_217fc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_(ptr %result, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_21812:
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
  br i1 %3, label %dec_label_pc_21840.lr.ph.lr.ph, label %dec_label_pc_2189d

dec_label_pc_21840.lr.ph.lr.ph:                   ; preds = %dec_label_pc_21812
  %4 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %stack_var_-64.0.ph6.reg2mem, align 8
  store i64 %4, ptr %stack_var_-56.0.ph5.reg2mem, align 8
  br label %dec_label_pc_21840.lr.ph

dec_label_pc_21840.lr.ph:                         ; preds = %dec_label_pc_21840.lr.ph.lr.ph, %dec_label_pc_2186c
  %stack_var_-56.0.ph5.reload = load i64, ptr %stack_var_-56.0.ph5.reg2mem, align 8
  %stack_var_-64.0.ph6.reload = load i64, ptr %stack_var_-64.0.ph6.reg2mem, align 8
  store i64 %stack_var_-56.0.ph5.reload, ptr %stack_var_-56.03.reg2mem, align 8
  br label %dec_label_pc_21840

dec_label_pc_21840:                               ; preds = %dec_label_pc_21840.lr.ph, %dec_label_pc_21886
  %stack_var_-56.03.reload = load i64, ptr %stack_var_-56.03.reg2mem, align 8
  %5 = inttoptr i64 %stack_var_-56.03.reload to ptr
  %6 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(ptr %5)
  %7 = inttoptr i64 %6 to ptr
  %8 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %7, ptr %arg4)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %dec_label_pc_21886, label %dec_label_pc_2186c

dec_label_pc_2186c:                               ; preds = %dec_label_pc_21840
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %5)
  %12 = icmp eq i64 %11, 0
  %13 = icmp eq i1 %12, false
  store i64 %stack_var_-56.03.reload, ptr %stack_var_-64.0.ph6.reg2mem, align 8
  store i64 %11, ptr %stack_var_-56.0.ph5.reg2mem, align 8
  store i64 %stack_var_-56.03.reload, ptr %stack_var_-64.0.ph.lcssa.reg2mem, align 8
  br i1 %13, label %dec_label_pc_21840.lr.ph, label %dec_label_pc_2189d

dec_label_pc_21886:                               ; preds = %dec_label_pc_21840
  %14 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %5)
  %15 = icmp eq i64 %14, 0
  %16 = icmp eq i1 %15, false
  store i64 %14, ptr %stack_var_-56.03.reg2mem, align 8
  store i64 %stack_var_-64.0.ph6.reload, ptr %stack_var_-64.0.ph.lcssa.reg2mem, align 8
  br i1 %16, label %dec_label_pc_21840, label %dec_label_pc_2189d

dec_label_pc_2189d:                               ; preds = %dec_label_pc_2186c, %dec_label_pc_21886, %dec_label_pc_21812
  %stack_var_-64.0.ph.lcssa.reload = load i64, ptr %stack_var_-64.0.ph.lcssa.reg2mem, align 8
  %17 = inttoptr i64 %stack_var_-64.0.ph.lcssa.reload to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-40, ptr %17)
  %18 = load i64, ptr %stack_var_-40, align 8
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  store i64 %18, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_218c8, label %dec_label_pc_218c3

dec_label_pc_218c3:                               ; preds = %dec_label_pc_2189d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_218c8

dec_label_pc_218c8:                               ; preds = %dec_label_pc_218c3, %dec_label_pc_2189d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_218ce:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE7_M_addrEv(ptr %result)
  ret i64 %0
}

define void @_ZNSt11_Tuple_implILm0EJOiEEC2IiEEOT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_218ec:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %0)
  call void @_ZNSt10_Head_baseILm0EOiLb0EEC2IiEEOT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_21924:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE21_M_get_Node_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE8allocateERS7_m(ptr %1, i64 1)
  ret i64 %2
}

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJOiEESF_IJEEEEEvPSt13_Rb_tree_nodeIS4_EDpOT_(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_21950:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZnwmPv(i64 48, ptr %0)
  %2 = inttoptr i64 %arg5 to ptr
  %3 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = inttoptr i64 %arg4 to ptr
  %6 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %5)
  %7 = inttoptr i64 %arg3 to ptr
  %8 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %7)
  %9 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %0)
  %10 = inttoptr i64 %arg1 to ptr
  %11 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE21_M_get_Node_allocatorEv(ptr %10)
  %12 = inttoptr i64 %11 to ptr
  %13 = inttoptr i64 %9 to ptr
  %14 = bitcast ptr %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE9constructIS5_JRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEEvRS7_PT_DpOT0_(ptr %12, ptr %13, ptr %14, ptr %6, i64 %4)
  ret void
}

define i64 @_ZNKSt23_Rb_tree_const_iteratorISt4pairIKiP14_twoIntsStructEE13_M_const_castEv(ptr %result) local_unnamed_addr {
dec_label_pc_21a2e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_21a7b, label %dec_label_pc_21a76

dec_label_pc_21a76:                               ; preds = %dec_label_pc_21a2e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_21a7b

dec_label_pc_21a7b:                               ; preds = %dec_label_pc_21a76, %dec_label_pc_21a2e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_21a7e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 40
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE12_M_rightmostEv(ptr %result) local_unnamed_addr {
dec_label_pc_21a94:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 32
  ret i64 %1
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_21aaa:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(ptr %arg1)
  ret i64 %0
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEERKS1_OT_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_21ac8:
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

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE24_M_get_insert_unique_posERS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_21b08:
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-64 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_M_beginEv(ptr %result)
  store i64 %1, ptr %stack_var_-88, align 8
  %2 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_M_endEv(ptr %result)
  store i64 %2, ptr %stack_var_-80, align 8
  %3 = icmp eq i64 %1, 0
  %4 = icmp eq i1 %3, false
  store i64 %1, ptr %.reg2mem, align 8
  br i1 %4, label %dec_label_pc_21b52, label %dec_label_pc_21bac.thread

dec_label_pc_21bac.thread:                        ; preds = %dec_label_pc_21b08
  %5 = inttoptr i64 %2 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-72, ptr %5)
  br label %dec_label_pc_21bc5

dec_label_pc_21b52:                               ; preds = %dec_label_pc_21b08, %dec_label_pc_21b9f
  %.reload = load i64, ptr %.reg2mem, align 8
  store i64 %.reload, ptr %stack_var_-80, align 8
  %6 = inttoptr i64 %.reload to ptr
  %7 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt13_Rb_tree_nodeIS4_E(ptr %6)
  %8 = inttoptr i64 %7 to ptr
  %9 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %arg2, ptr %8)
  %10 = trunc i64 %9 to i8
  %11 = icmp eq i8 %10, 0
  %12 = load i64, ptr %stack_var_-88, align 8
  %13 = inttoptr i64 %12 to ptr
  br i1 %11, label %dec_label_pc_21b93, label %dec_label_pc_21b85

dec_label_pc_21b85:                               ; preds = %dec_label_pc_21b52
  %14 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %13)
  store i64 %14, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_21b9f

dec_label_pc_21b93:                               ; preds = %dec_label_pc_21b52
  %15 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %13)
  store i64 %15, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_21b9f

dec_label_pc_21b9f:                               ; preds = %dec_label_pc_21b93, %dec_label_pc_21b85
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  store i64 %storemerge.reload, ptr %stack_var_-88, align 8
  %16 = icmp eq i64 %storemerge.reload, 0
  %17 = icmp eq i1 %16, false
  store i64 %storemerge.reload, ptr %.reg2mem, align 8
  br i1 %17, label %dec_label_pc_21b52, label %dec_label_pc_21bac

dec_label_pc_21bac:                               ; preds = %dec_label_pc_21b9f
  %.pre = load i64, ptr %stack_var_-80, align 8
  %18 = inttoptr i64 %.pre to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-72, ptr %18)
  br i1 %11, label %dec_label_pc_21c19, label %dec_label_pc_21bc5

dec_label_pc_21bc5:                               ; preds = %dec_label_pc_21bac.thread, %dec_label_pc_21bac
  %19 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE5beginEv(ptr %result)
  store i64 %19, ptr %stack_var_-56, align 8
  %20 = call i64 @_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEES7_(ptr nonnull %stack_var_-72, ptr nonnull %stack_var_-56)
  %21 = trunc i64 %20 to i8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %dec_label_pc_21c0d, label %dec_label_pc_21bec

dec_label_pc_21bec:                               ; preds = %dec_label_pc_21bc5
  %23 = bitcast ptr %stack_var_-88 to ptr
  %24 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiP14_twoIntsStructEERS1_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %23, ptr nonnull %24)
  br label %dec_label_pc_21c8a

dec_label_pc_21c0d:                               ; preds = %dec_label_pc_21bc5
  %25 = call i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEmmEv(ptr nonnull %stack_var_-72)
  br label %dec_label_pc_21c19

dec_label_pc_21c19:                               ; preds = %dec_label_pc_21c0d, %dec_label_pc_21bac
  %26 = load i64, ptr %stack_var_-72, align 8
  %27 = inttoptr i64 %26 to ptr
  %28 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE6_S_keyEPKSt18_Rb_tree_node_base(ptr %27)
  %29 = inttoptr i64 %28 to ptr
  %30 = call i64 @_ZNKSt4lessIiEclERKiS2_(ptr %result, ptr %29, ptr %arg2)
  %31 = trunc i64 %30 to i8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %dec_label_pc_21c63, label %dec_label_pc_21c42

dec_label_pc_21c42:                               ; preds = %dec_label_pc_21c19
  %33 = bitcast ptr %stack_var_-88 to ptr
  %34 = bitcast ptr %stack_var_-80 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiP14_twoIntsStructEERS1_Lb1EEEOT_OT0_(ptr nonnull %stack_var_-56, ptr nonnull %33, ptr nonnull %34)
  br label %dec_label_pc_21c8a

dec_label_pc_21c63:                               ; preds = %dec_label_pc_21c19
  store i64 0, ptr %stack_var_-64, align 8
  %35 = bitcast ptr %stack_var_-72 to ptr
  %36 = bitcast ptr %stack_var_-64 to ptr
  call void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(ptr nonnull %stack_var_-56, ptr nonnull %35, ptr nonnull %36)
  br label %dec_label_pc_21c8a

dec_label_pc_21c8a:                               ; preds = %dec_label_pc_21c63, %dec_label_pc_21c42, %dec_label_pc_21bec
  %rax.0 = load i64, ptr %stack_var_-56, align 8
  %37 = call i64 @__readfsqword(i64 40)
  %38 = icmp eq i64 %0, %37
  store i64 %rax.0, ptr %rax.1.reg2mem, align 8
  br i1 %38, label %dec_label_pc_21c9e, label %dec_label_pc_21c99

dec_label_pc_21c99:                               ; preds = %dec_label_pc_21c8a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_21c9e

dec_label_pc_21c9e:                               ; preds = %dec_label_pc_21c99, %dec_label_pc_21c8a
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_leftmostEv(ptr %result) local_unnamed_addr {
dec_label_pc_21ca4:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 24
  ret i64 %1
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_21cba:
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

define i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_21d02:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr %result)
  store i64 %1, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_21d2e:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr %result)
  store i64 %1, ptr %result, align 8
  ret i64 %0
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_Lb1EEEOT_RKS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_21d5a:
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

define i64 @_ZNKSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_21d9a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 32
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNKSt10_Select1stISt4pairIKiP14_twoIntsStructEEclERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_21dbc:
  %0 = ptrtoint ptr %arg2 to i64
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE37select_on_container_copy_constructionERKS7_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_21dd2:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2ERKS6_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEC2ERKS8_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_21e00:
  ret void
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_21e14:
  %stack_var_-64.01.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_M_clone_nodeILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_(ptr %result, ptr %arg2, ptr %arg4)
  %3 = ptrtoint ptr %2 to i64
  %4 = add i64 %3, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  %6 = add i64 %1, 24
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %dec_label_pc_21e90, label %dec_label_pc_21e65

dec_label_pc_21e65:                               ; preds = %dec_label_pc_21e14
  %10 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %arg2)
  %11 = inttoptr i64 %10 to ptr
  %12 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %11, ptr %2, ptr %arg4)
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %3, 24
  %15 = inttoptr i64 %14 to ptr
  store i64 %13, ptr %15, align 8
  br label %dec_label_pc_21e90

dec_label_pc_21e90:                               ; preds = %dec_label_pc_21e65, %dec_label_pc_21e14
  %16 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %arg2)
  %17 = icmp eq i64 %16, 0
  %18 = icmp eq i1 %17, false
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  store i64 %3, ptr %stack_var_-64.01.reg2mem, align 8
  br i1 %18, label %dec_label_pc_21ead, label %dec_label_pc_21f3b

dec_label_pc_21ead:                               ; preds = %dec_label_pc_21e90, %dec_label_pc_21f18
  %stack_var_-64.01.reload = load i64, ptr %stack_var_-64.01.reg2mem, align 8
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %19 = inttoptr i64 %storemerge2.reload to ptr
  %20 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_M_clone_nodeILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_(ptr %result, ptr %19, ptr %arg4)
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
  br i1 %29, label %dec_label_pc_21f18, label %dec_label_pc_21eed

dec_label_pc_21eed:                               ; preds = %dec_label_pc_21ead
  %30 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE8_S_rightEPSt18_Rb_tree_node_base(ptr %19)
  %31 = inttoptr i64 %30 to ptr
  %32 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_M_copyILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_PSt18_Rb_tree_node_baseRT0_(ptr %result, ptr %31, ptr %20, ptr %arg4)
  %33 = ptrtoint ptr %32 to i64
  %34 = add i64 %21, 24
  %35 = inttoptr i64 %34 to ptr
  store i64 %33, ptr %35, align 8
  br label %dec_label_pc_21f18

dec_label_pc_21f18:                               ; preds = %dec_label_pc_21eed, %dec_label_pc_21ead
  %36 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE7_S_leftEPSt18_Rb_tree_node_base(ptr %19)
  %37 = icmp eq i64 %36, 0
  %38 = icmp eq i1 %37, false
  store i64 %36, ptr %storemerge2.reg2mem, align 8
  store i64 %21, ptr %stack_var_-64.01.reg2mem, align 8
  br i1 %38, label %dec_label_pc_21ead, label %dec_label_pc_21f3b

dec_label_pc_21f3b:                               ; preds = %dec_label_pc_21f18, %dec_label_pc_21e90
  ret ptr %2
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE10_S_minimumEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_21f82:
  %0 = call i64 @_ZNSt18_Rb_tree_node_base10_S_minimumEPS_(ptr %arg1)
  ret i64 %0
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE10_S_maximumEPSt18_Rb_tree_node_base(ptr %arg1) local_unnamed_addr {
dec_label_pc_21fa0:
  %0 = call i64 @_ZNSt18_Rb_tree_node_base10_S_maximumEPS_(ptr %arg1)
  ret i64 %0
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_21fbe:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE7destroyIS5_EEvRS7_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_21fd0:
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE7destroyIS6_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE10deallocateERS7_PS6_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_21ffa:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE10deallocateEPS7_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_2202c:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt10_Head_baseILm0EOiLb0EEC2IiEEOT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2203e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %result, align 8
  ret void
}

define i64 @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE8allocateERS7_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_22068:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE9constructIS5_JRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEEvRS7_PT_DpOT0_(ptr %this, ptr %result, ptr %arg3, ptr %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_22096:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %this to i64
  %2 = inttoptr i64 %arg5 to ptr
  %3 = call ptr @_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call ptr @_ZSt7forwardISt5tupleIJOiEEEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg4)
  %6 = ptrtoint ptr %5 to i64
  %7 = call ptr @_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg3)
  %8 = ptrtoint ptr %7 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE9constructIS6_JRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEEvPT_DpOT0_(i64 %1, i64 %0, i64 %8, i64 %6, i64 %4)
  ret void
}

define ptr @_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_22106:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_22118:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 24
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  call void @_ZNSt17_Rb_tree_iteratorISt4pairIKiP14_twoIntsStructEEC2EPSt18_Rb_tree_node_base(ptr nonnull %stack_var_-24, ptr %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_22166, label %dec_label_pc_22161

dec_label_pc_22161:                               ; preds = %dec_label_pc_22118
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_22166

dec_label_pc_22166:                               ; preds = %dec_label_pc_22161, %dec_label_pc_22118
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKiP14_twoIntsStructEERS1_Lb1EEEOT_OT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_22168:
  %0 = ptrtoint ptr %result to i64
  %1 = bitcast ptr %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEOT_RNSt16remove_referenceIS9_E4typeE(ptr %1)
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

define i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_221b0:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE7_M_addrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE13_M_clone_nodeILb0ENSA_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS4_ESF_RT0_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_221ce:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call ptr @_ZSt7forwardIRKSt4pairIKiP14_twoIntsStructEEOT_RNSt16remove_referenceIS7_E4typeE(ptr %3)
  %5 = call ptr @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_Alloc_nodeclIRKS4_EEPSt13_Rb_tree_nodeIS4_EOT_(ptr %arg3, ptr %4)
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

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE7destroyIS6_EEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2223a:
  ret void
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE10deallocateEPS7_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_2224e:
  %0 = mul i64 %arg3, 48
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_2228c:
  ret i64 192153584101141162
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_222a4:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_222f6, label %dec_label_pc_222dc

dec_label_pc_222dc:                               ; preds = %dec_label_pc_222a4
  %6 = icmp ult i64 %arg2, 384307168202282326
  br i1 %6, label %dec_label_pc_222f1, label %dec_label_pc_222ec

dec_label_pc_222ec:                               ; preds = %dec_label_pc_222dc
  %7 = call i64 @anon2()
  br label %dec_label_pc_222f1

dec_label_pc_222f1:                               ; preds = %dec_label_pc_222ec, %dec_label_pc_222dc
  %8 = call i64 @anon3()
  br label %dec_label_pc_222f6

dec_label_pc_222f6:                               ; preds = %dec_label_pc_222f1, %dec_label_pc_222a4
  %9 = mul i64 %arg2, 48
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZNSt5tupleIJOiEEC2EOS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_22312:
  call void @_ZNSt11_Tuple_implILm0EJOiEEC2EOS1_(ptr %result, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE9constructIS6_JRKSt21piecewise_construct_tSt5tupleIJOiEESD_IJEEEEEvPT_DpOT0_(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_2233c:
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
  call void @_ZNSt4pairIKiP14_twoIntsStructEC2IJOiEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES7_IJDpT0_EE(ptr %11, i64 %10, i64 %5, i64 %arg4)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_223fc, label %dec_label_pc_223f7

dec_label_pc_223f7:                               ; preds = %dec_label_pc_2233c
  call void @__stack_chk_fail()
  br label %dec_label_pc_223fc

dec_label_pc_223fc:                               ; preds = %dec_label_pc_223f7, %dec_label_pc_2233c
  ret void
}

define ptr @_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEOT_RNSt16remove_referenceIS9_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_22407:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufISt4pairIKiP14_twoIntsStructEE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_2241a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt7forwardIRKSt4pairIKiP14_twoIntsStructEEOT_RNSt16remove_referenceIS7_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_2242c:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define ptr @_ZNKSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_Alloc_nodeclIRKS4_EEPSt13_Rb_tree_nodeIS4_EOT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_2243e:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKSt4pairIKiP14_twoIntsStructEEOT_RNSt16remove_referenceIS7_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_create_nodeIJRKS4_EEEPSt13_Rb_tree_nodeIS4_EDpOT_(ptr %result, i64 %2)
  ret ptr %3
}

define void @_ZNSt11_Tuple_implILm0EJOiEEC2EOS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_22478:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define void @_ZNSt4pairIKiP14_twoIntsStructEC2IJOiEJEEESt21piecewise_construct_tSt5tupleIJDpT_EES7_IJDpT0_EE(ptr %result, i64 %arg2, i64 %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_2249a:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-25 = alloca i64, align 8
  %2 = inttoptr i64 %arg2 to ptr
  call void @_ZNSt4pairIKiP14_twoIntsStructEC2IJOiEJLm0EEJEJEEERSt5tupleIJDpT_EERS6_IJDpT1_EESt12_Index_tupleIJXspT0_EEESF_IJXspT2_EEE(ptr %result, ptr %2, ptr nonnull %stack_var_-25, i64 %arg2, i64 %1)
  ret void
}

define ptr @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE14_M_create_nodeIJRKS4_EEEPSt13_Rb_tree_nodeIS4_EDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_224c8:
  %0 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE11_M_get_nodeEv(ptr %result)
  %1 = inttoptr i64 %arg2 to ptr
  %2 = call ptr @_ZSt7forwardIRKSt4pairIKiP14_twoIntsStructEEOT_RNSt16remove_referenceIS7_E4typeE(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  %4 = inttoptr i64 %0 to ptr
  call void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE17_M_construct_nodeIJRKS4_EEEvPSt13_Rb_tree_nodeIS4_EDpOT_(ptr %result, ptr %4, i64 %3)
  ret ptr %4
}

define void @_ZNSt4pairIKiP14_twoIntsStructEC2IJOiEJLm0EEJEJEEERSt5tupleIJDpT_EERS6_IJDpT1_EESt12_Index_tupleIJXspT0_EEESF_IJXspT2_EEE(ptr %result, ptr %arg2, ptr %arg3, i64 %arg4, i64 %arg5) local_unnamed_addr {
dec_label_pc_22514:
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

define void @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE17_M_construct_nodeIJRKS4_EEEvPSt13_Rb_tree_nodeIS4_EDpOT_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_22558:
  %0 = call ptr @_ZnwmPv(i64 48, ptr %arg2)
  %1 = inttoptr i64 %arg3 to ptr
  %2 = call ptr @_ZSt7forwardIRKSt4pairIKiP14_twoIntsStructEEOT_RNSt16remove_referenceIS7_E4typeE(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  %4 = call i64 @_ZNSt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEE9_M_valptrEv(ptr %arg2)
  %5 = call i64 @_ZNSt8_Rb_treeIiSt4pairIKiP14_twoIntsStructESt10_Select1stIS4_ESt4lessIiESaIS4_EE21_M_get_Node_allocatorEv(ptr %result)
  %6 = inttoptr i64 %5 to ptr
  %7 = inttoptr i64 %4 to ptr
  call void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_(ptr %6, ptr %7, i64 %3)
  ret void
}

define ptr @_ZSt3getILm0EJOiEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_225c6:
  %0 = call ptr @_ZSt12__get_helperILm0EOiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(ptr %arg1)
  %1 = bitcast ptr %0 to ptr
  ret ptr %1
}

define ptr @_ZSt7forwardIOiEOT_RNSt16remove_referenceIS1_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_225e4:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_225f6:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKSt4pairIKiP14_twoIntsStructEEOT_RNSt16remove_referenceIS7_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE9constructIS6_JRKS6_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define ptr @_ZSt12__get_helperILm0EOiJEERT0_RSt11_Tuple_implIXT_EJS1_DpT1_EE(ptr %arg1) local_unnamed_addr {
dec_label_pc_22633:
  %0 = call i64 @_ZNSt11_Tuple_implILm0EJOiEE7_M_headERS1_(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  ret ptr %1
}

define void @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKiP14_twoIntsStructEEE9constructIS6_JRKS6_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_22652:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKSt4pairIKiP14_twoIntsStructEEOT_RNSt16remove_referenceIS7_E4typeE(ptr %0)
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

define i64 @_ZNSt11_Tuple_implILm0EJOiEE7_M_headERS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_226a3:
  %0 = call i64 @_ZNSt10_Head_baseILm0EOiLb0EE7_M_headERS1_(ptr %arg1)
  ret i64 %0
}

define i64 @_ZNSt10_Head_baseILm0EOiLb0EE7_M_headERS1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_226c1:
  %0 = ptrtoint ptr %arg1 to i64
  ret i64 %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_268eb:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-888 = alloca i32, align 4
  %stack_var_-840 = alloca i64, align 8
  %stack_var_-936 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEC2Ev(ptr nonnull %stack_var_-936)
  %1 = ptrtoint ptr %stack_var_-840 to i64
  store i32 0, ptr %stack_var_-888, align 4
  %2 = call i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEixEOi(ptr nonnull %stack_var_-936, ptr nonnull %stack_var_-888)
  %3 = inttoptr i64 %2 to ptr
  store i64 %1, ptr %3, align 8
  store i32 1, ptr %stack_var_-888, align 4
  %4 = call i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEixEOi(ptr nonnull %stack_var_-936, ptr nonnull %stack_var_-888)
  %5 = inttoptr i64 %4 to ptr
  store i64 %1, ptr %5, align 8
  store i32 2, ptr %stack_var_-888, align 4
  %6 = call i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEixEOi(ptr nonnull %stack_var_-936, ptr nonnull %stack_var_-888)
  %7 = inttoptr i64 %6 to ptr
  store i64 %1, ptr %7, align 8
  %8 = bitcast ptr %stack_var_-888 to ptr
  call void @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEC2ERKS8_(ptr nonnull %8, ptr nonnull %stack_var_-936)
  %9 = ptrtoint ptr %stack_var_-888 to i64
  %10 = call i64 @anon1(i64 %9)
  call void @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEED2Ev(ptr nonnull %8)
  call void @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEED2Ev(ptr nonnull %stack_var_-936)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_26a43, label %dec_label_pc_26a3e

dec_label_pc_26a3e:                               ; preds = %dec_label_pc_268eb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26a43

dec_label_pc_26a43:                               ; preds = %dec_label_pc_26a3e, %dec_label_pc_268eb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_26bb7:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-844 = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i32 2, ptr %stack_var_-844, align 4
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt3mapIiP14_twoIntsStructSt4lessIiESaISt4pairIKiS1_EEEixEOi(ptr %2, ptr nonnull %stack_var_-844)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_26c16

dec_label_pc_26c16:                               ; preds = %dec_label_pc_26c16, %dec_label_pc_26bb7
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %6 = mul i64 %storemerge2.reload, 8
  %7 = add i64 %6, %0
  %8 = add i64 %7, -816
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 8
  %10 = add i64 %7, -812
  %11 = inttoptr i64 %10 to ptr
  store i32 0, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26c4c, label %dec_label_pc_26c16

dec_label_pc_26c4c:                               ; preds = %dec_label_pc_26c16
  %13 = inttoptr i64 %5 to ptr
  %14 = inttoptr i64 %5 to ptr
  %15 = call ptr @memmove(ptr %14, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %13)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_26c8e, label %dec_label_pc_26c89

dec_label_pc_26c89:                               ; preds = %dec_label_pc_26c4c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26c8e

dec_label_pc_26c8e:                               ; preds = %dec_label_pc_26c89, %dec_label_pc_26c4c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
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

declare i64 @__readfsqword(i64) local_unnamed_addr

