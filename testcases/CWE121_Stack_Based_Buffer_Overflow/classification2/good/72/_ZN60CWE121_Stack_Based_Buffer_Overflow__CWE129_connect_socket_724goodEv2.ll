@global_var_bbd56 = external constant [10 x i8]
@global_var_bbd60 = external constant [23 x i8]
@global_var_bbd98 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_73d0b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-104 = alloca i64, align 8
  %stack_var_-144 = alloca i64, align 8
  %stack_var_-46 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-156 = alloca i32, align 4
  %stack_var_-136 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr nonnull %stack_var_-136)
  store i32 -1, ptr %stack_var_-156, align 4
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %cond = icmp eq i32 %1, -1
  br i1 %cond, label %dec_label_pc_73e3e, label %dec_label_pc_73d71

dec_label_pc_73d71:                               ; preds = %dec_label_pc_73d0b
  %2 = call ptr @memset(ptr nonnull %stack_var_-72, i32 0, i32 16)
  store i64 2, ptr %stack_var_-72, align 8
  %3 = call i32 @inet_addr(ptr @global_var_bbd56)
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = call i32 @connect(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_73e31, label %dec_label_pc_73dd0

dec_label_pc_73dd0:                               ; preds = %dec_label_pc_73d71
  %10 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-46, i32 13, i32 0)
  %11 = add i32 %10, 1
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %dec_label_pc_73e31, label %dec_label_pc_73e03

dec_label_pc_73e03:                               ; preds = %dec_label_pc_73dd0
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %10 to i64
  %15 = add i64 %13, -38
  %16 = add i64 %15, %14
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  %18 = bitcast ptr %stack_var_-46 to ptr
  %19 = call i32 @atoi(ptr nonnull %18)
  store i32 %19, ptr %stack_var_-156, align 4
  br label %dec_label_pc_73e31

dec_label_pc_73e31:                               ; preds = %dec_label_pc_73dd0, %dec_label_pc_73e03, %dec_label_pc_73d71
  %20 = call i32 @close(i32 %1)
  br label %dec_label_pc_73e3e

dec_label_pc_73e3e:                               ; preds = %dec_label_pc_73d0b, %dec_label_pc_73e31
  %21 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr nonnull %stack_var_-136)
  store i64 %21, ptr %stack_var_-144, align 8
  %22 = ptrtoint ptr %stack_var_-144 to i64
  %23 = ptrtoint ptr %stack_var_-104 to i64
  %24 = trunc i64 %23 to i32
  %25 = trunc i64 %22 to i32
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %24, i32 %25)
  %26 = load i64, ptr %stack_var_-104, align 8
  %27 = call i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr nonnull %stack_var_-136, i64 %26, i64 1, ptr nonnull %stack_var_-156)
  %28 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr nonnull %stack_var_-136)
  store i64 %28, ptr %stack_var_-144, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %24, i32 %25)
  %29 = load i64, ptr %stack_var_-104, align 8
  %30 = call i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr nonnull %stack_var_-136, i64 %29, i64 1, ptr nonnull %stack_var_-156)
  %31 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr nonnull %stack_var_-136)
  store i64 %31, ptr %stack_var_-144, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %24, i32 %25)
  %32 = load i64, ptr %stack_var_-104, align 8
  %33 = call i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr nonnull %stack_var_-136, i64 %32, i64 1, ptr nonnull %stack_var_-156)
  call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr nonnull %stack_var_-104, ptr nonnull %stack_var_-136)
  %34 = call i64 @anon1(i64 %23)
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr nonnull %stack_var_-104)
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr nonnull %stack_var_-136)
  %35 = call i64 @__readfsqword(i64 40)
  %36 = icmp eq i64 %0, %35
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %36, label %dec_label_pc_73f96, label %dec_label_pc_73f91

dec_label_pc_73f91:                               ; preds = %dec_label_pc_73e3e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_73f96

dec_label_pc_73f96:                               ; preds = %dec_label_pc_73f91, %dec_label_pc_73e3e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZnwmPv(i64 %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_73fb1:
  %0 = bitcast ptr %arg2 to ptr
  ret ptr %0
}

define i64 @_ZSt17__size_to_integerm(i64 %arg1) local_unnamed_addr {
dec_label_pc_73fc7:
  ret i64 %arg1
}

define void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_73fda:
  call void @_ZNSaIiED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_73ffa:
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIiSaIiEEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7401a:
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_7403a:
  call void @_ZNSaIiEC2Ev(ptr %result)
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define void @_ZNSaIiED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_74066:
  call void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_74086:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 16
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 2
  %6 = bitcast ptr %result to ptr
  %7 = call i64 @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr %result, ptr %6, i64 %5)
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev(ptr %result)
  ret void
}

define void @_ZNSt6vectorIiSaIiEED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_740d8:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = bitcast ptr %result to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = inttoptr i64 %1 to ptr
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr %5, ptr %6, ptr %7)
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_74120:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_7416e, label %dec_label_pc_74169

dec_label_pc_74169:                               ; preds = %dec_label_pc_74120
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7416e

