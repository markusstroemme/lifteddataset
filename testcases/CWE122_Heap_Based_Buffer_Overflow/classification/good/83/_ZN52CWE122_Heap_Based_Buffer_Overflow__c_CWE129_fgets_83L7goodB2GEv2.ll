@global_var_baa18 = external constant [16 x i8]
@global_var_baa28 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@0 = external global i32
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_8823a:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_ec080, align 8
  %3 = bitcast ptr %stack_var_-30 to ptr
  %4 = call ptr @fgets(ptr nonnull %3, i32 14, ptr %2)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_882b0, label %dec_label_pc_8829c

dec_label_pc_8829c:                               ; preds = %dec_label_pc_8823a
  %8 = call i32 @atoi(ptr nonnull %3)
  store i32 %8, ptr %1, align 4
  br label %dec_label_pc_882bf

dec_label_pc_882b0:                               ; preds = %dec_label_pc_8823a
  call void @printLine(ptr @global_var_baa18)
  br label %dec_label_pc_882bf

dec_label_pc_882bf:                               ; preds = %dec_label_pc_882b0, %dec_label_pc_8829c
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_882d4, label %dec_label_pc_882cf

dec_label_pc_882cf:                               ; preds = %dec_label_pc_882bf
  call void @__stack_chk_fail()
  br label %dec_label_pc_882d4

dec_label_pc_882d4:                               ; preds = %dec_label_pc_882cf, %dec_label_pc_882bf
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_882d6:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_8830e, label %dec_label_pc_882fb

dec_label_pc_882fb:                               ; preds = %dec_label_pc_882d6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_8830e:                               ; preds = %dec_label_pc_882d6, %dec_label_pc_8830e
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_88332, label %dec_label_pc_8830e

dec_label_pc_88332:                               ; preds = %dec_label_pc_8830e
  %7 = bitcast ptr %rdi to ptr
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 9
  br i1 %9, label %dec_label_pc_88396, label %dec_label_pc_88347

dec_label_pc_88347:                               ; preds = %dec_label_pc_88332
  %10 = sext i32 %8 to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %1
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_8836d

dec_label_pc_8836d:                               ; preds = %dec_label_pc_8836d, %dec_label_pc_88347
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %1
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_883a5, label %dec_label_pc_8836d

dec_label_pc_88396:                               ; preds = %dec_label_pc_88332
  call void @printLine(ptr @global_var_baa28)
  br label %dec_label_pc_883a5

dec_label_pc_883a5:                               ; preds = %dec_label_pc_8836d, %dec_label_pc_88396
  call void @free(ptr %0)
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_88557:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  call void @anon0(ptr nonnull %stack_var_-24, i32 -1)
  call void @anon1(ptr nonnull %stack_var_-24)
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp eq i64 %0, %1
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_885aa, label %dec_label_pc_885a5

dec_label_pc_885a5:                               ; preds = %dec_label_pc_88557
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_885aa

dec_label_pc_885aa:                               ; preds = %dec_label_pc_885a5, %dec_label_pc_88557
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

