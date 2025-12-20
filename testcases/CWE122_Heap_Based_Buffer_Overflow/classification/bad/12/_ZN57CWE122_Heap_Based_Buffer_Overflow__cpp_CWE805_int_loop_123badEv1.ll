@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36689:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_366d3, label %dec_label_pc_366c0

dec_label_pc_366c0:                               ; preds = %dec_label_pc_36689
  %7 = call i64 @_Znam(i64 200)
  store i64 %7, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_366e4

dec_label_pc_366d3:                               ; preds = %dec_label_pc_36689
  %8 = call i64 @_Znam(i64 400)
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_366e4

dec_label_pc_366e4:                               ; preds = %dec_label_pc_366d3, %dec_label_pc_366c0
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 50)
  %11 = add i64 %9, -416
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_36708

dec_label_pc_36708:                               ; preds = %dec_label_pc_36708, %dec_label_pc_366e4
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = mul i64 %storemerge2.reload, 4
  %13 = add i64 %12, %storemerge1.reload
  %14 = add i64 %11, %12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i64 %13 to ptr
  store i32 %16, ptr %17, align 4
  %18 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_36743, label %dec_label_pc_36708

dec_label_pc_36743:                               ; preds = %dec_label_pc_36708
  %19 = inttoptr i64 %storemerge1.reload to ptr
  %20 = load i32, ptr %19, align 4
  call void @printIntLine(i32 %20)
  %21 = icmp eq i64 %storemerge1.reload, 0
  br i1 %21, label %dec_label_pc_3676c, label %dec_label_pc_3675d

dec_label_pc_3675d:                               ; preds = %dec_label_pc_36743
  %22 = inttoptr i64 %storemerge1.reload to ptr
  %23 = and i64 %1, 4294967295
  %24 = inttoptr i64 %23 to ptr
  call void @_ZdaPv(ptr %22, ptr %24)
  br label %dec_label_pc_3676c

dec_label_pc_3676c:                               ; preds = %dec_label_pc_3675d, %dec_label_pc_36743
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %2, %25
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %26, label %dec_label_pc_36781, label %dec_label_pc_3677c

dec_label_pc_3677c:                               ; preds = %dec_label_pc_3676c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36781

dec_label_pc_36781:                               ; preds = %dec_label_pc_3677c, %dec_label_pc_3676c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4dea6:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