dec_label_pc_7416e:                               ; preds = %dec_label_pc_74169, %dec_label_pc_74120
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPiEERKNS0_IT_NS_11__enable_ifIXsrSt10__are_sameIS9_S8_E7__valueES5_E6__typeEEE(i32 %a0, i32 %a1) local_unnamed_addr {
dec_label_pc_74170:
  %0 = sext i32 %a0 to i64
  %1 = sext i32 %a1 to i64
  %2 = inttoptr i64 %1 to ptr
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %0 to ptr
  store i64 %5, ptr %6, align 8
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7419e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-56, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIiSaIiEE6cbeginEv(ptr %result)
  store i64 %1, ptr %stack_var_-32, align 8
  %2 = call i64 @_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr nonnull %stack_var_-56, ptr nonnull %stack_var_-32)
  %3 = call i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result)
  store i64 %3, ptr %stack_var_-32, align 8
  %4 = trunc i64 %2 to i32
  %5 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %6 = call i64 @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr %result, i64 %5, i64 %arg3, ptr %arg4)
  %7 = call i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result)
  store i64 %7, ptr %stack_var_-32, align 8
  %8 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr nonnull %stack_var_-32, i32 %4)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 %8, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_74261, label %dec_label_pc_7425c

dec_label_pc_7425c:                               ; preds = %dec_label_pc_7419e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_74261

dec_label_pc_74261:                               ; preds = %dec_label_pc_7425c, %dec_label_pc_7419e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_74264:
  %0 = ptrtoint ptr %result to i64
  %stack_var_-49 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %arg2)
  %3 = inttoptr i64 %2 to ptr
  %4 = call i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr nonnull %stack_var_-49, ptr %3)
  %5 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %arg2)
  call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr %result, i64 %5, ptr nonnull %stack_var_-49)
  call void @_ZNSaIiED2Ev(ptr nonnull %stack_var_-49)
  %6 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE3endEv(ptr %arg2)
  %8 = call i64 @_ZNKSt6vectorIiSaIiEE5beginEv(ptr %arg2)
  %9 = bitcast ptr %result to ptr
  %10 = inttoptr i64 %6 to ptr
  %11 = call ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i64 %8, i64 %7, ptr %9, ptr %10)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %0, 8
  %14 = inttoptr i64 %13 to ptr
  store i64 %12, ptr %14, align 8
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_74378, label %dec_label_pc_74373

dec_label_pc_74373:                               ; preds = %dec_label_pc_74264
  call void @__stack_chk_fail()
  br label %dec_label_pc_74378

dec_label_pc_74378:                               ; preds = %dec_label_pc_74373, %dec_label_pc_74264
  ret void
}

define void @_ZNSaIiEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_74384:
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(ptr %result)
  ret void
}

define void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_743a4:
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

define void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_743d6:
  ret void
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_743e6:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = icmp eq ptr %arg2, null
  br i1 %0, label %dec_label_pc_7441c, label %dec_label_pc_74405

dec_label_pc_74405:                               ; preds = %dec_label_pc_743e6
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr %result, ptr nonnull %arg2, i64 %arg3)
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7441c

dec_label_pc_7441c:                               ; preds = %dec_label_pc_74405, %dec_label_pc_743e6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_74420:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_74432:
  call void @_ZSt8_DestroyIPiEvT_S1_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_74460:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_74482:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define i64 @_ZNKSt6vectorIiSaIiEE6cbeginEv(ptr %result) local_unnamed_addr {
dec_label_pc_74494:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_744de, label %dec_label_pc_744d9

dec_label_pc_744d9:                               ; preds = %dec_label_pc_74494
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_744de

dec_label_pc_744de:                               ; preds = %dec_label_pc_744d9, %dec_label_pc_74494
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_744e0:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 2
  ret i64 %7
}

define i64 @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr %result, i64 %arg2, i64 %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_74524:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-136, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = icmp eq i64 %arg3, 0
  br i1 %1, label %dec_label_pc_74a25, label %dec_label_pc_74566

dec_label_pc_74566:                               ; preds = %dec_label_pc_74524
  %2 = ptrtoint ptr %result to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = add i64 %2, 8
  %7 = inttoptr i64 %6 to ptr
  %8 = load i64, ptr %7, align 8
  %9 = sub i64 %5, %8
  %10 = ashr i64 %9, 2
  %11 = icmp ult i64 %10, %arg3
  br i1 %11, label %dec_label_pc_74793, label %dec_label_pc_7458d

dec_label_pc_7458d:                               ; preds = %dec_label_pc_74566
  call void @_ZNSt6vectorIiSaIiEE16_Temporary_valueC2IJRKiEEEPS1_DpOT_(ptr nonnull %stack_var_-56, i64 %2)
  %12 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_valEv(ptr nonnull %stack_var_-56)
  %13 = inttoptr i64 %12 to ptr
  %14 = call i64 @_ZNSt6vectorIiSaIiEE3endEv(ptr %result)
  store i64 %14, ptr %stack_var_-120, align 8
  %15 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-120, ptr nonnull %stack_var_-136)
  %16 = load i64, ptr %7, align 8
  %17 = inttoptr i64 %16 to ptr
  %18 = icmp ugt i64 %15, %arg3
  %19 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  br i1 %18, label %dec_label_pc_745fb, label %dec_label_pc_746d4

