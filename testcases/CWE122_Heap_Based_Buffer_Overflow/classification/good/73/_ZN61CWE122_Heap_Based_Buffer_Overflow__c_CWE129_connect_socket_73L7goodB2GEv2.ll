@global_var_b9b4c = external constant [10 x i8]
@global_var_b9b78 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_6987 = external constant i16

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_6fdbf:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_71eee:
  %0 = call i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result)
  ret void
}

define i64 @_ZNSt8__detail17_List_node_header7_M_initEv(ptr %result) local_unnamed_addr {
dec_label_pc_71f0e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 %0, ptr %2, align 8
  store i64 %0, ptr %result, align 8
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  store i64 0, ptr %4, align 8
  ret i64 %0
}

define ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_7f67a:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_806ea:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %stack_var_-46 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-148 = alloca i32, align 4
  %stack_var_-136 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr nonnull %stack_var_-136)
  store i32 -1, ptr %stack_var_-148, align 4
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_8081d, label %dec_label_pc_80750

dec_label_pc_80750:                               ; preds = %dec_label_pc_806ea
  %2 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %3 = call i32 @inet_addr(ptr @global_var_b9b4c)
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_80810, label %dec_label_pc_807af

dec_label_pc_807af:                               ; preds = %dec_label_pc_80750
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-46, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_80810, label %dec_label_pc_807e2

dec_label_pc_807e2:                               ; preds = %dec_label_pc_807af
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -38
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-46 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %stack_var_-148, align 4
  br label %dec_label_pc_80810

dec_label_pc_80810:                               ; preds = %dec_label_pc_807af, %dec_label_pc_807e2, %dec_label_pc_80750
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_8081d

dec_label_pc_8081d:                               ; preds = %dec_label_pc_806ea, %dec_label_pc_80810
  %21 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-148)
  %22 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-148)
  %23 = call i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-148)
  call void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr nonnull %stack_var_-104, ptr nonnull %stack_var_-136)
  %24 = ptrtoint ptr %stack_var_-104 to i64
  %25 = call i64 @anon1(i64 %24)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-104)
  call void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr nonnull %stack_var_-136)
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_808df, label %dec_label_pc_808da

dec_label_pc_808da:                               ; preds = %dec_label_pc_8081d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_808df

dec_label_pc_808df:                               ; preds = %dec_label_pc_808da, %dec_label_pc_8081d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_808fa:
  call void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_8091a:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_8093a:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx114listIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_8095a:
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_8097a:
  call void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSaISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_809a6:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result)
  ret void
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_809c6:
  %0 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implD2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt7__cxx114listIiSaIiEE9push_backERKi(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_809f2:
  %0 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  %1 = ptrtoint ptr %arg2 to i64
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %0, i64 %1)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_80a2c:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-33 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-33, ptr %3)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2EOSaISt10_List_nodeIiEE(ptr %result, ptr nonnull %stack_var_-33)
  call void @_ZNSaISt10_List_nodeIiEED2Ev(ptr nonnull %stack_var_-33)
  %5 = call i64 @_ZNKSt7__cxx114listIiSaIiEE3endEv(ptr %arg2)
  %6 = call i64 @_ZNKSt7__cxx114listIiSaIiEE5beginEv(ptr %arg2)
  call void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(i64 %0, i64 %6, i64 %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  br i1 %8, label %dec_label_pc_80af1, label %dec_label_pc_80aec

dec_label_pc_80aec:                               ; preds = %dec_label_pc_80a2c
  call void @__stack_chk_fail()
  br label %dec_label_pc_80af1

dec_label_pc_80af1:                               ; preds = %dec_label_pc_80aec, %dec_label_pc_80a2c
  ret void
}

define void @_ZNSaISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_80af8:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_80b18:
  ret void
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE8_M_clearEv(ptr %result) local_unnamed_addr {
dec_label_pc_80ba3:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_80ba8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_80bf2, label %dec_label_pc_80bed

dec_label_pc_80bed:                               ; preds = %dec_label_pc_80ba8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_80bf2

dec_label_pc_80bf2:                               ; preds = %dec_label_pc_80bed, %dec_label_pc_80ba8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_80bf4:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %2)
  %4 = call i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr %3)
  %5 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 1)
  ret void
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaISt10_List_nodeIiEES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_80c55:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_80c9f, label %dec_label_pc_80c9a

dec_label_pc_80c9a:                               ; preds = %dec_label_pc_80c55
  call void @__stack_chk_fail()
  br label %dec_label_pc_80c9f

dec_label_pc_80c9f:                               ; preds = %dec_label_pc_80c9a, %dec_label_pc_80c55
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_80ca6:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEEC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_80cb8:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_80cf0:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_80d3d, label %dec_label_pc_80d38

dec_label_pc_80d38:                               ; preds = %dec_label_pc_80cf0
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_80d3d

dec_label_pc_80d3d:                               ; preds = %dec_label_pc_80d38, %dec_label_pc_80cf0
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt7__cxx114listIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_80d40:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr nonnull %stack_var_-24, ptr %result)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_80d8a, label %dec_label_pc_80d85

