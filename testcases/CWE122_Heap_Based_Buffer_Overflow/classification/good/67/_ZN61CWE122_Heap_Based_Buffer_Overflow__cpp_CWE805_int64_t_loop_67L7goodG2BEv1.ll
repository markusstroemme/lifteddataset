@global_var_320 = external constant [20 x i8]
@global_var_609e9 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_214a4:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  %2 = call i64 @anon1(i64 %1)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %4, label %dec_label_pc_214fe, label %dec_label_pc_214f9

dec_label_pc_214f9:                               ; preds = %dec_label_pc_214a4
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_214fe

dec_label_pc_214fe:                               ; preds = %dec_label_pc_214f9, %dec_label_pc_214a4
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_215e6:
  %0 = alloca i64, align 8
  %1 = alloca i1, align 1
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %2 = load i64, ptr %0, align 8
  %3 = load i1, ptr %1, align 1
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = call i64 @__readfsqword(i64 40)
  %6 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 100)
  %7 = add i64 %4, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_2163d

dec_label_pc_2163d:                               ; preds = %dec_label_pc_2163d, %dec_label_pc_215e6
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %8 = mul i64 %storemerge1.reload, 8
  %9 = add i64 %8, %arg1
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i64, ptr %11, align 8
  %13 = inttoptr i64 %9 to ptr
  store i64 %12, ptr %13, align 8
  %14 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2167a, label %dec_label_pc_2163d

dec_label_pc_2167a:                               ; preds = %dec_label_pc_2163d
  %15 = select i1 %3, i64 -800, i64 800
  %16 = ptrtoint ptr %stack_var_-824 to i64
  %17 = add i64 %15, %16
  call void @printLongLongLine(i64 %17)
  %18 = icmp eq i64 %arg1, 0
  br i1 %18, label %dec_label_pc_216a5, label %dec_label_pc_21696

dec_label_pc_21696:                               ; preds = %dec_label_pc_2167a
  %19 = inttoptr i64 %arg1 to ptr
  %20 = and i64 %2, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %19, ptr %21)
  br label %dec_label_pc_216a5

dec_label_pc_216a5:                               ; preds = %dec_label_pc_21696, %dec_label_pc_2167a
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %5, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_216ba, label %dec_label_pc_216b5

dec_label_pc_216b5:                               ; preds = %dec_label_pc_216a5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_216ba

dec_label_pc_216ba:                               ; preds = %dec_label_pc_216b5, %dec_label_pc_216a5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_4da96:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609e9, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