dec_label_pc_745fb:                               ; preds = %dec_label_pc_7458d
  %20 = load i64, ptr %7, align 8
  %21 = mul i64 %arg3, 4
  %22 = sub i64 %20, %21
  %23 = inttoptr i64 %22 to ptr
  %24 = inttoptr i64 %20 to ptr
  %25 = inttoptr i64 %19 to ptr
  %26 = call ptr @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %23, ptr %24, ptr %24, ptr %25)
  %27 = load i64, ptr %7, align 8
  %28 = add i64 %27, %21
  store i64 %28, ptr %7, align 8
  %29 = sub i64 %16, %21
  %30 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %31 = inttoptr i64 %30 to ptr
  %32 = load i64, ptr %31, align 8
  %33 = inttoptr i64 %32 to ptr
  %34 = inttoptr i64 %29 to ptr
  %35 = call ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr %33, ptr %34, ptr %17)
  %36 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %37 = inttoptr i64 %36 to ptr
  %38 = load i64, ptr %37, align 8
  %39 = add i64 %38, %21
  %40 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %41 = inttoptr i64 %40 to ptr
  %42 = load i64, ptr %41, align 8
  %43 = inttoptr i64 %42 to ptr
  %44 = inttoptr i64 %39 to ptr
  call void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr %43, ptr %44, ptr %13)
  br label %dec_label_pc_74782

dec_label_pc_746d4:                               ; preds = %dec_label_pc_7458d
  %45 = sub i64 %arg3, %15
  %46 = load i64, ptr %7, align 8
  %47 = inttoptr i64 %46 to ptr
  %48 = inttoptr i64 %19 to ptr
  %49 = call ptr @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(ptr %47, i64 %45, ptr %13, ptr %48)
  %50 = ptrtoint ptr %49 to i64
  store i64 %50, ptr %7, align 8
  %51 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %52 = load i64, ptr %7, align 8
  %53 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %54 = inttoptr i64 %53 to ptr
  %55 = load i64, ptr %54, align 8
  %56 = inttoptr i64 %55 to ptr
  %57 = inttoptr i64 %52 to ptr
  %58 = inttoptr i64 %51 to ptr
  %59 = call ptr @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %56, ptr %17, ptr %57, ptr %58)
  %60 = load i64, ptr %7, align 8
  %61 = mul i64 %15, 4
  %62 = add i64 %60, %61
  store i64 %62, ptr %7, align 8
  %63 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %64 = inttoptr i64 %63 to ptr
  %65 = load i64, ptr %64, align 8
  %66 = inttoptr i64 %65 to ptr
  call void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr %66, ptr %17, ptr %13)
  br label %dec_label_pc_74782

dec_label_pc_74782:                               ; preds = %dec_label_pc_746d4, %dec_label_pc_745fb
  call void @_ZNSt6vectorIiSaIiEE16_Temporary_valueD2Ev(ptr nonnull %stack_var_-56)
  br label %dec_label_pc_74a25

dec_label_pc_74793:                               ; preds = %dec_label_pc_74566
  %67 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr %result, i64 %arg3, ptr @global_var_bbd60)
  %68 = call i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result)
  store i64 %68, ptr %stack_var_-120, align 8
  %69 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr nonnull %stack_var_-136, ptr nonnull %stack_var_-120)
  %70 = call i64 @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %result, i64 %67)
  %71 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %72 = mul i64 %69, 4
  %73 = add i64 %72, %70
  %74 = inttoptr i64 %73 to ptr
  %75 = inttoptr i64 %71 to ptr
  %76 = call ptr @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(ptr %74, i64 %arg3, ptr %arg4, ptr %75)
  %77 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %78 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %79 = inttoptr i64 %78 to ptr
  %80 = load i64, ptr %79, align 8
  %81 = bitcast ptr %stack_var_-136 to ptr
  %82 = inttoptr i64 %80 to ptr
  %83 = inttoptr i64 %70 to ptr
  %84 = inttoptr i64 %77 to ptr
  %85 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr nonnull %81, ptr %82, ptr %83, ptr %84)
  %86 = ptrtoint ptr %85 to i64
  %87 = mul i64 %arg3, 4
  %88 = add i64 %87, %86
  %89 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %90 = load i64, ptr %7, align 8
  %91 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-136)
  %92 = inttoptr i64 %91 to ptr
  %93 = load i64, ptr %92, align 8
  %94 = inttoptr i64 %93 to ptr
  %95 = inttoptr i64 %90 to ptr
  %96 = inttoptr i64 %88 to ptr
  %97 = inttoptr i64 %89 to ptr
  %98 = call ptr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %94, ptr %95, ptr %96, ptr %97)
  %99 = ptrtoint ptr %98 to i64
  %100 = call i64 @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %101 = load i64, ptr %7, align 8
  %102 = bitcast ptr %result to ptr
  %103 = inttoptr i64 %101 to ptr
  %104 = inttoptr i64 %100 to ptr
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr %102, ptr %103, ptr %104)
  %105 = load i64, ptr %4, align 8
  %106 = sub i64 %105, %2
  %107 = ashr i64 %106, 2
  %108 = call i64 @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr %result, ptr %102, i64 %107)
  store i64 %70, ptr %result, align 8
  store i64 %99, ptr %7, align 8
  %109 = mul i64 %67, 4
  %110 = add i64 %70, %109
  store i64 %110, ptr %4, align 8
  br label %dec_label_pc_74a25

