@global_var_b6b1c = external constant [3 x i8]
@global_var_b6b20 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_3b991:
  %stack_var_-40 = alloca i64, align 8
  %stack_var_-44 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 -1, ptr %stack_var_-44, align 4
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_b6b1c, ptr nonnull %stack_var_-44)
  %3 = bitcast ptr %stack_var_-40 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_3b9fc, label %dec_label_pc_3b9f7

dec_label_pc_3b9f7:                               ; preds = %dec_label_pc_3b991
  call void @__stack_chk_fail()
  br label %dec_label_pc_3b9fc

dec_label_pc_3b9fc:                               ; preds = %dec_label_pc_3b9f7, %dec_label_pc_3b991
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_3badc:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 8
  %2 = inttoptr i64 %1 to ptr
  %3 = load i32, ptr %2, align 4
  %4 = call ptr @malloc(i32 40)
  %5 = ptrtoint ptr %4 to i64
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3bb1e, label %dec_label_pc_3bb0b

dec_label_pc_3bb0b:                               ; preds = %dec_label_pc_3badc
  call void @exit(i32 -1)
  unreachable

dec_label_pc_3bb1e:                               ; preds = %dec_label_pc_3badc, %dec_label_pc_3bb1e
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %8 = mul i64 %indvars.iv4.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_3bb42, label %dec_label_pc_3bb1e

dec_label_pc_3bb42:                               ; preds = %dec_label_pc_3bb1e
  %11 = icmp slt i32 %3, 0
  br i1 %11, label %dec_label_pc_3bb94, label %dec_label_pc_3bb48

dec_label_pc_3bb48:                               ; preds = %dec_label_pc_3bb42
  %12 = sext i32 %3 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %5
  %15 = inttoptr i64 %14 to ptr
  store i32 1, ptr %15, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_3bb6b

dec_label_pc_3bb6b:                               ; preds = %dec_label_pc_3bb6b, %dec_label_pc_3bb48
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %16 = mul i64 %indvars.iv.reload, 4
  %17 = add i64 %16, %5
  %18 = inttoptr i64 %17 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3bba3, label %dec_label_pc_3bb6b

dec_label_pc_3bb94:                               ; preds = %dec_label_pc_3bb42
  call void @printLine(ptr @global_var_b6b20)
  br label %dec_label_pc_3bba3

dec_label_pc_3bba3:                               ; preds = %dec_label_pc_3bb6b, %dec_label_pc_3bb94
  call void @free(ptr %4)
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

