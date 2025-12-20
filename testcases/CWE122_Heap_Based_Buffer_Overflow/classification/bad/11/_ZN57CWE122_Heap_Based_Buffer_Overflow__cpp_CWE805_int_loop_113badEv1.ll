@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_363ae:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-440.0.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %stack_var_-440.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_363f6, label %dec_label_pc_363e5

dec_label_pc_363e5:                               ; preds = %dec_label_pc_363ae
  %7 = call i64 @_Znam(i64 200)
  store i64 %7, ptr %stack_var_-440.0.reg2mem, align 8
  br label %dec_label_pc_363f6

dec_label_pc_363f6:                               ; preds = %dec_label_pc_363e5, %dec_label_pc_363ae
  %8 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-440.0.reload = load i64, ptr %stack_var_-440.0.reg2mem, align 8
  %9 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %9, i64 0, i64 50)
  %10 = add i64 %8, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_3641a

dec_label_pc_3641a:                               ; preds = %dec_label_pc_3641a, %dec_label_pc_363f6
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %11 = mul i64 %storemerge1.reload, 4
  %12 = add i64 %11, %stack_var_-440.0.reload
  %13 = add i64 %10, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i64 %12 to ptr
  store i32 %15, ptr %16, align 4
  %17 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_36455, label %dec_label_pc_3641a

dec_label_pc_36455:                               ; preds = %dec_label_pc_3641a
  %18 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %20 = icmp eq i64 %stack_var_-440.0.reload, 0
  br i1 %20, label %dec_label_pc_3647e, label %dec_label_pc_3646f

dec_label_pc_3646f:                               ; preds = %dec_label_pc_36455
  %21 = inttoptr i64 %stack_var_-440.0.reload to ptr
  %22 = and i64 %1, 4294967295
  %23 = inttoptr i64 %22 to ptr
  call void @_ZdaPv(ptr %21, ptr %23)
  br label %dec_label_pc_3647e

dec_label_pc_3647e:                               ; preds = %dec_label_pc_3646f, %dec_label_pc_36455
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %2, %24
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %25, label %dec_label_pc_36493, label %dec_label_pc_3648e

dec_label_pc_3648e:                               ; preds = %dec_label_pc_3647e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36493

dec_label_pc_36493:                               ; preds = %dec_label_pc_3648e, %dec_label_pc_3647e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_4de88:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