dec_label_pc_74a25:                               ; preds = %dec_label_pc_74793, %dec_label_pc_74782, %dec_label_pc_74524
  %111 = call i64 @__readfsqword(i64 40)
  %112 = icmp eq i64 %0, %111
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %112, label %dec_label_pc_74a3a, label %dec_label_pc_74a35

dec_label_pc_74a35:                               ; preds = %dec_label_pc_74a25
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_74a3a

dec_label_pc_74a3a:                               ; preds = %dec_label_pc_74a35, %dec_label_pc_74a25
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_74a44:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_74a8e, label %dec_label_pc_74a89

dec_label_pc_74a89:                               ; preds = %dec_label_pc_74a44
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_74a8e

dec_label_pc_74a8e:                               ; preds = %dec_label_pc_74a89, %dec_label_pc_74a44
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_74a90:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = sext i32 %arg2 to i64
  %3 = mul i64 %2, 4
  %4 = add i64 %3, %0
  store i64 %4, ptr %stack_var_-32, align 8
  %5 = bitcast ptr %stack_var_-32 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr nonnull %stack_var_-24, ptr nonnull %5)
  %6 = load i64, ptr %stack_var_-24, align 8
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %1, %7
  store i64 %6, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_74af4, label %dec_label_pc_74aef

dec_label_pc_74aef:                               ; preds = %dec_label_pc_74a90
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_74af4

dec_label_pc_74af4:                               ; preds = %dec_label_pc_74aef, %dec_label_pc_74a90
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_74af6:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, %0
  %5 = ashr i64 %4, 2
  ret i64 %5
}

define i64 @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_74b1d:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_74b67, label %dec_label_pc_74b62

dec_label_pc_74b62:                               ; preds = %dec_label_pc_74b1d
  call void @__stack_chk_fail()
  br label %dec_label_pc_74b67

dec_label_pc_74b67:                               ; preds = %dec_label_pc_74b62, %dec_label_pc_74b1d
  %4 = ptrtoint ptr %result to i64
  ret i64 %4
}

define i64 @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result) local_unnamed_addr {
dec_label_pc_74b6e:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_74b80:
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg3)
  %0 = call i64 @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr %result, i64 %arg2)
  ret void
}

define i64 @_ZNKSt6vectorIiSaIiEE5beginEv(ptr %result) local_unnamed_addr {
dec_label_pc_74be6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %1)
  %2 = load i64, ptr %stack_var_-24, align 8
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 %2, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_74c30, label %dec_label_pc_74c2b

dec_label_pc_74c2b:                               ; preds = %dec_label_pc_74be6
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_74c30

dec_label_pc_74c30:                               ; preds = %dec_label_pc_74c2b, %dec_label_pc_74be6
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNKSt6vectorIiSaIiEE3endEv(ptr %result) local_unnamed_addr {
dec_label_pc_74c32:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %result to i64
  %stack_var_-24 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr nonnull %stack_var_-24, ptr %3)
  %4 = load i64, ptr %stack_var_-24, align 8
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %1, %5
  store i64 %4, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_74c80, label %dec_label_pc_74c7b

dec_label_pc_74c7b:                               ; preds = %dec_label_pc_74c32
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_74c80

dec_label_pc_74c80:                               ; preds = %dec_label_pc_74c7b, %dec_label_pc_74c32
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_74c82:
  %0 = call ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_74cb8:
  ret void
}

define i64 @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_74cc7:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(ptr %arg1, ptr %arg2, i64 %arg3)
  ret i64 %0
}

define void @_ZSt8_DestroyIPiEvT_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_74cf9:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr %arg1, ptr %arg2)
  ret void
}

define void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_74d24:
  %0 = ptrtoint ptr %arg2 to i64
  store i64 %0, ptr %result, align 8
  ret void
}

define i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_74d46:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define void @_ZNSt6vectorIiSaIiEE16_Temporary_valueC2IJRKiEEEPS1_DpOT_(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_74d58:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %arg2, ptr %arg1, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %2)
  %4 = ptrtoint ptr %3 to i64
  %5 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %arg1)
  %6 = inttoptr i64 %5 to ptr
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %6, i64 %4)
  ret void
}

define void @_ZNSt6vectorIiSaIiEE16_Temporary_valueD2Ev(ptr %result) local_unnamed_addr {
dec_label_pc_74db6:
  %0 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  call void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(ptr %result, ptr %1)
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_valEv(ptr %result) local_unnamed_addr {
dec_label_pc_74dea:
  %0 = call i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %result)
  ret i64 %0
}

define i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_74e08:
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %arg1)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr %arg2)
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = sub i64 %2, %5
  %7 = ashr i64 %6, 2
  ret i64 %7
}

