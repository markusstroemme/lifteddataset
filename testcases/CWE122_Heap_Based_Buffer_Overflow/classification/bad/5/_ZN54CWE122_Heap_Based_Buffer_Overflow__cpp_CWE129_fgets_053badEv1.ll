@global_var_aa5f0 = external constant [16 x i8]
@global_var_aa600 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr
@global_var_dc030 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_26bc0:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %stack_var_-48.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_dc030, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_26d00, label %dec_label_pc_26bec

dec_label_pc_26bec:                               ; preds = %dec_label_pc_26bc0
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_dc090, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  %7 = icmp eq i1 %6, false
  %8 = icmp eq i1 %7, false
  br i1 %8, label %dec_label_pc_26c34, label %dec_label_pc_26c23

dec_label_pc_26c23:                               ; preds = %dec_label_pc_26bec
  %9 = call i32 @atoi(ptr nonnull %4)
  store i32 %9, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_26c43

dec_label_pc_26c34:                               ; preds = %dec_label_pc_26bec
  call void @printLine(ptr @global_var_aa5f0)
  store i32 -1, ptr %stack_var_-48.0.ph.reg2mem, align 4
  br label %dec_label_pc_26c43

dec_label_pc_26c43:                               ; preds = %dec_label_pc_26c34, %dec_label_pc_26c23
  %.pr = load i32, ptr @global_var_dc030, align 4
  %10 = icmp eq i32 %.pr, 0
  br i1 %10, label %dec_label_pc_26d00, label %dec_label_pc_26c51

dec_label_pc_26c51:                               ; preds = %dec_label_pc_26c43
  %stack_var_-48.0.ph.reload = load i32, ptr %stack_var_-48.0.ph.reg2mem, align 4
  %11 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_26c68

dec_label_pc_26c68:                               ; preds = %dec_label_pc_26c68, %dec_label_pc_26c51
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %12 = mul i64 %indvars.iv4.reload, 4
  %13 = add i64 %12, %11
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_26c8c, label %dec_label_pc_26c68

dec_label_pc_26c8c:                               ; preds = %dec_label_pc_26c68
  %15 = icmp slt i32 %stack_var_-48.0.ph.reload, 0
  br i1 %15, label %dec_label_pc_26cde, label %dec_label_pc_26c92

dec_label_pc_26c92:                               ; preds = %dec_label_pc_26c8c
  %16 = sext i32 %stack_var_-48.0.ph.reload to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %11, %17
  %19 = inttoptr i64 %18 to ptr
  store i32 1, ptr %19, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_26cb5

dec_label_pc_26cb5:                               ; preds = %dec_label_pc_26cb5, %dec_label_pc_26c92
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %20 = mul i64 %indvars.iv.reload, 4
  %21 = add i64 %20, %11
  %22 = inttoptr i64 %21 to ptr
  %23 = load i32, ptr %22, align 4
  call void @printIntLine(i32 %23)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_26ced, label %dec_label_pc_26cb5

dec_label_pc_26cde:                               ; preds = %dec_label_pc_26c8c
  call void @printLine(ptr @global_var_aa600)
  br label %dec_label_pc_26ced

dec_label_pc_26ced:                               ; preds = %dec_label_pc_26cb5, %dec_label_pc_26cde
  %24 = icmp eq i64 %11, 0
  br i1 %24, label %dec_label_pc_26d00, label %dec_label_pc_26cf4

dec_label_pc_26cf4:                               ; preds = %dec_label_pc_26ced
  %25 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %25, ptr nonnull inttoptr (i64 14 to ptr))
  br label %dec_label_pc_26d00

dec_label_pc_26d00:                               ; preds = %dec_label_pc_26bc0, %dec_label_pc_26cf4, %dec_label_pc_26ced, %dec_label_pc_26c43
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %27, label %dec_label_pc_26d15, label %dec_label_pc_26d10

dec_label_pc_26d10:                               ; preds = %dec_label_pc_26d00
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_26d15

dec_label_pc_26d15:                               ; preds = %dec_label_pc_26d10, %dec_label_pc_26d00
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

