@global_var_aae78 = external constant [16 x i8]
@global_var_aae88 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_2dab6:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_2db20, label %dec_label_pc_2db0c

dec_label_pc_2db0c:                               ; preds = %dec_label_pc_2dab6
  %7 = call i32 @atoi(ptr nonnull %2)
  store i32 %7, ptr %arg1, align 4
  br label %dec_label_pc_2db2f

dec_label_pc_2db20:                               ; preds = %dec_label_pc_2dab6
  call void @printLine(ptr @global_var_aae78)
  br label %dec_label_pc_2db2f

dec_label_pc_2db2f:                               ; preds = %dec_label_pc_2db20, %dec_label_pc_2db0c
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_2db44, label %dec_label_pc_2db3f

dec_label_pc_2db3f:                               ; preds = %dec_label_pc_2db2f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2db44

dec_label_pc_2db44:                               ; preds = %dec_label_pc_2db3f, %dec_label_pc_2db2f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_2db46:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-32 = alloca i32, align 4
  %2 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-32, align 4
  %3 = call i64 @anon0(ptr nonnull %stack_var_-32)
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_2db8b

dec_label_pc_2db8b:                               ; preds = %dec_label_pc_2db8b, %dec_label_pc_2db46
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %5 = mul i64 %indvars.iv4.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2dbaf, label %dec_label_pc_2db8b

dec_label_pc_2dbaf:                               ; preds = %dec_label_pc_2db8b
  %8 = load i32, ptr %stack_var_-32, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %dec_label_pc_2dc02, label %dec_label_pc_2dbb6

dec_label_pc_2dbb6:                               ; preds = %dec_label_pc_2dbaf
  %10 = sext i32 %8 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2dbd9

dec_label_pc_2dbd9:                               ; preds = %dec_label_pc_2dbd9, %dec_label_pc_2dbb6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2dc11, label %dec_label_pc_2dbd9

dec_label_pc_2dc02:                               ; preds = %dec_label_pc_2dbaf
  call void @printLine(ptr @global_var_aae88)
  br label %dec_label_pc_2dc11

dec_label_pc_2dc11:                               ; preds = %dec_label_pc_2dbd9, %dec_label_pc_2dc02
  %18 = icmp eq i64 %4, 0
  br i1 %18, label %dec_label_pc_2dc24, label %dec_label_pc_2dc18

dec_label_pc_2dc18:                               ; preds = %dec_label_pc_2dc11
  %19 = inttoptr i64 %4 to ptr
  %20 = and i64 %1, 4294967295
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %19, ptr %21)
  br label %dec_label_pc_2dc24

dec_label_pc_2dc24:                               ; preds = %dec_label_pc_2dc18, %dec_label_pc_2dc11
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %2, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_2dc39, label %dec_label_pc_2dc34

dec_label_pc_2dc34:                               ; preds = %dec_label_pc_2dc24
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2dc39

dec_label_pc_2dc39:                               ; preds = %dec_label_pc_2dc34, %dec_label_pc_2dc24
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