define ptr @_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_74e4b:
  %0 = call i64 @_ZSt18make_move_iteratorIPiESt13move_iteratorIT_ES2_(ptr %arg2)
  %1 = call i64 @_ZSt18make_move_iteratorIPiESt13move_iteratorIT_ES2_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_74ea2:
  %0 = call ptr @_ZSt12__miter_baseIPiET_S1_(ptr %arg2)
  %1 = call ptr @_ZSt12__miter_baseIPiET_S1_(ptr %arg1)
  %2 = call ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr %1, ptr %0, ptr %arg3)
  ret ptr %2
}

define void @_ZSt4fillIPiiEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_74ef1:
  call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret void
}

define ptr @_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E(ptr %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_74f23:
  %0 = call ptr @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_74f58:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-48 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  store i64 %arg2, ptr %stack_var_-72, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result)
  %2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  %3 = sub i64 %1, %2
  %4 = icmp ult i64 %3, %arg2
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_74fbb, label %dec_label_pc_74faf

dec_label_pc_74faf:                               ; preds = %dec_label_pc_74f58
  %6 = call i64 @_ZSt20__throw_length_errorPKc(ptr %arg3)
  br label %dec_label_pc_74fbb

dec_label_pc_74fbb:                               ; preds = %dec_label_pc_74faf, %dec_label_pc_74f58
  %7 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  %8 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  store i64 %8, ptr %stack_var_-48, align 8
  %9 = call ptr @_ZSt3maxImERKT_S2_S2_(ptr nonnull %stack_var_-48, ptr nonnull %stack_var_-72)
  %10 = load i64, ptr %9, align 8
  %11 = add i64 %10, %7
  %12 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %result)
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %dec_label_pc_7501b, label %dec_label_pc_75009

dec_label_pc_75009:                               ; preds = %dec_label_pc_74fbb
  %14 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result)
  %15 = icmp ugt i64 %11, %14
  store i64 %11, ptr %storemerge.reg2mem, align 8
  br i1 %15, label %dec_label_pc_7501b, label %dec_label_pc_7502d

dec_label_pc_7501b:                               ; preds = %dec_label_pc_75009, %dec_label_pc_74fbb
  %16 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result)
  store i64 %16, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7502d

dec_label_pc_7502d:                               ; preds = %dec_label_pc_75009, %dec_label_pc_7501b
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 %storemerge.reload, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_75041, label %dec_label_pc_7503c

dec_label_pc_7503c:                               ; preds = %dec_label_pc_7502d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_75041

dec_label_pc_75041:                               ; preds = %dec_label_pc_7503c, %dec_label_pc_7502d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_75048:
  %storemerge.reg2mem = alloca i64, align 8
  %0 = icmp eq i64 %arg2, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %0, label %dec_label_pc_7507d, label %dec_label_pc_75063

dec_label_pc_75063:                               ; preds = %dec_label_pc_75048
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr %result, i64 %arg2)
  store i64 %1, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_7507d

dec_label_pc_7507d:                               ; preds = %dec_label_pc_75048, %dec_label_pc_75063
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  ret i64 %storemerge.reload
}

define ptr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr %arg1, ptr %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_7507f:
  %0 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(ptr %arg2)
  %1 = call i64 @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(ptr %arg1)
  %2 = call ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i64 %1, i64 %0, ptr %arg3, ptr %arg4)
  ret ptr %2
}

define i64 @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_750d6:
  %0 = ptrtoint ptr %result to i64
  call void @_ZNSaIiEC2ERKS_(ptr %result, ptr %arg2)
  ret i64 %0
}

define void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_75104:
  call void @_ZNSaIiEC2ERKS_(ptr %result, ptr %arg2)
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr %result)
  ret void
}

define i64 @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_7513a:
  %0 = ptrtoint ptr %result to i64
  %1 = call i64 @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %result, i64 %arg2)
  store i64 %1, ptr %result, align 8
  %2 = add i64 %0, 8
  %3 = inttoptr i64 %2 to ptr
  store i64 %0, ptr %3, align 8
  %4 = mul i64 %arg2, 4
  %5 = add i64 %4, %0
  %6 = add i64 %0, 16
  %7 = inttoptr i64 %6 to ptr
  store i64 %5, ptr %7, align 8
  ret i64 %0
}

define ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75194:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_751ca:
  %0 = mul i64 %arg3, 4
  %1 = bitcast ptr %arg2 to ptr
  %2 = call i64 @_ZdlPvm(ptr %1, i64 %0)
  ret i64 %2
}

define void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_751ff:
  ret void
}

define i64 @_ZNSt6vectorIiSaIiEE16_Temporary_value6_M_ptrEv(ptr %result) local_unnamed_addr {
dec_label_pc_75212:
  %0 = ptrtoint ptr %result to i64
  %1 = add i64 %0, 8
  ret i64 %1
}

define ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %arg1) local_unnamed_addr {
dec_label_pc_75228:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr %arg1, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_7523a:
  %0 = inttoptr i64 %arg3 to ptr
  %1 = call ptr @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(ptr %0)
  %2 = ptrtoint ptr %1 to i64
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr %arg1, ptr %arg2, i64 %2)
  ret void
}

