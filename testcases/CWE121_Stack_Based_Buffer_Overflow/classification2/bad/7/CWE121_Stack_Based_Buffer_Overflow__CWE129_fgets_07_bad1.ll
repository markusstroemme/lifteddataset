@global_var_b53d0 = external constant [16 x i8]
@global_var_b53e0 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ef01c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_18394:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-80.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef01c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br i1 %3, label %dec_label_pc_18413, label %dec_label_pc_183c1

dec_label_pc_183c1:                               ; preds = %dec_label_pc_18394
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_ef090, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_18404, label %dec_label_pc_183f3

dec_label_pc_183f3:                               ; preds = %dec_label_pc_183c1
  %8 = call i32 @atoi(ptr nonnull %5)
  store i32 %8, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_18413

dec_label_pc_18404:                               ; preds = %dec_label_pc_183c1
  call void @printLine(ptr @global_var_b53d0)
  store i32 -1, ptr %stack_var_-80.0.reg2mem, align 4
  br label %dec_label_pc_18413

dec_label_pc_18413:                               ; preds = %dec_label_pc_18404, %dec_label_pc_183f3, %dec_label_pc_18394
  %9 = load i32, ptr @global_var_ef01c, align 4
  %10 = icmp eq i32 %9, 5
  %11 = icmp eq i1 %10, false
  br i1 %11, label %dec_label_pc_1848d, label %dec_label_pc_1841e

dec_label_pc_1841e:                               ; preds = %dec_label_pc_18413
  %stack_var_-80.0.reload = load i32, ptr %stack_var_-80.0.reg2mem, align 4
  %12 = icmp slt i32 %stack_var_-80.0.reload, 0
  br i1 %12, label %dec_label_pc_1847e, label %dec_label_pc_1844c

dec_label_pc_1844c:                               ; preds = %dec_label_pc_1841e
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = sext i32 %stack_var_-80.0.reload to i64
  %15 = mul i64 %14, 4
  %16 = add i64 %13, -64
  %17 = add i64 %15, %16
  %18 = inttoptr i64 %17 to ptr
  store i32 1, ptr %18, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_18462

dec_label_pc_18462:                               ; preds = %dec_label_pc_18462, %dec_label_pc_1844c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %19 = mul i64 %indvars.iv.reload, 4
  %20 = add i64 %19, %16
  %21 = inttoptr i64 %20 to ptr
  %22 = load i32, ptr %21, align 4
  call void @printIntLine(i32 %22)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1848d, label %dec_label_pc_18462

dec_label_pc_1847e:                               ; preds = %dec_label_pc_1841e
  call void @printLine(ptr @global_var_b53e0)
  br label %dec_label_pc_1848d

dec_label_pc_1848d:                               ; preds = %dec_label_pc_18462, %dec_label_pc_1847e, %dec_label_pc_18413
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_184a2, label %dec_label_pc_1849d

dec_label_pc_1849d:                               ; preds = %dec_label_pc_1848d
  call void @__stack_chk_fail()
  br label %dec_label_pc_184a2

dec_label_pc_184a2:                               ; preds = %dec_label_pc_1849d, %dec_label_pc_1848d
  ret void
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

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

