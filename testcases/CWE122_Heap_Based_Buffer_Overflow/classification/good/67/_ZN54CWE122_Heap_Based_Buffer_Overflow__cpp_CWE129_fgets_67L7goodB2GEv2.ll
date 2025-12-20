@global_var_ab2ec = external constant [16 x i8]
@global_var_ab320 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc090 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3106e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-36.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_dc090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_310d8, label %dec_label_pc_310c7

dec_label_pc_310c7:                               ; preds = %dec_label_pc_3106e
  %7 = call i32 @atoi(ptr nonnull %2)
  %phitmp = zext i32 %7 to i64
  store i64 %phitmp, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_310e7

dec_label_pc_310d8:                               ; preds = %dec_label_pc_3106e
  call void @printLine(ptr @global_var_ab2ec)
  store i64 4294967295, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_310e7

dec_label_pc_310e7:                               ; preds = %dec_label_pc_310d8, %dec_label_pc_310c7
  %stack_var_-36.0.reload = load i64, ptr %stack_var_-36.0.reg2mem, align 8
  %8 = call i64 @anon1(i64 %stack_var_-36.0.reload)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3110c, label %dec_label_pc_31107

dec_label_pc_31107:                               ; preds = %dec_label_pc_310e7
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3110c

dec_label_pc_3110c:                               ; preds = %dec_label_pc_31107, %dec_label_pc_310e7
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_312b1:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br label %dec_label_pc_312dd

dec_label_pc_312dd:                               ; preds = %dec_label_pc_312dd, %dec_label_pc_312b1
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %3 = mul i64 %indvars.iv6.reload, 4
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_31301, label %dec_label_pc_312dd

dec_label_pc_31301:                               ; preds = %dec_label_pc_312dd
  %6 = trunc i64 %arg1 to i32
  %7 = icmp ugt i32 %6, 9
  br i1 %7, label %dec_label_pc_31359, label %dec_label_pc_3130d

dec_label_pc_3130d:                               ; preds = %dec_label_pc_31301
  %sext = mul i64 %arg1, 4294967296
  %8 = ashr exact i64 %sext, 30
  %9 = add i64 %2, %8
  %10 = inttoptr i64 %9 to ptr
  store i32 1, ptr %10, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_31330

dec_label_pc_31330:                               ; preds = %dec_label_pc_31330, %dec_label_pc_3130d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %11 = mul i64 %indvars.iv.reload, 4
  %12 = add i64 %11, %2
  %13 = inttoptr i64 %12 to ptr
  %14 = load i32, ptr %13, align 4
  call void @printIntLine(i32 %14)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_31368, label %dec_label_pc_31330

dec_label_pc_31359:                               ; preds = %dec_label_pc_31301
  call void @printLine(ptr @global_var_ab320)
  br label %dec_label_pc_31368

dec_label_pc_31368:                               ; preds = %dec_label_pc_31330, %dec_label_pc_31359
  %15 = icmp eq i64 %2, 0
  br i1 %15, label %dec_label_pc_3137b, label %dec_label_pc_3136f

dec_label_pc_3136f:                               ; preds = %dec_label_pc_31368
  %16 = inttoptr i64 %2 to ptr
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %16, ptr %18)
  br label %dec_label_pc_3137b

dec_label_pc_3137b:                               ; preds = %dec_label_pc_3136f, %dec_label_pc_31368
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