define void @_ZNSt16allocator_traitsISaIiEE7destroyIiEEvRS0_PT_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_75277:
  call void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(ptr %arg1, ptr %arg2)
  ret void
}

define i64 @_ZSt18make_move_iteratorIPiESt13move_iteratorIT_ES2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_752a1:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-32, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call ptr @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %1)
  %3 = load i64, ptr %2, align 8
  %4 = inttoptr i64 %3 to ptr
  call void @_ZNSt13move_iteratorIPiEC2ES0_(ptr nonnull %stack_var_-24, ptr %4)
  %5 = load i64, ptr %stack_var_-24, align 8
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 %5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_752f6, label %dec_label_pc_752f1

dec_label_pc_752f1:                               ; preds = %dec_label_pc_752a1
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_752f6

dec_label_pc_752f6:                               ; preds = %dec_label_pc_752f1, %dec_label_pc_752a1
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define ptr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i64 %arg1, i64 %arg2, ptr %arg3, ptr %arg4) local_unnamed_addr {
dec_label_pc_752f8:
  %0 = call ptr @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__miter_baseIPiET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7532d:
  ret ptr %arg1
}

define ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7533f:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_753ad:
  %0 = ptrtoint ptr %arg3 to i64
  %1 = ptrtoint ptr %arg2 to i64
  %2 = ptrtoint ptr %arg1 to i64
  %3 = call i64 @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %2, i64 %1, i64 %0)
  ret void
}

define ptr @_ZSt20uninitialized_fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_753df:
  %0 = call ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_75414:
  %0 = call i64 @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %result)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr %1)
  ret i64 %2
}

define ptr @_ZSt3maxImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7543a:
  %0 = icmp ult ptr %arg1, %arg2
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr %arg1, i64 %arg2) local_unnamed_addr {
dec_label_pc_75469:
  %0 = call i64 @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr %arg1, i64 %arg2, ptr null)
  ret i64 %0
}

define i64 @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(ptr %arg1) local_unnamed_addr {
dec_label_pc_75497:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @_ZNSt13move_iteratorIPiEC2ES0_(ptr nonnull %stack_var_-24, ptr %arg1)
  %1 = load i64, ptr %stack_var_-24, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  store i64 %1, ptr %rax.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_754e1, label %dec_label_pc_754dc

dec_label_pc_754dc:                               ; preds = %dec_label_pc_75497
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_754e1

dec_label_pc_754e1:                               ; preds = %dec_label_pc_754dc, %dec_label_pc_75497
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @_ZNSaIiEC2ERKS_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_754e4:
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(ptr %result, ptr %arg2)
  ret void
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7550e:
  %0 = call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr %result, ptr %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_75540:
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

define void @_ZN9__gnu_cxx13new_allocatorIiE7destroyIiEEvPT_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_75582:
  ret void
}

define ptr @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(ptr %arg1) local_unnamed_addr {
dec_label_pc_75595:
  %0 = bitcast ptr %arg1 to ptr
  ret ptr %0
}

define void @_ZNSt13move_iteratorIPiEC2ES0_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_755a8:
  %stack_var_-24 = alloca ptr, align 8
  store ptr %arg2, ptr %stack_var_-24, align 8
  %0 = bitcast ptr %stack_var_-24 to ptr
  %1 = call ptr @_ZSt4moveIRPiEONSt16remove_referenceIT_E4typeEOS3_(ptr nonnull %0)
  %2 = load i64, ptr %1, align 8
  store i64 %2, ptr %result, align 8
  ret void
}

define ptr @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_755d5:
  %0 = call ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg1) local_unnamed_addr {
dec_label_pc_7560a:
  ret ptr %arg1
}

define ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7561c:
  %0 = call ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_7564d:
  ret ptr %arg2
}

define i64 @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_(i64 %arg1, i64 %arg2, i64 %arg3) local_unnamed_addr {
dec_label_pc_75663:
  %0 = alloca i64, align 8
  %stack_var_-32.0.lcssa.reg2mem = alloca i64, align 8
  %stack_var_-32.01.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i64 %arg1, %arg2
  %4 = icmp eq i1 %3, false
  store i64 %arg1, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %arg1, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %4, label %dec_label_pc_75682, label %dec_label_pc_7569a

dec_label_pc_75682:                               ; preds = %dec_label_pc_75663, %dec_label_pc_75682
  %stack_var_-32.01.reload = load i64, ptr %stack_var_-32.01.reg2mem, align 8
  %5 = inttoptr i64 %stack_var_-32.01.reload to ptr
  store i32 %2, ptr %5, align 4
  %6 = add i64 %stack_var_-32.01.reload, 4
  %7 = icmp eq i64 %6, %arg2
  %8 = icmp eq i1 %7, false
  store i64 %6, ptr %stack_var_-32.01.reg2mem, align 8
  store i64 %6, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  br i1 %8, label %dec_label_pc_75682, label %dec_label_pc_7569a

dec_label_pc_7569a:                               ; preds = %dec_label_pc_75682, %dec_label_pc_75663
  %stack_var_-32.0.lcssa.reload = load i64, ptr %stack_var_-32.0.lcssa.reg2mem, align 8
  ret i64 %stack_var_-32.0.lcssa.reload
}

