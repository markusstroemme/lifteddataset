@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_39bf7:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-440 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-440, align 8
  %4 = bitcast ptr %stack_var_-440 to ptr
  %5 = call i64 @anon1(ptr nonnull %4)
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = load i64, ptr %stack_var_-440, align 8
  %8 = add i64 %2, -416
  store i64 %7, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_39c53

dec_label_pc_39c53:                               ; preds = %dec_label_pc_39c53, %dec_label_pc_39bf7
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %9 = mul i64 %storemerge1.reload, 4
  %10 = add i64 %9, %.reload
  %11 = add i64 %8, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i64 %storemerge1.reload, 1
  %16 = load i64, ptr %stack_var_-440, align 8
  %exitcond = icmp eq i64 %15, 100
  store i64 %16, ptr %.reg2mem, align 8
  store i64 %15, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_39c8a, label %dec_label_pc_39c53

dec_label_pc_39c8a:                               ; preds = %dec_label_pc_39c53
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = load i64, ptr %stack_var_-440, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %dec_label_pc_39cb5, label %dec_label_pc_39ca6

dec_label_pc_39ca6:                               ; preds = %dec_label_pc_39c8a
  %21 = inttoptr i64 %19 to ptr
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  br label %dec_label_pc_39cb5

dec_label_pc_39cb5:                               ; preds = %dec_label_pc_39ca6, %dec_label_pc_39c8a
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %3, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_39cca, label %dec_label_pc_39cc5

dec_label_pc_39cc5:                               ; preds = %dec_label_pc_39cb5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_39cca

dec_label_pc_39cca:                               ; preds = %dec_label_pc_39cc5, %dec_label_pc_39cb5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_39d03:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = call i64 @_Znam(i64 400)
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 %0
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