dec_label_pc_80d85:                               ; preds = %dec_label_pc_80d40
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_80d8a

dec_label_pc_80d8a:                               ; preds = %dec_label_pc_80d85, %dec_label_pc_80d40
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_80d8c:
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-24, align 8
  store i64 %arg3, ptr %stack_var_-32, align 8
  %0 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %1 = trunc i64 %0 to i8
  %2 = icmp eq i8 %1, 0
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_80da6.lr.ph, label %dec_label_pc_80de7

dec_label_pc_80da6.lr.ph:                         ; preds = %dec_label_pc_80d8c
  %4 = inttoptr i64 %arg1 to ptr
  br label %dec_label_pc_80da6

dec_label_pc_80da6:                               ; preds = %dec_label_pc_80da6.lr.ph, %dec_label_pc_80da6
  %5 = call i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr nonnull %stack_var_-24)
  %6 = call ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %4, i64 %5)
  %7 = call i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr nonnull %stack_var_-24)
  %8 = call i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr nonnull %stack_var_-24, ptr nonnull %stack_var_-32)
  %9 = trunc i64 %8 to i8
  %10 = icmp eq i8 %9, 0
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_80da6, label %dec_label_pc_80de7

dec_label_pc_80de7:                               ; preds = %dec_label_pc_80da6, %dec_label_pc_80d8c
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_80dec:
  ret void
}

define i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_80dfc:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_80e1e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt14_List_iteratorIiEC2EPNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_80e8a:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define ptr @_ZNSt7__cxx114listIiSaIiEE14_M_create_nodeIJRKiEEEPSt10_List_nodeIiEDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_80ea8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(ptr %result)
  %2 = call i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE21_M_get_Node_allocatorEv(ptr %result)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %1 to ptr
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(ptr nonnull %stack_var_-56, ptr %3, ptr %4)
  %5 = inttoptr i64 %arg2 to ptr
  %6 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = call i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %4)
  %9 = inttoptr i64 %8 to ptr
  call void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(ptr %3, ptr %9, i64 %7)
  %10 = call i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(ptr nonnull %stack_var_-56, i64 0)
  call void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(ptr nonnull %stack_var_-56)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_80f6b, label %dec_label_pc_80f66

dec_label_pc_80f66:                               ; preds = %dec_label_pc_80ea8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_80f6b

dec_label_pc_80f6b:                               ; preds = %dec_label_pc_80f66, %dec_label_pc_80ea8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  %13 = inttoptr i64 %rax.0.reload to ptr
  ret ptr %13
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_inc_sizeEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_80f72:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, %arg2
  store i64 %4, ptr %2, align 8
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_80f9c:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_80fc9:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt7__cxx1110_List_baseIiSaIiEE10_List_implC2EOSaISt10_List_nodeIiEE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_80fdc:
  %0 = bitcast ptr %arg2 to ptr
  %1 = call ptr @_ZSt4moveIRSaISt10_List_nodeIiEEEONSt16remove_referenceIT_E4typeEOS5_(ptr %0)
  call void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %1)
  call void @_ZNSt8__detail17_List_node_headerC2Ev(ptr %result)
  ret void
}

define void @_ZNSt20_List_const_iteratorIiEC2EPKNSt8__detail15_List_node_baseE(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_8101e:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZStneRKSt20_List_const_iteratorIiES2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_8103c:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = icmp eq ptr %arg1, %arg2
  %2 = icmp eq i1 %1, false
  %3 = zext i1 %2 to i64
  %4 = and i64 %0, -256
  %5 = or i64 %4, %3
  ret i64 %5
}

define i64 @_ZNSt20_List_const_iteratorIiEppEv(ptr %result) local_unnamed_addr {
dec_label_pc_81062:
  %0 = ptrtoint ptr %result to i64
  store i64 %0, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt20_List_const_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_81086:
  %0 = call i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define ptr @_ZNSt7__cxx114listIiSaIiEE12emplace_backIJRKiEEERiDpOT_(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_810a8:
  %0 = inttoptr i64 %arg2 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  %3 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  call void @_ZNSt7__cxx114listIiSaIiEE9_M_insertIJRKiEEEvSt14_List_iteratorIiEDpOT_(ptr %result, i64 %3, i64 %2)
  %4 = call i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %result)
  %5 = inttoptr i64 %4 to ptr
  ret ptr %5
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_81100:
  %0 = call i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_81131:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define i64 @_ZNSt7__cxx1110_List_baseIiSaIiEE11_M_get_nodeEv(ptr %result) local_unnamed_addr {
dec_label_pc_81164:
  %0 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %result, i64 1)
  ret i64 %0
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEC2ERS2_PS1_(ptr %result, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_81188:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %result to i64
  %2 = call ptr @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(ptr %arg2)
  %3 = ptrtoint ptr %2 to i64
  store i64 %3, ptr %result, align 8
  %4 = add i64 %1, 8
  %5 = inttoptr i64 %4 to ptr
  store i64 %0, ptr %5, align 8
  ret void
}

define void @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_811c2:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %dec_label_pc_811fe, label %dec_label_pc_811df

dec_label_pc_811df:                               ; preds = %dec_label_pc_811c2
  %5 = inttoptr i64 %3 to ptr
  %6 = call i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE10deallocateERS2_PS1_m(ptr %result, ptr %5, i64 1)
  br label %dec_label_pc_811fe

dec_label_pc_811fe:                               ; preds = %dec_label_pc_811df, %dec_label_pc_811c2
  ret void
}