define ptr @_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPimiEET_S3_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7569e:
  %0 = call ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_756cf:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 2305843009213693951, ptr %stack_var_-32, align 8
  %1 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr %arg1)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = call ptr @_ZSt3minImERKT_S2_S2_(ptr nonnull %stack_var_-32, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %2, align 8
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_75736, label %dec_label_pc_75731

dec_label_pc_75731:                               ; preds = %dec_label_pc_756cf
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_75736

dec_label_pc_75736:                               ; preds = %dec_label_pc_75731, %dec_label_pc_756cf
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_75738:
  ret i64 2305843009213693951
}

define i64 @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr %result, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75750:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr %result)
  %1 = icmp uge i64 %0, %arg2
  %2 = icmp ne i1 %1, true
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_757a2, label %dec_label_pc_75788

dec_label_pc_75788:                               ; preds = %dec_label_pc_75750
  %6 = icmp ult i64 %arg2, 4611686018427387904
  br i1 %6, label %dec_label_pc_7579d, label %dec_label_pc_75798

dec_label_pc_75798:                               ; preds = %dec_label_pc_75788
  %7 = call i64 @anon2()
  br label %dec_label_pc_7579d

dec_label_pc_7579d:                               ; preds = %dec_label_pc_75798, %dec_label_pc_75788
  %8 = call i64 @anon3()
  br label %dec_label_pc_757a2

dec_label_pc_757a2:                               ; preds = %dec_label_pc_7579d, %dec_label_pc_75750
  %9 = mul i64 %arg2, 4
  %10 = call i64 @_Znwm(i64 %9)
  ret i64 %10
}

define void @_ZN9__gnu_cxx13new_allocatorIiEC2ERKS1_(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_757b6:
  ret void
}

define ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_757c9:
  %0 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i64 %arg1)
  %2 = call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i64 %1, i64 %0, ptr %arg3)
  ret ptr %2
}

define ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75818:
  %0 = call ptr @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75849:
  %0 = call ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7587a:
  %stack_var_-16 = alloca ptr, align 8
  store ptr %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr nonnull %stack_var_-16)
  %1 = call i64 @_ZSt17__size_to_integerm(i64 %arg2)
  %2 = load ptr, ptr %stack_var_-16, align 8
  %3 = call ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %2, i64 %1, ptr %arg3, i64 ptrtoint (ptr @0 to i64))
  ret ptr %3
}

define i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr %arg1) local_unnamed_addr {
dec_label_pc_758c2:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(ptr %arg1)
  ret i64 %0
}

define ptr @_ZSt3minImERKT_S2_S2_(ptr %arg1, ptr %arg2) local_unnamed_addr {
dec_label_pc_758e0:
  %0 = icmp ult ptr %arg2, %arg1
  %1 = icmp eq i1 %0, false
  %storemerge.v = select i1 %1, ptr %arg1, ptr %arg2
  ret ptr %storemerge.v
}

define i64 @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(i64 %arg1) local_unnamed_addr {
dec_label_pc_7590f:
  ret i64 %arg1
}

define ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75921:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i64 %arg1, i64 %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_7598f:
  %0 = call i64 @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg2)
  %1 = call i64 @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1)
  %2 = inttoptr i64 %1 to ptr
  %3 = inttoptr i64 %0 to ptr
  %4 = call ptr @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(ptr %2, ptr %3, ptr %arg3)
  ret ptr %4
}

define ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_759de:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  %.pre = and i64 %2, -4
  %.pre4 = ptrtoint ptr %arg3 to i64
  %.pre6 = sub i64 %.pre4, %.pre
  br i1 %3, label %dec_label_pc_75a3d, label %dec_label_pc_75a0d

dec_label_pc_75a0d:                               ; preds = %dec_label_pc_759de
  %4 = inttoptr i64 %.pre6 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_75a3d

dec_label_pc_75a3d:                               ; preds = %dec_label_pc_759de, %dec_label_pc_75a0d
  %9 = inttoptr i64 %.pre6 to ptr
  ret ptr %9
}

define i64 @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr %arg1) local_unnamed_addr {
dec_label_pc_75a54:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  ret i64 %1
}

define ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr %arg1, i64 %arg2, ptr %arg3, i64 %arg4) local_unnamed_addr {
dec_label_pc_75a62:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %0 = icmp eq i64 %arg2, 0
  %1 = icmp eq i1 %0, false
  store ptr %arg1, ptr %.pre-phi.reg2mem, align 8
  br i1 %1, label %dec_label_pc_75a87, label %dec_label_pc_75ac1

dec_label_pc_75a87:                               ; preds = %dec_label_pc_75a62
  %2 = mul i64 %arg2, 4
  %3 = ptrtoint ptr %arg1 to i64
  %4 = add i64 %2, %3
  %5 = inttoptr i64 %4 to ptr
  call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr %arg1, ptr %5, ptr %arg3)
  store ptr %5, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_75ac1

