@global_var_fff = external global ptr
@global_var_328 = external constant [12 x i8]
@global_var_bb1d1 = external constant [23 x i8]
@global_var_bb9d2 = external constant [10 x i8]
@0 = external global i32
@global_var_1000 = external global i32

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_73568:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_7357e:
  ret i64 %arg1
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_749f0:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_74e9c:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_94b12:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-112 = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-120 to i64
  %1 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(ptr nonnull %stack_var_-88)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_94b6a

dec_label_pc_94b6a:                               ; preds = %dec_label_pc_94b6a, %dec_label_pc_94b12
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_94b81, label %dec_label_pc_94b6a

dec_label_pc_94b81:                               ; preds = %dec_label_pc_94b6a
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
  br label %dec_label_pc_94bee

dec_label_pc_94bee:                               ; preds = %dec_label_pc_94bee, %dec_label_pc_94b81
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %5
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_94c05, label %dec_label_pc_94bee

dec_label_pc_94c05:                               ; preds = %dec_label_pc_94bee
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
  store i64 %9, ptr %stack_var_-120, align 8
  %10 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %10, ptr %stack_var_-112, align 8
  %11 = ptrtoint ptr %stack_var_-112 to i64
  %12 = ptrtoint ptr %stack_var_-56 to i64
  %13 = trunc i64 %12 to i32
  %14 = trunc i64 %11 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %13, i32 %14)
  %15 = load i64, ptr %stack_var_-56, align 8
  %16 = bitcast ptr %stack_var_-120 to ptr
  %17 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %15, i64 1, ptr nonnull %16)
  %18 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %18, ptr %stack_var_-112, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %13, i32 %14)
  %19 = load i64, ptr %stack_var_-56, align 8
  %20 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %19, i64 1, ptr nonnull %16)
  %21 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr nonnull %stack_var_-88)
  store i64 %21, ptr %stack_var_-112, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %13, i32 %14)
  %22 = load i64, ptr %stack_var_-56, align 8
  %23 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr nonnull %stack_var_-88, i64 %22, i64 1, ptr nonnull %16)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-88)
  %24 = call i64 @anon1(i64 %12)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr nonnull %stack_var_-56)
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr nonnull %stack_var_-88)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_94d87, label %dec_label_pc_94d82

dec_label_pc_94d82:                               ; preds = %dec_label_pc_94c05
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_94d87

dec_label_pc_94d87:                               ; preds = %dec_label_pc_94d82, %dec_label_pc_94c05
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_94d9e:
  call void @_ZNSaIP14_twoIntsStructED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_94dbe:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_94dde:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_94dfe:
  call void @_ZNSaIP14_twoIntsStructEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIP14_twoIntsStructED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_94e2a:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_94e4a:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_94e9c:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_94ee4:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_94f32, label %dec_label_pc_94f2d

dec_label_pc_94f2d:                               ; preds = %dec_label_pc_94ee4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_94f32

dec_label_pc_94f32:                               ; preds = %dec_label_pc_94f2d, %dec_label_pc_94ee4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2IPS2_EERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameISB_SA_E7__valueES7_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_94f34:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEmRS6_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_94f62:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_95025, label %dec_label_pc_95020

dec_label_pc_95020:                               ; preds = %dec_label_pc_94f62
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_95025

dec_label_pc_95025:                               ; preds = %dec_label_pc_95020, %dec_label_pc_94f62
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_95028:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIP14_twoIntsStructED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_9513c, label %dec_label_pc_95137

dec_label_pc_95137:                               ; preds = %dec_label_pc_95028
  call void @__stack_chk_fail()
  br label %dec_label_pc_9513c

dec_label_pc_9513c:                               ; preds = %dec_label_pc_95137, %dec_label_pc_95028
  ret void
}

