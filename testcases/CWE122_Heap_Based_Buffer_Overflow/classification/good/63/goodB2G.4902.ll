@global_var_b5d3c = external constant [16 x i8]
@global_var_b5d70 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_3040a:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-36, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_3046f, label %dec_label_pc_3045e

dec_label_pc_3045e:                               ; preds = %dec_label_pc_3040a
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36, align 4
  br label %dec_label_pc_3047e

dec_label_pc_3046f:                               ; preds = %dec_label_pc_3040a
  call void @printLine(ptr @global_var_b5d3c)
  br label %dec_label_pc_3047e

dec_label_pc_3047e:                               ; preds = %dec_label_pc_3046f, %dec_label_pc_3045e
  call void @anon0(ptr nonnull %stack_var_-36)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_3049f, label %dec_label_pc_3049a

dec_label_pc_3049a:                               ; preds = %dec_label_pc_3047e
  call void @__stack_chk_fail()
  br label %dec_label_pc_3049f

dec_label_pc_3049f:                               ; preds = %dec_label_pc_3049a, %dec_label_pc_3047e
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_3066a:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = call ptr @malloc(i32 40)
  %4 = ptrtoint ptr %3 to i64
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %6, label %dec_label_pc_306ab, label %dec_label_pc_30698

dec_label_pc_30698:                               ; preds = %dec_label_pc_3066a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_306ab:                               ; preds = %dec_label_pc_3066a, %dec_label_pc_306ab
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %7 = mul i64 %indvars.iv5.reload, 4
  %8 = add i64 %7, %4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_306cf, label %dec_label_pc_306ab

dec_label_pc_306cf:                               ; preds = %dec_label_pc_306ab
  %10 = icmp ugt i32 %2, 9
  br i1 %10, label %dec_label_pc_30727, label %dec_label_pc_306db

dec_label_pc_306db:                               ; preds = %dec_label_pc_306cf
  %sext = mul i64 %1, 4294967296
  %11 = ashr exact i64 %sext, 30
  %12 = add i64 %11, %4
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_306fe

dec_label_pc_306fe:                               ; preds = %dec_label_pc_306fe, %dec_label_pc_306db
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_30736, label %dec_label_pc_306fe

dec_label_pc_30727:                               ; preds = %dec_label_pc_306cf
  call void @printLine(ptr @global_var_b5d70)
  br label %dec_label_pc_30736

dec_label_pc_30736:                               ; preds = %dec_label_pc_306fe, %dec_label_pc_30727
  call void @free(ptr %3)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