dec_label_pc_75ac1:                               ; preds = %dec_label_pc_75a62, %dec_label_pc_75a87
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  ret ptr %.pre-phi.reload
}

define i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(ptr %result) local_unnamed_addr {
dec_label_pc_75ac4:
  %0 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(ptr %result)
  ret i64 %0
}

define ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(i64 %arg1) local_unnamed_addr {
dec_label_pc_75ae2:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = load i64, ptr %1, align 8
  %3 = inttoptr i64 %2 to ptr
  ret ptr %3
}

define ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75b03:
  %0 = call ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i64 %arg1) local_unnamed_addr {
dec_label_pc_75b34:
  %stack_var_-16 = alloca i64, align 8
  store i64 %arg1, ptr %stack_var_-16, align 8
  %0 = call i64 @_ZNKSt13move_iteratorIPiE4baseEv(ptr nonnull %stack_var_-16)
  %1 = inttoptr i64 %0 to ptr
  %2 = call ptr @_ZSt12__miter_baseIPiET_S1_(ptr %1)
  %3 = ptrtoint ptr %2 to i64
  ret i64 %3
}

define ptr @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75b5a:
  %stack_var_-48 = alloca ptr, align 8
  store ptr %arg3, ptr %stack_var_-48, align 8
  %0 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg3)
  %1 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg2)
  %2 = call ptr @_ZSt12__niter_baseIPiET_S1_(ptr %arg1)
  %3 = call ptr @_ZSt14__copy_move_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %2, ptr %1, ptr %0)
  %4 = call ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr nonnull %stack_var_-48, ptr %3)
  ret ptr %4
}

define ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75bc8:
  %0 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define i64 @_ZNKSt13move_iteratorIPiE4baseEv(ptr %result) local_unnamed_addr {
dec_label_pc_75bfa:
  %0 = ptrtoint ptr %result to i64
  ret i64 %0
}

define ptr @_ZSt14__copy_move_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75c0f:
  %0 = call ptr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75c40:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  br i1 %3, label %dec_label_pc_75c8e, label %dec_label_pc_75c6f

dec_label_pc_75c6f:                               ; preds = %dec_label_pc_75c40
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_75c8e

dec_label_pc_75c8e:                               ; preds = %dec_label_pc_75c6f, %dec_label_pc_75c40
  %9 = and i64 %2, -4
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define ptr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75ca3:
  %0 = call ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3)
  ret ptr %0
}

define ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %arg1, ptr %arg2, ptr %arg3) local_unnamed_addr {
dec_label_pc_75cd4:
  %0 = ptrtoint ptr %arg2 to i64
  %1 = ptrtoint ptr %arg1 to i64
  %2 = sub i64 %0, %1
  %3 = icmp ult i64 %2, 4
  br i1 %3, label %dec_label_pc_75d22, label %dec_label_pc_75d03

dec_label_pc_75d03:                               ; preds = %dec_label_pc_75cd4
  %4 = bitcast ptr %arg3 to ptr
  %5 = bitcast ptr %arg1 to ptr
  %6 = trunc i64 %2 to i32
  %7 = and i32 %6, -4
  %8 = call ptr @memmove(ptr %4, ptr %5, i32 %7)
  br label %dec_label_pc_75d22

dec_label_pc_75d22:                               ; preds = %dec_label_pc_75d03, %dec_label_pc_75cd4
  %9 = and i64 %2, -4
  %10 = ptrtoint ptr %arg3 to i64
  %11 = add i64 %9, %10
  %12 = inttoptr i64 %11 to ptr
  ret ptr %12
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_75ead:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = inttoptr i64 %arg1 to ptr
  %2 = call i64 @_ZNSt6vectorIiSaIiEEixEm(ptr %1, i64 2)
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 9
  br i1 %5, label %dec_label_pc_75f48, label %dec_label_pc_75f16

dec_label_pc_75f16:                               ; preds = %dec_label_pc_75ead
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %4 to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_75f2c

dec_label_pc_75f2c:                               ; preds = %dec_label_pc_75f2c, %dec_label_pc_75f16
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_75f57, label %dec_label_pc_75f2c

dec_label_pc_75f48:                               ; preds = %dec_label_pc_75ead
  call void @printLine(ptr @global_var_bbd98)
  br label %dec_label_pc_75f57

dec_label_pc_75f57:                               ; preds = %dec_label_pc_75f2c, %dec_label_pc_75f48
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_75f6c, label %dec_label_pc_75f67

dec_label_pc_75f67:                               ; preds = %dec_label_pc_75f57
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_75f6c

dec_label_pc_75f6c:                               ; preds = %dec_label_pc_75f67, %dec_label_pc_75f57
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @_ZNSt6vectorIiSaIiEEixEm(ptr %result, i64 %arg2) local_unnamed_addr {
dec_label_pc_75f6e:
  %0 = ptrtoint ptr %result to i64
  %1 = mul i64 %arg2, 4
  %2 = add i64 %1, %0
  ret i64 %2
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i64 @anon3() local_unnamed_addr

declare i64 @_ZSt20__throw_length_errorPKc(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @anon2() local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

