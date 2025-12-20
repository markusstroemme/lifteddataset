@global_var_b5a48 = external constant [16 x i8]
@global_var_b5a58 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2e08b:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2e0c2, label %dec_label_pc_2e0af

dec_label_pc_2e0af:                               ; preds = %dec_label_pc_2e08b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2e0c2:                               ; preds = %dec_label_pc_2e08b, %dec_label_pc_2e0c2
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %4 = mul i64 %indvars.iv5.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2e0e6, label %dec_label_pc_2e0c2

dec_label_pc_2e0e6:                               ; preds = %dec_label_pc_2e0c2
  %7 = icmp ugt i32 %data, 9
  br i1 %7, label %dec_label_pc_2e13e, label %dec_label_pc_2e0f2

dec_label_pc_2e0f2:                               ; preds = %dec_label_pc_2e0e6
  %8 = sext i32 %data to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2e115

dec_label_pc_2e115:                               ; preds = %dec_label_pc_2e115, %dec_label_pc_2e0f2
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2e14d, label %dec_label_pc_2e115

dec_label_pc_2e13e:                               ; preds = %dec_label_pc_2e0e6
  call void @printLine(ptr @global_var_b5a58)
  br label %dec_label_pc_2e14d

dec_label_pc_2e14d:                               ; preds = %dec_label_pc_2e115, %dec_label_pc_2e13e
  call void @free(ptr %0)
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2e15c:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2e1c1, label %dec_label_pc_2e1b0

dec_label_pc_2e1b0:                               ; preds = %dec_label_pc_2e15c
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2e1d0

dec_label_pc_2e1c1:                               ; preds = %dec_label_pc_2e15c
  call void @printLine(ptr @global_var_b5a48)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2e1d0

dec_label_pc_2e1d0:                               ; preds = %dec_label_pc_2e1c1, %dec_label_pc_2e1b0
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2e1ef, label %dec_label_pc_2e1ea

dec_label_pc_2e1ea:                               ; preds = %dec_label_pc_2e1d0
  call void @__stack_chk_fail()
  br label %dec_label_pc_2e1ef

dec_label_pc_2e1ef:                               ; preds = %dec_label_pc_2e1ea, %dec_label_pc_2e1d0
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