define void @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE9constructIiJRKiEEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_81201:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define i64 @_ZNSt15__allocated_ptrISaISt10_List_nodeIiEEEaSEDn(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_8123e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  ret i64 %0
}

define void @_ZNSaISt10_List_nodeIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_81260:
  call void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define i64 @_ZNKSt10_List_nodeIiE9_M_valptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_8128a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %2)
  ret i64 %3
}

define i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %result) local_unnamed_addr {
dec_label_pc_812ac:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt7__cxx114listIiSaIiEE3endEv(ptr %result)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call i64 @_ZNSt14_List_iteratorIiEmmEv(ptr nonnull %stack_var_-24)
  %3 = call i64 @_ZNKSt14_List_iteratorIiEdeEv(ptr nonnull %stack_var_-24)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_81307, label %dec_label_pc_81302

dec_label_pc_81302:                               ; preds = %dec_label_pc_812ac
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_81307

dec_label_pc_81307:                               ; preds = %dec_label_pc_81302, %dec_label_pc_812ac
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_8130a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_8131c:
  %0 = mul i64 %arg3, 24
  %1 = call i64 @_ZdlPvm(ptr %arg2, i64 %0)
  ret i64 %1
}

define i64 @_ZNSt16allocator_traitsISaISt10_List_nodeIiEEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_81359:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define ptr @_ZSt11__addressofISaISt10_List_nodeIiEEEPT_RS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_81387:
  ret ptr %arg1
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE9constructIiJRKiEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_8139a:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = bitcast ptr %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 4, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i32 %3, ptr %6, align 4
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_813dc:
  ret void
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_813f0:
  %0 = call i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNSt14_List_iteratorIiEmmEv(ptr %result) local_unnamed_addr {
dec_label_pc_8140e:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  store i64 %3, ptr %result, align 8
  ret i64 %0
}

define i64 @_ZNKSt14_List_iteratorIiEdeEv(ptr %result) local_unnamed_addr {
dec_label_pc_81432:
  %0 = call i64 @_ZNSt10_List_nodeIiE9_M_valptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_81454:
  ret i64 384307168202282325
}

define i64 @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeIiEE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_8146c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeIiEE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_814be, label %dec_label_pc_814a4

dec_label_pc_814a4:                               ; preds = %dec_label_pc_8146c
  %6 = icmp ult i64 %arg2, 768614336404564651
  br i1 %6, label %dec_label_pc_814b9, label %dec_label_pc_814b4

dec_label_pc_814b4:                               ; preds = %dec_label_pc_814a4
  %7 = call i64 @anon2()
  br label %dec_label_pc_814b9

dec_label_pc_814b9:                               ; preds = %dec_label_pc_814b4, %dec_label_pc_814a4
  %8 = call i64 @anon3()
  br label %dec_label_pc_814be

dec_label_pc_814be:                               ; preds = %dec_label_pc_814b9, %dec_label_pc_8146c
  %9 = mul i64 %arg2, 24
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define i64 @_ZNK9__gnu_cxx16__aligned_membufIiE7_M_addrEv(ptr %result) local_unnamed_addr {
dec_label_pc_814da:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_816a6:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = inttoptr i64 %arg1 to ptr
  %1 = call i64 @_ZNSt7__cxx114listIiSaIiEE4backEv(ptr %0)
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %7, label %dec_label_pc_816ef, label %dec_label_pc_816dc

dec_label_pc_816dc:                               ; preds = %dec_label_pc_816a6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_816ef:                               ; preds = %dec_label_pc_816a6, %dec_label_pc_816ef
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %8 = mul i64 %indvars.iv5.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_81713, label %dec_label_pc_816ef

dec_label_pc_81713:                               ; preds = %dec_label_pc_816ef
  %11 = icmp ugt i32 %3, 9
  br i1 %11, label %dec_label_pc_8176b, label %dec_label_pc_8171f

dec_label_pc_8171f:                               ; preds = %dec_label_pc_81713
  %12 = sext i32 %3 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_81742

dec_label_pc_81742:                               ; preds = %dec_label_pc_81742, %dec_label_pc_8171f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8177a, label %dec_label_pc_81742

dec_label_pc_8176b:                               ; preds = %dec_label_pc_81713
  call void @printLine(ptr @global_var_b9b78)
  br label %dec_label_pc_8177a

dec_label_pc_8177a:                               ; preds = %dec_label_pc_81742, %dec_label_pc_8176b
  call void @free(ptr %4)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i64 @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

