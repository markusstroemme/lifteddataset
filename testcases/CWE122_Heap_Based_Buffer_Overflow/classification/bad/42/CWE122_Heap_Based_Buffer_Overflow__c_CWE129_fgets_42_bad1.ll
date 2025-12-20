@global_var_b5a80 = external constant [16 x i8]
@global_var_b5a90 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_ec080 = external local_unnamed_addr global ptr

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2e210:
  %rax.0.reg2mem = alloca i32, align 4
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2e271, label %dec_label_pc_2e260

dec_label_pc_2e260:                               ; preds = %dec_label_pc_2e210
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_2e280

dec_label_pc_2e271:                               ; preds = %dec_label_pc_2e210
  call void @printLine(ptr @global_var_b5a80)
  store i32 %data, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_2e280

dec_label_pc_2e280:                               ; preds = %dec_label_pc_2e271, %dec_label_pc_2e260
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i32 %stack_var_-44.0.reload, ptr %rax.0.reg2mem, align 4
  br i1 %7, label %dec_label_pc_2e297, label %dec_label_pc_2e292

dec_label_pc_2e292:                               ; preds = %dec_label_pc_2e280
  call void @__stack_chk_fail()
  store i32 ptrtoint (ptr @0 to i32), ptr %rax.0.reg2mem, align 4
  br label %dec_label_pc_2e297

dec_label_pc_2e297:                               ; preds = %dec_label_pc_2e292, %dec_label_pc_2e280
  %rax.0.reload = load i32, ptr %rax.0.reg2mem, align 4
  ret i32 %rax.0.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2e299:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call i32 @anon1(i32 -1)
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %4, label %dec_label_pc_2e2e1, label %dec_label_pc_2e2ce

dec_label_pc_2e2ce:                               ; preds = %dec_label_pc_2e299
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2e2e1:                               ; preds = %dec_label_pc_2e299, %dec_label_pc_2e2e1
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2e305, label %dec_label_pc_2e2e1

dec_label_pc_2e305:                               ; preds = %dec_label_pc_2e2e1
  %8 = icmp slt i32 %0, 0
  br i1 %8, label %dec_label_pc_2e357, label %dec_label_pc_2e30b

dec_label_pc_2e30b:                               ; preds = %dec_label_pc_2e305
  %9 = sext i32 %0 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %10, %2
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2e32e

dec_label_pc_2e32e:                               ; preds = %dec_label_pc_2e32e, %dec_label_pc_2e30b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %2
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2e366, label %dec_label_pc_2e32e

dec_label_pc_2e357:                               ; preds = %dec_label_pc_2e305
  call void @printLine(ptr @global_var_b5a90)
  br label %dec_label_pc_2e366

dec_label_pc_2e366:                               ; preds = %dec_label_pc_2e32e, %dec_label_pc_2e357
  call void @free(ptr %1)
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