define void @_ZNSaIP14_twoIntsStructEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_95148:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_95168:
  %0 = ptrtoint ptr %result to i64
  store i64 0, ptr %result, align 8
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  store i64 0, ptr %2, align 8
  %3 = add i64 %0, 16
  %4 = inttoptr i64 %3 to ptr
  store i64 0, ptr %4, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_9519a:
  ret void
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_951aa:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_951e0, label %dec_label_pc_951c9

dec_label_pc_951c9:                               ; preds = %dec_label_pc_951aa
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_951e0

dec_label_pc_951e0:                               ; preds = %dec_label_pc_951c9, %dec_label_pc_951aa
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_951e4:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_951f6:
  call void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_95224:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_95246:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_95258:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_952a2, label %dec_label_pc_9529d

dec_label_pc_9529d:                               ; preds = %dec_label_pc_95258
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_952a2

dec_label_pc_952a2:                               ; preds = %dec_label_pc_9529d, %dec_label_pc_95258
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSB_SE_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_952a4:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS1_S3_EEmRKS1_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_952e8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_957e9, label %dec_label_pc_9532a

dec_label_pc_9532a:                               ; preds = %dec_label_pc_952e8
  %2 = ptrtoint ptr %result to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %5, %8
  %10 = ashr i64 %9, 3
  %11 = icmp ult i64 %10, %arg3
  br i1 %11, label %dec_label_pc_95557, label %dec_label_pc_95351

dec_label_pc_95351:                               ; preds = %dec_label_pc_9532a
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_953bf, label %dec_label_pc_95498

dec_label_pc_953bf:                               ; preds = %dec_label_pc_95351
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 8
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_95546

dec_label_pc_95498:                               ; preds = %dec_label_pc_95351
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 8
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_95546

dec_label_pc_95546:                               ; preds = %dec_label_pc_95498, %dec_label_pc_953bf
  call void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_957e9

