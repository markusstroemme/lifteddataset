@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3a41c:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 200)
  %2 = bitcast ptr %stack_var_-56 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3a476, label %dec_label_pc_3a471

dec_label_pc_3a471:                               ; preds = %dec_label_pc_3a41c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a476

dec_label_pc_3a476:                               ; preds = %dec_label_pc_3a471, %dec_label_pc_3a41c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3a4e4:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = call i64 @__readfsqword(i64 40)
  %5 = add i64 %2, 16
  %6 = inttoptr i64 %5 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %8, i64 0, i64 50)
  %9 = add i64 %3, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_3a53f

dec_label_pc_3a53f:                               ; preds = %dec_label_pc_3a53f, %dec_label_pc_3a4e4
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %10 = mul i64 %storemerge1.reload, 4
  %11 = add i64 %10, %7
  %12 = add i64 %9, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i64 %11 to ptr
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %16, 100
  store i64 %16, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3a57a, label %dec_label_pc_3a53f

dec_label_pc_3a57a:                               ; preds = %dec_label_pc_3a53f
  %17 = inttoptr i64 %7 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %19 = icmp eq i64 %7, 0
  br i1 %19, label %dec_label_pc_3a5a3, label %dec_label_pc_3a594

dec_label_pc_3a594:                               ; preds = %dec_label_pc_3a57a
  %20 = inttoptr i64 %7 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_3a5a3

dec_label_pc_3a5a3:                               ; preds = %dec_label_pc_3a594, %dec_label_pc_3a57a
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %4, %23
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %24, label %dec_label_pc_3a5b8, label %dec_label_pc_3a5b3

dec_label_pc_3a5b3:                               ; preds = %dec_label_pc_3a5a3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3a5b8

dec_label_pc_3a5b8:                               ; preds = %dec_label_pc_3a5b3, %dec_label_pc_3a5a3
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

