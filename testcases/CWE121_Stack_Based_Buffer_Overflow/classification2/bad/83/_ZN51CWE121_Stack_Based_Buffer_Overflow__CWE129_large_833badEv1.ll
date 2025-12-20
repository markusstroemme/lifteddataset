@global_var_bdb78 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_82c94:
  %0 = bitcast ptr %result to ptr
  store i32 10, ptr %0, align 4
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_82cba:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %dec_label_pc_82d40, label %dec_label_pc_82d0b

dec_label_pc_82d0b:                               ; preds = %dec_label_pc_82cba
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_82d24

dec_label_pc_82d24:                               ; preds = %dec_label_pc_82d24, %dec_label_pc_82d0b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_82d4f, label %dec_label_pc_82d24

dec_label_pc_82d40:                               ; preds = %dec_label_pc_82cba
  call void @printLine(ptr @global_var_bdb78)
  br label %dec_label_pc_82d4f

dec_label_pc_82d4f:                               ; preds = %dec_label_pc_82d24, %dec_label_pc_82d40
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %2, %14
  br i1 %15, label %dec_label_pc_82d64, label %dec_label_pc_82d5f

dec_label_pc_82d5f:                               ; preds = %dec_label_pc_82d4f
  call void @__stack_chk_fail()
  br label %dec_label_pc_82d64

dec_label_pc_82d64:                               ; preds = %dec_label_pc_82d5f, %dec_label_pc_82d4f
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_82f16:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 -1)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_82f69, label %dec_label_pc_82f64

dec_label_pc_82f64:                               ; preds = %dec_label_pc_82f16
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_82f69

dec_label_pc_82f69:                               ; preds = %dec_label_pc_82f64, %dec_label_pc_82f16
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