dec_label_pc_95557:                               ; preds = %dec_label_pc_9532a
  %67 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_bb1d1)
  %68 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 8
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 8
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPP14_twoIntsStructS1_EvT_S3_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 3
  %108 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE13_M_deallocateEPS1_m(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 8
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_957e9

dec_label_pc_957e9:                               ; preds = %dec_label_pc_95557, %dec_label_pc_95546, %dec_label_pc_952e8
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_957fe, label %dec_label_pc_957f9

dec_label_pc_957f9:                               ; preds = %dec_label_pc_957e9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_957fe

dec_label_pc_957fe:                               ; preds = %dec_label_pc_957f9, %dec_label_pc_957e9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_95808:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_95852, label %dec_label_pc_9584d

dec_label_pc_9584d:                               ; preds = %dec_label_pc_95808
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_95852

dec_label_pc_95852:                               ; preds = %dec_label_pc_9584d, %dec_label_pc_95808
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_95854:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = sext i32 %arg2 to i64
  %3 = mul i64 %2, 8
  %4 = add i64 %3, %0
  store i64 %4, ptr %stack_var_-32, align 8
  %5 = bitcast ptr %stack_var_-32 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_958b8, label %dec_label_pc_958b3

dec_label_pc_958b3:                               ; preds = %dec_label_pc_95854
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_958b8

dec_label_pc_958b8:                               ; preds = %dec_label_pc_958b3, %dec_label_pc_95854
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_958ba:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 3
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIP14_twoIntsStructES2_E17_S_select_on_copyERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_958e1:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_9592b, label %dec_label_pc_95926

dec_label_pc_95926:                               ; preds = %dec_label_pc_958e1
  call void @__stack_chk_fail()
  br label %dec_label_pc_9592b

dec_label_pc_9592b:                               ; preds = %dec_label_pc_95926, %dec_label_pc_958e1
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_95932:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EEC2EmRKS2_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_95944:
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_959aa:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_959f4, label %dec_label_pc_959ef

dec_label_pc_959ef:                               ; preds = %dec_label_pc_959aa
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_959f4

dec_label_pc_959f4:                               ; preds = %dec_label_pc_959ef, %dec_label_pc_959aa
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_959f6:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_95a44, label %dec_label_pc_95a3f

dec_label_pc_95a3f:                               ; preds = %dec_label_pc_959f6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_95a44

dec_label_pc_95a44:                               ; preds = %dec_label_pc_95a3f, %dec_label_pc_959f6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_95a46:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_95a7c:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE10deallocateERS2_PS1_m(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_95a8b:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE10deallocateEPS2_m(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPP14_twoIntsStructEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_95abd:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEEC2ERKS4_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_95ae8:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_95b0a:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_95b1c:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_95b7a:
  %0 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_95bae:
  %0 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_95bcc:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 3
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_95c0f:
  %0 = call i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPP14_twoIntsStructS2_ET0_T_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_95c66:
  %0 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_95cb5:
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPP14_twoIntsStructmS1_S1_ET_S3_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_95ce7:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_95d1c:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_95d7f, label %dec_label_pc_95d73

dec_label_pc_95d73:                               ; preds = %dec_label_pc_95d1c
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_95d7f

dec_label_pc_95d7f:                               ; preds = %dec_label_pc_95d73, %dec_label_pc_95d1c
  %7 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_95ddf, label %dec_label_pc_95dcd

dec_label_pc_95dcd:                               ; preds = %dec_label_pc_95d7f
  %14 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_95ddf, label %dec_label_pc_95df1

dec_label_pc_95ddf:                               ; preds = %dec_label_pc_95dcd, %dec_label_pc_95d7f
  %16 = call i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_95df1

dec_label_pc_95df1:                               ; preds = %dec_label_pc_95dcd, %dec_label_pc_95ddf
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_95e05, label %dec_label_pc_95e00

dec_label_pc_95e00:                               ; preds = %dec_label_pc_95df1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_95e05

dec_label_pc_95e05:                               ; preds = %dec_label_pc_95e00, %dec_label_pc_95df1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_95e0c:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_95e41, label %dec_label_pc_95e27

dec_label_pc_95e27:                               ; preds = %dec_label_pc_95e0c
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_95e41

dec_label_pc_95e41:                               ; preds = %dec_label_pc_95e0c, %dec_label_pc_95e27
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPP14_twoIntsStructS2_SaIS1_EET0_T_S5_S4_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_95e43:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE37select_on_container_copy_constructionERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_95e9a:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE12_Vector_implC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_95ec8:
  call void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_95efe:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIP14_twoIntsStructSaIS1_EE11_M_allocateEm(ptr %result, i64 %arg2)
  store i64 %1, ptr %result, align 8
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  store i64 %0, ptr %3, align 8
  %4 = mul i64 %arg2, 8
  %5 = add i64 %4, %0
  %6 = add i64 %0, 16
  %7 = inttoptr i64 %6 to ptr
  store i64 %5, ptr %7, align 8
  ret i64 %0
}

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_95f58:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE10deallocateEPS2_m(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_95f8e:
  %0 = mul i64 %arg3, 8
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPP14_twoIntsStructEEvT_S5_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_95fc3:
  ret void
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_95fd6:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_95fec:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_95ffe:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE7destroyIS1_EEvRS2_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_9603b:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE7destroyIS2_EEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPP14_twoIntsStructESt13move_iteratorIT_ES4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_96065:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_960ba, label %dec_label_pc_960b5

dec_label_pc_960b5:                               ; preds = %dec_label_pc_96065
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_960ba

dec_label_pc_960ba:                               ; preds = %dec_label_pc_960b5, %dec_label_pc_96065
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPP14_twoIntsStructES3_S2_ET0_T_S6_S5_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_960bc:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_960f1:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96103:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96171:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_961a3:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIP14_twoIntsStructSaIS1_EE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_961d8:
  %0 = call i64 @_ZNKSt12_Vector_baseIP14_twoIntsStructSaIS1_EE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(ptr %1)
  ret i64 %2
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8allocateERS2_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_961fe:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIP14_twoIntsStructSt13move_iteratorIPS1_EET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_9622c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_96276, label %dec_label_pc_96271

dec_label_pc_96271:                               ; preds = %dec_label_pc_9622c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_96276

dec_label_pc_96276:                               ; preds = %dec_label_pc_96271, %dec_label_pc_9622c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIP14_twoIntsStructEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_96278:
  call void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2ERKS3_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_962a2:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE9constructIS2_JRKS2_EEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_962d4:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKP14_twoIntsStructEOT_RNSt16remove_referenceIS4_E4typeE(ptr %0)
  %2 = load ptr, ptr %1, align 8
  %3 = ptrtoint ptr %2 to i64
  %4 = bitcast ptr %arg2 to ptr
  %5 = call ptr @_ZnwmPv(i64 8, ptr %4)
  %6 = bitcast ptr %5 to ptr
  store i64 %3, ptr %6, align 8
  ret void
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE7destroyIS2_EEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_96318:
  ret void
}

define ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr %arg1) local_unnamed_addr {
dec_label_pc_9632b:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPP14_twoIntsStructEC2ES2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_9633e:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPP14_twoIntsStructEONSt16remove_referenceIT_E4typeEOS5_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_9636b:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_963a0:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_963b2:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_963e3:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPP14_twoIntsStructS1_EN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_SA_RKS6_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_963f9:
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg1, %arg2
  %1 = icmp eq i1 %0, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %1, label %dec_label_pc_9641a, label %dec_label_pc_96434

dec_label_pc_9641a:                               ; preds = %dec_label_pc_963f9, %dec_label_pc_9641a
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %2 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i64 %arg3, ptr %2, align 8
  %3 = add i64 %stack_var_-32.01.reload, 8
  %4 = icmp eq i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  store i64 %3, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %3, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %5, label %dec_label_pc_9641a, label %dec_label_pc_96434

dec_label_pc_96434:                               ; preds = %dec_label_pc_9641a, %dec_label_pc_963f9
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPP14_twoIntsStructmS3_EET_S5_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96438:
  %0 = call ptr @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EE11_S_max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_96469:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 1152921504606846975, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_964d0, label %dec_label_pc_964cb

dec_label_pc_964cb:                               ; preds = %dec_label_pc_96469
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_964d0

dec_label_pc_964d0:                               ; preds = %dec_label_pc_964cb, %dec_label_pc_96469
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_964d2:
  ret i64 1152921504606846975
}

define i64 @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_964ea:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_9653c, label %dec_label_pc_96522

dec_label_pc_96522:                               ; preds = %dec_label_pc_964ea
  %6 = icmp ult i64 %arg2, 2305843009213693952
  br i1 %6, label %dec_label_pc_96537, label %dec_label_pc_96532

dec_label_pc_96532:                               ; preds = %dec_label_pc_96522
  %7 = call i64 @anon2()
  br label %dec_label_pc_96537

dec_label_pc_96537:                               ; preds = %dec_label_pc_96532, %dec_label_pc_96522
  %8 = call i64 @anon3()
  br label %dec_label_pc_9653c

dec_label_pc_9653c:                               ; preds = %dec_label_pc_96537, %dec_label_pc_964ea
  %9 = mul i64 %arg2, 8
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIP14_twoIntsStructEC2ERKS3_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_96550:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96563:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPP14_twoIntsStructES5_EET0_T_S8_S7_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_965b2:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_965e3:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96614:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIP14_twoIntsStructEE8max_sizeERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_9665c:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEET_SA_(i64 %arg1) local_unnamed_addr {
dec_label_pc_9667a:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS3_SaIS3_EEEEPS3_ET1_T0_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_9668c:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPP14_twoIntsStructES3_ET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_966fa:
  %0 = call i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96749:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  %.pre = and i64 %2, -8
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_967a8, label %dec_label_pc_96778

dec_label_pc_96778:                               ; preds = %dec_label_pc_96749
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_967a8

dec_label_pc_967a8:                               ; preds = %dec_label_pc_96749, %dec_label_pc_96778
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPP14_twoIntsStructENSt15iterator_traitsIT_E17iterator_categoryERKS4_(ptr %arg1) local_unnamed_addr {
dec_label_pc_967bf:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPP14_twoIntsStructmS1_ET_S3_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_967cd:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_967f2, label %dec_label_pc_9682c

dec_label_pc_967f2:                               ; preds = %dec_label_pc_967cd
  %2 = mul i64 %arg2, 8
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPP14_twoIntsStructS1_EvT_S3_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_9682c

dec_label_pc_9682c:                               ; preds = %dec_label_pc_967cd, %dec_label_pc_967f2
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_9682e:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIP14_twoIntsStructE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKP14_twoIntsStructSt6vectorIS1_SaIS1_EEET_N9__gnu_cxx17__normal_iteratorIS7_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_9684c:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKP14_twoIntsStructSt6vectorIS2_SaIS2_EEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_9686d:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPP14_twoIntsStructEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_9689e:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPP14_twoIntsStructET_S3_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_968c4:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPP14_twoIntsStructET_S3_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPP14_twoIntsStructET_RKS3_S3_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKP14_twoIntsStructPS1_ET1_T0_S6_S5_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96932:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPP14_twoIntsStructE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_96964:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96979:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_969aa:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_969f8, label %dec_label_pc_969d9

dec_label_pc_969d9:                               ; preds = %dec_label_pc_969aa
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_969f8

dec_label_pc_969f8:                               ; preds = %dec_label_pc_969d9, %dec_label_pc_969aa
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPP14_twoIntsStructS2_ET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96a0d:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIP14_twoIntsStructEEPT_PKS5_S8_S6_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_96a3e:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 8
  br i1 %3, label %dec_label_pc_96a8c, label %dec_label_pc_96a6d

dec_label_pc_96a6d:                               ; preds = %dec_label_pc_96a3e
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -8
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_96a8c

dec_label_pc_96a8c:                               ; preds = %dec_label_pc_96a6d, %dec_label_pc_96a3e
  %9 = and i64 %2, -8
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_96b97:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge24.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = call i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(ptr %2, i64 2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %0, -816
  %7 = add i64 %0, -812
  store i64 0, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_96be7

dec_label_pc_96be7:                               ; preds = %dec_label_pc_96be7, %dec_label_pc_96b97
  %storemerge24.reload = load i64, ptr %storemerge24.reg2mem, align 8
  %8 = mul i64 %storemerge24.reload, 8
  %9 = add i64 %8, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %7, %8
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge24.reload, 1
  %exitcond5 = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge24.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_96c2a, label %dec_label_pc_96be7

dec_label_pc_96c2a:                               ; preds = %dec_label_pc_96be7, %dec_label_pc_96c2a
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %14 = mul i64 %storemerge3.reload, 8
  %15 = add i64 %14, %5
  %16 = add i64 %14, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i64, ptr %17, align 8
  %19 = inttoptr i64 %15 to ptr
  store i64 %18, ptr %19, align 8
  %20 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %20, 100
  store i64 %20, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_96c67, label %dec_label_pc_96c2a

dec_label_pc_96c67:                               ; preds = %dec_label_pc_96c2a
  %21 = inttoptr i64 %5 to ptr
  call void @printStructLine(ptr %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_96c8b, label %dec_label_pc_96c86

dec_label_pc_96c86:                               ; preds = %dec_label_pc_96c67
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_96c8b

dec_label_pc_96c8b:                               ; preds = %dec_label_pc_96c86, %dec_label_pc_96c67
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIP14_twoIntsStructSaIS1_EEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_96c8e:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 8
  %2 = add i64 %1, %0
  ret i64 %2
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_9cdaa:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_bb9d2, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

