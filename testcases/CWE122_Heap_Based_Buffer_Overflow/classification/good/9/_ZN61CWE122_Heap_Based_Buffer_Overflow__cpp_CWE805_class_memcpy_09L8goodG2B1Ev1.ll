@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_8a77:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_8ad9

dec_label_pc_8ad9:                                ; preds = %dec_label_pc_8ad9, %dec_label_pc_8a77
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %3 = mul i64 %storemerge1.reload, 8
  %4 = add i64 %3, %0
  %5 = add i64 %4, -816
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %4, -812
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8b0f, label %dec_label_pc_8ad9

dec_label_pc_8b0f:                                ; preds = %dec_label_pc_8ad9
  %10 = inttoptr i64 %2 to ptr
  %11 = call ptr @memcpy(ptr %10, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %12 = inttoptr i64 %2 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %14 = icmp eq i64 %2, 0
  br i1 %14, label %dec_label_pc_8b56, label %dec_label_pc_8b47

dec_label_pc_8b47:                                ; preds = %dec_label_pc_8b0f
  %15 = ptrtoint ptr %stack_var_-824 to i64
  %16 = and i64 %15, 4294967288
  %17 = inttoptr i64 %16 to ptr
  call void @_ZdaPv(ptr %10, ptr %17)
  br label %dec_label_pc_8b56

dec_label_pc_8b56:                                ; preds = %dec_label_pc_8b47, %dec_label_pc_8b0f
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_8b6b, label %dec_label_pc_8b66

dec_label_pc_8b66:                                ; preds = %dec_label_pc_8b56
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8b6b

dec_label_pc_8b6b:                                ; preds = %dec_label_pc_8b66, %dec_label_pc_8b56
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

