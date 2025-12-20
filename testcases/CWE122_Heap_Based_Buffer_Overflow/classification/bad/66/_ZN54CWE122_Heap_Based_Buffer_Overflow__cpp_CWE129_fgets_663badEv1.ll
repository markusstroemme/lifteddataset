@global_var_ab294 = external constant [16 x i8]
@global_var_ab2a8 = external constant [32 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_30b69:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_30bd3, label %dec_label_pc_30bc2

dec_label_pc_30bc2:                               ; preds = %dec_label_pc_30b69
  %7 = call i32 @atoi(ptr nonnull %2)
  br label %dec_label_pc_30be2

dec_label_pc_30bd3:                               ; preds = %dec_label_pc_30b69
  call void @printLine(ptr @global_var_ab294)
  br label %dec_label_pc_30be2

dec_label_pc_30be2:                               ; preds = %dec_label_pc_30bd3, %dec_label_pc_30bc2
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i64 @anon1(ptr nonnull %8)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_30c09, label %dec_label_pc_30c04

dec_label_pc_30c04:                               ; preds = %dec_label_pc_30be2
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_30c09

dec_label_pc_30c09:                               ; preds = %dec_label_pc_30c04, %dec_label_pc_30be2
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_30d14:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %arg1 to i64
  %3 = add i64 %2, 8
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br label %dec_label_pc_30d45

dec_label_pc_30d45:                               ; preds = %dec_label_pc_30d45, %dec_label_pc_30d14
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %7 = mul i64 %indvars.iv4.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_30d69, label %dec_label_pc_30d45

dec_label_pc_30d69:                               ; preds = %dec_label_pc_30d45
  %10 = icmp slt i32 %5, 0
  br i1 %10, label %dec_label_pc_30dbb, label %dec_label_pc_30d6f

dec_label_pc_30d6f:                               ; preds = %dec_label_pc_30d69
  %11 = sext i32 %5 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %12, %6
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_30d92

dec_label_pc_30d92:                               ; preds = %dec_label_pc_30d92, %dec_label_pc_30d6f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %15 = mul i64 %indvars.iv.reload, 4
  %16 = add i64 %15, %6
  %17 = inttoptr i64 %16 to ptr
  %18 = load i32, ptr %17, align 4
  call void @printIntLine(i32 %18)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_30dca, label %dec_label_pc_30d92

dec_label_pc_30dbb:                               ; preds = %dec_label_pc_30d69
  call void @printLine(ptr @global_var_ab2a8)
  br label %dec_label_pc_30dca

dec_label_pc_30dca:                               ; preds = %dec_label_pc_30d92, %dec_label_pc_30dbb
  %19 = icmp eq i64 %6, 0
  br i1 %19, label %dec_label_pc_30ddd, label %dec_label_pc_30dd1

dec_label_pc_30dd1:                               ; preds = %dec_label_pc_30dca
  %20 = inttoptr i64 %6 to ptr
  %21 = and i64 %1, 4294967295
  %22 = inttoptr i64 %21 to ptr
  call void @_ZdaPv(ptr %20, ptr %22)
  br label %dec_label_pc_30ddd

dec_label_pc_30ddd:                               ; preds = %dec_label_pc_30dd1, %dec_label_pc_30dca
  ret i64 ptrtoint (ptr @0 to i64)
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

