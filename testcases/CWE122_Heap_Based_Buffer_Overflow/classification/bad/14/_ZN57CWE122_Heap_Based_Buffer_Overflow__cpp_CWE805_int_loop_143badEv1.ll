@global_var_609dc = external constant [4 x i8]
@0 = external global i32
@global_var_7f05c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_36b5f:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-440.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = load i32, ptr @global_var_7f05c, align 4
  %4 = icmp eq i32 %3, 5
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %stack_var_-440.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_36ba4, label %dec_label_pc_36b93

dec_label_pc_36b93:                               ; preds = %dec_label_pc_36b5f
  %6 = call i64 @_Znam(i64 200)
  store i64 %6, ptr %stack_var_-440.0.reg2mem, align 8
  br label %dec_label_pc_36ba4

dec_label_pc_36ba4:                               ; preds = %dec_label_pc_36b93, %dec_label_pc_36b5f
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-440.0.reload = load i64, ptr %stack_var_-440.0.reg2mem, align 8
  %8 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 50)
  %9 = add i64 %7, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_36bc8

dec_label_pc_36bc8:                               ; preds = %dec_label_pc_36bc8, %dec_label_pc_36ba4
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 4
  %11 = add i64 %10, %stack_var_-440.0.reload
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_36c03, label %dec_label_pc_36bc8

dec_label_pc_36c03:                               ; preds = %dec_label_pc_36bc8
  %17 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = icmp eq i64 %stack_var_-440.0.reload, 0
  br i1 %19, label %dec_label_pc_36c2c, label %dec_label_pc_36c1d

dec_label_pc_36c1d:                               ; preds = %dec_label_pc_36c03
  %20 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_36c2c

dec_label_pc_36c2c:                               ; preds = %dec_label_pc_36c1d, %dec_label_pc_36c03
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %2, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_36c41, label %dec_label_pc_36c3c

dec_label_pc_36c3c:                               ; preds = %dec_label_pc_36c2c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36c41

dec_label_pc_36c41:                               ; preds = %dec_label_pc_36c3c, %dec_label_pc_36c2c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

