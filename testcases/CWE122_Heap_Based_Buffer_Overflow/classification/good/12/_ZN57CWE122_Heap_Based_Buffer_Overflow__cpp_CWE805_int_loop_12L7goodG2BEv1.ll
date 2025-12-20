@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36783:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = call i64 @_Znam(i64 400)
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = add i64 %2, -416
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_36802

dec_label_pc_36802:                               ; preds = %dec_label_pc_36802, %dec_label_pc_36783
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %8 = mul i64 %storemerge2.reload, 4
  %9 = add i64 %8, %5
  %10 = add i64 %7, %8
  %11 = inttoptr i64 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = inttoptr i64 %9 to ptr
  store i32 %12, ptr %13, align 4
  %14 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %14, 100
  store i64 %14, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3683d, label %dec_label_pc_36802

dec_label_pc_3683d:                               ; preds = %dec_label_pc_36802
  %15 = inttoptr i64 %5 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %17 = icmp eq i64 %5, 0
  br i1 %17, label %dec_label_pc_36866, label %dec_label_pc_36857

dec_label_pc_36857:                               ; preds = %dec_label_pc_3683d
  %18 = inttoptr i64 %5 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_36866

dec_label_pc_36866:                               ; preds = %dec_label_pc_36857, %dec_label_pc_3683d
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %3, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_3687b, label %dec_label_pc_36876

dec_label_pc_36876:                               ; preds = %dec_label_pc_36866
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3687b

dec_label_pc_3687b:                               ; preds = %dec_label_pc_36876, %dec_label_pc_36866
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

