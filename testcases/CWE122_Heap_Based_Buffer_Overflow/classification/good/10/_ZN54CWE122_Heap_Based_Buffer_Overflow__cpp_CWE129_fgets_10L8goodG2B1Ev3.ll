@global_var_aa820 = external constant [32 x i8]
@global_var_aa840 = external constant [21 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc080 = external local_unnamed_addr global i32
@global_var_dc348 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_28e15:
  %0 = alloca i64, align 8
  %rax.2.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %stack_var_-24.0.reg2mem = alloca i32, align 4
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc348, align 4
  %3 = icmp eq i32 %2, 0
  store i32 7, ptr %stack_var_-24.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_28e4a, label %dec_label_pc_28e32

dec_label_pc_28e32:                               ; preds = %dec_label_pc_28e15
  call void @printLine(ptr @global_var_aa840)
  store i32 -1, ptr %stack_var_-24.0.reg2mem, align 4
  br label %dec_label_pc_28e4a

dec_label_pc_28e4a:                               ; preds = %dec_label_pc_28e15, %dec_label_pc_28e32
  %4 = load i32, ptr @global_var_dc080, align 4
  %5 = icmp eq i32 %4, 0
  store i64 0, ptr %rax.2.reg2mem, align 8
  br i1 %5, label %dec_label_pc_28f07, label %dec_label_pc_28e58

dec_label_pc_28e58:                               ; preds = %dec_label_pc_28e4a
  %stack_var_-24.0.reload = load i32, ptr %stack_var_-24.0.reg2mem, align 4
  %6 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_28e6f

dec_label_pc_28e6f:                               ; preds = %dec_label_pc_28e6f, %dec_label_pc_28e58
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_28e93, label %dec_label_pc_28e6f

dec_label_pc_28e93:                               ; preds = %dec_label_pc_28e6f
  %10 = icmp slt i32 %stack_var_-24.0.reload, 0
  br i1 %10, label %dec_label_pc_28ee5, label %dec_label_pc_28e99

dec_label_pc_28e99:                               ; preds = %dec_label_pc_28e93
  %11 = sext i32 %stack_var_-24.0.reload to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %6, %12
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_28ebc

dec_label_pc_28ebc:                               ; preds = %dec_label_pc_28ebc, %dec_label_pc_28e99
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28ef4, label %dec_label_pc_28ebc

dec_label_pc_28ee5:                               ; preds = %dec_label_pc_28e93
  call void @printLine(ptr @global_var_aa820)
  br label %dec_label_pc_28ef4

dec_label_pc_28ef4:                               ; preds = %dec_label_pc_28ebc, %dec_label_pc_28ee5
  %19 = icmp eq i64 %6, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br i1 %19, label %dec_label_pc_28f07, label %dec_label_pc_28efb

dec_label_pc_28efb:                               ; preds = %dec_label_pc_28ef4
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.2.reg2mem, align 8
  br label %dec_label_pc_28f07

dec_label_pc_28f07:                               ; preds = %dec_label_pc_28efb, %dec_label_pc_28ef4, %dec_label_pc_28e4a
  %rax.2.reload = load i64, ptr %rax.2.reg2mem, align 8
  ret i64 %rax.2.reload
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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

